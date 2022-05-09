; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctatc.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctatc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
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
%struct.card_conf = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.ct_vm = type { [4 x %struct.snd_dma_buffer], i32, %struct.list_head, %struct.list_head, %struct.mutex, ptr, ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.daio_desc = type { i16, [2 x i8] }
%struct.src_desc = type { i8, i8, i8 }
%struct.srcimp_desc = type { i32 }
%struct.sum_desc = type { i32 }
%struct.daio_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.src_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcimp_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sum_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.ct_mixer = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.dao = type { %struct.daio, ptr, ptr, ptr, ptr, ptr }
%struct.daio = type { %struct.rsc, %struct.rsc, i32 }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.dao_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.ct_atc_pcm = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.amixer_desc = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.src = type { %struct.rsc, ptr, ptr, i8, i8 }
%struct.src_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amixer_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.amixer = type { %struct.rsc, [8 x i8], ptr, ptr, ptr }
%struct.amixer_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ct_vm_block = type { i32, i32, %struct.list_head }
%struct.src_node_conf_t = type { i32, i32 }
%struct.srcimp = type { %struct.rsc, [8 x i8], ptr, i32, ptr, ptr }
%struct.rsc_ops = type { ptr, ptr, ptr, ptr }
%struct.srcimp_rsc_ops = type { ptr, ptr }
%struct.dao_desc = type { i8, [3 x i8] }
%struct.dai = type { %struct.daio, ptr, ptr, ptr }
%struct.dai_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@alsa_dev_funcs.11 = internal global { ptr, [28 x i8] } { ptr @.str.19, [28 x i8] zeroinitializer }, align 32
@ct_atc_create_alsa_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating alsa device %d failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ct_atc_create_alsa_devs\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/ctxfi/ctatc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_atc_create_alsa_devs._entry_ptr = internal global ptr @ct_atc_create_alsa_devs._entry, section ".printk_index", align 4
@ct_atc_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @atc_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@atc_preset = internal constant { %struct.ct_atc, [76 x i8] } { %struct.ct_atc { ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ct_map_audio_buffer, ptr @ct_unmap_audio_buffer, ptr @atc_get_ptp_phys, %struct.mutex zeroinitializer, ptr @atc_pcm_playback_prepare, ptr @atc_pcm_playback_start, ptr @atc_pcm_stop, ptr @atc_pcm_playback_position, ptr @spdif_passthru_playback_prepare, ptr @atc_pcm_capture_prepare, ptr @atc_pcm_capture_start, ptr @atc_pcm_stop, ptr @atc_pcm_capture_position, ptr @atc_pcm_release_resources, ptr @atc_select_line_in, ptr @atc_select_mic_in, ptr @atc_select_digit_io, ptr @atc_line_front_unmute, ptr @atc_line_surround_unmute, ptr @atc_line_clfe_unmute, ptr @atc_line_rear_unmute, ptr @atc_line_in_unmute, ptr @atc_mic_unmute, ptr @atc_spdif_out_unmute, ptr @atc_spdif_in_unmute, ptr @atc_spdif_out_get_status, ptr @atc_spdif_out_set_status, ptr @atc_spdif_out_passthru, ptr @atc_capabilities, ptr @atc_output_switch_get, ptr @atc_output_switch_put, ptr @atc_mic_source_switch_get, ptr @atc_mic_source_switch_put, [5 x ptr] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @atc_suspend, ptr @atc_resume, [5 x ptr] zeroinitializer }, [76 x i8] zeroinitializer }, align 32
@ct_atc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&atc->atc_mutex\00", [16 x i8] zeroinitializer }, align 32
@ct_atc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1701, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ctatc: Card not recognised\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ct_atc_create\00", [18 x i8] zeroinitializer }, align 32
@ct_atc_create._entry_ptr = internal global ptr @ct_atc_create._entry, section ".printk_index", align 4
@ct_atc_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1717, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create mixer obj!!!\0A\00", [33 x i8] zeroinitializer }, align 32
@ct_atc_create._entry_ptr.10 = internal global ptr @ct_atc_create._entry.8, section ".printk_index", align 4
@ct_atc_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 1744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Something wrong!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@ct_atc_create._entry_ptr.13 = internal global ptr @ct_atc_create._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Front/WaveIn\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Surround\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Center/LFE\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Side\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IEC958 Non-audio\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mixer\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@convert_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not recognized snd format is %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"convert_format\00", [17 x i8] zeroinitializer }, align 32
@convert_format._entry_ptr = internal global ptr @convert_format._entry, section ".printk_index", align 4
@atc_pcm_playback_position.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_ctxfi\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atc_pcm_playback_position\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad ca - ca=0x%08x, vba=0x%08x, vbs=0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@atc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1600, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pci_enable_device failed, disabling device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atc_resume\00", [21 x i8] zeroinitializer }, align 32
@atc_resume._entry_ptr = internal global ptr @atc_resume._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20K1\00", [27 x i8] zeroinitializer }, align 32
@subsys_20k1_list = internal constant { [6 x %struct.snd_pci_quirk], [32 x i8] } { [6 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4354, i16 34, i16 -1, i32 0, ptr @.str.35 }, %struct.snd_pci_quirk { i16 4354, i16 47, i16 -1, i32 0, ptr @.str.35 }, %struct.snd_pci_quirk { i16 4354, i16 41, i16 -1, i32 1, ptr @.str.36 }, %struct.snd_pci_quirk { i16 4354, i16 49, i16 -1, i32 1, ptr @.str.36 }, %struct.snd_pci_quirk { i16 4354, i16 24576, i16 -4096, i32 2, ptr @.str.37 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20K2\00", [27 x i8] zeroinitializer }, align 32
@subsys_20k2_list = internal constant { [7 x %struct.snd_pci_quirk], [48 x i8] } { [7 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4354, i16 36, i16 -1, i32 4, ptr @.str.38 }, %struct.snd_pci_quirk { i16 4354, i16 98, i16 -1, i32 7, ptr @.str.39 }, %struct.snd_pci_quirk { i16 4354, i16 65, i16 -1, i32 6, ptr @.str.40 }, %struct.snd_pci_quirk { i16 4354, i16 66, i16 -1, i32 6, ptr @.str.40 }, %struct.snd_pci_quirk { i16 4354, i16 67, i16 -1, i32 6, ptr @.str.40 }, %struct.snd_pci_quirk { i16 4354, i16 24576, i16 -4096, i32 5, ptr @.str.41 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@atc_identify_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device %04x:%04x is on the denylist\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_identify_card\00", [46 x i8] zeroinitializer }, align 32
@atc_identify_card._entry_ptr = internal global ptr @atc_identify_card._entry, section ".printk_index", align 4
@ct_subsys_name = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.40, ptr @.str.39, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@atc_identify_card._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1299, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chip %s model %s (%04x:%04x) is found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atc_identify_card._entry_ptr.34 = internal global ptr @atc_identify_card._entry.31, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB055x\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB073x\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UAA\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB0760\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB1270\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB0880\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HENDRIX\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB076x\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Hendrix\00", [24 x i8] zeroinitializer }, align 32
@atc_create_hw_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create hw obj!!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atc_create_hw_devs\00", [45 x i8] zeroinitializer }, align 32
@atc_create_hw_devs._entry_ptr = internal global ptr @atc_create_hw_devs._entry, section ".printk_index", align 4
@atc_create_hw_devs._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1355, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create rsc_mgr %d!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@atc_create_hw_devs._entry_ptr.49 = internal global ptr @atc_create_hw_devs._entry.47, section ".printk_index", align 4
@atc_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get DAIO resource %d!!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_get_resources\00", [46 x i8] zeroinitializer }, align 32
@atc_get_resources._entry_ptr = internal global ptr @atc_get_resources._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 30828134, i64 30828135, i64 33554432]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 10, i64 14, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 30828134, i64 30828135, i64 33554432]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 10, i64 14, i64 32]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 30828134, i64 30828135, i64 33554432]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 10, i64 14, i64 32]
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"alsa_dev_funcs.11\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1317, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1676, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"atc_preset\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1615, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1696, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1701, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1717, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1744, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 87, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 90, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 93, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 96, i32 23 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 99, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 103, i32 23 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 186, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 438, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1599, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1264, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"subsys_20k1_list\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 38, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1268, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"subsys_20k2_list\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 48, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1284, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"ct_subsys_name\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 65, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1297, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 39, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 41, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 43, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 49, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 51, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 53, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 59, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 70, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 72, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 73, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1334, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1354, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [27 x i8] c"../sound/pci/ctxfi/ctatc.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1402, i32 4 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @atc_create_hw_devs._entry, ptr @atc_create_hw_devs._entry.47, ptr @atc_create_hw_devs._entry_ptr, ptr @atc_create_hw_devs._entry_ptr.49, ptr @atc_get_resources._entry, ptr @atc_get_resources._entry_ptr, ptr @atc_identify_card._entry, ptr @atc_identify_card._entry.31, ptr @atc_identify_card._entry_ptr, ptr @atc_identify_card._entry_ptr.34, ptr @atc_resume._entry, ptr @atc_resume._entry_ptr, ptr @convert_format._entry, ptr @convert_format._entry_ptr, ptr @ct_atc_create._entry, ptr @ct_atc_create._entry.11, ptr @ct_atc_create._entry.8, ptr @ct_atc_create._entry_ptr, ptr @ct_atc_create._entry_ptr.10, ptr @ct_atc_create._entry_ptr.13, ptr @ct_atc_create_alsa_devs._entry, ptr @ct_atc_create_alsa_devs._entry_ptr, ptr @alsa_dev_funcs.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ct_atc_create.ops, ptr @atc_preset, ptr @ct_atc_create.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @subsys_20k1_list, ptr @.str.28, ptr @subsys_20k2_list, ptr @.str.29, ptr @.str.30, ptr @ct_subsys_name, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_dev_funcs.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create_alsa_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_preset to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_atc_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsys_20k1_list to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsys_20k2_list to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_identify_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_subsys_name to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_identify_card._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_create_hw_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_create_hw_devs._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_atc_create_alsa_devs(ptr noundef %atc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_name = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 7
  %0 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_name, align 4
  store ptr %1, ptr @alsa_dev_funcs.11, align 4
  %call = tail call i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef 0, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.5.do.end_crit_edge, %if.end.4.do.end_crit_edge, %if.end.3.do.end_crit_edge, %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %entry.do.end_crit_edge
  %i.018.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %if.end.1.do.end_crit_edge ], [ 2, %if.end.2.do.end_crit_edge ], [ 3, %if.end.3.do.end_crit_edge ], [ 4, %if.end.4.do.end_crit_edge ], [ 5, %if.end.5.do.end_crit_edge ]
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %if.end.1.do.end_crit_edge ], [ %call.2, %if.end.2.do.end_crit_edge ], [ %call.3, %if.end.3.do.end_crit_edge ], [ %call.4, %if.end.4.do.end_crit_edge ], [ %call.5, %if.end.5.do.end_crit_edge ]
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %i.018.lcssa) #10
  br label %cleanup

if.end.1:                                         ; preds = %entry
  %call.1 = tail call i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef 1, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool4.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool4.not.1, label %if.end.2, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  %call.2 = tail call i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef 2, ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool4.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool4.not.2, label %if.end.3, label %if.end.2.do.end_crit_edge

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.3:                                         ; preds = %if.end.2
  %call.3 = tail call i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef 3, ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool4.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool4.not.3, label %if.end.4, label %if.end.3.do.end_crit_edge

if.end.3.do.end_crit_edge:                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.4:                                         ; preds = %if.end.3
  %call.4 = tail call i32 @ct_alsa_pcm_create(ptr noundef %atc, i32 noundef 4, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool4.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool4.not.4, label %if.end.5, label %if.end.4.do.end_crit_edge

if.end.4.do.end_crit_edge:                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.5:                                         ; preds = %if.end.4
  %6 = load ptr, ptr @alsa_dev_funcs.11, align 4
  %call.5 = tail call i32 @ct_alsa_mix_create(ptr noundef %atc, i32 noundef 5, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool4.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool4.not.5, label %if.end.5.cleanup_crit_edge, label %if.end.5.do.end_crit_edge

if.end.5.do.end_crit_edge:                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %if.end.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_atc_create(ptr noundef %card, ptr noundef %pci, i32 noundef %rsr, i32 noundef %msr, i32 noundef %chip_type, i32 noundef %ssid, ptr nocapture noundef writeonly %ratc) local_unnamed_addr #0 align 64 {
entry:
  %hw.i = alloca ptr, align 4
  %info.i = alloca %struct.card_conf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ratc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ratc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 340) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr @atc_preset, i32 340)
  %card1 = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %card1, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pci, ptr %call7.i.i, align 8
  %rsr3 = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %rsr3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rsr, ptr %rsr3, align 8
  %msr4 = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %msr4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %msr, ptr %msr4, align 4
  %chip_type5 = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %chip_type5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %chip_type, ptr %chip_type5, align 4
  %atc_mutex = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %atc_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @ct_atc_create.__key) #7
  %8 = ptrtoint ptr %chip_type5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_type5, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.do.end10_crit_edge [
    i32 0, label %if.end.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end.sw.epilog.i_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.28, %sw.bb1.i ], [ @.str.27, %if.end.sw.epilog.i_crit_edge ]
  %list.0.i = phi ptr [ @subsys_20k2_list, %sw.bb1.i ], [ @subsys_20k1_list, %if.end.sw.epilog.i_crit_edge ]
  %chip_name2.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %chip_name2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.str.28.sink.i, ptr %chip_name2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid)
  %tobool.not.i = icmp eq i32 %ssid, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %ssid, 16
  %conv.i = trunc i32 %shr.i to i16
  %conv3.i = trunc i32 %ssid to i16
  br label %if.end.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vendor_id.0.i = phi i16 [ %conv.i, %if.then.i ], [ %15, %if.else.i ]
  %device_id.0.i = phi i16 [ %conv3.i, %if.then.i ], [ %17, %if.else.i ]
  %call.i = tail call ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %vendor_id.0.i, i16 noundef zeroext %device_id.0.i, ptr noundef nonnull %list.0.i) #7
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.else13.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %value.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp slt i32 %19, 0
  br i1 %cmp.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %conv9.i = zext i16 %vendor_id.0.i to i32
  %conv10.i = zext i16 %device_id.0.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29, i32 noundef %conv9.i, i32 noundef %conv10.i) #10
  br label %do.end10

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %model.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %model.i, align 8
  br label %if.end11

if.else13.i:                                      ; preds = %if.end.i
  %25 = ptrtoint ptr %chip_type5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_type5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp15.i = icmp eq i32 %26, 0
  %model18.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 6
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %model18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %model18.i, align 8
  br label %if.end11

if.else19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %model18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %model18.i, align 8
  br label %if.end11

do.end10:                                         ; preds = %do.end.i, %if.end.do.end10_crit_edge
  %dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6) #10
  br label %error1

if.end11:                                         ; preds = %if.else19.i, %if.then17.i, %if.end11.i
  %model23.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %model23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %model23.i, align 8
  %arrayidx.i = getelementptr [9 x ptr], ptr @ct_subsys_name, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %model_name.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %model_name.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %model_name.i, align 8
  %36 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card1, align 4
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev28.i, align 8
  %40 = ptrtoint ptr %chip_name2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip_name2.i, align 4
  %conv31.i = zext i16 %vendor_id.0.i to i32
  %conv32.i = zext i16 %device_id.0.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.32, ptr noundef %41, ptr noundef %34, i32 noundef %conv31.i, i32 noundef %conv32.i) #10
  %vm = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 9
  %call12 = tail call i32 @ct_vm_create(ptr noundef %vm, ptr noundef %pci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error1_crit_edge, label %if.end15

if.end11.error1_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw.i) #7
  %42 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #7
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %45 = ptrtoint ptr %chip_type5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_type5, align 4
  %47 = ptrtoint ptr %model23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %model23.i, align 8
  %call.i81 = call i32 @create_hw_obj(ptr noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef nonnull %hw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  %49 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card1, align 4
  br i1 %tobool.not.i82, label %if.end.i86, label %do.end.i84

do.end.i84:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i83 = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev.i83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i83, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.45) #10
  br label %atc_create_hw_devs.exit

if.end.i86:                                       ; preds = %if.end15
  %53 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw.i, align 4
  %card2.i = getelementptr inbounds %struct.hw, ptr %54, i32 0, i32 97
  %55 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %card2.i, align 4
  %hw3.i = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 45
  %56 = ptrtoint ptr %hw3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %hw3.i, align 4
  %57 = ptrtoint ptr %rsr3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rsr3, align 8
  %rsr4.i = getelementptr inbounds %struct.card_conf, ptr %info.i, i32 0, i32 1
  %59 = ptrtoint ptr %rsr4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rsr4.i, align 4
  %60 = ptrtoint ptr %msr4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msr4, align 4
  %msr5.i = getelementptr inbounds %struct.card_conf, ptr %info.i, i32 0, i32 2
  %62 = ptrtoint ptr %msr5.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %msr5.i, align 4
  %63 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vm, align 4
  %get_ptp_phys.i.i = getelementptr inbounds %struct.ct_vm, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %get_ptp_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_ptp_phys.i.i, align 4
  %call.i.i = call i32 %66(ptr noundef %64, i32 noundef 0) #7
  %67 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i.i, ptr %info.i, align 4
  %68 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call7.i = call i32 %71(ptr noundef %69, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i85 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i85, label %atc_create_hw_devs.exit.thread, label %if.end13.i

atc_create_hw_devs.exit.thread:                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw.i) #7
  br label %error1

if.end13.i:                                       ; preds = %if.end.i86
  %72 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw3.i, align 4
  %arrayidx17.i = getelementptr %struct.ct_atc, ptr %call7.i.i, i32 0, i32 43, i32 0
  %call18.i = call i32 @src_mgr_create(ptr noundef %73, ptr noundef %arrayidx17.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end13.1.i, label %if.end13.i.do.end23.i_crit_edge

if.end13.i.do.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.end13.4.i.do.end23.i_crit_edge, %if.end13.3.i.do.end23.i_crit_edge, %if.end13.2.i.do.end23.i_crit_edge, %if.end13.1.i.do.end23.i_crit_edge, %if.end13.i.do.end23.i_crit_edge
  %i.052.lcssa.i = phi i32 [ 0, %if.end13.i.do.end23.i_crit_edge ], [ 1, %if.end13.1.i.do.end23.i_crit_edge ], [ 2, %if.end13.2.i.do.end23.i_crit_edge ], [ 3, %if.end13.3.i.do.end23.i_crit_edge ], [ 4, %if.end13.4.i.do.end23.i_crit_edge ]
  %call18.lcssa.i = phi i32 [ %call18.i, %if.end13.i.do.end23.i_crit_edge ], [ %call18.1.i, %if.end13.1.i.do.end23.i_crit_edge ], [ %call18.2.i, %if.end13.2.i.do.end23.i_crit_edge ], [ %call18.3.i, %if.end13.3.i.do.end23.i_crit_edge ], [ %call18.4.i, %if.end13.4.i.do.end23.i_crit_edge ]
  %74 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card1, align 4
  %dev25.i = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev25.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.48, i32 noundef %i.052.lcssa.i) #10
  br label %atc_create_hw_devs.exit

if.end13.1.i:                                     ; preds = %if.end13.i
  %78 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw3.i, align 4
  %arrayidx17.1.i = getelementptr %struct.ct_atc, ptr %call7.i.i, i32 0, i32 43, i32 1
  %call18.1.i = call i32 @srcimp_mgr_create(ptr noundef %79, ptr noundef %arrayidx17.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %tobool19.not.1.i = icmp eq i32 %call18.1.i, 0
  br i1 %tobool19.not.1.i, label %if.end13.2.i, label %if.end13.1.i.do.end23.i_crit_edge

if.end13.1.i.do.end23.i_crit_edge:                ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

if.end13.2.i:                                     ; preds = %if.end13.1.i
  %80 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw3.i, align 4
  %arrayidx17.2.i = getelementptr %struct.ct_atc, ptr %call7.i.i, i32 0, i32 43, i32 2
  %call18.2.i = call i32 @amixer_mgr_create(ptr noundef %81, ptr noundef %arrayidx17.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2.i)
  %tobool19.not.2.i = icmp eq i32 %call18.2.i, 0
  br i1 %tobool19.not.2.i, label %if.end13.3.i, label %if.end13.2.i.do.end23.i_crit_edge

if.end13.2.i.do.end23.i_crit_edge:                ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

if.end13.3.i:                                     ; preds = %if.end13.2.i
  %82 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw3.i, align 4
  %arrayidx17.3.i = getelementptr %struct.ct_atc, ptr %call7.i.i, i32 0, i32 43, i32 3
  %call18.3.i = call i32 @sum_mgr_create(ptr noundef %83, ptr noundef %arrayidx17.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3.i)
  %tobool19.not.3.i = icmp eq i32 %call18.3.i, 0
  br i1 %tobool19.not.3.i, label %if.end13.4.i, label %if.end13.3.i.do.end23.i_crit_edge

if.end13.3.i.do.end23.i_crit_edge:                ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

if.end13.4.i:                                     ; preds = %if.end13.3.i
  %84 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw3.i, align 4
  %arrayidx17.4.i = getelementptr %struct.ct_atc, ptr %call7.i.i, i32 0, i32 43, i32 4
  %call18.4.i = call i32 @daio_mgr_create(ptr noundef %85, ptr noundef %arrayidx17.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.4.i)
  %tobool19.not.4.i = icmp eq i32 %call18.4.i, 0
  br i1 %tobool19.not.4.i, label %atc_create_hw_devs.exit.thread93, label %if.end13.4.i.do.end23.i_crit_edge

if.end13.4.i.do.end23.i_crit_edge:                ; preds = %if.end13.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

atc_create_hw_devs.exit.thread93:                 ; preds = %if.end13.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw.i) #7
  br label %if.end19

atc_create_hw_devs.exit:                          ; preds = %do.end23.i, %do.end.i84
  %retval.0.i87 = phi i32 [ %call.i81, %do.end.i84 ], [ %call18.lcssa.i, %do.end23.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i87)
  %cmp17 = icmp slt i32 %retval.0.i87, 0
  br i1 %cmp17, label %atc_create_hw_devs.exit.error1_crit_edge, label %atc_create_hw_devs.exit.if.end19_crit_edge

atc_create_hw_devs.exit.if.end19_crit_edge:       ; preds = %atc_create_hw_devs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

atc_create_hw_devs.exit.error1_crit_edge:         ; preds = %atc_create_hw_devs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end19:                                         ; preds = %atc_create_hw_devs.exit.if.end19_crit_edge, %atc_create_hw_devs.exit.thread93
  %mixer = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 44
  %call20 = call i32 @ct_mixer_create(ptr noundef nonnull %call7.i.i, ptr noundef %mixer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %86 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.9) #10
  br label %error1

if.end27:                                         ; preds = %if.end19
  %call28 = call fastcc i32 @atc_get_resources(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.error1_crit_edge, label %if.end31

if.end27.error1_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end31:                                         ; preds = %if.end27
  call fastcc void @atc_connect_resources(ptr noundef nonnull %call7.i.i)
  %call32 = call ptr @ct_timer_new(ptr noundef nonnull %call7.i.i) #7
  %timer = getelementptr inbounds %struct.ct_atc, ptr %call7.i.i, i32 0, i32 54
  %88 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call32, ptr %timer, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end31.error1_crit_edge, label %if.end36

if.end31.error1_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end36:                                         ; preds = %if.end31
  %call37 = call i32 @snd_device_new(ptr noundef %card, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ct_atc_create.ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.error1_crit_edge, label %if.end40

if.end36.error1_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %ratc to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i, ptr %ratc, align 4
  br label %cleanup

error1:                                           ; preds = %if.end36.error1_crit_edge, %if.end31.error1_crit_edge, %if.end27.error1_crit_edge, %do.end25, %atc_create_hw_devs.exit.error1_crit_edge, %atc_create_hw_devs.exit.thread, %if.end11.error1_crit_edge, %do.end10
  %err.0 = phi i32 [ -2, %do.end10 ], [ %call12, %if.end11.error1_crit_edge ], [ %retval.0.i87, %atc_create_hw_devs.exit.error1_crit_edge ], [ %call20, %do.end25 ], [ %call28, %if.end27.error1_crit_edge ], [ %call37, %if.end36.error1_crit_edge ], [ -12, %if.end31.error1_crit_edge ], [ %call7.i, %atc_create_hw_devs.exit.thread ]
  call fastcc void @ct_atc_destroy(ptr noundef nonnull %call7.i.i)
  %dev45 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %90 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev45, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %error1, %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error1 ], [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_dev_free(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  tail call fastcc void @ct_atc_destroy(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_vm_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_mixer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atc_get_resources(ptr nocapture noundef %atc) unnamed_addr #0 align 64 {
entry:
  %da_desc = alloca %struct.daio_desc, align 4
  %src_dsc = alloca %struct.src_desc, align 1
  %srcimp_dsc = alloca %struct.srcimp_desc, align 4
  %sum_dsc = alloca %struct.sum_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %da_desc) #7
  %0 = ptrtoint ptr %da_desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %da_desc, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %src_dsc) #7
  %1 = call ptr @memset(ptr %src_dsc, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcimp_dsc) #7
  %2 = ptrtoint ptr %srcimp_dsc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %srcimp_dsc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum_dsc) #7
  %3 = ptrtoint ptr %sum_dsc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sum_dsc, align 4
  %model = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 6
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  %cond = select i1 %cmp, i32 8, i32 7
  %6 = shl nuw nsw i32 %cond, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %daios = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %7 = ptrtoint ptr %daios to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %daios, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond3 = select i1 %cmp, i32 24, i32 16
  %call8.i.i199 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond3, i32 noundef 3520) #12
  %srcs269 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 48
  %8 = ptrtoint ptr %srcs269 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i199, ptr %srcs269, align 4
  %tobool7.not270 = icmp eq ptr %call8.i.i199, null
  br i1 %tobool7.not270, label %if.end.cleanup_crit_edge, label %if.end7.i.i233

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i233:                                   ; preds = %if.end
  %call8.i.i232 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond3, i32 noundef 3520) #12
  %srcimps = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 49
  %9 = ptrtoint ptr %srcimps to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i232, ptr %srcimps, align 4
  %tobool12.not = icmp eq ptr %call8.i.i232, null
  br i1 %tobool12.not, label %if.end7.i.i233.cleanup_crit_edge, label %if.end14

if.end7.i.i233.cleanup_crit_edge:                 ; preds = %if.end7.i.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7.i.i233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i243 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #11
  %pcm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 47
  %11 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i243, ptr %pcm, align 4
  %tobool17.not = icmp eq ptr %call7.i.i.i243, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %rsc_mgrs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %arrayidx = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %msr = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %14 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msr, align 4
  %16 = trunc i32 %15 to i16
  %17 = ptrtoint ptr %da_desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %da_desc, align 4
  %bf.value = shl i16 %16, 8
  %bf.shl = and i16 %bf.value, 3840
  %bf.clear = and i16 %bf.load, -3841
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %da_desc, align 4
  %n_daio = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 50
  %18 = ptrtoint ptr %n_daio to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %n_daio, align 4
  %get_daio = getelementptr inbounds %struct.daio_mgr, ptr %13, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end19
  %i.0255 = phi i32 [ 0, %if.end19 ], [ %inc42, %if.end40.for.body_crit_edge ]
  %19 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp22.not = icmp eq i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0255)
  %cmp23 = icmp eq i32 %i.0255, 6
  %21 = select i1 %cmp22.not, i1 %cmp23, i1 false
  %22 = trunc i32 %i.0255 to i16
  %23 = ptrtoint ptr %da_desc to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load29 = load i16, ptr %da_desc, align 4
  %.op = shl i16 %22, 12
  %bf.shl31 = select i1 %21, i16 -32768, i16 %.op
  %bf.clear32 = and i16 %bf.load29, 4095
  %bf.set33 = or i16 %bf.shl31, %bf.clear32
  store i16 %bf.set33, ptr %da_desc, align 4
  %24 = ptrtoint ptr %get_daio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_daio, align 4
  %26 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %daios, align 4
  %arrayidx36 = getelementptr ptr, ptr %27, i32 %i.0255
  %call37 = call i32 %25(ptr noundef %13, ptr noundef nonnull %da_desc, ptr noundef %arrayidx36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.50, i32 noundef %i.0255) #10
  br label %cleanup

if.end40:                                         ; preds = %for.body
  %32 = ptrtoint ptr %n_daio to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_daio, align 4
  %inc = add i8 %33, 1
  store i8 %inc, ptr %n_daio, align 4
  %inc42 = add nuw nsw i32 %i.0255, 1
  %exitcond.not = icmp eq i32 %inc42, %cond
  br i1 %exitcond.not, label %for.end, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end40
  %34 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rsc_mgrs, align 4
  %36 = ptrtoint ptr %src_dsc to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %src_dsc, align 1
  %37 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msr, align 4
  %conv = trunc i32 %38 to i8
  %msr46 = getelementptr inbounds %struct.src_desc, ptr %src_dsc, i32 0, i32 1
  %39 = ptrtoint ptr %msr46 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %msr46, align 1
  %mode = getelementptr inbounds %struct.src_desc, ptr %src_dsc, i32 0, i32 2
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %mode, align 1
  %n_src = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 51
  %41 = ptrtoint ptr %n_src to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %n_src, align 1
  %get_src = getelementptr inbounds %struct.src_mgr, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_src, align 4
  %44 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %srcs269, align 4
  %call53 = call i32 %43(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %for.end
  %46 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %n_src, align 1
  %inc58 = add i8 %47, 1
  store i8 %inc58, ptr %n_src, align 1
  %48 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_src, align 4
  %50 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %srcs269, align 4
  %arrayidx52.1 = getelementptr ptr, ptr %51, i32 1
  %call53.1 = call i32 %49(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %arrayidx52.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1)
  %tobool54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %tobool54.not.1, label %if.end56.1, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.1:                                       ; preds = %if.end56
  %52 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %n_src, align 1
  %inc58.1 = add i8 %53, 1
  store i8 %inc58.1, ptr %n_src, align 1
  %54 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_src, align 4
  %56 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %srcs269, align 4
  %arrayidx52.2 = getelementptr ptr, ptr %57, i32 2
  %call53.2 = call i32 %55(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %arrayidx52.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.2)
  %tobool54.not.2 = icmp eq i32 %call53.2, 0
  br i1 %tobool54.not.2, label %if.end56.2, label %if.end56.1.cleanup_crit_edge

if.end56.1.cleanup_crit_edge:                     ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.2:                                       ; preds = %if.end56.1
  %58 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %n_src, align 1
  %inc58.2 = add i8 %59, 1
  store i8 %inc58.2, ptr %n_src, align 1
  %60 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_src, align 4
  %62 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %srcs269, align 4
  %arrayidx52.3 = getelementptr ptr, ptr %63, i32 3
  %call53.3 = call i32 %61(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %arrayidx52.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.3)
  %tobool54.not.3 = icmp eq i32 %call53.3, 0
  br i1 %tobool54.not.3, label %if.end56.3, label %if.end56.2.cleanup_crit_edge

if.end56.2.cleanup_crit_edge:                     ; preds = %if.end56.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.3:                                       ; preds = %if.end56.2
  %64 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %n_src, align 1
  %inc58.3 = add i8 %65, 1
  store i8 %inc58.3, ptr %n_src, align 1
  br i1 %cmp, label %for.body50.4, label %if.end56.3.for.end61_crit_edge

if.end56.3.for.end61_crit_edge:                   ; preds = %if.end56.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end61

for.body50.4:                                     ; preds = %if.end56.3
  %66 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %get_src, align 4
  %68 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %srcs269, align 4
  %arrayidx52.4 = getelementptr ptr, ptr %69, i32 4
  %call53.4 = call i32 %67(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %arrayidx52.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.4)
  %tobool54.not.4 = icmp eq i32 %call53.4, 0
  br i1 %tobool54.not.4, label %if.end56.4, label %for.body50.4.cleanup_crit_edge

for.body50.4.cleanup_crit_edge:                   ; preds = %for.body50.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.4:                                       ; preds = %for.body50.4
  %70 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %n_src, align 1
  %inc58.4 = add i8 %71, 1
  store i8 %inc58.4, ptr %n_src, align 1
  %72 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_src, align 4
  %74 = ptrtoint ptr %srcs269 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %srcs269, align 4
  %arrayidx52.5 = getelementptr ptr, ptr %75, i32 5
  %call53.5 = call i32 %73(ptr noundef %35, ptr noundef nonnull %src_dsc, ptr noundef %arrayidx52.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.5)
  %tobool54.not.5 = icmp eq i32 %call53.5, 0
  br i1 %tobool54.not.5, label %if.end56.5, label %if.end56.4.cleanup_crit_edge

if.end56.4.cleanup_crit_edge:                     ; preds = %if.end56.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.5:                                       ; preds = %if.end56.4
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %n_src, align 1
  %inc58.5 = add i8 %77, 1
  store i8 %inc58.5, ptr %n_src, align 1
  br label %for.end61

for.end61:                                        ; preds = %if.end56.5, %if.end56.3.for.end61_crit_edge
  %arrayidx63 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 1
  %78 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx63, align 4
  %80 = ptrtoint ptr %srcimp_dsc to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %srcimp_dsc, align 4
  %n_srcimp = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 52
  %81 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %n_srcimp, align 2
  %get_srcimp = getelementptr inbounds %struct.srcimp_mgr, ptr %79, i32 0, i32 7
  %82 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %get_srcimp, align 4
  %84 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %srcimps, align 4
  %call71 = call i32 %83(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %for.end61.cleanup_crit_edge

for.end61.cleanup_crit_edge:                      ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %for.end61
  %86 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %n_srcimp, align 2
  %inc76 = add i8 %87, 1
  store i8 %inc76, ptr %n_srcimp, align 2
  %88 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_srcimp, align 4
  %90 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %srcimps, align 4
  %arrayidx70.1 = getelementptr ptr, ptr %91, i32 1
  %call71.1 = call i32 %89(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %arrayidx70.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.1)
  %tobool72.not.1 = icmp eq i32 %call71.1, 0
  br i1 %tobool72.not.1, label %if.end74.1, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.1:                                       ; preds = %if.end74
  %92 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %n_srcimp, align 2
  %inc76.1 = add i8 %93, 1
  store i8 %inc76.1, ptr %n_srcimp, align 2
  %94 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_srcimp, align 4
  %96 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %srcimps, align 4
  %arrayidx70.2 = getelementptr ptr, ptr %97, i32 2
  %call71.2 = call i32 %95(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %arrayidx70.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.2)
  %tobool72.not.2 = icmp eq i32 %call71.2, 0
  br i1 %tobool72.not.2, label %if.end74.2, label %if.end74.1.cleanup_crit_edge

if.end74.1.cleanup_crit_edge:                     ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.2:                                       ; preds = %if.end74.1
  %98 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %n_srcimp, align 2
  %inc76.2 = add i8 %99, 1
  store i8 %inc76.2, ptr %n_srcimp, align 2
  %100 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_srcimp, align 4
  %102 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %srcimps, align 4
  %arrayidx70.3 = getelementptr ptr, ptr %103, i32 3
  %call71.3 = call i32 %101(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %arrayidx70.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.3)
  %tobool72.not.3 = icmp eq i32 %call71.3, 0
  br i1 %tobool72.not.3, label %if.end74.3, label %if.end74.2.cleanup_crit_edge

if.end74.2.cleanup_crit_edge:                     ; preds = %if.end74.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.3:                                       ; preds = %if.end74.2
  %104 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %n_srcimp, align 2
  %inc76.3 = add i8 %105, 1
  store i8 %inc76.3, ptr %n_srcimp, align 2
  br i1 %cmp, label %for.body68.4, label %if.end74.3.for.end79_crit_edge

if.end74.3.for.end79_crit_edge:                   ; preds = %if.end74.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end79

for.body68.4:                                     ; preds = %if.end74.3
  %106 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %get_srcimp, align 4
  %108 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %srcimps, align 4
  %arrayidx70.4 = getelementptr ptr, ptr %109, i32 4
  %call71.4 = call i32 %107(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %arrayidx70.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.4)
  %tobool72.not.4 = icmp eq i32 %call71.4, 0
  br i1 %tobool72.not.4, label %if.end74.4, label %for.body68.4.cleanup_crit_edge

for.body68.4.cleanup_crit_edge:                   ; preds = %for.body68.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.4:                                       ; preds = %for.body68.4
  %110 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %n_srcimp, align 2
  %inc76.4 = add i8 %111, 1
  store i8 %inc76.4, ptr %n_srcimp, align 2
  %112 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %get_srcimp, align 4
  %114 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %srcimps, align 4
  %arrayidx70.5 = getelementptr ptr, ptr %115, i32 5
  %call71.5 = call i32 %113(ptr noundef %79, ptr noundef nonnull %srcimp_dsc, ptr noundef %arrayidx70.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.5)
  %tobool72.not.5 = icmp eq i32 %call71.5, 0
  br i1 %tobool72.not.5, label %if.end74.5, label %if.end74.4.cleanup_crit_edge

if.end74.4.cleanup_crit_edge:                     ; preds = %if.end74.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.5:                                       ; preds = %if.end74.4
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %n_srcimp, align 2
  %inc76.5 = add i8 %117, 1
  store i8 %inc76.5, ptr %n_srcimp, align 2
  br label %for.end79

for.end79:                                        ; preds = %if.end74.5, %if.end74.3.for.end79_crit_edge
  %arrayidx81 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %118 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx81, align 4
  %120 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %msr, align 4
  %122 = ptrtoint ptr %sum_dsc to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %sum_dsc, align 4
  %n_pcm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 53
  %123 = ptrtoint ptr %n_pcm to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %n_pcm, align 1
  %get_sum = getelementptr inbounds %struct.sum_mgr, ptr %119, i32 0, i32 3
  %124 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %get_sum, align 4
  %126 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pcm, align 4
  %call90 = call i32 %125(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %for.end79.cleanup_crit_edge

for.end79.cleanup_crit_edge:                      ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %for.end79
  %128 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %n_pcm, align 1
  %inc95 = add i8 %129, 1
  store i8 %inc95, ptr %n_pcm, align 1
  %130 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %get_sum, align 4
  %132 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcm, align 4
  %arrayidx89.1 = getelementptr ptr, ptr %133, i32 1
  %call90.1 = call i32 %131(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.1)
  %tobool91.not.1 = icmp eq i32 %call90.1, 0
  br i1 %tobool91.not.1, label %if.end93.1, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.1:                                       ; preds = %if.end93
  %134 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %n_pcm, align 1
  %inc95.1 = add i8 %135, 1
  store i8 %inc95.1, ptr %n_pcm, align 1
  %136 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %get_sum, align 4
  %138 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcm, align 4
  %arrayidx89.2 = getelementptr ptr, ptr %139, i32 2
  %call90.2 = call i32 %137(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.2)
  %tobool91.not.2 = icmp eq i32 %call90.2, 0
  br i1 %tobool91.not.2, label %if.end93.2, label %if.end93.1.cleanup_crit_edge

if.end93.1.cleanup_crit_edge:                     ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.2:                                       ; preds = %if.end93.1
  %140 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %n_pcm, align 1
  %inc95.2 = add i8 %141, 1
  store i8 %inc95.2, ptr %n_pcm, align 1
  %142 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %get_sum, align 4
  %144 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcm, align 4
  %arrayidx89.3 = getelementptr ptr, ptr %145, i32 3
  %call90.3 = call i32 %143(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.3)
  %tobool91.not.3 = icmp eq i32 %call90.3, 0
  br i1 %tobool91.not.3, label %if.end93.3, label %if.end93.2.cleanup_crit_edge

if.end93.2.cleanup_crit_edge:                     ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.3:                                       ; preds = %if.end93.2
  %146 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %n_pcm, align 1
  %inc95.3 = add i8 %147, 1
  store i8 %inc95.3, ptr %n_pcm, align 1
  %148 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %get_sum, align 4
  %150 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcm, align 4
  %arrayidx89.4 = getelementptr ptr, ptr %151, i32 4
  %call90.4 = call i32 %149(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.4)
  %tobool91.not.4 = icmp eq i32 %call90.4, 0
  br i1 %tobool91.not.4, label %if.end93.4, label %if.end93.3.cleanup_crit_edge

if.end93.3.cleanup_crit_edge:                     ; preds = %if.end93.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.4:                                       ; preds = %if.end93.3
  %152 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %n_pcm, align 1
  %inc95.4 = add i8 %153, 1
  store i8 %inc95.4, ptr %n_pcm, align 1
  %154 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %get_sum, align 4
  %156 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcm, align 4
  %arrayidx89.5 = getelementptr ptr, ptr %157, i32 5
  %call90.5 = call i32 %155(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.5)
  %tobool91.not.5 = icmp eq i32 %call90.5, 0
  br i1 %tobool91.not.5, label %if.end93.5, label %if.end93.4.cleanup_crit_edge

if.end93.4.cleanup_crit_edge:                     ; preds = %if.end93.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.5:                                       ; preds = %if.end93.4
  %158 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %n_pcm, align 1
  %inc95.5 = add i8 %159, 1
  store i8 %inc95.5, ptr %n_pcm, align 1
  %160 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %get_sum, align 4
  %162 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcm, align 4
  %arrayidx89.6 = getelementptr ptr, ptr %163, i32 6
  %call90.6 = call i32 %161(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.6)
  %tobool91.not.6 = icmp eq i32 %call90.6, 0
  br i1 %tobool91.not.6, label %if.end93.6, label %if.end93.5.cleanup_crit_edge

if.end93.5.cleanup_crit_edge:                     ; preds = %if.end93.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.6:                                       ; preds = %if.end93.5
  %164 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %n_pcm, align 1
  %inc95.6 = add i8 %165, 1
  store i8 %inc95.6, ptr %n_pcm, align 1
  %166 = ptrtoint ptr %get_sum to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %get_sum, align 4
  %168 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pcm, align 4
  %arrayidx89.7 = getelementptr ptr, ptr %169, i32 7
  %call90.7 = call i32 %167(ptr noundef %119, ptr noundef nonnull %sum_dsc, ptr noundef %arrayidx89.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.7)
  %tobool91.not.7 = icmp eq i32 %call90.7, 0
  br i1 %tobool91.not.7, label %if.end93.7, label %if.end93.6.cleanup_crit_edge

if.end93.6.cleanup_crit_edge:                     ; preds = %if.end93.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93.7:                                       ; preds = %if.end93.6
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %n_pcm, align 1
  %inc95.7 = add i8 %171, 1
  store i8 %inc95.7, ptr %n_pcm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end93.7, %if.end93.6.cleanup_crit_edge, %if.end93.5.cleanup_crit_edge, %if.end93.4.cleanup_crit_edge, %if.end93.3.cleanup_crit_edge, %if.end93.2.cleanup_crit_edge, %if.end93.1.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %for.end79.cleanup_crit_edge, %if.end74.4.cleanup_crit_edge, %for.body68.4.cleanup_crit_edge, %if.end74.2.cleanup_crit_edge, %if.end74.1.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %for.end61.cleanup_crit_edge, %if.end56.4.cleanup_crit_edge, %for.body50.4.cleanup_crit_edge, %if.end56.2.cleanup_crit_edge, %if.end56.1.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end, %if.end14.cleanup_crit_edge, %if.end7.i.i233.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i233.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call90, %for.end79.cleanup_crit_edge ], [ %call90.1, %if.end93.cleanup_crit_edge ], [ %call90.2, %if.end93.1.cleanup_crit_edge ], [ %call90.3, %if.end93.2.cleanup_crit_edge ], [ %call90.4, %if.end93.3.cleanup_crit_edge ], [ %call90.5, %if.end93.4.cleanup_crit_edge ], [ %call90.6, %if.end93.5.cleanup_crit_edge ], [ %call90.7, %if.end93.6.cleanup_crit_edge ], [ 0, %if.end93.7 ], [ %call71, %for.end61.cleanup_crit_edge ], [ %call71.1, %if.end74.cleanup_crit_edge ], [ %call71.2, %if.end74.1.cleanup_crit_edge ], [ %call71.3, %if.end74.2.cleanup_crit_edge ], [ %call71.4, %for.body68.4.cleanup_crit_edge ], [ %call71.5, %if.end74.4.cleanup_crit_edge ], [ %call53, %for.end.cleanup_crit_edge ], [ %call53.1, %if.end56.cleanup_crit_edge ], [ %call53.2, %if.end56.1.cleanup_crit_edge ], [ %call53.3, %if.end56.2.cleanup_crit_edge ], [ %call53.4, %for.body50.4.cleanup_crit_edge ], [ %call53.5, %if.end56.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum_dsc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcimp_dsc) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %src_dsc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %da_desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_connect_resources(ptr nocapture noundef readonly %atc) unnamed_addr #0 align 64 {
entry:
  %rscs = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rscs) #7
  %0 = ptrtoint ptr %rscs to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rscs, align 8
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %1 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mixer1, align 4
  %get_output_ports = getelementptr inbounds %struct.ct_mixer, ptr %2, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x ptr], ptr %rscs, i32 0, i32 1
  %daios = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %3 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_output_ports, align 4
  %call = call i32 %4(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %rscs, ptr noundef %arrayidx2) #7
  %5 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %daios, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %ops = getelementptr inbounds %struct.dao, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %set_left_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %set_left_input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_left_input, align 4
  %13 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rscs, align 8
  %call5 = call i32 %12(ptr noundef %8, ptr noundef %14) #7
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %set_right_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_right_input to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_right_input, align 4
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2, align 4
  %call8 = call i32 %18(ptr noundef %8, ptr noundef %20) #7
  %21 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_output_ports, align 4
  %call.1 = call i32 %22(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %rscs, ptr noundef %arrayidx2) #7
  %23 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %daios, align 4
  %arrayidx3.1 = getelementptr ptr, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3.1, align 4
  %ops.1 = getelementptr inbounds %struct.dao, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.1, align 4
  %set_left_input.1 = getelementptr inbounds %struct.dao_rsc_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %set_left_input.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_left_input.1, align 4
  %31 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rscs, align 8
  %call5.1 = call i32 %30(ptr noundef %26, ptr noundef %32) #7
  %33 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.1, align 4
  %set_right_input.1 = getelementptr inbounds %struct.dao_rsc_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %set_right_input.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_right_input.1, align 4
  %37 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx2, align 4
  %call8.1 = call i32 %36(ptr noundef %26, ptr noundef %38) #7
  %39 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_output_ports, align 4
  %call.2 = call i32 %40(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %rscs, ptr noundef %arrayidx2) #7
  %41 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %daios, align 4
  %arrayidx3.2 = getelementptr ptr, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.2, align 4
  %ops.2 = getelementptr inbounds %struct.dao, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.2, align 4
  %set_left_input.2 = getelementptr inbounds %struct.dao_rsc_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %set_left_input.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_left_input.2, align 4
  %49 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rscs, align 8
  %call5.2 = call i32 %48(ptr noundef %44, ptr noundef %50) #7
  %51 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.2, align 4
  %set_right_input.2 = getelementptr inbounds %struct.dao_rsc_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %set_right_input.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_right_input.2, align 4
  %55 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx2, align 4
  %call8.2 = call i32 %54(ptr noundef %44, ptr noundef %56) #7
  %57 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_output_ports, align 4
  %call.3 = call i32 %58(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %rscs, ptr noundef %arrayidx2) #7
  %59 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %daios, align 4
  %arrayidx3.3 = getelementptr ptr, ptr %60, i32 3
  %61 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx3.3, align 4
  %ops.3 = getelementptr inbounds %struct.dao, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.3, align 4
  %set_left_input.3 = getelementptr inbounds %struct.dao_rsc_ops, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %set_left_input.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_left_input.3, align 4
  %67 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rscs, align 8
  %call5.3 = call i32 %66(ptr noundef %62, ptr noundef %68) #7
  %69 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.3, align 4
  %set_right_input.3 = getelementptr inbounds %struct.dao_rsc_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %set_right_input.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_right_input.3, align 4
  %73 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx2, align 4
  %call8.3 = call i32 %72(ptr noundef %62, ptr noundef %74) #7
  %75 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_output_ports, align 4
  %call.4 = call i32 %76(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %rscs, ptr noundef %arrayidx2) #7
  %77 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %daios, align 4
  %arrayidx3.4 = getelementptr ptr, ptr %78, i32 4
  %79 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx3.4, align 4
  %ops.4 = getelementptr inbounds %struct.dao, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ops.4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.4, align 4
  %set_left_input.4 = getelementptr inbounds %struct.dao_rsc_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %set_left_input.4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_left_input.4, align 4
  %85 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rscs, align 8
  %call5.4 = call i32 %84(ptr noundef %80, ptr noundef %86) #7
  %87 = ptrtoint ptr %ops.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.4, align 4
  %set_right_input.4 = getelementptr inbounds %struct.dao_rsc_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %set_right_input.4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_right_input.4, align 4
  %91 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx2, align 4
  %call8.4 = call i32 %90(ptr noundef %80, ptr noundef %92) #7
  %93 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %daios, align 4
  %arrayidx12 = getelementptr ptr, ptr %94, i32 5
  %95 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx12, align 4
  %rsc_mgrs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %97 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rsc_mgrs, align 4
  %srcs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 48
  %99 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %srcs, align 4
  %arrayidx16 = getelementptr ptr, ptr %100, i32 2
  %srcimps = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 49
  %101 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %srcimps, align 4
  %arrayidx17 = getelementptr ptr, ptr %102, i32 2
  call fastcc void @atc_connect_dai(ptr noundef %98, ptr noundef %96, ptr noundef %arrayidx16, ptr noundef %arrayidx17)
  %103 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %srcs, align 4
  %arrayidx19 = getelementptr ptr, ptr %104, i32 2
  %105 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx19, align 4
  %set_input_left = getelementptr inbounds %struct.ct_mixer, ptr %2, i32 0, i32 5
  %107 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_input_left, align 4
  %call20 = call i32 %108(ptr noundef %2, i32 noundef 7, ptr noundef %106) #7
  %109 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %srcs, align 4
  %arrayidx22 = getelementptr ptr, ptr %110, i32 3
  %111 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx22, align 4
  %set_input_right = getelementptr inbounds %struct.ct_mixer, ptr %2, i32 0, i32 6
  %113 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_input_right, align 4
  %call24 = call i32 %114(ptr noundef %2, i32 noundef 7, ptr noundef %112) #7
  %model = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 6
  %115 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %116)
  %cmp25 = icmp eq i32 %116, 7
  br i1 %cmp25, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %daios, align 4
  %arrayidx28 = getelementptr ptr, ptr %118, i32 7
  %119 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx28, align 4
  %121 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rsc_mgrs, align 4
  %123 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %srcs, align 4
  %arrayidx34 = getelementptr ptr, ptr %124, i32 4
  %125 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %srcimps, align 4
  %arrayidx36 = getelementptr ptr, ptr %126, i32 4
  call fastcc void @atc_connect_dai(ptr noundef %122, ptr noundef %120, ptr noundef %arrayidx34, ptr noundef %arrayidx36)
  %127 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %srcs, align 4
  %arrayidx38 = getelementptr ptr, ptr %128, i32 4
  %129 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx38, align 4
  %131 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %set_input_left, align 4
  %call41 = call i32 %132(ptr noundef %2, i32 noundef 6, ptr noundef %130) #7
  %133 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %srcs, align 4
  %arrayidx43 = getelementptr ptr, ptr %134, i32 5
  %135 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx43, align 4
  %137 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %set_input_right, align 4
  %call46 = call i32 %138(ptr noundef %2, i32 noundef 6, ptr noundef %136) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %139 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %daios, align 4
  %arrayidx49 = getelementptr ptr, ptr %140, i32 6
  %141 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx49, align 4
  %143 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rsc_mgrs, align 4
  %145 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %srcs, align 4
  %147 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %srcimps, align 4
  call fastcc void @atc_connect_dai(ptr noundef %144, ptr noundef %142, ptr noundef %146, ptr noundef %148)
  %149 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %srcs, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %153 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %set_input_left, align 4
  %call62 = call i32 %154(ptr noundef %2, i32 noundef 8, ptr noundef %152) #7
  %155 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %srcs, align 4
  %arrayidx64 = getelementptr ptr, ptr %156, i32 1
  %157 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx64, align 4
  %159 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %set_input_right, align 4
  %call67 = call i32 %160(ptr noundef %2, i32 noundef 8, ptr noundef %158) #7
  %pcm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 47
  %161 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pcm, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %set_input_left, align 4
  %call74 = call i32 %166(ptr noundef %2, i32 noundef 9, ptr noundef %164) #7
  %167 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcm, align 4
  %arrayidx76 = getelementptr ptr, ptr %168, i32 1
  %169 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx76, align 4
  %171 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %set_input_right, align 4
  %call79 = call i32 %172(ptr noundef %2, i32 noundef 9, ptr noundef %170) #7
  %173 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pcm, align 4
  %arrayidx71.1 = getelementptr ptr, ptr %174, i32 2
  %175 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx71.1, align 4
  %177 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_input_left, align 4
  %call74.1 = call i32 %178(ptr noundef %2, i32 noundef 10, ptr noundef %176) #7
  %179 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pcm, align 4
  %arrayidx76.1 = getelementptr ptr, ptr %180, i32 3
  %181 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx76.1, align 4
  %183 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %set_input_right, align 4
  %call79.1 = call i32 %184(ptr noundef %2, i32 noundef 10, ptr noundef %182) #7
  %185 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pcm, align 4
  %arrayidx71.2 = getelementptr ptr, ptr %186, i32 4
  %187 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx71.2, align 4
  %189 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %set_input_left, align 4
  %call74.2 = call i32 %190(ptr noundef %2, i32 noundef 11, ptr noundef %188) #7
  %191 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pcm, align 4
  %arrayidx76.2 = getelementptr ptr, ptr %192, i32 5
  %193 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx76.2, align 4
  %195 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %set_input_right, align 4
  %call79.2 = call i32 %196(ptr noundef %2, i32 noundef 11, ptr noundef %194) #7
  %197 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pcm, align 4
  %arrayidx71.3 = getelementptr ptr, ptr %198, i32 6
  %199 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx71.3, align 4
  %201 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %set_input_left, align 4
  %call74.3 = call i32 %202(ptr noundef %2, i32 noundef 12, ptr noundef %200) #7
  %203 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pcm, align 4
  %arrayidx76.3 = getelementptr ptr, ptr %204, i32 7
  %205 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx76.3, align 4
  %207 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %set_input_right, align 4
  %call79.3 = call i32 %208(ptr noundef %2, i32 noundef 12, ptr noundef %206) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rscs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ct_timer_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ct_atc_destroy(ptr noundef %atc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %atc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 54
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ct_timer_free(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %timer, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  tail call fastcc void @atc_release_resources(ptr noundef nonnull %atc)
  %mixer = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %3 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mixer, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @ct_mixer_destroy(ptr noundef nonnull %4) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %arrayidx12 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 0
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %if.end10.for.inc_crit_edge, label %if.then14

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @src_mgr_destroy(ptr noundef nonnull %6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end10.for.inc_crit_edge
  %arrayidx12.1 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 1
  %7 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12.1, align 4
  %tobool13.not.1 = icmp eq ptr %8, null
  br i1 %tobool13.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call19.1 = tail call i32 @srcimp_mgr_destroy(ptr noundef nonnull %8) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %for.inc.for.inc.1_crit_edge
  %arrayidx12.2 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 2
  %9 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.2, align 4
  %tobool13.not.2 = icmp eq ptr %10, null
  br i1 %tobool13.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then14.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then14.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call19.2 = tail call i32 @amixer_mgr_destroy(ptr noundef nonnull %10) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx12.3 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %11 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12.3, align 4
  %tobool13.not.3 = icmp eq ptr %12, null
  br i1 %tobool13.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then14.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then14.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %call19.3 = tail call i32 @sum_mgr_destroy(ptr noundef nonnull %12) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx12.4 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %13 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12.4, align 4
  %tobool13.not.4 = icmp eq ptr %14, null
  br i1 %tobool13.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then14.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then14.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %call19.4 = tail call i32 @daio_mgr_destroy(ptr noundef nonnull %14) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then14.4, %for.inc.3.for.inc.4_crit_edge
  %hw = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %for.inc.4.if.end25_crit_edge, label %if.then22

for.inc.4.if.end25_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @destroy_hw_obj(ptr noundef nonnull %16) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.inc.4.if.end25_crit_edge
  %vm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %17 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ct_vm_destroy(ptr noundef nonnull %18) #7
  %19 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vm, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  tail call void @kfree(ptr noundef nonnull %atc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_alsa_pcm_create(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_alsa_mix_create(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_map_audio_buffer(ptr nocapture noundef readonly %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apcm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %vm3 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %4 = ptrtoint ptr %vm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm3, align 4
  %map = getelementptr inbounds %struct.ct_vm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %8 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_bytes, align 4
  %call = tail call ptr %7(ptr noundef %5, ptr noundef nonnull %1, i32 noundef %9) #7
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %10 = ptrtoint ptr %vm_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %vm_block, align 4
  %tobool6.not = icmp eq ptr %call, null
  %. = select i1 %tobool6.not, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_unmap_audio_buffer(ptr nocapture noundef readonly %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %0 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vm1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %2 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm1, align 4
  %unmap = getelementptr inbounds %struct.ct_vm, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unmap, align 4
  tail call void %5(ptr noundef %3, ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %vm_block to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vm_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_get_ptp_phys(ptr nocapture noundef readonly %atc, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm, align 4
  %get_ptp_phys = getelementptr inbounds %struct.ct_vm, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get_ptp_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_ptp_phys, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef %index) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_playback_prepare(ptr noundef %atc, ptr noundef %apcm) #0 align 64 {
entry:
  %desc = alloca %struct.src_desc, align 1
  %mix_dsc = alloca %struct.amixer_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_mgrs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %0 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_mgrs, align 4
  %arrayidx2 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %desc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mix_dsc) #7
  %4 = ptrtoint ptr %mix_dsc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mix_dsc, align 4
  %5 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %apcm, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %device4 = getelementptr inbounds %struct.snd_pcm, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device4, align 4
  %call = tail call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm)
  %15 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apcm, align 4
  %runtime6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %runtime6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime6, align 4
  %channels7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %channels7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channels7, align 8
  %conv = trunc i32 %20 to i8
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %desc, align 1
  %msr = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %22 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msr, align 4
  %conv8 = trunc i32 %23 to i8
  %msr9 = getelementptr inbounds %struct.src_desc, ptr %desc, i32 0, i32 1
  %24 = ptrtoint ptr %msr9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8, ptr %msr9, align 1
  %mode = getelementptr inbounds %struct.src_desc, ptr %desc, i32 0, i32 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %mode, align 1
  %get_src = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %get_src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_src, align 4
  %src10 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %call11 = call i32 %27(ptr noundef %1, ptr noundef nonnull %desc, ptr noundef %src10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.error1_crit_edge

entry.error1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end:                                           ; preds = %entry
  %28 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %apcm, align 4
  %runtime13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %runtime13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime13, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate, align 4
  %rsr = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 2
  %34 = ptrtoint ptr %rsr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rsr, align 4
  %36 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msr, align 4
  %mul = mul i32 %37, %35
  %.frozen = freeze i32 %33
  %mul.frozen = freeze i32 %mul
  %div.i = udiv i32 %.frozen, %mul.frozen
  %38 = mul i32 %div.i, %mul.frozen
  %rem.i.decomposed = sub i32 %.frozen, %38
  %div1.i = udiv i32 %rem.i.decomposed, 100
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end
  %b.0.i = phi i32 [ 31, %if.end ], [ %dec.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i)
  %cmp.i = icmp sgt i32 %b.0.i, -1
  %shr.i = lshr i32 %div1.i, %b.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  %dec.i = add nsw i32 %b.0.i, -1
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %shl.i = shl i32 %div.i, 24
  br i1 %cmp.i, label %if.then.i, label %for.end.i.atc_get_pitch.exit_crit_edge

for.end.i.atc_get_pitch.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i = udiv i32 %mul, 100
  %sub.i = sub nsw i32 31, %b.0.i
  %shl4.i = shl i32 %div1.i, %sub.i
  %div5.i = udiv i32 %shl4.i, %div2.i
  %sub7.i = add nsw i32 %b.0.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i)
  %cmp8.i = icmp ugt i32 %b.0.i, 6
  %shl10.i = shl i32 %div5.i, %sub7.i
  %sub11.i = sub nsw i32 7, %b.0.i
  %shr12.i = lshr i32 %div5.i, %sub11.i
  %input_rate.addr.0.i = select i1 %cmp8.i, i32 %shl10.i, i32 %shr12.i
  %or.i = or i32 %input_rate.addr.0.i, %shl.i
  br label %atc_get_pitch.exit

atc_get_pitch.exit:                               ; preds = %if.then.i, %for.end.i.atc_get_pitch.exit_crit_edge
  %pitch.0.i = phi i32 [ %or.i, %if.then.i ], [ %shl.i, %for.end.i.atc_get_pitch.exit_crit_edge ]
  %39 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src10, align 4
  %ops = getelementptr inbounds %struct.src, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %set_pitch = getelementptr inbounds %struct.src_rsc_ops, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %set_pitch to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_pitch, align 4
  %call17 = call i32 %44(ptr noundef %40, i32 noundef %pitch.0.i) #7
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %set_rom = getelementptr inbounds %struct.src_rsc_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %set_rom to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_rom, align 4
  %49 = add i32 %pitch.0.i, -4362077
  call void @__sanitizer_cov_trace_const_cmp4(i32 24494735, i32 %49)
  %50 = icmp ult i32 %49, 24494735
  br i1 %50, label %atc_get_pitch.exit.select_rom.exit_crit_edge, label %if.else.i

atc_get_pitch.exit.select_rom.exit_crit_edge:     ; preds = %atc_get_pitch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit

if.else.i:                                        ; preds = %atc_get_pitch.exit
  %51 = zext i32 %pitch.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %pitch.0.i, label %if.else8.i [
    i32 30828134, label %if.else.i.select_rom.exit_crit_edge
    i32 30828135, label %if.else.i.select_rom.exit_crit_edge173
    i32 33554432, label %if.then7.i
  ]

if.else.i.select_rom.exit_crit_edge173:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit

if.else.i.select_rom.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %pitch.0.i)
  %cmp9.i = icmp ult i32 %pitch.0.i, 134217729
  %..i = select i1 %cmp9.i, i32 0, i32 -2
  br label %select_rom.exit

select_rom.exit:                                  ; preds = %if.else8.i, %if.then7.i, %if.else.i.select_rom.exit_crit_edge, %if.else.i.select_rom.exit_crit_edge173, %atc_get_pitch.exit.select_rom.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %if.then7.i ], [ 1, %atc_get_pitch.exit.select_rom.exit_crit_edge ], [ 2, %if.else.i.select_rom.exit_crit_edge ], [ 2, %if.else.i.select_rom.exit_crit_edge173 ], [ %..i, %if.else8.i ]
  %call20 = call i32 %48(ptr noundef %40, i32 noundef %retval.0.i) #7
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %set_sf = getelementptr inbounds %struct.src_rsc_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %set_sf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_sf, align 4
  %56 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %apcm, align 4
  %runtime23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %runtime23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %runtime23, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %format, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %61, label %do.end.i [
    i32 1, label %select_rom.exit.convert_format.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 32, label %sw.bb2.i
    i32 10, label %sw.bb3.i
    i32 14, label %sw.bb4.i
  ]

select_rom.exit.convert_format.exit_crit_edge:    ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb1.i:                                         ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb2.i:                                         ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb3.i:                                         ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb4.i:                                         ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

do.end.i:                                         ; preds = %select_rom.exit
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.20, i32 noundef %61) #10
  br label %convert_format.exit

convert_format.exit:                              ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %select_rom.exit.convert_format.exit_crit_edge
  %retval.0.i150 = phi i32 [ 1, %do.end.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %select_rom.exit.convert_format.exit_crit_edge ]
  %call25 = call i32 %55(ptr noundef %40, i32 noundef %retval.0.i150) #7
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops, align 4
  %set_pm = getelementptr inbounds %struct.src_rsc_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %set_pm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_pm, align 4
  %next_interleave = getelementptr inbounds %struct.src_rsc_ops, ptr %68, i32 0, i32 17
  %71 = ptrtoint ptr %next_interleave to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %next_interleave, align 4
  %call28 = call ptr %72(ptr noundef %40) #7
  %cmp = icmp ne ptr %call28, null
  %conv29 = zext i1 %cmp to i32
  %call30 = call i32 %70(ptr noundef %40, i32 noundef %conv29) #7
  %73 = call i32 @llvm.smax.i32(i32 %10, i32 2)
  %74 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %73, i32 4) #7
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !123

kcalloc.exit.thread:                              ; preds = %convert_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %amixers155 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %76 = ptrtoint ptr %amixers155 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %amixers155, align 4
  br label %error1

if.end7.i.i:                                      ; preds = %convert_format.exit
  %77 = extractvalue { i32, i1 } %74, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #12
  %amixers = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %78 = ptrtoint ptr %amixers to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call8.i.i, ptr %amixers, align 4
  %tobool35.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool35.not, label %if.end7.i.i.error1_crit_edge, label %if.end37

if.end7.i.i.error1_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end37:                                         ; preds = %if.end7.i.i
  %79 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msr, align 4
  %81 = ptrtoint ptr %mix_dsc to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %mix_dsc, align 4
  %n_amixer40 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 12
  %82 = ptrtoint ptr %n_amixer40 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %n_amixer40, align 2
  %get_amixer = getelementptr inbounds %struct.amixer_mgr, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %if.end37
  %i.0164 = phi i32 [ 0, %if.end37 ], [ %inc50, %if.end48.for.body_crit_edge ]
  %83 = ptrtoint ptr %get_amixer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_amixer, align 4
  %85 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %amixers, align 4
  %arrayidx44 = getelementptr ptr, ptr %86, i32 %i.0164
  %call45 = call i32 %84(ptr noundef %3, ptr noundef nonnull %mix_dsc, ptr noundef %arrayidx44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.body.error1_crit_edge

for.body.error1_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end48:                                         ; preds = %for.body
  %87 = ptrtoint ptr %n_amixer40 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %n_amixer40, align 2
  %inc = add i8 %88, 1
  store i8 %inc, ptr %n_amixer40, align 2
  %inc50 = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc50, %73
  br i1 %exitcond.not, label %for.end, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end48
  %89 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %apcm, align 4
  %tobool.not.i151 = icmp eq ptr %90, null
  br i1 %tobool.not.i151, label %for.end.if.end55_crit_edge, label %if.end.i

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end.i:                                         ; preds = %for.end
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %90, i32 0, i32 11
  %91 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %runtime2.i, align 4
  %vm3.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %93 = ptrtoint ptr %vm3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vm3.i, align 4
  %map.i = getelementptr inbounds %struct.ct_vm, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map.i, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %92, i32 0, i32 52
  %97 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_bytes.i, align 4
  %call.i = call ptr %96(ptr noundef %94, ptr noundef nonnull %90, i32 noundef %98) #7
  %vm_block.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %99 = ptrtoint ptr %vm_block.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %vm_block.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.end.i.error1_crit_edge, label %if.end.i.if.end55_crit_edge

if.end.i.if.end55_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end.i.error1_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end55:                                         ; preds = %if.end.i.if.end55_crit_edge, %for.end.if.end55_crit_edge
  %100 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %src10, align 4
  %atc_mutex = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 13
  %pcm64 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 47
  %mul65 = shl i32 %14, 1
  br label %for.body60

for.body60:                                       ; preds = %for.inc76.for.body60_crit_edge, %if.end55
  %i.1166 = phi i32 [ 0, %if.end55 ], [ %inc77, %for.inc76.for.body60_crit_edge ]
  %src.0165 = phi ptr [ %101, %if.end55 ], [ %src.1, %for.inc76.for.body60_crit_edge ]
  %102 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %amixers, align 4
  %arrayidx62 = getelementptr ptr, ptr %103, i32 %i.1166
  %104 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx62, align 4
  call void @mutex_lock_nested(ptr noundef %atc_mutex, i32 noundef 0) #7
  %ops63 = getelementptr inbounds %struct.amixer, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops63, align 4
  %setup = getelementptr inbounds %struct.amixer_rsc_ops, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %setup, align 4
  %110 = ptrtoint ptr %pcm64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pcm64, align 4
  %add = add i32 %i.1166, %mul65
  %arrayidx66 = getelementptr ptr, ptr %111, i32 %add
  %112 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx66, align 4
  %call67 = call i32 %109(ptr noundef %105, ptr noundef %src.0165, i32 noundef 7168, ptr noundef %113) #7
  call void @mutex_unlock(ptr noundef %atc_mutex) #7
  %ops69 = getelementptr inbounds %struct.src, ptr %src.0165, i32 0, i32 2
  %114 = ptrtoint ptr %ops69 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops69, align 4
  %next_interleave70 = getelementptr inbounds %struct.src_rsc_ops, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %next_interleave70 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %next_interleave70, align 4
  %call71 = call ptr %117(ptr noundef %src.0165) #7
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.then73, label %for.body60.for.inc76_crit_edge

for.body60.for.inc76_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc76

if.then73:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %src10, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %if.then73, %for.body60.for.inc76_crit_edge
  %src.1 = phi ptr [ %call71, %for.body60.for.inc76_crit_edge ], [ %119, %if.then73 ]
  %inc77 = add nuw nsw i32 %i.1166, 1
  %exitcond168.not = icmp eq i32 %inc77, %73
  br i1 %exitcond168.not, label %for.end78, label %for.inc76.for.body60_crit_edge

for.inc76.for.body60_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body60

for.end78:                                        ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %120 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %timer, align 4
  call void @ct_timer_prepare(ptr noundef %121) #7
  br label %cleanup

error1:                                           ; preds = %if.end.i.error1_crit_edge, %for.body.error1_crit_edge, %if.end7.i.i.error1_crit_edge, %kcalloc.exit.thread, %entry.error1_crit_edge
  %err.0 = phi i32 [ %call11, %entry.error1_crit_edge ], [ -12, %if.end7.i.i.error1_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -2, %if.end.i.error1_crit_edge ], [ %call45, %for.body.error1_crit_edge ]
  %call79 = call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm)
  br label %cleanup

cleanup:                                          ; preds = %error1, %for.end78
  %retval.0 = phi i32 [ %err.0, %error1 ], [ 0, %for.end78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mix_dsc) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_playback_start(ptr nocapture noundef readnone %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %started = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 3
  %0 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %src1 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %1 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %src1, align 4
  %bf.set = or i8 %bf.load, -128
  %3 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %started, align 4
  %multi = getelementptr inbounds %struct.src, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %multi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multi, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load4 = load i32, ptr %2, align 4
  %bf.clear5 = and i32 %bf.load4, 15
  %mul = mul nuw nsw i32 %bf.clear5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %cmp = icmp ult i32 %mul, 8
  %phi.bo = shl nuw nsw i32 %mul, 7
  %spec.select = select i1 %cmp, i32 %phi.bo, i32 1024
  %ops = getelementptr inbounds %struct.src, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %set_sa = getelementptr inbounds %struct.src_rsc_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %set_sa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_sa, align 4
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %11 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_block, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call = tail call i32 %10(ptr noundef %2, i32 noundef %14) #7
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %set_la = getelementptr inbounds %struct.src_rsc_ops, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %set_la to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_la, align 4
  %19 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_block, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %size = getelementptr inbounds %struct.ct_vm_block, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %add = add i32 %24, %22
  %call12 = tail call i32 %18(ptr noundef %2, i32 noundef %add) #7
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %set_ca = getelementptr inbounds %struct.src_rsc_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %set_ca to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_ca, align 4
  %29 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_block, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add16 = add i32 %32, %spec.select
  %call17 = tail call i32 %28(ptr noundef %2, i32 noundef %add16) #7
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %set_cisz = getelementptr inbounds %struct.src_rsc_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %set_cisz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_cisz, align 4
  %call19 = tail call i32 %36(ptr noundef %2, i32 noundef %spec.select) #7
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %set_bm = getelementptr inbounds %struct.src_rsc_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %set_bm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_bm, align 4
  %call21 = tail call i32 %40(ptr noundef %2, i32 noundef 1) #7
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call23 = tail call i32 %44(ptr noundef %2, i32 noundef 4) #7
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %commit_write = getelementptr inbounds %struct.src_rsc_ops, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %commit_write, align 4
  %call25 = tail call i32 %48(ptr noundef %2) #7
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %49 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %timer, align 4
  tail call void @ct_timer_start(ptr noundef %50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_stop(ptr nocapture noundef readnone %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  tail call void @ct_timer_stop(ptr noundef %1) #7
  %src1 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %2 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src1, align 4
  %ops = getelementptr inbounds %struct.src, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_bm = getelementptr inbounds %struct.src_rsc_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %set_bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_bm, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 0) #7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call3 = tail call i32 %11(ptr noundef %3, i32 noundef 0) #7
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %commit_write = getelementptr inbounds %struct.src_rsc_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %commit_write, align 4
  %call5 = tail call i32 %15(ptr noundef %3) #7
  %srccs = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %16 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %srccs, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %n_srcc = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 10
  %18 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n_srcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp36.not = icmp eq i8 %19, 0
  br i1 %cmp36.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %srccs, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %i.037
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %ops8 = getelementptr inbounds %struct.src, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops8, align 4
  %set_bm9 = getelementptr inbounds %struct.src_rsc_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %set_bm9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_bm9, align 4
  %call10 = tail call i32 %27(ptr noundef %23, i32 noundef 0) #7
  %28 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops8, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call13 = tail call i32 %31(ptr noundef %23, i32 noundef 0) #7
  %32 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops8, align 4
  %commit_write15 = getelementptr inbounds %struct.src_rsc_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %commit_write15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %commit_write15, align 4
  %call16 = tail call i32 %35(ptr noundef %23) #7
  %inc = add nuw nsw i32 %i.037, 1
  %36 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %n_srcc, align 4
  %conv = zext i8 %37 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %started = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 3
  %38 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %started, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %started, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_playback_position(ptr nocapture noundef readonly %atc, ptr nocapture noundef readonly %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %src1 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %0 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.src, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_ca = getelementptr inbounds %struct.src_rsc_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %get_ca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_ca, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1) #7
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %6 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_block, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_pcm_playback_position.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atc_pcm_playback_position, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !124

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_block, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %size11 = getelementptr inbounds %struct.ct_vm_block, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_pcm_playback_position.__UNIQUE_ID_ddebug242, ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %call, i32 noundef %17, i32 noundef %19) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %20 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_block, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %position.0 = phi i32 [ %23, %do.end ], [ %call, %if.end.if.end15_crit_edge ]
  %24 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vm_block, align 4
  %size17 = getelementptr inbounds %struct.ct_vm_block, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size17, align 4
  %multi = getelementptr inbounds %struct.src, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %multi to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %multi, align 4
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %1, align 4
  %bf.clear = and i32 %bf.load, 15
  %mul = mul nuw nsw i32 %bf.clear, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %cmp18 = icmp ult i32 %mul, 8
  %phi.bo.neg = mul nsw i32 %mul, -128
  %spec.select = select i1 %cmp18, i32 %phi.bo.neg, i32 -1024
  %add = add i32 %27, %position.0
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %25, align 4
  %sub = sub i32 %add, %32
  %sub23 = add i32 %sub, %spec.select
  %rem = urem i32 %sub23, %27
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rem, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_passthru_playback_prepare(ptr noundef %atc, ptr noundef %apcm) #0 align 64 {
entry:
  %desc.i = alloca %struct.src_desc, align 1
  %mix_dsc.i = alloca %struct.amixer_desc, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm)
  %daios.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %0 = ptrtoint ptr %daios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %daios.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apcm, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime.i, align 4
  %rate1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status.i, align 4, !annotation !122
  %11 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %spdif_passthru_playback_setup.exit.thread [
    i32 48000, label %entry.sw.epilog.i_crit_edge
    i32 44100, label %sw.bb2.i
    i32 32000, label %sw.bb3.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

spdif_passthru_playback_setup.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %entry.sw.epilog.i_crit_edge
  %iec958_con_fs.0.i = phi i32 [ 3, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 2, %entry.sw.epilog.i_crit_edge ]
  %atc_mutex.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %atc_mutex.i, i32 noundef 0) #7
  %ops.i = getelementptr inbounds %struct.dao, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_spos.i = getelementptr inbounds %struct.dao_rsc_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %get_spos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_spos.i, align 4
  %call.i = call i32 %15(ptr noundef %3, ptr noundef nonnull %status.i) #7
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status.i, align 4
  %shr.i = lshr i32 %17, 24
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %iec958_con_fs.0.i)
  %cmp.not.i = icmp eq i32 %and.i, %iec958_con_fs.0.i
  br i1 %cmp.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %if.then.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = and i32 %17, -251658241
  %shl.i = shl nuw nsw i32 %iec958_con_fs.0.i, 24
  %or.i = or i32 %and5.i, %shl.i
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %status.i, align 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call8.i = call i32 %22(ptr noundef %3, i32 noundef %or.i) #7
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %commit_write.i = getelementptr inbounds %struct.dao_rsc_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %commit_write.i, align 4
  %call10.i = call i32 %26(ptr noundef %3) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  %pll_rate.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 4
  %27 = ptrtoint ptr %pll_rate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %28)
  %cmp11.not.i = icmp eq i32 %9, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %9)
  %cmp13.not.i = icmp eq i32 %9, 32000
  %or.cond.i = or i1 %cmp13.not.i, %cmp11.not.i
  br i1 %or.cond.i, label %spdif_passthru_playback_setup.exit.thread71, label %spdif_passthru_playback_setup.exit

spdif_passthru_playback_setup.exit.thread71:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %atc_mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %if.end

spdif_passthru_playback_setup.exit:               ; preds = %if.end.i
  %hw1.i.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %29 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1.i.i, align 4
  %pll_init.i.i = getelementptr inbounds %struct.hw, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %pll_init.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll_init.i.i, align 4
  %call.i.i = call i32 %32(ptr noundef %30, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %9, i32 0
  %33 = ptrtoint ptr %pll_rate.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i.i, ptr %pll_rate.i, align 4
  call void @mutex_unlock(ptr noundef %atc_mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.not.i.i, label %spdif_passthru_playback_setup.exit.if.end_crit_edge, label %spdif_passthru_playback_setup.exit.cleanup_crit_edge

spdif_passthru_playback_setup.exit.cleanup_crit_edge: ; preds = %spdif_passthru_playback_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

spdif_passthru_playback_setup.exit.if.end_crit_edge: ; preds = %spdif_passthru_playback_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %spdif_passthru_playback_setup.exit.if.end_crit_edge, %spdif_passthru_playback_setup.exit.thread71
  %rsc_mgrs.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %34 = ptrtoint ptr %rsc_mgrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rsc_mgrs.i, align 4
  %arrayidx2.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 2
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx2.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %desc.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  %38 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mix_dsc.i, align 4
  %39 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %apcm, align 4
  %runtime.i59 = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %runtime.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime.i59, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channels.i, align 8
  %45 = ptrtoint ptr %pll_rate.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pll_rate.i, align 4
  %call.i61 = call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm) #7
  %47 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %apcm, align 4
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %runtime4.i, align 4
  %channels5.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channels5.i, align 8
  %conv.i = trunc i32 %52 to i8
  %53 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i, ptr %desc.i, align 1
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %50, i32 0, i32 14
  %54 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rate.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %storemerge.i = phi i8 [ 1, %if.end ], [ %shl.i62, %while.cond.i.while.cond.i_crit_edge ]
  %conv9.i = zext i8 %storemerge.i to i32
  %mul.i = mul i32 %46, %conv9.i
  %cmp.i = icmp ugt i32 %55, %mul.i
  %shl.i62 = shl i8 %storemerge.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %msr.i = getelementptr inbounds %struct.src_desc, ptr %desc.i, i32 0, i32 1
  %56 = ptrtoint ptr %msr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %storemerge.i, ptr %msr.i, align 1
  %mode.i = getelementptr inbounds %struct.src_desc, ptr %desc.i, i32 0, i32 2
  %57 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %mode.i, align 1
  %get_src.i = getelementptr inbounds %struct.src_mgr, ptr %35, i32 0, i32 3
  %58 = ptrtoint ptr %get_src.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_src.i, align 4
  %src14.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %call15.i = call i32 %59(ptr noundef %35, ptr noundef nonnull %desc.i, ptr noundef %src14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.end.i63, label %while.end.i.spdif_passthru_playback_get_resources.exit_crit_edge

while.end.i.spdif_passthru_playback_get_resources.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spdif_passthru_playback_get_resources.exit

if.end.i63:                                       ; preds = %while.end.i
  %60 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %apcm, align 4
  %runtime17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %runtime17.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %runtime17.i, align 4
  %rate18.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %rate18.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rate18.i, align 4
  %66 = ptrtoint ptr %msr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %msr.i, align 1
  %conv20.i = zext i8 %67 to i32
  %mul21.i = mul i32 %46, %conv20.i
  %.frozen = freeze i32 %65
  %mul21.i.frozen = freeze i32 %mul21.i
  %div.i.i = udiv i32 %.frozen, %mul21.i.frozen
  %68 = mul i32 %div.i.i, %mul21.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen, %68
  %div1.i.i = udiv i32 %rem.i.i.decomposed, 100
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i63
  %b.0.i.i = phi i32 [ 31, %if.end.i63 ], [ %dec.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i.i)
  %cmp.i.i = icmp sgt i32 %b.0.i.i, -1
  %shr.i.i = lshr i32 %div1.i.i, %b.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool.not.i.i64 = icmp eq i32 %shr.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i64, i1 false
  %dec.i.i = add nsw i32 %b.0.i.i, -1
  br i1 %or.cond.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %for.end.i.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %shl.i.i = shl i32 %div.i.i, 24
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.i.atc_get_pitch.exit.i_crit_edge

for.end.i.i.atc_get_pitch.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i.i = udiv i32 %mul21.i, 100
  %sub.i.i = sub nsw i32 31, %b.0.i.i
  %shl4.i.i = shl i32 %div1.i.i, %sub.i.i
  %div5.i.i = udiv i32 %shl4.i.i, %div2.i.i
  %sub7.i.i = add nsw i32 %b.0.i.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i.i)
  %cmp8.i.i = icmp ugt i32 %b.0.i.i, 6
  %shl10.i.i = shl i32 %div5.i.i, %sub7.i.i
  %sub11.i.i = sub nsw i32 7, %b.0.i.i
  %shr12.i.i = lshr i32 %div5.i.i, %sub11.i.i
  %input_rate.addr.0.i.i = select i1 %cmp8.i.i, i32 %shl10.i.i, i32 %shr12.i.i
  %or.i.i = or i32 %input_rate.addr.0.i.i, %shl.i.i
  br label %atc_get_pitch.exit.i

atc_get_pitch.exit.i:                             ; preds = %if.then.i.i, %for.end.i.i.atc_get_pitch.exit.i_crit_edge
  %pitch.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %shl.i.i, %for.end.i.i.atc_get_pitch.exit.i_crit_edge ]
  %69 = ptrtoint ptr %src14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %src14.i, align 4
  %ops.i65 = getelementptr inbounds %struct.src, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i65, align 4
  %set_pitch.i = getelementptr inbounds %struct.src_rsc_ops, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %set_pitch.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_pitch.i, align 4
  %call24.i = call i32 %74(ptr noundef %70, i32 noundef %pitch.0.i.i) #7
  %75 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i65, align 4
  %set_rom.i = getelementptr inbounds %struct.src_rsc_ops, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %set_rom.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_rom.i, align 4
  %79 = add i32 %pitch.0.i.i, -4362077
  call void @__sanitizer_cov_trace_const_cmp4(i32 24494735, i32 %79)
  %80 = icmp ult i32 %79, 24494735
  br i1 %80, label %atc_get_pitch.exit.i.select_rom.exit.i_crit_edge, label %if.else.i.i

atc_get_pitch.exit.i.select_rom.exit.i_crit_edge: ; preds = %atc_get_pitch.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else.i.i:                                      ; preds = %atc_get_pitch.exit.i
  %81 = zext i32 %pitch.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %pitch.0.i.i, label %if.else8.i.i [
    i32 30828134, label %if.else.i.i.select_rom.exit.i_crit_edge
    i32 30828135, label %if.else.i.i.select_rom.exit.i_crit_edge86
    i32 33554432, label %if.then7.i.i
  ]

if.else.i.i.select_rom.exit.i_crit_edge86:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else.i.i.select_rom.exit.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %pitch.0.i.i)
  %cmp9.i.i = icmp ult i32 %pitch.0.i.i, 134217729
  %..i.i = select i1 %cmp9.i.i, i32 0, i32 -2
  br label %select_rom.exit.i

select_rom.exit.i:                                ; preds = %if.else8.i.i, %if.then7.i.i, %if.else.i.i.select_rom.exit.i_crit_edge, %if.else.i.i.select_rom.exit.i_crit_edge86, %atc_get_pitch.exit.i.select_rom.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %if.then7.i.i ], [ 1, %atc_get_pitch.exit.i.select_rom.exit.i_crit_edge ], [ 2, %if.else.i.i.select_rom.exit.i_crit_edge ], [ 2, %if.else.i.i.select_rom.exit.i_crit_edge86 ], [ %..i.i, %if.else8.i.i ]
  %call27.i = call i32 %78(ptr noundef %70, i32 noundef %retval.0.i.i) #7
  %82 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i65, align 4
  %set_sf.i = getelementptr inbounds %struct.src_rsc_ops, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %set_sf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_sf.i, align 4
  %86 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %apcm, align 4
  %runtime30.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %87, i32 0, i32 11
  %88 = ptrtoint ptr %runtime30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %runtime30.i, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %format.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %91, label %do.end.i.i [
    i32 1, label %select_rom.exit.i.convert_format.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 32, label %sw.bb2.i.i
    i32 10, label %sw.bb3.i.i
    i32 14, label %sw.bb4.i.i
  ]

select_rom.exit.i.convert_format.exit.i_crit_edge: ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit.i

sw.bb1.i.i:                                       ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit.i

sw.bb2.i.i:                                       ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit.i

sw.bb3.i.i:                                       ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit.i

sw.bb4.i.i:                                       ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit.i

do.end.i.i:                                       ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %93 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %94, i32 0, i32 27
  %95 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.20, i32 noundef %91) #10
  br label %convert_format.exit.i

convert_format.exit.i:                            ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %select_rom.exit.i.convert_format.exit.i_crit_edge
  %retval.0.i120.i = phi i32 [ 1, %do.end.i.i ], [ 4, %sw.bb4.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %select_rom.exit.i.convert_format.exit.i_crit_edge ]
  %call32.i = call i32 %85(ptr noundef %70, i32 noundef %retval.0.i120.i) #7
  %97 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i65, align 4
  %set_pm.i = getelementptr inbounds %struct.src_rsc_ops, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %set_pm.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_pm.i, align 4
  %next_interleave.i = getelementptr inbounds %struct.src_rsc_ops, ptr %98, i32 0, i32 17
  %101 = ptrtoint ptr %next_interleave.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %next_interleave.i, align 4
  %call35.i = call ptr %102(ptr noundef %70) #7
  %cmp36.i = icmp ne ptr %call35.i, null
  %conv37.i = zext i1 %cmp36.i to i32
  %call38.i = call i32 %100(ptr noundef %70, i32 noundef %conv37.i) #7
  %103 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i65, align 4
  %set_bp.i = getelementptr inbounds %struct.src_rsc_ops, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %set_bp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_bp.i, align 4
  %call40.i = call i32 %106(ptr noundef %70, i32 noundef 1) #7
  %107 = call i32 @llvm.smax.i32(i32 %44, i32 2) #7
  %108 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %107, i32 4) #7
  %109 = extractvalue { i32, i1 } %108, 1
  br i1 %109, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !123

kcalloc.exit.thread.i:                            ; preds = %convert_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %amixers125.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %110 = ptrtoint ptr %amixers125.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %amixers125.i, align 4
  br label %spdif_passthru_playback_get_resources.exit

if.end7.i.i.i:                                    ; preds = %convert_format.exit.i
  %111 = extractvalue { i32, i1 } %108, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %111, i32 noundef 3520) #12
  %amixers.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %112 = ptrtoint ptr %amixers.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call8.i.i.i, ptr %amixers.i, align 4
  %tobool45.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool45.not.i, label %if.end7.i.i.i.spdif_passthru_playback_get_resources.exit_crit_edge, label %if.end47.i

if.end7.i.i.i.spdif_passthru_playback_get_resources.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spdif_passthru_playback_get_resources.exit

if.end47.i:                                       ; preds = %if.end7.i.i.i
  %113 = ptrtoint ptr %msr.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %msr.i, align 1
  %conv49.i = zext i8 %114 to i32
  %115 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv49.i, ptr %mix_dsc.i, align 4
  %n_amixer51.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 12
  %116 = ptrtoint ptr %n_amixer51.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %n_amixer51.i, align 2
  %get_amixer.i = getelementptr inbounds %struct.amixer_mgr, ptr %37, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end59.i.for.body.i_crit_edge, %if.end47.i
  %i.0134.i = phi i32 [ 0, %if.end47.i ], [ %inc61.i, %if.end59.i.for.body.i_crit_edge ]
  %117 = ptrtoint ptr %get_amixer.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %get_amixer.i, align 4
  %119 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %amixers.i, align 4
  %arrayidx55.i = getelementptr ptr, ptr %120, i32 %i.0134.i
  %call56.i = call i32 %118(ptr noundef %37, ptr noundef nonnull %mix_dsc.i, ptr noundef %arrayidx55.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %for.body.i.spdif_passthru_playback_get_resources.exit_crit_edge

for.body.i.spdif_passthru_playback_get_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spdif_passthru_playback_get_resources.exit

if.end59.i:                                       ; preds = %for.body.i
  %121 = ptrtoint ptr %n_amixer51.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %n_amixer51.i, align 2
  %inc.i = add i8 %122, 1
  store i8 %inc.i, ptr %n_amixer51.i, align 2
  %inc61.i = add nuw nsw i32 %i.0134.i, 1
  %exitcond.not.i = icmp eq i32 %inc61.i, %107
  br i1 %exitcond.not.i, label %for.end.i, label %if.end59.i.for.body.i_crit_edge

if.end59.i.for.body.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end59.i
  %123 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %apcm, align 4
  %tobool.not.i121.i = icmp eq ptr %124, null
  br i1 %tobool.not.i121.i, label %for.end.i.if.end5_crit_edge, label %if.end.i.i

for.end.i.if.end5_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i.i:                                       ; preds = %for.end.i
  %runtime2.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %runtime2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %runtime2.i.i, align 4
  %vm3.i.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %127 = ptrtoint ptr %vm3.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vm3.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.ct_vm, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map.i.i, align 4
  %dma_bytes.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %126, i32 0, i32 52
  %131 = ptrtoint ptr %dma_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_bytes.i.i, align 4
  %call.i.i66 = call ptr %130(ptr noundef %128, ptr noundef nonnull %124, i32 noundef %132) #7
  %vm_block.i.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %133 = ptrtoint ptr %vm_block.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i.i66, ptr %vm_block.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call.i.i66, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.spdif_passthru_playback_get_resources.exit_crit_edge, label %if.end.i.i.if.end5_crit_edge

if.end.i.i.if.end5_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i.i.spdif_passthru_playback_get_resources.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spdif_passthru_playback_get_resources.exit

spdif_passthru_playback_get_resources.exit:       ; preds = %if.end.i.i.spdif_passthru_playback_get_resources.exit_crit_edge, %for.body.i.spdif_passthru_playback_get_resources.exit_crit_edge, %if.end7.i.i.i.spdif_passthru_playback_get_resources.exit_crit_edge, %kcalloc.exit.thread.i, %while.end.i.spdif_passthru_playback_get_resources.exit_crit_edge
  %err.0.i67 = phi i32 [ %call15.i, %while.end.i.spdif_passthru_playback_get_resources.exit_crit_edge ], [ -12, %if.end7.i.i.i.spdif_passthru_playback_get_resources.exit_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -2, %if.end.i.i.spdif_passthru_playback_get_resources.exit_crit_edge ], [ %call56.i, %for.body.i.spdif_passthru_playback_get_resources.exit_crit_edge ]
  %call67.i = call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %desc.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i.if.end5_crit_edge, %for.end.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %desc.i) #7
  %134 = ptrtoint ptr %n_amixer51.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %n_amixer51.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp78.not = icmp eq i8 %135, 0
  br i1 %cmp78.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %136 = ptrtoint ptr %src14.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %src14.i, align 4
  %amixers = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %src.080 = phi ptr [ %137, %for.body.lr.ph ], [ %src.1, %for.inc.for.body_crit_edge ]
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %138 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %amixers, align 4
  %arrayidx = getelementptr ptr, ptr %139, i32 %i.079
  %140 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.amixer, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops, align 4
  %setup = getelementptr inbounds %struct.amixer_rsc_ops, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %setup, align 4
  %call8 = call i32 %145(ptr noundef %141, ptr noundef %src.080, i32 noundef 7168, ptr noundef null) #7
  %ops9 = getelementptr inbounds %struct.src, ptr %src.080, i32 0, i32 2
  %146 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops9, align 4
  %next_interleave = getelementptr inbounds %struct.src_rsc_ops, ptr %147, i32 0, i32 17
  %148 = ptrtoint ptr %next_interleave to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %next_interleave, align 4
  %call10 = call ptr %149(ptr noundef %src.080) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %src14.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %src14.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %src.1 = phi ptr [ %call10, %for.body.for.inc_crit_edge ], [ %151, %if.then12 ]
  %inc = add nuw nsw i32 %i.079, 1
  %152 = ptrtoint ptr %n_amixer51.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %n_amixer51.i, align 2
  %conv = zext i8 %153 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  call void @mutex_lock_nested(ptr noundef %atc_mutex.i, i32 noundef 0) #7
  %154 = ptrtoint ptr %daios.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %daios.i, align 4
  %arrayidx15 = getelementptr ptr, ptr %155, i32 4
  %156 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx15, align 4
  %amixers16 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %158 = ptrtoint ptr %amixers16 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %amixers16, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %ops18 = getelementptr inbounds %struct.dao, ptr %157, i32 0, i32 1
  %162 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops18, align 4
  %set_left_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %set_left_input to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %set_left_input, align 4
  %call20 = call i32 %165(ptr noundef %157, ptr noundef %161) #7
  %166 = ptrtoint ptr %amixers16 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %amixers16, align 4
  %arrayidx22 = getelementptr ptr, ptr %167, i32 1
  %168 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx22, align 4
  %170 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops18, align 4
  %set_right_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %set_right_input to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %set_right_input, align 4
  %call25 = call i32 %173(ptr noundef %157, ptr noundef %169) #7
  call void @mutex_unlock(ptr noundef %atc_mutex.i) #7
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %174 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %timer, align 4
  call void @ct_timer_prepare(ptr noundef %175) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %spdif_passthru_playback_get_resources.exit, %spdif_passthru_playback_setup.exit.cleanup_crit_edge, %spdif_passthru_playback_setup.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i.i, %spdif_passthru_playback_setup.exit.cleanup_crit_edge ], [ %err.0.i67, %spdif_passthru_playback_get_resources.exit ], [ -2, %spdif_passthru_playback_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_capture_prepare(ptr nocapture noundef readonly %atc, ptr noundef %apcm) #0 align 64 {
entry:
  %src_dsc.i = alloca %struct.src_desc, align 1
  %srcimp_dsc.i = alloca %struct.srcimp_desc, align 4
  %srcimp.i = alloca ptr, align 4
  %mix_dsc.i = alloca %struct.amixer_desc, align 4
  %sum_dsc.i = alloca %struct.sum_desc, align 4
  %src_node_conf.i = alloca [2 x %struct.src_node_conf_t], align 4
  %out_ports = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %0 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out_ports) #7
  %2 = call ptr @memset(ptr %out_ports, i32 0, i32 32)
  %call = tail call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm)
  %rsc_mgrs.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %3 = ptrtoint ptr %rsc_mgrs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsc_mgrs.i, align 4
  %arrayidx2.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 2
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %src_dsc.i) #7
  %11 = call ptr @memset(ptr %src_dsc.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcimp_dsc.i) #7
  %12 = ptrtoint ptr %srcimp_dsc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %srcimp_dsc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcimp.i) #7
  %13 = ptrtoint ptr %srcimp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %srcimp.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  %14 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mix_dsc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum_dsc.i) #7
  %15 = ptrtoint ptr %sum_dsc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sum_dsc.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_node_conf.i) #7
  %16 = call ptr @memset(ptr %src_node_conf.i, i32 0, i32 16)
  %call.i = tail call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm) #7
  %17 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %apcm, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels.i, align 8
  %rsr.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 2
  %23 = ptrtoint ptr %rsr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rsr.i, align 4
  %msr.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %25 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msr.i, align 4
  %mul.i = mul i32 %26, %24
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 14
  %27 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate.i, align 4
  %mul.i.frozen = freeze i32 %mul.i
  %.frozen = freeze i32 %28
  %div.i.i = udiv i32 %mul.i.frozen, %.frozen
  %29 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %mul.i.frozen, %29
  %div1.i.i = udiv i32 %rem.i.i.decomposed, 100
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %b.0.i.i = phi i32 [ 31, %entry ], [ %dec.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i.i)
  %cmp.i.i = icmp sgt i32 %b.0.i.i, -1
  %shr.i.i = lshr i32 %div1.i.i, %b.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool.not.i.i = icmp eq i32 %shr.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  %dec.i.i = add nsw i32 %b.0.i.i, -1
  br i1 %or.cond.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %for.end.i.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %shl.i.i = shl i32 %div.i.i, 24
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.i.atc_get_pitch.exit.i_crit_edge

for.end.i.i.atc_get_pitch.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i.i = udiv i32 %28, 100
  %sub.i.i = sub nsw i32 31, %b.0.i.i
  %shl4.i.i = shl i32 %div1.i.i, %sub.i.i
  %div5.i.i = udiv i32 %shl4.i.i, %div2.i.i
  %sub7.i.i = add nsw i32 %b.0.i.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i.i)
  %cmp8.i.i = icmp ugt i32 %b.0.i.i, 6
  %shl10.i.i = shl i32 %div5.i.i, %sub7.i.i
  %sub11.i.i = sub nsw i32 7, %b.0.i.i
  %shr12.i.i = lshr i32 %div5.i.i, %sub11.i.i
  %input_rate.addr.0.i.i = select i1 %cmp8.i.i, i32 %shl10.i.i, i32 %shr12.i.i
  %or.i.i = or i32 %input_rate.addr.0.i.i, %shl.i.i
  br label %atc_get_pitch.exit.i

atc_get_pitch.exit.i:                             ; preds = %if.then.i.i, %for.end.i.i.atc_get_pitch.exit.i_crit_edge
  %pitch.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %shl.i.i, %for.end.i.i.atc_get_pitch.exit.i_crit_edge ]
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %atc_get_pitch.exit.i
  %b.0.i.i.i = phi i32 [ 31, %atc_get_pitch.exit.i ], [ %dec.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %b.0.i.i.i, -1
  %shr.i.i.i = lshr i32 %div1.i.i, %b.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %shr.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %tobool.not.i.i.i, i1 false
  %dec.i.i.i = add nsw i32 %b.0.i.i.i, -1
  br i1 %or.cond.i.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, label %for.end.i.i.i

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.i.i.atc_get_pitch.exit.i.i_crit_edge

for.end.i.i.i.atc_get_pitch.exit.i.i_crit_edge:   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i.i.i = udiv i32 %28, 100
  %sub.i.i.i = sub nsw i32 31, %b.0.i.i.i
  %shl4.i.i.i = shl i32 %div1.i.i, %sub.i.i.i
  %div5.i.i.i = udiv i32 %shl4.i.i.i, %div2.i.i.i
  %sub7.i.i.i = add nsw i32 %b.0.i.i.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i.i.i)
  %cmp8.i.i.i = icmp ugt i32 %b.0.i.i.i, 6
  %shl10.i.i.i = shl i32 %div5.i.i.i, %sub7.i.i.i
  %sub11.i.i.i = sub nsw i32 7, %b.0.i.i.i
  %shr12.i.i.i = lshr i32 %div5.i.i.i, %sub11.i.i.i
  %input_rate.addr.0.i.i.i = select i1 %cmp8.i.i.i, i32 %shl10.i.i.i, i32 %shr12.i.i.i
  %or.i.i.i = or i32 %input_rate.addr.0.i.i.i, %shl.i.i
  br label %atc_get_pitch.exit.i.i

atc_get_pitch.exit.i.i:                           ; preds = %if.then.i.i.i, %for.end.i.i.i.atc_get_pitch.exit.i.i_crit_edge
  %pitch.0.i.i.i = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %shl.i.i, %for.end.i.i.i.atc_get_pitch.exit.i.i_crit_edge ]
  %30 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %26, label %if.then21.i.i [
    i32 1, label %if.then.i302.i
    i32 0, label %atc_get_pitch.exit.i.i.setup_src_node_conf.exit.i_crit_edge
  ]

atc_get_pitch.exit.i.i.setup_src_node_conf.exit.i_crit_edge: ; preds = %atc_get_pitch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_src_node_conf.exit.i

if.then.i302.i:                                   ; preds = %atc_get_pitch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %src_node_conf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %pitch.0.i.i.i, ptr %src_node_conf.i, align 4
  %msr6.i.i = getelementptr inbounds %struct.src_node_conf_t, ptr %src_node_conf.i, i32 0, i32 1
  %32 = ptrtoint ptr %msr6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i.i = load i32, ptr %msr6.i.i, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, 127
  %bf.set18.i.i = or i32 %bf.clear.i.i, 16843136
  store i32 %bf.set18.i.i, ptr %msr6.i.i, align 4
  br label %setup_src_node_conf.exit.i

if.then21.i.i:                                    ; preds = %atc_get_pitch.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %pitch.0.i.i.i)
  %cmp22.i.i = icmp ugt i32 %pitch.0.i.i.i, 134217728
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.else79.i.i

if.then23.i.i:                                    ; preds = %if.then21.i.i
  %shl.i303.i = shl i32 %26, 24
  %33 = ptrtoint ptr %src_node_conf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl.i303.i, ptr %src_node_conf.i, align 4
  %mix_msr28.i.i = getelementptr inbounds %struct.src_node_conf_t, ptr %src_node_conf.i, i32 0, i32 1
  %34 = ptrtoint ptr %mix_msr28.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load29.i.i = load i32, ptr %mix_msr28.i.i, align 4
  %bf.value.i.i = shl i32 %26, 8
  %bf.shl.i.i = and i32 %bf.value.i.i, 65280
  %bf.set36.i.i = and i32 %bf.load29.i.i, 127
  %bf.clear41.i.i = or i32 %bf.shl.i.i, %bf.set36.i.i
  %bf.set42.i.i = or i32 %bf.clear41.i.i, 16842752
  store i32 %bf.set42.i.i, ptr %mix_msr28.i.i, align 4
  %.frozen255 = freeze i32 %24
  %.frozen256 = freeze i32 %28
  %div.i153.i.i = udiv i32 %.frozen255, %.frozen256
  %35 = mul i32 %div.i153.i.i, %.frozen256
  %rem.i154.i.i.decomposed = sub i32 %.frozen255, %35
  %div1.i155.i.i = udiv i32 %rem.i154.i.i.decomposed, 100
  br label %for.cond.i162.i.i

for.cond.i162.i.i:                                ; preds = %for.cond.i162.i.i.for.cond.i162.i.i_crit_edge, %if.then23.i.i
  %b.0.i156.i.i = phi i32 [ 31, %if.then23.i.i ], [ %dec.i161.i.i, %for.cond.i162.i.i.for.cond.i162.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i156.i.i)
  %cmp.i157.i.i = icmp sgt i32 %b.0.i156.i.i, -1
  %shr.i158.i.i = lshr i32 %div1.i155.i.i, %b.0.i156.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i158.i.i)
  %tobool.not.i159.i.i = icmp eq i32 %shr.i158.i.i, 0
  %or.cond.i160.i.i = select i1 %cmp.i157.i.i, i1 %tobool.not.i159.i.i, i1 false
  %dec.i161.i.i = add nsw i32 %b.0.i156.i.i, -1
  br i1 %or.cond.i160.i.i, label %for.cond.i162.i.i.for.cond.i162.i.i_crit_edge, label %for.end.i164.i.i

for.cond.i162.i.i.for.cond.i162.i.i_crit_edge:    ; preds = %for.cond.i162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i162.i.i

for.end.i164.i.i:                                 ; preds = %for.cond.i162.i.i
  %shl.i163.i.i = shl i32 %div.i153.i.i, 24
  br i1 %cmp.i157.i.i, label %if.then.i176.i.i, label %for.end.i164.i.i.atc_get_pitch.exit178.i.i_crit_edge

for.end.i164.i.i.atc_get_pitch.exit178.i.i_crit_edge: ; preds = %for.end.i164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit178.i.i

if.then.i176.i.i:                                 ; preds = %for.end.i164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i165.i.i = udiv i32 %28, 100
  %sub.i166.i.i = sub nsw i32 31, %b.0.i156.i.i
  %shl4.i167.i.i = shl i32 %div1.i155.i.i, %sub.i166.i.i
  %div5.i168.i.i = udiv i32 %shl4.i167.i.i, %div2.i165.i.i
  %sub7.i169.i.i = add nsw i32 %b.0.i156.i.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i156.i.i)
  %cmp8.i170.i.i = icmp ugt i32 %b.0.i156.i.i, 6
  %shl10.i171.i.i = shl i32 %div5.i168.i.i, %sub7.i169.i.i
  %sub11.i172.i.i = sub nsw i32 7, %b.0.i156.i.i
  %shr12.i173.i.i = lshr i32 %div5.i168.i.i, %sub11.i172.i.i
  %input_rate.addr.0.i174.i.i = select i1 %cmp8.i170.i.i, i32 %shl10.i171.i.i, i32 %shr12.i173.i.i
  %or.i175.i.i = or i32 %input_rate.addr.0.i174.i.i, %shl.i163.i.i
  br label %atc_get_pitch.exit178.i.i

atc_get_pitch.exit178.i.i:                        ; preds = %if.then.i176.i.i, %for.end.i164.i.i.atc_get_pitch.exit178.i.i_crit_edge
  %pitch.0.i177.i.i = phi i32 [ %or.i175.i.i, %if.then.i176.i.i ], [ %shl.i163.i.i, %for.end.i164.i.i.atc_get_pitch.exit178.i.i_crit_edge ]
  %arrayidx53.i.i = getelementptr inbounds %struct.src_node_conf_t, ptr %src_node_conf.i, i32 1
  %36 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %pitch.0.i177.i.i, ptr %arrayidx53.i.i, align 4
  %imp_msr56.i.i = getelementptr inbounds %struct.src_node_conf_t, ptr %src_node_conf.i, i32 1, i32 1
  %37 = ptrtoint ptr %imp_msr56.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load57.i.i = load i32, ptr %imp_msr56.i.i, align 4
  %bf.clear58.i.i = and i32 %bf.load57.i.i, 127
  %bf.set74.i.i = or i32 %bf.clear58.i.i, 16843136
  store i32 %bf.set74.i.i, ptr %imp_msr56.i.i, align 4
  %mul78.i.i = shl i32 %22, 1
  br label %setup_src_node_conf.exit.i

if.else79.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %pitch.0.i.i.i)
  %cmp80.i.i = icmp ugt i32 %pitch.0.i.i.i, 16777216
  br i1 %cmp80.i.i, label %if.then81.i.i, label %if.else79.i.i.setup_src_node_conf.exit.i_crit_edge

if.else79.i.i.setup_src_node_conf.exit.i_crit_edge: ; preds = %if.else79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_src_node_conf.exit.i

if.then81.i.i:                                    ; preds = %if.else79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %src_node_conf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %pitch.0.i.i.i, ptr %src_node_conf.i, align 4
  %imp_msr86.i.i = getelementptr inbounds %struct.src_node_conf_t, ptr %src_node_conf.i, i32 0, i32 1
  %39 = ptrtoint ptr %imp_msr86.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load87.i.i = load i32, ptr %imp_msr86.i.i, align 4
  %bf.value88.i.i = and i32 %26, 255
  %bf.shl89.i.i = shl nuw nsw i32 %bf.value88.i.i, 8
  %bf.clear90.i.i = and i32 %bf.load87.i.i, 127
  %bf.set91.i.i = or i32 %bf.clear90.i.i, %bf.shl89.i.i
  %bf.shl96.i.i = shl nuw nsw i32 %bf.value88.i.i, 16
  %bf.set98.i.i = or i32 %bf.set91.i.i, %bf.shl96.i.i
  %bf.shl103.i.i = shl i32 %26, 24
  %bf.set105.i.i = or i32 %bf.set98.i.i, %bf.shl103.i.i
  %bf.set110.i.i = or i32 %bf.set105.i.i, 128
  store i32 %bf.set110.i.i, ptr %imp_msr86.i.i, align 4
  br label %setup_src_node_conf.exit.i

setup_src_node_conf.exit.i:                       ; preds = %if.then81.i.i, %if.else79.i.i.setup_src_node_conf.exit.i_crit_edge, %atc_get_pitch.exit178.i.i, %if.then.i302.i, %atc_get_pitch.exit.i.i.setup_src_node_conf.exit.i_crit_edge
  %n_srcc.0.i = phi i32 [ %mul78.i.i, %atc_get_pitch.exit178.i.i ], [ %22, %if.then81.i.i ], [ 0, %if.else79.i.i.setup_src_node_conf.exit.i_crit_edge ], [ %26, %atc_get_pitch.exit.i.i.setup_src_node_conf.exit.i_crit_edge ], [ %22, %if.then.i302.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  %mul10.i = select i1 %cmp.i, i32 2, i32 0
  %add.i = add i32 %n_srcc.0.i, %mul10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp11.i = icmp sgt i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %pitch.0.i.i)
  %cmp12.i = icmp ult i32 %pitch.0.i.i, 134217729
  %or.cond.i = select i1 %cmp11.i, i1 %cmp12.i, i1 false
  %mul14.i = mul i32 %26, %22
  %mul14.pn.i = select i1 %or.cond.i, i32 %mul14.i, i32 %22
  %add15.i = select i1 %or.cond.i, i32 %mul14.i, i32 0
  %n_amixer.0.i = add i32 %add.i, %add15.i
  %n_srcimp.0.i = add i32 %n_srcc.0.i, %mul14.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_srcc.0.i)
  %tobool.not.i = icmp eq i32 %n_srcc.0.i, 0
  br i1 %tobool.not.i, label %setup_src_node_conf.exit.i.if.end26.i_crit_edge, label %if.then20.i

setup_src_node_conf.exit.i.if.end26.i_crit_edge:  ; preds = %setup_src_node_conf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then20.i:                                      ; preds = %setup_src_node_conf.exit.i
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_srcc.0.i, i32 4) #7
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !123

kcalloc.exit.thread.i:                            ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %srccs404.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %42 = ptrtoint ptr %srccs404.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %srccs404.i, align 4
  br label %atc_pcm_capture_get_resources.exit.thread

if.end7.i.i.i:                                    ; preds = %if.then20.i
  %43 = extractvalue { i32, i1 } %40, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #12
  %srccs.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %44 = ptrtoint ptr %srccs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i.i, ptr %srccs.i, align 4
  %tobool23.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool23.not.i, label %if.end7.i.i.i.atc_pcm_capture_get_resources.exit.thread_crit_edge, label %if.end7.i.i.i.if.end26.i_crit_edge

if.end7.i.i.i.if.end26.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end7.i.i.i.atc_pcm_capture_get_resources.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_pcm_capture_get_resources.exit.thread

if.end26.i:                                       ; preds = %if.end7.i.i.i.if.end26.i_crit_edge, %setup_src_node_conf.exit.i.if.end26.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_amixer.0.i)
  %tobool27.not.i = icmp eq i32 %n_amixer.0.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.then28.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end26.i
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_amixer.0.i, i32 4) #7
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %kcalloc.exit336.thread.i, label %if.end7.i.i334.i, !prof !123

kcalloc.exit336.thread.i:                         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %amixers411.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  br label %error1.sink.split.i

if.end7.i.i334.i:                                 ; preds = %if.then28.i
  %47 = extractvalue { i32, i1 } %45, 0
  %call8.i.i333.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #12
  %amixers.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %48 = ptrtoint ptr %amixers.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i333.i, ptr %amixers.i, align 4
  %tobool31.not.i = icmp eq ptr %call8.i.i333.i, null
  br i1 %tobool31.not.i, label %if.end7.i.i334.i.error1.i_crit_edge, label %if.end7.i.i334.i.if.end34.i_crit_edge

if.end7.i.i334.i.if.end34.i_crit_edge:            ; preds = %if.end7.i.i334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end7.i.i334.i.error1.i_crit_edge:              ; preds = %if.end7.i.i334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end34.i:                                       ; preds = %if.end7.i.i334.i.if.end34.i_crit_edge, %if.end26.i.if.end34.i_crit_edge
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_srcimp.0.i, i32 4) #7
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %kcalloc.exit369.thread.i, label %if.end7.i.i367.i, !prof !123

kcalloc.exit369.thread.i:                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %srcimps418.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  br label %error1.sink.split.i

if.end7.i.i367.i:                                 ; preds = %if.end34.i
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i366.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #12
  %srcimps.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  %52 = ptrtoint ptr %srcimps.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i.i366.i, ptr %srcimps.i, align 4
  %tobool37.not.i = icmp eq ptr %call8.i.i366.i, null
  br i1 %tobool37.not.i, label %if.end7.i.i367.i.error1.i_crit_edge, label %if.end39.i

if.end7.i.i367.i.error1.i_crit_edge:              ; preds = %if.end7.i.i367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end39.i:                                       ; preds = %if.end7.i.i367.i
  %53 = ptrtoint ptr %src_dsc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %src_dsc.i, align 1
  %mode.i = getelementptr inbounds %struct.src_desc, ptr %src_dsc.i, i32 0, i32 2
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %mode.i, align 1
  %n_srcc41.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 10
  %55 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %n_srcc41.i, align 4
  br i1 %tobool.not.i, label %if.end39.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end39.i.for.end.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end39.i
  %msr45.i = getelementptr inbounds %struct.src_desc, ptr %src_dsc.i, i32 0, i32 1
  %get_src.i = getelementptr inbounds %struct.src_mgr, ptr %4, i32 0, i32 3
  %srccs46.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %select_rom.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0430.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc68.i, %select_rom.exit.i.for.body.i_crit_edge ]
  %div.i = sdiv i32 %i.0430.i, %22
  %msr44.i = getelementptr [2 x %struct.src_node_conf_t], ptr %src_node_conf.i, i32 0, i32 %div.i, i32 1
  %56 = ptrtoint ptr %msr44.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %msr44.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %conv.i = trunc i32 %bf.lshr.i to i8
  %57 = ptrtoint ptr %msr45.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %msr45.i, align 1
  %58 = ptrtoint ptr %get_src.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_src.i, align 4
  %60 = ptrtoint ptr %srccs46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %srccs46.i, align 4
  %arrayidx47.i = getelementptr ptr, ptr %61, i32 %i.0430.i
  %call48.i = call i32 %59(ptr noundef %4, ptr noundef nonnull %src_dsc.i, ptr noundef %arrayidx47.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %for.body.i.error1.i_crit_edge

for.body.i.error1.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end51.i:                                       ; preds = %for.body.i
  %arrayidx43.i = getelementptr [2 x %struct.src_node_conf_t], ptr %src_node_conf.i, i32 0, i32 %div.i
  %62 = ptrtoint ptr %srccs46.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %srccs46.i, align 4
  %arrayidx53.i = getelementptr ptr, ptr %63, i32 %i.0430.i
  %64 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx53.i, align 4
  %66 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx43.i, align 4
  %ops.i = getelementptr inbounds %struct.src, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %set_pitch.i = getelementptr inbounds %struct.src_rsc_ops, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %set_pitch.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_pitch.i, align 4
  %call57.i = call i32 %71(ptr noundef %65, i32 noundef %67) #7
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %set_rom.i = getelementptr inbounds %struct.src_rsc_ops, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %set_rom.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_rom.i, align 4
  %76 = add i32 %67, -4362077
  call void @__sanitizer_cov_trace_const_cmp4(i32 24494735, i32 %76)
  %77 = icmp ult i32 %76, 24494735
  br i1 %77, label %if.end51.i.select_rom.exit.i_crit_edge, label %if.else.i.i

if.end51.i.select_rom.exit.i_crit_edge:           ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else.i.i:                                      ; preds = %if.end51.i
  %78 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %67, label %if.else8.i.i [
    i32 30828134, label %if.else.i.i.select_rom.exit.i_crit_edge
    i32 30828135, label %if.else.i.i.select_rom.exit.i_crit_edge259
    i32 33554432, label %if.then7.i.i
  ]

if.else.i.i.select_rom.exit.i_crit_edge259:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else.i.i.select_rom.exit.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_rom.exit.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %67)
  %cmp9.i.i = icmp ult i32 %67, 134217729
  %..i.i = select i1 %cmp9.i.i, i32 0, i32 -2
  br label %select_rom.exit.i

select_rom.exit.i:                                ; preds = %if.else8.i.i, %if.then7.i.i, %if.else.i.i.select_rom.exit.i_crit_edge, %if.else.i.i.select_rom.exit.i_crit_edge259, %if.end51.i.select_rom.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %if.then7.i.i ], [ 1, %if.end51.i.select_rom.exit.i_crit_edge ], [ 2, %if.else.i.i.select_rom.exit.i_crit_edge ], [ 2, %if.else.i.i.select_rom.exit.i_crit_edge259 ], [ %..i.i, %if.else8.i.i ]
  %call60.i = call i32 %75(ptr noundef %65, i32 noundef %retval.0.i.i) #7
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i, align 4
  %set_vo.i = getelementptr inbounds %struct.src_rsc_ops, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %set_vo.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_vo.i, align 4
  %bf.lshr65.i = lshr i32 %bf.load.i, 7
  %bf.clear.i = and i32 %bf.lshr65.i, 1
  %call66.i = call i32 %82(ptr noundef %65, i32 noundef %bf.clear.i) #7
  %83 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %n_srcc41.i, align 4
  %inc.i = add i8 %84, 1
  store i8 %inc.i, ptr %n_srcc41.i, align 4
  %inc68.i = add nuw nsw i32 %i.0430.i, 1
  %exitcond.not.i = icmp eq i32 %inc68.i, %n_srcc.0.i
  br i1 %exitcond.not.i, label %select_rom.exit.i.for.end.i_crit_edge, label %select_rom.exit.i.for.body.i_crit_edge

select_rom.exit.i.for.body.i_crit_edge:           ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

select_rom.exit.i.for.end.i_crit_edge:            ; preds = %select_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %select_rom.exit.i.for.end.i_crit_edge, %if.end39.i.for.end.i_crit_edge
  %n_amixer69.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 12
  %85 = ptrtoint ptr %n_amixer69.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %n_amixer69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_amixer.0.i)
  %cmp71431.i = icmp sgt i32 %n_amixer.0.i, 0
  br i1 %cmp71431.i, label %for.body73.lr.ph.i, label %for.end.i.for.end107.i_crit_edge

for.end.i.for.end107.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end107.i

for.body73.lr.ph.i:                               ; preds = %for.end.i
  %get_amixer.i = getelementptr inbounds %struct.amixer_mgr, ptr %8, i32 0, i32 3
  %amixers97.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  br label %for.body73.i

for.body73.i:                                     ; preds = %if.end102.i.for.body73.i_crit_edge, %for.body73.lr.ph.i
  %i.1432.i = phi i32 [ 0, %for.body73.lr.ph.i ], [ %inc106.i, %if.end102.i.for.body73.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1432.i, i32 %mul10.i)
  %cmp75.i = icmp ult i32 %i.1432.i, %mul10.i
  br i1 %cmp75.i, label %if.then77.i, label %if.else80.i

if.then77.i:                                      ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msr.i, align 4
  %88 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %mix_dsc.i, align 4
  br label %if.end96.i

if.else80.i:                                      ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1432.i, i32 %add.i)
  %cmp83.i = icmp slt i32 %i.1432.i, %add.i
  br i1 %cmp83.i, label %if.then85.i, label %if.else93.i

if.then85.i:                                      ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 %i.1432.i, %mul10.i
  %div87.i = sdiv i32 %sub.i, %22
  %mix_msr.i = getelementptr [2 x %struct.src_node_conf_t], ptr %src_node_conf.i, i32 0, i32 %div87.i, i32 1
  %89 = ptrtoint ptr %mix_msr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load89.i = load i32, ptr %mix_msr.i, align 4
  %bf.lshr90.i = lshr i32 %bf.load89.i, 16
  %bf.clear91.i = and i32 %bf.lshr90.i, 255
  %90 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %bf.clear91.i, ptr %mix_dsc.i, align 4
  br label %if.end96.i

if.else93.i:                                      ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %mix_dsc.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %mix_dsc.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else93.i, %if.then85.i, %if.then77.i
  %92 = ptrtoint ptr %get_amixer.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %get_amixer.i, align 4
  %94 = ptrtoint ptr %amixers97.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %amixers97.i, align 4
  %arrayidx98.i = getelementptr ptr, ptr %95, i32 %i.1432.i
  %call99.i = call i32 %93(ptr noundef %8, ptr noundef nonnull %mix_dsc.i, ptr noundef %arrayidx98.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.end96.i.error1.i_crit_edge

if.end96.i.error1.i_crit_edge:                    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end102.i:                                      ; preds = %if.end96.i
  %96 = ptrtoint ptr %n_amixer69.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %n_amixer69.i, align 2
  %inc104.i = add i8 %97, 1
  store i8 %inc104.i, ptr %n_amixer69.i, align 2
  %inc106.i = add nuw nsw i32 %i.1432.i, 1
  %exitcond442.not.i = icmp eq i32 %inc106.i, %n_amixer.0.i
  br i1 %exitcond442.not.i, label %if.end102.i.for.end107.i_crit_edge, label %if.end102.i.for.body73.i_crit_edge

if.end102.i.for.body73.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73.i

if.end102.i.for.end107.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end107.i

for.end107.i:                                     ; preds = %if.end102.i.for.end107.i_crit_edge, %for.end.i.for.end107.i_crit_edge
  %98 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msr.i, align 4
  %100 = ptrtoint ptr %sum_dsc.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %sum_dsc.i, align 4
  %get_sum.i = getelementptr inbounds %struct.sum_mgr, ptr %10, i32 0, i32 3
  %101 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %get_sum.i, align 4
  %mono.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 9
  %call110.i = call i32 %102(ptr noundef %10, ptr noundef nonnull %sum_dsc.i, ptr noundef %mono.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %for.end107.i.error1.i_crit_edge

for.end107.i.error1.i_crit_edge:                  ; preds = %for.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end113.i:                                      ; preds = %for.end107.i
  %103 = ptrtoint ptr %rsr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rsr.i, align 4
  %105 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msr.i, align 4
  %mul116.i = mul i32 %106, %104
  %107 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %apcm, align 4
  %runtime118.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %runtime118.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %runtime118.i, align 4
  %rate119.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %110, i32 0, i32 14
  %111 = ptrtoint ptr %rate119.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rate119.i, align 4
  %mul116.i.frozen = freeze i32 %mul116.i
  %.frozen257 = freeze i32 %112
  %div.i370.i = udiv i32 %mul116.i.frozen, %.frozen257
  %113 = mul i32 %div.i370.i, %.frozen257
  %rem.i371.i.decomposed = sub i32 %mul116.i.frozen, %113
  %div1.i372.i = udiv i32 %rem.i371.i.decomposed, 100
  br label %for.cond.i379.i

for.cond.i379.i:                                  ; preds = %for.cond.i379.i.for.cond.i379.i_crit_edge, %if.end113.i
  %b.0.i373.i = phi i32 [ 31, %if.end113.i ], [ %dec.i378.i, %for.cond.i379.i.for.cond.i379.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i373.i)
  %cmp.i374.i = icmp sgt i32 %b.0.i373.i, -1
  %shr.i375.i = lshr i32 %div1.i372.i, %b.0.i373.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i375.i)
  %tobool.not.i376.i = icmp eq i32 %shr.i375.i, 0
  %or.cond.i377.i = select i1 %cmp.i374.i, i1 %tobool.not.i376.i, i1 false
  %dec.i378.i = add nsw i32 %b.0.i373.i, -1
  br i1 %or.cond.i377.i, label %for.cond.i379.i.for.cond.i379.i_crit_edge, label %for.end.i381.i

for.cond.i379.i.for.cond.i379.i_crit_edge:        ; preds = %for.cond.i379.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i379.i

for.end.i381.i:                                   ; preds = %for.cond.i379.i
  %shl.i380.i = shl i32 %div.i370.i, 24
  br i1 %cmp.i374.i, label %if.then.i393.i, label %for.end.i381.i.atc_get_pitch.exit395.i_crit_edge

for.end.i381.i.atc_get_pitch.exit395.i_crit_edge: ; preds = %for.end.i381.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit395.i

if.then.i393.i:                                   ; preds = %for.end.i381.i
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i382.i = udiv i32 %112, 100
  %sub.i383.i = sub nsw i32 31, %b.0.i373.i
  %shl4.i384.i = shl i32 %div1.i372.i, %sub.i383.i
  %div5.i385.i = udiv i32 %shl4.i384.i, %div2.i382.i
  %sub7.i386.i = add nsw i32 %b.0.i373.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i373.i)
  %cmp8.i387.i = icmp ugt i32 %b.0.i373.i, 6
  %shl10.i388.i = shl i32 %div5.i385.i, %sub7.i386.i
  %sub11.i389.i = sub nsw i32 7, %b.0.i373.i
  %shr12.i390.i = lshr i32 %div5.i385.i, %sub11.i389.i
  %input_rate.addr.0.i391.i = select i1 %cmp8.i387.i, i32 %shl10.i388.i, i32 %shr12.i390.i
  %or.i392.i = or i32 %input_rate.addr.0.i391.i, %shl.i380.i
  br label %atc_get_pitch.exit395.i

atc_get_pitch.exit395.i:                          ; preds = %if.then.i393.i, %for.end.i381.i.atc_get_pitch.exit395.i_crit_edge
  %pitch.0.i394.i = phi i32 [ %or.i392.i, %if.then.i393.i ], [ %shl.i380.i, %for.end.i381.i.atc_get_pitch.exit395.i_crit_edge ]
  %n_srcimp121.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 11
  %114 = ptrtoint ptr %n_srcimp121.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %n_srcimp121.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_srcimp.0.i)
  %cmp123434.i = icmp sgt i32 %n_srcimp.0.i, 0
  br i1 %cmp123434.i, label %for.body125.lr.ph.i, label %atc_get_pitch.exit395.i.for.end158.i_crit_edge

atc_get_pitch.exit395.i.for.end158.i_crit_edge:   ; preds = %atc_get_pitch.exit395.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158.i

for.body125.lr.ph.i:                              ; preds = %atc_get_pitch.exit395.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %pitch.0.i394.i)
  %cmp139.i = icmp ult i32 %pitch.0.i394.i, 134217729
  %get_srcimp.i = getelementptr inbounds %struct.srcimp_mgr, ptr %6, i32 0, i32 7
  br label %for.body125.i

for.body125.i:                                    ; preds = %if.end151.i.for.body125.i_crit_edge, %for.body125.lr.ph.i
  %i.2435.i = phi i32 [ 0, %for.body125.lr.ph.i ], [ %inc157.i, %if.end151.i.for.body125.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2435.i, i32 %n_srcc.0.i)
  %cmp126.i = icmp slt i32 %i.2435.i, %n_srcc.0.i
  br i1 %cmp126.i, label %if.then128.i, label %if.else135.i

if.then128.i:                                     ; preds = %for.body125.i
  call void @__sanitizer_cov_trace_pc() #9
  %div129.i = sdiv i32 %i.2435.i, %22
  %imp_msr.i = getelementptr [2 x %struct.src_node_conf_t], ptr %src_node_conf.i, i32 0, i32 %div129.i, i32 1
  %115 = ptrtoint ptr %imp_msr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load131.i = load i32, ptr %imp_msr.i, align 4
  %bf.lshr132.i = lshr i32 %bf.load131.i, 8
  %bf.clear133.i = and i32 %bf.lshr132.i, 255
  %116 = ptrtoint ptr %srcimp_dsc.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bf.clear133.i, ptr %srcimp_dsc.i, align 4
  br label %if.end147.i

if.else135.i:                                     ; preds = %for.body125.i
  br i1 %cmp.i, label %if.then138.i, label %if.else144.i

if.then138.i:                                     ; preds = %if.else135.i
  br i1 %cmp139.i, label %cond.true.i, label %if.then138.i.cond.end.i_crit_edge

if.then138.i.cond.end.i_crit_edge:                ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msr.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then138.i.cond.end.i_crit_edge
  %cond142.i = phi i32 [ %118, %cond.true.i ], [ 1, %if.then138.i.cond.end.i_crit_edge ]
  %119 = ptrtoint ptr %srcimp_dsc.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %cond142.i, ptr %srcimp_dsc.i, align 4
  br label %if.end147.i

if.else144.i:                                     ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %srcimp_dsc.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %srcimp_dsc.i, align 4
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else144.i, %cond.end.i, %if.then128.i
  %121 = ptrtoint ptr %get_srcimp.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %get_srcimp.i, align 4
  %call148.i = call i32 %122(ptr noundef %6, ptr noundef nonnull %srcimp_dsc.i, ptr noundef nonnull %srcimp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %if.end151.i, label %if.end147.i.error1.i_crit_edge

if.end147.i.error1.i_crit_edge:                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end151.i:                                      ; preds = %if.end147.i
  %123 = ptrtoint ptr %srcimp.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %srcimp.i, align 4
  %125 = ptrtoint ptr %srcimps.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %srcimps.i, align 4
  %arrayidx153.i = getelementptr ptr, ptr %126, i32 %i.2435.i
  %127 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %arrayidx153.i, align 4
  %128 = ptrtoint ptr %n_srcimp121.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %n_srcimp121.i, align 1
  %inc155.i = add i8 %129, 1
  store i8 %inc155.i, ptr %n_srcimp121.i, align 1
  %inc157.i = add nuw nsw i32 %i.2435.i, 1
  %exitcond443.not.i = icmp eq i32 %inc157.i, %n_srcimp.0.i
  br i1 %exitcond443.not.i, label %if.end151.i.for.end158.i_crit_edge, label %if.end151.i.for.body125.i_crit_edge

if.end151.i.for.body125.i_crit_edge:              ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body125.i

if.end151.i.for.end158.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158.i

for.end158.i:                                     ; preds = %if.end151.i.for.end158.i_crit_edge, %atc_get_pitch.exit395.i.for.end158.i_crit_edge
  %130 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %apcm, align 4
  %runtime160.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %131, i32 0, i32 11
  %132 = ptrtoint ptr %runtime160.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %runtime160.i, align 4
  %channels161.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %133, i32 0, i32 15
  %134 = ptrtoint ptr %channels161.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %channels161.i, align 8
  %conv162.i = trunc i32 %135 to i8
  %136 = ptrtoint ptr %src_dsc.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv162.i, ptr %src_dsc.i, align 1
  %msr164.i = getelementptr inbounds %struct.src_desc, ptr %src_dsc.i, i32 0, i32 1
  %137 = ptrtoint ptr %msr164.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %msr164.i, align 1
  %138 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %mode.i, align 1
  %get_src166.i = getelementptr inbounds %struct.src_mgr, ptr %4, i32 0, i32 3
  %139 = ptrtoint ptr %get_src166.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %get_src166.i, align 4
  %src167.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %call168.i = call i32 %140(ptr noundef %4, ptr noundef nonnull %src_dsc.i, ptr noundef %src167.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %if.end171.i, label %for.end158.i.error1.i_crit_edge

for.end158.i.error1.i_crit_edge:                  ; preds = %for.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

if.end171.i:                                      ; preds = %for.end158.i
  %141 = ptrtoint ptr %src167.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %src167.i, align 4
  %ops173.i = getelementptr inbounds %struct.src, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %ops173.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops173.i, align 4
  %set_pitch174.i = getelementptr inbounds %struct.src_rsc_ops, ptr %144, i32 0, i32 12
  %145 = ptrtoint ptr %set_pitch174.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %set_pitch174.i, align 4
  %call175.i = call i32 %146(ptr noundef %142, i32 noundef %pitch.0.i394.i) #7
  %147 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %apcm, align 4
  %tobool.not.i396.i = icmp eq ptr %148, null
  br i1 %tobool.not.i396.i, label %if.end171.i.if.end_crit_edge, label %if.end.i.i

if.end171.i.if.end_crit_edge:                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.end171.i
  %runtime2.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %148, i32 0, i32 11
  %149 = ptrtoint ptr %runtime2.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %runtime2.i.i, align 4
  %vm3.i.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %151 = ptrtoint ptr %vm3.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vm3.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.ct_vm, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %map.i.i, align 4
  %dma_bytes.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %150, i32 0, i32 52
  %155 = ptrtoint ptr %dma_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma_bytes.i.i, align 4
  %call.i.i = call ptr %154(ptr noundef %152, ptr noundef nonnull %148, i32 noundef %156) #7
  %vm_block.i.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %157 = ptrtoint ptr %vm_block.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i.i, ptr %vm_block.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.error1.i_crit_edge, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i.error1.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1.i

error1.sink.split.i:                              ; preds = %kcalloc.exit369.thread.i, %kcalloc.exit336.thread.i
  %srcimps418.sink.i = phi ptr [ %srcimps418.i, %kcalloc.exit369.thread.i ], [ %amixers411.i, %kcalloc.exit336.thread.i ]
  %158 = ptrtoint ptr %srcimps418.sink.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %srcimps418.sink.i, align 4
  br label %error1.i

error1.i:                                         ; preds = %error1.sink.split.i, %if.end.i.i.error1.i_crit_edge, %for.end158.i.error1.i_crit_edge, %if.end147.i.error1.i_crit_edge, %for.end107.i.error1.i_crit_edge, %if.end96.i.error1.i_crit_edge, %for.body.i.error1.i_crit_edge, %if.end7.i.i367.i.error1.i_crit_edge, %if.end7.i.i334.i.error1.i_crit_edge
  %err.0.i = phi i32 [ %call110.i, %for.end107.i.error1.i_crit_edge ], [ %call168.i, %for.end158.i.error1.i_crit_edge ], [ -12, %if.end7.i.i334.i.error1.i_crit_edge ], [ -12, %if.end7.i.i367.i.error1.i_crit_edge ], [ -2, %if.end.i.i.error1.i_crit_edge ], [ -12, %error1.sink.split.i ], [ %call148.i, %if.end147.i.error1.i_crit_edge ], [ %call99.i, %if.end96.i.error1.i_crit_edge ], [ %call48.i, %for.body.i.error1.i_crit_edge ]
  %call181.i = call i32 @atc_pcm_release_resources(ptr noundef %atc, ptr noundef %apcm) #7
  br label %atc_pcm_capture_get_resources.exit.thread

atc_pcm_capture_get_resources.exit.thread:        ; preds = %error1.i, %if.end7.i.i.i.atc_pcm_capture_get_resources.exit.thread_crit_edge, %kcalloc.exit.thread.i
  %retval.0.i.ph = phi i32 [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.atc_pcm_capture_get_resources.exit.thread_crit_edge ], [ %err.0.i, %error1.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_node_conf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcimp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcimp_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %src_dsc.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %if.end171.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_node_conf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mix_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcimp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcimp_dsc.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %src_dsc.i) #7
  %get_output_ports = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 4
  %159 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %get_output_ports, align 4
  %arrayidx3 = getelementptr inbounds [8 x ptr], ptr %out_ports, i32 0, i32 1
  %call4 = call i32 %160(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %out_ports, ptr noundef %arrayidx3) #7
  %161 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %apcm, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %162, i32 0, i32 11
  %163 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %164, i32 0, i32 15
  %165 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp = icmp eq i32 %166, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %mono.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mono.i, align 4
  %amixers = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %169 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %amixers, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %ops = getelementptr inbounds %struct.amixer, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops, align 4
  %setup = getelementptr inbounds %struct.amixer_rsc_ops, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %setup, align 4
  %177 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %out_ports, align 4
  %call10 = call i32 %176(ptr noundef %172, ptr noundef %178, i32 noundef 6568, ptr noundef %168) #7
  %179 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %amixers, align 4
  %arrayidx8.1 = getelementptr ptr, ptr %180, i32 1
  %181 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx8.1, align 4
  %ops.1 = getelementptr inbounds %struct.amixer, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops.1, align 4
  %setup.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %setup.1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %setup.1, align 4
  %187 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx3, align 4
  %call10.1 = call i32 %186(ptr noundef %182, ptr noundef %188, i32 noundef 6568, ptr noundef %168) #7
  %189 = ptrtoint ptr %out_ports to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %168, ptr %out_ports, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %mix_base.0 = phi i32 [ 2, %if.then5 ], [ 0, %if.end.if.end12_crit_edge ]
  %190 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %n_srcc41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %cmp14218.not = icmp eq i8 %191, 0
  br i1 %cmp14218.not, label %if.end12.for.end34_crit_edge, label %for.body16.lr.ph

if.end12.for.end34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body16.lr.ph:                                 ; preds = %if.end12
  %srccs = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %srcimps = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  %amixers19 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %i.1219 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc33, %for.body16.for.body16_crit_edge ]
  %192 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %srccs, align 4
  %arrayidx17 = getelementptr ptr, ptr %193, i32 %i.1219
  %194 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx17, align 4
  %196 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %srcimps, align 4
  %arrayidx18 = getelementptr ptr, ptr %197, i32 %i.1219
  %198 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx18, align 4
  %200 = ptrtoint ptr %amixers19 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %amixers19, align 4
  %add20 = add nuw nsw i32 %i.1219, %mix_base.0
  %arrayidx21 = getelementptr ptr, ptr %201, i32 %add20
  %202 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx21, align 4
  %ops22 = getelementptr inbounds %struct.srcimp, ptr %199, i32 0, i32 5
  %204 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ops22, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %rem = srem i32 %i.1219, %166
  %arrayidx23 = getelementptr [8 x ptr], ptr %out_ports, i32 0, i32 %rem
  %208 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx23, align 4
  %call24 = call i32 %207(ptr noundef %199, ptr noundef %195, ptr noundef %209) #7
  %ops25 = getelementptr inbounds %struct.amixer, ptr %203, i32 0, i32 4
  %210 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops25, align 4
  %setup26 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %setup26 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %setup26, align 4
  %call28 = call i32 %213(ptr noundef %203, ptr noundef %195, i32 noundef 7168, ptr noundef null) #7
  %214 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %203, ptr %arrayidx23, align 4
  %inc33 = add nuw nsw i32 %i.1219, 1
  %215 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %n_srcc41.i, align 4
  %conv = zext i8 %216 to i32
  %cmp14 = icmp ult i32 %inc33, %conv
  br i1 %cmp14, label %for.body16.for.body16_crit_edge, label %for.body16.for.end34_crit_edge

for.body16.for.end34_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end34:                                        ; preds = %for.body16.for.end34_crit_edge, %if.end12.for.end34_crit_edge
  %217 = ptrtoint ptr %rsr.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rsr.i, align 4
  %219 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %msr.i, align 4
  %mul35 = mul i32 %220, %218
  %221 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %apcm, align 4
  %runtime37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %222, i32 0, i32 11
  %223 = ptrtoint ptr %runtime37 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %runtime37, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %224, i32 0, i32 14
  %225 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rate, align 4
  %mul35.frozen = freeze i32 %mul35
  %.frozen258 = freeze i32 %226
  %div.i202 = udiv i32 %mul35.frozen, %.frozen258
  %227 = mul i32 %div.i202, %.frozen258
  %rem.i.decomposed = sub i32 %mul35.frozen, %227
  %div1.i = udiv i32 %rem.i.decomposed, 100
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.end34
  %b.0.i = phi i32 [ 31, %for.end34 ], [ %dec.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.0.i)
  %cmp.i203 = icmp sgt i32 %b.0.i, -1
  %shr.i = lshr i32 %div1.i, %b.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i204 = icmp eq i32 %shr.i, 0
  %or.cond.i205 = select i1 %cmp.i203, i1 %tobool.not.i204, i1 false
  %dec.i = add nsw i32 %b.0.i, -1
  br i1 %or.cond.i205, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i206

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i206:                                     ; preds = %for.cond.i
  %shl.i = shl i32 %div.i202, 24
  br i1 %cmp.i203, label %if.then.i, label %for.end.i206.atc_get_pitch.exit_crit_edge

for.end.i206.atc_get_pitch.exit_crit_edge:        ; preds = %for.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %atc_get_pitch.exit

if.then.i:                                        ; preds = %for.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  %div2.i = udiv i32 %226, 100
  %sub.i207 = sub nsw i32 31, %b.0.i
  %shl4.i = shl i32 %div1.i, %sub.i207
  %div5.i = udiv i32 %shl4.i, %div2.i
  %sub7.i = add nsw i32 %b.0.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %b.0.i)
  %cmp8.i = icmp ugt i32 %b.0.i, 6
  %shl10.i = shl i32 %div5.i, %sub7.i
  %sub11.i = sub nsw i32 7, %b.0.i
  %shr12.i = lshr i32 %div5.i, %sub11.i
  %input_rate.addr.0.i = select i1 %cmp8.i, i32 %shl10.i, i32 %shr12.i
  %or.i = or i32 %input_rate.addr.0.i, %shl.i
  br label %atc_get_pitch.exit

atc_get_pitch.exit:                               ; preds = %if.then.i, %for.end.i206.atc_get_pitch.exit_crit_edge
  %pitch.0.i = phi i32 [ %or.i, %if.then.i ], [ %shl.i, %for.end.i206.atc_get_pitch.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp39 = icmp sgt i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %pitch.0.i)
  %cmp41 = icmp ult i32 %pitch.0.i, 134217729
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false
  br i1 %or.cond, label %for.body47.lr.ph, label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %atc_get_pitch.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp94220 = icmp sgt i32 %166, 0
  br i1 %cmp94220, label %for.body96.lr.ph, label %for.cond93.preheader.if.end110_crit_edge

for.cond93.preheader.if.end110_crit_edge:         ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

for.body96.lr.ph:                                 ; preds = %for.cond93.preheader
  %srcimps97 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  br label %for.body96

for.body47.lr.ph:                                 ; preds = %atc_get_pitch.exit
  %amixers56 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %srcimps75 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  br label %for.body47

for.body47:                                       ; preds = %for.inc90.for.body47_crit_edge, %for.body47.lr.ph
  %i.2225 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc91, %for.inc90.for.body47_crit_edge ]
  %arrayidx48 = getelementptr [8 x ptr], ptr %out_ports, i32 0, i32 %i.2225
  %228 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx48, align 4
  %ops49 = getelementptr inbounds %struct.rsc, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops49, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  call void %233(ptr noundef %229) #7
  %234 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %msr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp53222.not = icmp eq i32 %235, 0
  br i1 %cmp53222.not, label %for.body47.for.inc90_crit_edge, label %for.body47.for.body55_crit_edge

for.body47.for.body55_crit_edge:                  ; preds = %for.body47
  br label %for.body55

for.body47.for.inc90_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body47.for.body55_crit_edge
  %j.0223 = phi i32 [ %inc88, %for.body55.for.body55_crit_edge ], [ 0, %for.body47.for.body55_crit_edge ]
  %236 = ptrtoint ptr %amixers56 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %amixers56, align 4
  %238 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %n_srcc41.i, align 4
  %conv58 = zext i8 %239 to i32
  %mul59 = mul i32 %j.0223, %166
  %add60 = add i32 %mul59, %i.2225
  %add61 = add i32 %add60, %conv58
  %arrayidx62 = getelementptr ptr, ptr %237, i32 %add61
  %240 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx62, align 4
  %ops63 = getelementptr inbounds %struct.amixer, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops63, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %246 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx48, align 4
  %call65 = call i32 %245(ptr noundef %241, ptr noundef %247) #7
  %248 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops63, align 4
  %set_scale = getelementptr inbounds %struct.amixer_rsc_ops, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %set_scale to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %set_scale, align 4
  %call67 = call i32 %251(ptr noundef %241, i32 noundef 7168) #7
  %252 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ops63, align 4
  %set_sum = getelementptr inbounds %struct.amixer_rsc_ops, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %set_sum to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %set_sum, align 4
  %call69 = call i32 %255(ptr noundef %241, ptr noundef null) #7
  %256 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops63, align 4
  %commit_raw_write = getelementptr inbounds %struct.amixer_rsc_ops, ptr %257, i32 0, i32 5
  %258 = ptrtoint ptr %commit_raw_write to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %commit_raw_write, align 4
  %call71 = call i32 %259(ptr noundef %241) #7
  %260 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx48, align 4
  %ops73 = getelementptr inbounds %struct.rsc, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %ops73 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops73, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %next_conj, align 4
  call void %265(ptr noundef %261) #7
  %266 = ptrtoint ptr %srcimps75 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %srcimps75, align 4
  %268 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %n_srcc41.i, align 4
  %conv77 = zext i8 %269 to i32
  %add80 = add i32 %add60, %conv77
  %arrayidx81 = getelementptr ptr, ptr %267, i32 %add80
  %270 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx81, align 4
  %ops82 = getelementptr inbounds %struct.srcimp, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops82, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %276 = ptrtoint ptr %src167.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %src167.i, align 4
  %call86 = call i32 %275(ptr noundef %271, ptr noundef %277, ptr noundef %241) #7
  %inc88 = add nuw i32 %j.0223, 1
  %278 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %msr.i, align 4
  %cmp53 = icmp ult i32 %inc88, %279
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.for.inc90_crit_edge

for.body55.for.inc90_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55

for.inc90:                                        ; preds = %for.body55.for.inc90_crit_edge, %for.body47.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %i.2225, 1
  %exitcond233.not = icmp eq i32 %inc91, %166
  br i1 %exitcond233.not, label %for.inc90.if.end110_crit_edge, label %for.inc90.for.body47_crit_edge

for.inc90.for.body47_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.inc90.if.end110_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.body96.lr.ph
  %i.3221 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc108, %for.body96.for.body96_crit_edge ]
  %280 = ptrtoint ptr %srcimps97 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %srcimps97, align 4
  %282 = ptrtoint ptr %n_srcc41.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %n_srcc41.i, align 4
  %conv99 = zext i8 %283 to i32
  %add100 = add nuw i32 %i.3221, %conv99
  %arrayidx101 = getelementptr ptr, ptr %281, i32 %add100
  %284 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx101, align 4
  %ops102 = getelementptr inbounds %struct.srcimp, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ops102, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %290 = ptrtoint ptr %src167.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %src167.i, align 4
  %arrayidx105 = getelementptr [8 x ptr], ptr %out_ports, i32 0, i32 %i.3221
  %292 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx105, align 4
  %call106 = call i32 %289(ptr noundef %285, ptr noundef %291, ptr noundef %293) #7
  %inc108 = add nuw nsw i32 %i.3221, 1
  %exitcond.not = icmp eq i32 %inc108, %166
  br i1 %exitcond.not, label %for.body96.if.end110_crit_edge, label %for.body96.for.body96_crit_edge

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body96

for.body96.if.end110_crit_edge:                   ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end110:                                        ; preds = %for.body96.if.end110_crit_edge, %for.inc90.if.end110_crit_edge, %for.cond93.preheader.if.end110_crit_edge
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %294 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %timer, align 4
  call void @ct_timer_prepare(ptr noundef %295) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %atc_pcm_capture_get_resources.exit.thread
  %retval.0 = phi i32 [ 0, %if.end110 ], [ %retval.0.i.ph, %atc_pcm_capture_get_resources.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out_ports) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_capture_start(ptr nocapture noundef readonly %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_mgrs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %0 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_mgrs, align 4
  %started = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 3
  %2 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, -128
  %3 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %started, align 4
  %4 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apcm, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  %n_srcc = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 10
  %10 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_srcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp118.not = icmp eq i8 %11, 0
  br i1 %cmp118.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %srccs = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %sub = add i32 %9, -1
  %src_disable = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srccs, align 4
  %arrayidx4 = getelementptr ptr, ptr %13, i32 %i.0119
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %ops = getelementptr inbounds %struct.src, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %set_pm = getelementptr inbounds %struct.src_rsc_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %set_pm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_pm, align 4
  %rem = srem i32 %i.0119, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %sub)
  %cmp5 = icmp ne i32 %rem, %sub
  %conv6 = zext i1 %cmp5 to i32
  %call = tail call i32 %19(ptr noundef %15, i32 noundef %conv6) #7
  %20 = ptrtoint ptr %src_disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src_disable, align 4
  %call7 = tail call i32 %21(ptr noundef %1, ptr noundef %15) #7
  %inc = add nuw nsw i32 %i.0119, 1
  %22 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %n_srcc, align 4
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %src8 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %24 = ptrtoint ptr %src8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src8, align 4
  %ops9 = getelementptr inbounds %struct.src, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops9, align 4
  %set_sf = getelementptr inbounds %struct.src_rsc_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %set_sf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_sf, align 4
  %30 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apcm, align 4
  %runtime11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %runtime11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime11, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %format, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %35, label %do.end.i [
    i32 1, label %for.end.convert_format.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 32, label %sw.bb2.i
    i32 10, label %sw.bb3.i
    i32 14, label %sw.bb4.i
  ]

for.end.convert_format.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb1.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb2.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb3.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

sw.bb4.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_format.exit

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.20, i32 noundef %35) #10
  br label %convert_format.exit

convert_format.exit:                              ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.end.convert_format.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.end.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %for.end.convert_format.exit_crit_edge ]
  %call13 = tail call i32 %29(ptr noundef %25, i32 noundef %retval.0.i) #7
  %41 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops9, align 4
  %set_sa = getelementptr inbounds %struct.src_rsc_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %set_sa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_sa, align 4
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %45 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vm_block, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %call15 = tail call i32 %44(ptr noundef %25, i32 noundef %48) #7
  %49 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops9, align 4
  %set_la = getelementptr inbounds %struct.src_rsc_ops, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %set_la to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_la, align 4
  %53 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vm_block, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %size = getelementptr inbounds %struct.ct_vm_block, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size, align 4
  %add = add i32 %58, %56
  %call20 = tail call i32 %52(ptr noundef %25, i32 noundef %add) #7
  %59 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops9, align 4
  %set_ca = getelementptr inbounds %struct.src_rsc_ops, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %set_ca to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_ca, align 4
  %63 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vm_block, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %call24 = tail call i32 %62(ptr noundef %25, i32 noundef %66) #7
  %src_disable25 = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %src_disable25 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %src_disable25, align 4
  %call26 = tail call i32 %68(ptr noundef %1, ptr noundef %25) #7
  %commit_write = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %commit_write, align 4
  %call27 = tail call i32 %70(ptr noundef %1) #7
  %71 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %n_srcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp31121.not = icmp eq i8 %72, 0
  br i1 %cmp31121.not, label %convert_format.exit.for.end44_crit_edge, label %for.body33.lr.ph

convert_format.exit.for.end44_crit_edge:          ; preds = %convert_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body33.lr.ph:                                 ; preds = %convert_format.exit
  %srccs34 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %src_enable_s = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 5
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %i.1122 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc43, %for.body33.for.body33_crit_edge ]
  %73 = ptrtoint ptr %srccs34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %srccs34, align 4
  %arrayidx35 = getelementptr ptr, ptr %74, i32 %i.1122
  %75 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx35, align 4
  %ops36 = getelementptr inbounds %struct.src, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops36, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call37 = tail call i32 %80(ptr noundef %76, i32 noundef 5) #7
  %81 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops36, align 4
  %commit_write39 = getelementptr inbounds %struct.src_rsc_ops, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %commit_write39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %commit_write39, align 4
  %call40 = tail call i32 %84(ptr noundef %76) #7
  %85 = ptrtoint ptr %src_enable_s to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %src_enable_s, align 4
  %call41 = tail call i32 %86(ptr noundef %1, ptr noundef %76) #7
  %inc43 = add nuw nsw i32 %i.1122, 1
  %87 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %n_srcc, align 4
  %conv30 = zext i8 %88 to i32
  %cmp31 = icmp ult i32 %inc43, %conv30
  br i1 %cmp31, label %for.body33.for.body33_crit_edge, label %for.body33.for.end44_crit_edge

for.body33.for.end44_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end44:                                        ; preds = %for.body33.for.end44_crit_edge, %convert_format.exit.for.end44_crit_edge
  %89 = ptrtoint ptr %src8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %src8, align 4
  %ops46 = getelementptr inbounds %struct.src, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops46, align 4
  %set_bm = getelementptr inbounds %struct.src_rsc_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %set_bm to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_bm, align 4
  %call47 = tail call i32 %94(ptr noundef %90, i32 noundef 1) #7
  %95 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops46, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %call50 = tail call i32 %98(ptr noundef %90, i32 noundef 5) #7
  %99 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops46, align 4
  %commit_write52 = getelementptr inbounds %struct.src_rsc_ops, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %commit_write52 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %commit_write52, align 4
  %call53 = tail call i32 %102(ptr noundef %90) #7
  %src_enable_s54 = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 5
  %103 = ptrtoint ptr %src_enable_s54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %src_enable_s54, align 4
  %call55 = tail call i32 %104(ptr noundef %1, ptr noundef %90) #7
  %105 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %commit_write, align 4
  %call57 = tail call i32 %106(ptr noundef %1) #7
  %timer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 2
  %107 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %timer, align 4
  tail call void @ct_timer_start(ptr noundef %108) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_capture_position(ptr nocapture noundef readnone %atc, ptr nocapture noundef readonly %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %src1 = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %0 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.src, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_ca = getelementptr inbounds %struct.src_rsc_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %get_ca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_ca, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1) #7
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %6 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_block, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %sub = sub i32 %call, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pcm_release_resources(ptr nocapture noundef readonly %atc, ptr nocapture noundef %apcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_mgrs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %0 = ptrtoint ptr %rsc_mgrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_mgrs, align 4
  %arrayidx2 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %srcimps = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 7
  %8 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srcimps, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %n_srcimp = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 11
  %10 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_srcimp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp119.not = icmp eq i8 %11, 0
  br i1 %cmp119.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %put_srcimp = getelementptr inbounds %struct.srcimp_mgr, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srcimps, align 4
  %arrayidx9 = getelementptr ptr, ptr %13, i32 %i.0120
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %ops = getelementptr inbounds %struct.srcimp, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %unmap = getelementptr inbounds %struct.srcimp_rsc_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unmap, align 4
  %call = tail call i32 %19(ptr noundef %15) #7
  %20 = ptrtoint ptr %put_srcimp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %put_srcimp, align 4
  %call10 = tail call i32 %21(ptr noundef %3, ptr noundef %15) #7
  %22 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %srcimps, align 4
  %arrayidx12 = getelementptr ptr, ptr %23, i32 %i.0120
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %i.0120, 1
  %25 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %n_srcimp, align 1
  %conv = zext i8 %26 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %srcimps, align 4
  tail call void @kfree(ptr noundef %28) #7
  %29 = ptrtoint ptr %srcimps to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %srcimps, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %srccs = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 6
  %30 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srccs, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.end.if.end32_crit_edge, label %for.cond17.preheader

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.cond17.preheader:                             ; preds = %if.end
  %n_srcc = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 10
  %32 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_srcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp19122.not = icmp eq i8 %33, 0
  br i1 %cmp19122.not, label %for.cond17.preheader.for.end29_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.end29_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %put_src = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 4
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %i.1123 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc28, %for.body21.for.body21_crit_edge ]
  %34 = ptrtoint ptr %put_src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %put_src, align 4
  %36 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %srccs, align 4
  %arrayidx23 = getelementptr ptr, ptr %37, i32 %i.1123
  %38 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx23, align 4
  %call24 = tail call i32 %35(ptr noundef %1, ptr noundef %39) #7
  %40 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %srccs, align 4
  %arrayidx26 = getelementptr ptr, ptr %41, i32 %i.1123
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx26, align 4
  %inc28 = add nuw nsw i32 %i.1123, 1
  %43 = ptrtoint ptr %n_srcc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %n_srcc, align 4
  %conv18 = zext i8 %44 to i32
  %cmp19 = icmp ult i32 %inc28, %conv18
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.for.end29_crit_edge

for.body21.for.end29_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.end29:                                        ; preds = %for.body21.for.end29_crit_edge, %for.cond17.preheader.for.end29_crit_edge
  %45 = ptrtoint ptr %srccs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %srccs, align 4
  tail call void @kfree(ptr noundef %46) #7
  %47 = ptrtoint ptr %srccs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %srccs, align 4
  br label %if.end32

if.end32:                                         ; preds = %for.end29, %if.end.if.end32_crit_edge
  %amixers = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 8
  %48 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %amixers, align 4
  %tobool33.not = icmp eq ptr %49, null
  br i1 %tobool33.not, label %if.end32.if.end50_crit_edge, label %for.cond35.preheader

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

for.cond35.preheader:                             ; preds = %if.end32
  %n_amixer = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 12
  %50 = ptrtoint ptr %n_amixer to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %n_amixer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp37125.not = icmp eq i8 %51, 0
  br i1 %cmp37125.not, label %for.cond35.preheader.for.end47_crit_edge, label %for.body39.lr.ph

for.cond35.preheader.for.end47_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end47

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %put_amixer = getelementptr inbounds %struct.amixer_mgr, ptr %5, i32 0, i32 4
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.lr.ph
  %i.2126 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc46, %for.body39.for.body39_crit_edge ]
  %52 = ptrtoint ptr %put_amixer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %put_amixer, align 4
  %54 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %amixers, align 4
  %arrayidx41 = getelementptr ptr, ptr %55, i32 %i.2126
  %56 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call i32 %53(ptr noundef %5, ptr noundef %57) #7
  %58 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %amixers, align 4
  %arrayidx44 = getelementptr ptr, ptr %59, i32 %i.2126
  %60 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx44, align 4
  %inc46 = add nuw nsw i32 %i.2126, 1
  %61 = ptrtoint ptr %n_amixer to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %n_amixer, align 2
  %conv36 = zext i8 %62 to i32
  %cmp37 = icmp ult i32 %inc46, %conv36
  br i1 %cmp37, label %for.body39.for.body39_crit_edge, label %for.body39.for.end47_crit_edge

for.body39.for.end47_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end47

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

for.end47:                                        ; preds = %for.body39.for.end47_crit_edge, %for.cond35.preheader.for.end47_crit_edge
  %63 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %amixers, align 4
  tail call void @kfree(ptr noundef %64) #7
  %65 = ptrtoint ptr %amixers to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %amixers, align 4
  br label %if.end50

if.end50:                                         ; preds = %for.end47, %if.end32.if.end50_crit_edge
  %mono = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 9
  %66 = ptrtoint ptr %mono to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mono, align 4
  %tobool51.not = icmp eq ptr %67, null
  br i1 %tobool51.not, label %if.end50.if.end56_crit_edge, label %if.then52

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %put_sum = getelementptr inbounds %struct.sum_mgr, ptr %7, i32 0, i32 4
  %68 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %put_sum, align 4
  %call54 = tail call i32 %69(ptr noundef %7, ptr noundef nonnull %67) #7
  %70 = ptrtoint ptr %mono to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %mono, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end50.if.end56_crit_edge
  %src = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 5
  %71 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %src, align 4
  %tobool57.not = icmp eq ptr %72, null
  br i1 %tobool57.not, label %if.end56.if.end63_crit_edge, label %if.then58

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %put_src59 = getelementptr inbounds %struct.src_mgr, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %put_src59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %put_src59, align 4
  %call61 = tail call i32 %74(ptr noundef %1, ptr noundef nonnull %72) #7
  %75 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %src, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end56.if.end63_crit_edge
  %vm_block = getelementptr inbounds %struct.ct_atc_pcm, ptr %apcm, i32 0, i32 4
  %76 = ptrtoint ptr %vm_block to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vm_block, align 4
  %tobool64.not = icmp eq ptr %77, null
  br i1 %tobool64.not, label %if.end63.if.end67_crit_edge, label %ct_unmap_audio_buffer.exit

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

ct_unmap_audio_buffer.exit:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %vm1.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %78 = ptrtoint ptr %vm1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vm1.i, align 4
  %unmap.i = getelementptr inbounds %struct.ct_vm, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %unmap.i, align 4
  tail call void %81(ptr noundef %79, ptr noundef nonnull %77) #7
  %82 = ptrtoint ptr %vm_block to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %vm_block, align 4
  br label %if.end67

if.end67:                                         ; preds = %ct_unmap_audio_buffer.exit, %if.end63.if.end67_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_select_line_in(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %mixer2 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %2 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer2, align 4
  %is_adc_source_selected = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_adc_source_selected to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_adc_source_selected, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_input_left = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_input_left, align 4
  %call3 = tail call i32 %7(ptr noundef %3, i32 noundef 6, ptr noundef null) #7
  %set_input_right = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_input_right, align 4
  %call4 = tail call i32 %9(ptr noundef %3, i32 noundef 6, ptr noundef null) #7
  %select_adc_source = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %select_adc_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %select_adc_source, align 4
  %call5 = tail call i32 %11(ptr noundef %1, i32 noundef 1) #7
  %srcs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 48
  %12 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srcs, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_input_left, align 4
  %call7 = tail call i32 %17(ptr noundef %3, i32 noundef 7, ptr noundef %15) #7
  %18 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srcs, align 4
  %arrayidx9 = getelementptr ptr, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9, align 4
  %22 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_input_right, align 4
  %call12 = tail call i32 %23(ptr noundef %3, i32 noundef 7, ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_select_mic_in(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %mixer2 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %2 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer2, align 4
  %is_adc_source_selected = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_adc_source_selected to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_adc_source_selected, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_input_left = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_input_left, align 4
  %call3 = tail call i32 %7(ptr noundef %3, i32 noundef 7, ptr noundef null) #7
  %set_input_right = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_input_right, align 4
  %call4 = tail call i32 %9(ptr noundef %3, i32 noundef 7, ptr noundef null) #7
  %select_adc_source = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %select_adc_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %select_adc_source, align 4
  %call5 = tail call i32 %11(ptr noundef %1, i32 noundef 0) #7
  %srcs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 48
  %12 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srcs, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_input_left, align 4
  %call7 = tail call i32 %17(ptr noundef %3, i32 noundef 6, ptr noundef %15) #7
  %18 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srcs, align 4
  %arrayidx9 = getelementptr ptr, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9, align 4
  %22 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_input_right, align 4
  %call12 = tail call i32 %23(ptr noundef %3, i32 noundef 6, ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_select_digit_io(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %is_adc_source_selected = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_adc_source_selected to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_adc_source_selected, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %select_adc_source = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %select_adc_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %select_adc_source, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_line_front_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_line_surround_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_line_clfe_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_line_rear_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_line_in_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_mic_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_spdif_out_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_spdif_in_unmute(ptr nocapture noundef readonly %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not.i = icmp eq i8 %state, 0
  %daio_disable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 10
  %daio_enable.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 9
  %daio_disable.sink.i = select i1 %tobool.not.i, ptr %daio_disable.i, ptr %daio_enable.i
  %2 = ptrtoint ptr %daio_disable.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_disable.sink.i, align 4
  %daios2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 6
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %1, ptr noundef %7) #7
  %commit_write.i = getelementptr inbounds %struct.daio_mgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit_write.i, align 4
  %call5.i = tail call i32 %9(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_spdif_out_get_status(ptr nocapture noundef readonly %atc, ptr noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %daios.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %0 = ptrtoint ptr %daios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %daios.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %ops.i = getelementptr inbounds %struct.dao, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_spos.i = getelementptr inbounds %struct.dao_rsc_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %get_spos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_spos.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, ptr noundef %status) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_spdif_out_set_status(ptr nocapture noundef readonly %atc, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %daios.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %0 = ptrtoint ptr %daios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %daios.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %ops.i = getelementptr inbounds %struct.dao, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef %status) #7
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %commit_write.i = getelementptr inbounds %struct.dao_rsc_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %commit_write.i, align 4
  %call2.i = tail call i32 %11(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_spdif_out_passthru(ptr noundef %atc, i8 noundef zeroext %state) #0 align 64 {
entry:
  %da_dsc = alloca %struct.dao_desc, align 4
  %rscs = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %da_dsc) #7
  %0 = ptrtoint ptr %da_dsc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777215, ptr %da_dsc, align 4
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %1 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mixer1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rscs) #7
  %3 = ptrtoint ptr %rscs to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %rscs, align 8
  %atc_mutex = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %atc_mutex, i32 noundef 0) #7
  %daios = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %4 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daios, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not = icmp eq i8 %state, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %msr = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %8 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msr, align 4
  %phi.cast = trunc i32 %9 to i8
  %phi.bo51 = shl i8 %phi.cast, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bf.set = phi i8 [ %phi.bo51, %cond.false ], [ 24, %entry.cond.end_crit_edge ]
  %10 = ptrtoint ptr %da_dsc to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %da_dsc, align 4
  %bf.clear = and i8 %bf.load, 7
  %bf.set9 = or i8 %bf.set, %bf.clear
  store i8 %bf.set9, ptr %da_dsc, align 4
  %ops = getelementptr inbounds %struct.dao, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %reinit = getelementptr inbounds %struct.dao_rsc_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %reinit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reinit, align 4
  %call = call i32 %14(ptr noundef %7, ptr noundef nonnull %da_dsc) #7
  br i1 %tobool.not, label %if.else, label %cond.end.if.end25_crit_edge

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else:                                          ; preds = %cond.end
  %get_output_ports = getelementptr inbounds %struct.ct_mixer, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_output_ports, align 4
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %rscs, i32 0, i32 1
  %call14 = call i32 %16(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %rscs, ptr noundef %arrayidx13) #7
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %set_left_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %set_left_input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_left_input, align 4
  %21 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rscs, align 8
  %call17 = call i32 %20(ptr noundef %7, ptr noundef %22) #7
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %set_right_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %set_right_input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_right_input, align 4
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx13, align 4
  %call20 = call i32 %26(ptr noundef %7, ptr noundef %28) #7
  %pll_rate = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 4
  %29 = ptrtoint ptr %pll_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_rate, align 4
  %rsr = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 2
  %31 = ptrtoint ptr %rsr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rsr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not = icmp eq i32 %30, %32
  br i1 %cmp.not, label %if.else.if.end25_crit_edge, label %if.then22

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hw1.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %33 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1.i, align 4
  %pll_init.i = getelementptr inbounds %struct.hw, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %pll_init.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pll_init.i, align 4
  %call.i = call i32 %36(ptr noundef %34, i32 noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %32, i32 0
  %37 = ptrtoint ptr %pll_rate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select.i, ptr %pll_rate, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else.if.end25_crit_edge, %cond.end.if.end25_crit_edge
  %spos.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.else.if.end25_crit_edge ], [ 34640390, %cond.end.if.end25_crit_edge ]
  %err.0 = phi i32 [ %call.i, %if.then22 ], [ %call, %if.else.if.end25_crit_edge ], [ %call, %cond.end.if.end25_crit_edge ]
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call27 = call i32 %41(ptr noundef %7, i32 noundef %spos.0) #7
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %commit_write = getelementptr inbounds %struct.dao_rsc_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %commit_write, align 4
  %call29 = call i32 %45(ptr noundef %7) #7
  call void @mutex_unlock(ptr noundef %atc_mutex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rscs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %da_dsc) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_capabilities(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %capabilities = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %capabilities, align 4
  %call = tail call i32 %3(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_output_switch_get(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %output_switch_get = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %output_switch_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_switch_get, align 4
  %call = tail call i32 %3(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_output_switch_put(ptr nocapture noundef readonly %atc, i32 noundef %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %output_switch_put = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %output_switch_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_switch_put, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef %position) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_mic_source_switch_get(ptr nocapture noundef readonly %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %mic_source_switch_get = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mic_source_switch_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mic_source_switch_get, align 4
  %call = tail call i32 %3(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_mic_source_switch_put(ptr nocapture noundef readonly %atc, i32 noundef %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %mic_source_switch_put = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mic_source_switch_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mic_source_switch_put, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef %position) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_suspend(ptr nocapture noundef %atc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call fastcc void @atc_release_resources(ptr noundef %atc)
  %suspend = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %suspend, align 4
  %call2 = tail call i32 %6(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_resume(ptr nocapture noundef %atc) #0 align 64 {
entry:
  %info.i = alloca %struct.card_conf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %0 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #7
  %rsr.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 2
  %2 = ptrtoint ptr %rsr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsr.i, align 4
  %rsr2.i = getelementptr inbounds %struct.card_conf, ptr %info.i, i32 0, i32 1
  %4 = ptrtoint ptr %rsr2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rsr2.i, align 4
  %msr.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %5 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msr.i, align 4
  %msr3.i = getelementptr inbounds %struct.card_conf, ptr %info.i, i32 0, i32 2
  %7 = ptrtoint ptr %msr3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msr3.i, align 4
  %vm.i.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 9
  %8 = ptrtoint ptr %vm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm.i.i, align 4
  %get_ptp_phys.i.i = getelementptr inbounds %struct.ct_vm, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %get_ptp_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_ptp_phys.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %9, i32 noundef 0) #7
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i.i, ptr %info.i, align 4
  %resume.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resume.i, align 4
  %call4.i = call i32 %14(ptr noundef %1, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.25) #10
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %call2 = call i32 @snd_card_disconnect(ptr noundef %20) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i32 @atc_get_resources(ptr noundef %atc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %atc_resources_resume.exit.thread, label %if.end6

atc_resources_resume.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atc_release_resources(ptr noundef %atc) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atc_connect_resources(ptr noundef %atc) #7
  %mixer2.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %21 = ptrtoint ptr %mixer2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mixer2.i, align 4
  %resume.i15 = getelementptr inbounds %struct.ct_mixer, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %resume.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resume.i15, align 4
  %call3.i = call i32 %24(ptr noundef %22) #7
  %card7 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %25 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card7, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 38
  %27 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 40
  call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %atc_resources_resume.exit.thread, %do.end
  %retval.0 = phi i32 [ %call4.i, %do.end ], [ 0, %if.end6 ], [ %call.i, %atc_resources_resume.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_timer_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_timer_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_timer_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_release_resources(ptr nocapture noundef %atc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %0 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_input_left = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_input_left, align 4
  %call = tail call i32 %3(ptr noundef nonnull %1, i32 noundef 7, ptr noundef null) #7
  %set_input_right = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_input_right, align 4
  %call3 = tail call i32 %5(ptr noundef nonnull %1, i32 noundef 7, ptr noundef null) #7
  %6 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_input_left, align 4
  %call5 = tail call i32 %7(ptr noundef nonnull %1, i32 noundef 6, ptr noundef null) #7
  %8 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_input_right, align 4
  %call7 = tail call i32 %9(ptr noundef nonnull %1, i32 noundef 6, ptr noundef null) #7
  %10 = ptrtoint ptr %set_input_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_input_left, align 4
  %call9 = tail call i32 %11(ptr noundef nonnull %1, i32 noundef 8, ptr noundef null) #7
  %12 = ptrtoint ptr %set_input_right to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_input_right, align 4
  %call11 = tail call i32 %13(ptr noundef nonnull %1, i32 noundef 8, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %daios = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 46
  %14 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %daios, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end.if.end27_crit_edge, label %if.then13

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then13:                                        ; preds = %if.end
  %arrayidx = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %n_daio = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 50
  %18 = ptrtoint ptr %n_daio to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n_daio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp2.not = icmp eq i8 %19, 0
  br i1 %cmp2.not, label %if.then13.for.end_crit_edge, label %for.body.lr.ph

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then13
  %put_daio = getelementptr inbounds %struct.daio_mgr, ptr %17, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %20 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %daios, align 4
  %arrayidx16 = getelementptr ptr, ptr %21, i32 %i.03
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16, align 4
  %type = getelementptr inbounds %struct.daio, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp17 = icmp ult i32 %25, 5
  br i1 %cmp17, label %if.then19, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.dao, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %clear_left_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %clear_left_input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clear_left_input, align 4
  %call20 = tail call i32 %29(ptr noundef %23) #7
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %clear_right_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %clear_right_input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clear_right_input, align 4
  %call22 = tail call i32 %33(ptr noundef %23) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.body.if.end23_crit_edge
  %34 = ptrtoint ptr %put_daio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %put_daio, align 4
  %call24 = tail call i32 %35(ptr noundef %17, ptr noundef %23) #7
  %inc = add nuw nsw i32 %i.03, 1
  %36 = ptrtoint ptr %n_daio to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %n_daio, align 4
  %conv = zext i8 %37 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.then13.for.end_crit_edge
  %38 = ptrtoint ptr %daios to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %daios, align 4
  tail call void @kfree(ptr noundef %39) #7
  %40 = ptrtoint ptr %daios to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %daios, align 4
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.end.if.end27_crit_edge
  %pcm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 47
  %41 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm, align 4
  %tobool28.not = icmp eq ptr %42, null
  br i1 %tobool28.not, label %if.end27.if.end45_crit_edge, label %if.then29

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then29:                                        ; preds = %if.end27
  %arrayidx31 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %43 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx31, align 4
  %n_pcm = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 53
  %45 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %n_pcm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp345.not = icmp eq i8 %46, 0
  br i1 %cmp345.not, label %if.then29.for.end42_crit_edge, label %for.body36.lr.ph

if.then29.for.end42_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

for.body36.lr.ph:                                 ; preds = %if.then29
  %put_sum = getelementptr inbounds %struct.sum_mgr, ptr %44, i32 0, i32 4
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %i.16 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc41, %for.body36.for.body36_crit_edge ]
  %47 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %put_sum, align 4
  %49 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcm, align 4
  %arrayidx38 = getelementptr ptr, ptr %50, i32 %i.16
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx38, align 4
  %call39 = tail call i32 %48(ptr noundef %44, ptr noundef %52) #7
  %inc41 = add nuw nsw i32 %i.16, 1
  %53 = ptrtoint ptr %n_pcm to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %n_pcm, align 1
  %conv33 = zext i8 %54 to i32
  %cmp34 = icmp ult i32 %inc41, %conv33
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.end42_crit_edge

for.body36.for.end42_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.end42:                                        ; preds = %for.body36.for.end42_crit_edge, %if.then29.for.end42_crit_edge
  %55 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcm, align 4
  tail call void @kfree(ptr noundef %56) #7
  %57 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %pcm, align 4
  br label %if.end45

if.end45:                                         ; preds = %for.end42, %if.end27.if.end45_crit_edge
  %srcs = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 48
  %58 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %srcs, align 4
  %tobool46.not = icmp eq ptr %59, null
  br i1 %tobool46.not, label %if.end45.if.end63_crit_edge, label %if.then47

if.end45.if.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then47:                                        ; preds = %if.end45
  %rsc_mgrs48 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 43
  %60 = ptrtoint ptr %rsc_mgrs48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rsc_mgrs48, align 4
  %n_src = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 51
  %62 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %n_src, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp528.not = icmp eq i8 %63, 0
  br i1 %cmp528.not, label %if.then47.for.end60_crit_edge, label %for.body54.lr.ph

if.then47.for.end60_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body54.lr.ph:                                 ; preds = %if.then47
  %put_src = getelementptr inbounds %struct.src_mgr, ptr %61, i32 0, i32 4
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.lr.ph
  %i.29 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc59, %for.body54.for.body54_crit_edge ]
  %64 = ptrtoint ptr %put_src to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %put_src, align 4
  %66 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %srcs, align 4
  %arrayidx56 = getelementptr ptr, ptr %67, i32 %i.29
  %68 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx56, align 4
  %call57 = tail call i32 %65(ptr noundef %61, ptr noundef %69) #7
  %inc59 = add nuw nsw i32 %i.29, 1
  %70 = ptrtoint ptr %n_src to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %n_src, align 1
  %conv51 = zext i8 %71 to i32
  %cmp52 = icmp ult i32 %inc59, %conv51
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.body54.for.end60_crit_edge

for.body54.for.end60_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.end60:                                        ; preds = %for.body54.for.end60_crit_edge, %if.then47.for.end60_crit_edge
  %72 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %srcs, align 4
  tail call void @kfree(ptr noundef %73) #7
  %74 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %srcs, align 4
  br label %if.end63

if.end63:                                         ; preds = %for.end60, %if.end45.if.end63_crit_edge
  %srcimps = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 49
  %75 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %srcimps, align 4
  %tobool64.not = icmp eq ptr %76, null
  br i1 %tobool64.not, label %if.end63.if.end85_crit_edge, label %if.then65

if.end63.if.end85_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then65:                                        ; preds = %if.end63
  %arrayidx67 = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 1
  %77 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx67, align 4
  %n_srcimp = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 52
  %79 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %n_srcimp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp7011.not = icmp eq i8 %80, 0
  br i1 %cmp7011.not, label %if.then65.for.end82_crit_edge, label %for.body72.lr.ph

if.then65.for.end82_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

for.body72.lr.ph:                                 ; preds = %if.then65
  %put_srcimp = getelementptr inbounds %struct.srcimp_mgr, ptr %78, i32 0, i32 8
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.body72.lr.ph
  %i.312 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc81, %for.body72.for.body72_crit_edge ]
  %81 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %srcimps, align 4
  %arrayidx74 = getelementptr ptr, ptr %82, i32 %i.312
  %83 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx74, align 4
  %ops75 = getelementptr inbounds %struct.srcimp, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %ops75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops75, align 4
  %unmap = getelementptr inbounds %struct.srcimp_rsc_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %unmap, align 4
  %call76 = tail call i32 %88(ptr noundef %84) #7
  %89 = ptrtoint ptr %put_srcimp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %put_srcimp, align 4
  %91 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %srcimps, align 4
  %arrayidx78 = getelementptr ptr, ptr %92, i32 %i.312
  %93 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx78, align 4
  %call79 = tail call i32 %90(ptr noundef %78, ptr noundef %94) #7
  %inc81 = add nuw nsw i32 %i.312, 1
  %95 = ptrtoint ptr %n_srcimp to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %n_srcimp, align 2
  %conv69 = zext i8 %96 to i32
  %cmp70 = icmp ult i32 %inc81, %conv69
  br i1 %cmp70, label %for.body72.for.body72_crit_edge, label %for.body72.for.end82_crit_edge

for.body72.for.end82_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body72

for.end82:                                        ; preds = %for.body72.for.end82_crit_edge, %if.then65.for.end82_crit_edge
  %97 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %srcimps, align 4
  tail call void @kfree(ptr noundef %98) #7
  %99 = ptrtoint ptr %srcimps to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %srcimps, align 4
  br label %if.end85

if.end85:                                         ; preds = %for.end82, %if.end63.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_hw_obj(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @src_mgr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @src_mgr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcimp_mgr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcimp_mgr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amixer_mgr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amixer_mgr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sum_mgr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sum_mgr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @daio_mgr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @daio_mgr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_connect_dai(ptr noundef %src_mgr, ptr noundef %dai, ptr nocapture noundef readonly %srcs, ptr nocapture noundef readonly %srcimps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rscr = getelementptr inbounds %struct.daio, ptr %dai, i32 0, i32 1
  %src_disable = getelementptr inbounds %struct.src_mgr, ptr %src_mgr, i32 0, i32 7
  %0 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srcs, align 4
  %2 = ptrtoint ptr %srcimps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srcimps, align 4
  %ops = getelementptr inbounds %struct.srcimp, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %3, ptr noundef %1, ptr noundef %dai) #7
  %8 = ptrtoint ptr %src_disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_disable, align 4
  %call6 = tail call i32 %9(ptr noundef %src_mgr, ptr noundef %1) #7
  %arrayidx3.1 = getelementptr ptr, ptr %srcs, i32 1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.1, align 4
  %arrayidx4.1 = getelementptr ptr, ptr %srcimps, i32 1
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.1, align 4
  %ops.1 = getelementptr inbounds %struct.srcimp, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.1 = tail call i32 %17(ptr noundef %13, ptr noundef %11, ptr noundef %rscr) #7
  %18 = ptrtoint ptr %src_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_disable, align 4
  %call6.1 = tail call i32 %19(ptr noundef %src_mgr, ptr noundef %11) #7
  %commit_write = getelementptr inbounds %struct.src_mgr, ptr %src_mgr, i32 0, i32 8
  %20 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %commit_write, align 4
  %call7 = tail call i32 %21(ptr noundef %src_mgr) #7
  %22 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %srcs, align 4
  %ops9 = getelementptr inbounds %struct.src, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops9, align 4
  %set_pm = getelementptr inbounds %struct.src_rsc_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %set_pm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_pm, align 4
  %call10 = tail call i32 %27(ptr noundef %23, i32 noundef 1) #7
  %src_enable_s = getelementptr inbounds %struct.src_mgr, ptr %src_mgr, i32 0, i32 5
  %28 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srcs, align 4
  %ops15 = getelementptr inbounds %struct.src, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops15, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call16 = tail call i32 %33(ptr noundef %29, i32 noundef 5) #7
  %34 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops15, align 4
  %commit_write18 = getelementptr inbounds %struct.src_rsc_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %commit_write18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %commit_write18, align 4
  %call19 = tail call i32 %37(ptr noundef %29) #7
  %38 = ptrtoint ptr %src_enable_s to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src_enable_s, align 4
  %call20 = tail call i32 %39(ptr noundef %src_mgr, ptr noundef %29) #7
  %40 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx3.1, align 4
  %ops15.1 = getelementptr inbounds %struct.src, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ops15.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops15.1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call16.1 = tail call i32 %45(ptr noundef %41, i32 noundef 5) #7
  %46 = ptrtoint ptr %ops15.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops15.1, align 4
  %commit_write18.1 = getelementptr inbounds %struct.src_rsc_ops, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %commit_write18.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %commit_write18.1, align 4
  %call19.1 = tail call i32 %49(ptr noundef %41) #7
  %50 = ptrtoint ptr %src_enable_s to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src_enable_s, align 4
  %call20.1 = tail call i32 %51(ptr noundef %src_mgr, ptr noundef %41) #7
  %ops24 = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 1
  %52 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops24, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %srcs, align 4
  %call26 = tail call i32 %55(ptr noundef %dai, ptr noundef %57) #7
  %58 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops24, align 4
  %set_srt_srcr = getelementptr inbounds %struct.dai_rsc_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %set_srt_srcr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_srt_srcr, align 4
  %62 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx3.1, align 4
  %call30 = tail call i32 %61(ptr noundef %dai, ptr noundef %63) #7
  %64 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops24, align 4
  %set_enb_src = getelementptr inbounds %struct.dai_rsc_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %set_enb_src to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_enb_src, align 4
  %call32 = tail call i32 %67(ptr noundef %dai, i32 noundef 1) #7
  %68 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops24, align 4
  %set_enb_srt = getelementptr inbounds %struct.dai_rsc_ops, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %set_enb_srt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_enb_srt, align 4
  %call34 = tail call i32 %71(ptr noundef %dai, i32 noundef 1) #7
  %72 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops24, align 4
  %commit_write36 = getelementptr inbounds %struct.dai_rsc_ops, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %commit_write36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %commit_write36, align 4
  %call37 = tail call i32 %75(ptr noundef %dai) #7
  %76 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %commit_write, align 4
  %call39 = tail call i32 %77(ptr noundef %src_mgr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_timer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_mixer_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @destroy_hw_obj(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ct_vm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1317, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ct_atc_create_alsa_devs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ct_atc_create_alsa_devs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ct_atc_create.ops, !9, !"ops", i1 false, i1 false}
!9 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1676, i32 37}
!10 = !{ptr @ct_atc_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1696, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1701, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ct_atc_create._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ct_atc_create._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1717, i32 3}
!20 = !{ptr @ct_atc_create._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ct_atc_create._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1744, i32 2}
!24 = !{ptr @ct_atc_create._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ct_atc_create._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ctxfi/ctatc.c", i32 87, i32 23}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ctxfi/ctatc.c", i32 90, i32 23}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/ctatc.c", i32 93, i32 23}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ctxfi/ctatc.c", i32 96, i32 23}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ctxfi/ctatc.c", i32 99, i32 23}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ctxfi/ctatc.c", i32 103, i32 23}
!38 = distinct !{null, !39, !"alsa_dev_funcs", i1 false, i1 false}
!39 = !{!"../sound/pci/ctxfi/ctatc.c", i32 84, i32 3}
!40 = !{ptr @atc_preset, !41, !"atc_preset", i1 false, i1 false}
!41 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1615, i32 28}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ctxfi/ctatc.c", i32 186, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @convert_format._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @convert_format._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/ctxfi/ctatc.c", i32 438, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @atc_pcm_playback_position.__UNIQUE_ID_ddebug242, !48, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1599, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @atc_resume._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @atc_resume._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1264, i32 20}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1268, i32 20}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1284, i32 4}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @atc_identify_card._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @atc_identify_card._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1297, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atc_identify_card._entry.31, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @atc_identify_card._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/ctxfi/ctatc.c", i32 39, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ctxfi/ctatc.c", i32 41, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ctxfi/ctatc.c", i32 43, i32 2}
!77 = !{ptr @subsys_20k1_list, !78, !"subsys_20k1_list", i1 false, i1 false}
!78 = !{!"../sound/pci/ctxfi/ctatc.c", i32 38, i32 35}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/ctxfi/ctatc.c", i32 49, i32 2}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ctxfi/ctatc.c", i32 51, i32 2}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/ctxfi/ctatc.c", i32 53, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ctxfi/ctatc.c", i32 59, i32 2}
!87 = !{ptr @subsys_20k2_list, !88, !"subsys_20k2_list", i1 false, i1 false}
!88 = !{!"../sound/pci/ctxfi/ctatc.c", i32 48, i32 35}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ctxfi/ctatc.c", i32 70, i32 21}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/ctxfi/ctatc.c", i32 72, i32 15}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ctxfi/ctatc.c", i32 73, i32 16}
!95 = !{ptr @ct_subsys_name, !96, !"ct_subsys_name", i1 false, i1 false}
!96 = !{!"../sound/pci/ctxfi/ctatc.c", i32 65, i32 20}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1334, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @atc_create_hw_devs._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @atc_create_hw_devs._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1354, i32 4}
!104 = !{ptr @atc_create_hw_devs._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @atc_create_hw_devs._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"rsc_mgr_funcs", i1 false, i1 false}
!107 = !{!"../sound/pci/ctxfi/ctatc.c", i32 112, i32 3}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ctxfi/ctatc.c", i32 1402, i32 4}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @atc_get_resources._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @atc_get_resources._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2148212097, i64 2148212102, i64 2148212115, i64 2148212159, i64 2148212193, i64 2148212214}
