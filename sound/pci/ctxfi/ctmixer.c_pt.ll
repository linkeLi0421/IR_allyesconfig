; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctmixer.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctmixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ct_kcontrol_init = type { i8, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ct_mixer = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.amixer_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sum_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.sum_desc = type { i32 }
%struct.amixer_desc = type { i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.amixer = type { %struct.rsc, [8 x i8], ptr, ptr, ptr }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.amixer_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kctls.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kctls.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ct_mixer_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 854, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get sum resources for front output!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ct_mixer_get_resources\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ctxfi/ctmixer.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_mixer_get_resources._entry_ptr = internal global ptr @ct_mixer_get_resources._entry, section ".printk_index", align 4
@ct_mixer_get_resources._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 869, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get amixer resources for mixer obj!\0A\00", [49 x i8] zeroinitializer }, align 32
@ct_mixer_get_resources._entry_ptr.7 = internal global ptr @ct_mixer_get_resources._entry.5, section ".printk_index", align 4
@ct_kcontrol_init_table = internal global { [28 x %struct.ct_kcontrol_init], [32 x i8] } { [28 x %struct.ct_kcontrol_init] [%struct.ct_kcontrol_init { i8 1, ptr @.str.8 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.9 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.10 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.11 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.12 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.13 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.14 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.15 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.16 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.17 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.18 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.19 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.20 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.21 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.22 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.23 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.24 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.25 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.26 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.27 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.28 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.29 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.30 }, %struct.ct_kcontrol_init { i8 1, ptr @.str.31 }, %struct.ct_kcontrol_init { i8 0, ptr @.str.32 }, %struct.ct_kcontrol_init zeroinitializer, %struct.ct_kcontrol_init zeroinitializer, %struct.ct_kcontrol_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vol_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @ct_alsa_mix_volume_info, ptr @ct_alsa_mix_volume_get, ptr @ct_alsa_mix_volume_put, %union.anon.83 { ptr @ct_vol_db_scale }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@swh_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @ct_alsa_mix_switch_info, ptr @ct_alsa_mix_switch_get, ptr @ct_alsa_mix_switch_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iec958_mask_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.33, i32 0, i32 1, i32 1, ptr @ct_spdif_info, ptr @ct_spdif_get_mask, ptr null, %union.anon.83 zeroinitializer, i32 25 }, [48 x i8] zeroinitializer }, align 32
@iec958_default_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 1, ptr @ct_spdif_info, ptr @ct_spdif_get, ptr @ct_spdif_put, %union.anon.83 zeroinitializer, i32 26 }, [48 x i8] zeroinitializer }, align 32
@iec958_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.35, i32 0, i32 3, i32 1, ptr @ct_spdif_info, ptr @ct_spdif_get, ptr @ct_spdif_put, %union.anon.83 zeroinitializer, i32 27 }, [48 x i8] zeroinitializer }, align 32
@output_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @output_switch_info, ptr @output_switch_get, ptr @output_switch_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mic_source_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @mic_source_switch_info, ptr @mic_source_switch_get, ptr @mic_source_switch_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Center/LFE Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Center/LFE Playback Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digit-IO Playback Switch\00", [39 x i8] zeroinitializer }, align 32
@ct_vol_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6400, i32 65561], [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Output Playback Enum\00", [36 x i8] zeroinitializer }, align 32
@output_switch_info.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FP Headphones\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Headphones\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mic Source Capture Enum\00", [40 x i8] zeroinitializer }, align 32
@mic_source_switch_info.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43], [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FP Mic\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@switch.table.mixer_get_output_ports = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 24, i32 26, i32 28, i32 30, i32 22, i32 32, i32 20, i32 18, i32 16, i32 8, i32 10, i32 12, i32 14], [44 x i8] zeroinitializer }, align 32
@switch.table.mixer_set_input_left = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 12, i32 13, i32 14, i32 15, i32 11, i32 16, i32 10, i32 9, i32 8, i32 4, i32 5, i32 6, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.mixer_set_input_left.44 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 32, i32 32, i32 32, i32 32, i32 34, i32 32, i32 32, i32 32, i32 36, i32 38, i32 40], [52 x i8] zeroinitializer }, align 32
@switch.table.mixer_set_input_right = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 12, i32 13, i32 14, i32 15, i32 11, i32 16, i32 10, i32 9, i32 8, i32 4, i32 5, i32 6, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.mixer_set_input_right.45 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 33, i32 33, i32 33, i32 33, i32 35, i32 33, i32 33, i32 33, i32 37, i32 39, i32 41], [52 x i8] zeroinitializer }, align 32
@switch.table.do_switch = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 34, i32 38, i32 40, i32 36], [16 x i8] zeroinitializer }, align 32
@switch.table.do_switch.46 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 34, i32 38, i32 40, i32 36], [16 x i8] zeroinitializer }, align 32
@switch.table.ct_alsa_mix_volume_get = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 8, i32 18, i32 20, i32 16, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 38, i32 40, i32 36, i32 34, i32 38, i32 40, i32 36], [52 x i8] zeroinitializer }, align 32
@switch.table.ct_alsa_mix_volume_put = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 4, i32 9, i32 10, i32 8, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 19, i32 20, i32 18, i32 17, i32 19, i32 20, i32 18], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.53 = internal global [11 x i64] [i64 9, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.55 = internal global [11 x i64] [i64 9, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"kctls.0\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"kctls.1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 853, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 868, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"ct_kcontrol_init_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 115, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"vol_ctl\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 400, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"swh_ctl\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 607, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"iec958_mask_ctl\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 672, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"iec958_default_ctl\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 682, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"iec958_ctl\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 692, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"output_ctl\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 437, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"mic_source_ctl\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 473, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 118, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 126, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 134, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 142, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 150, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 158, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 162, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 174, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 170, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 166, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 122, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 130, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 138, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 146, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 154, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 178, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 182, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 186, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 190, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 194, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 198, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 210, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 206, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 202, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 214, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"ct_vol_db_scale\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 328, i32 14 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 675, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 684, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 695, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 439, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 413, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 414, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 414, i32 21 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 414, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 475, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 448, i32 27 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 449, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 449, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [29 x i8] c"../sound/pci/ctxfi/ctmixer.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 449, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant [36 x i8] c"switch.table.mixer_get_output_ports\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [34 x i8] c"switch.table.mixer_set_input_left\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [37 x i8] c"switch.table.mixer_set_input_left.44\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [35 x i8] c"switch.table.mixer_set_input_right\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [38 x i8] c"switch.table.mixer_set_input_right.45\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [23 x i8] c"switch.table.do_switch\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [26 x i8] c"switch.table.do_switch.46\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [36 x i8] c"switch.table.ct_alsa_mix_volume_get\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [36 x i8] c"switch.table.ct_alsa_mix_volume_put\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @ct_mixer_get_resources._entry, ptr @ct_mixer_get_resources._entry.5, ptr @ct_mixer_get_resources._entry_ptr, ptr @ct_mixer_get_resources._entry_ptr.7, ptr @kctls.0, ptr @kctls.1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ct_kcontrol_init_table, ptr @vol_ctl, ptr @swh_ctl, ptr @iec958_mask_ctl, ptr @iec958_default_ctl, ptr @iec958_ctl, ptr @output_ctl, ptr @mic_source_ctl, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ct_vol_db_scale, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @output_switch_info.names, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mic_source_switch_info.names, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.mixer_get_output_ports, ptr @switch.table.mixer_set_input_left, ptr @switch.table.mixer_set_input_left.44, ptr @switch.table.mixer_set_input_right, ptr @switch.table.mixer_set_input_right.45, ptr @switch.table.do_switch, ptr @switch.table.do_switch.46, ptr @switch.table.ct_alsa_mix_volume_get, ptr @switch.table.ct_alsa_mix_volume_put], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kctls.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kctls.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_mixer_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_mixer_get_resources._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_kcontrol_init_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swh_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iec958_mask_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iec958_default_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iec958_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_source_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_vol_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_switch_info.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_source_switch_info.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mixer_get_output_ports to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mixer_set_input_left to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mixer_set_input_left.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mixer_set_input_right to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mixer_set_input_right.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_switch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_switch.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ct_alsa_mix_volume_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ct_alsa_mix_volume_put to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_mixer_destroy(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %arrayidx = getelementptr %struct.ct_atc, ptr %1, i32 0, i32 43, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.ct_atc, ptr %1, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  %put_amixer = getelementptr inbounds %struct.amixer_mgr, ptr %5, i32 0, i32 4
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc
  %sums = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 2
  %put_sum = getelementptr inbounds %struct.sum_mgr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sums, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp12.not = icmp eq ptr %9, null
  br i1 %cmp12.not, label %for.cond8.preheader.for.inc18_crit_edge, label %if.then13

for.cond8.preheader.for.inc18_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %amixers, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %i.041
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %cmp5.not = icmp eq ptr %13, null
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %put_amixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %put_amixer, align 4
  %call = tail call i32 %15(ptr noundef %5, ptr noundef nonnull %13) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then13:                                        ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %put_sum, align 4
  %call16 = tail call i32 %17(ptr noundef %3, ptr noundef nonnull %9) #9
  br label %for.inc18

for.inc18:                                        ; preds = %if.then13, %for.cond8.preheader.for.inc18_crit_edge
  %18 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sums, align 4
  %arrayidx11.1 = getelementptr ptr, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11.1, align 4
  %cmp12.not.1 = icmp eq ptr %21, null
  br i1 %cmp12.not.1, label %for.inc18.for.inc18.1_crit_edge, label %if.then13.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.1

if.then13.1:                                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %put_sum, align 4
  %call16.1 = tail call i32 %23(ptr noundef %3, ptr noundef nonnull %21) #9
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then13.1, %for.inc18.for.inc18.1_crit_edge
  %24 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sums, align 4
  %arrayidx11.2 = getelementptr ptr, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx11.2, align 4
  %cmp12.not.2 = icmp eq ptr %27, null
  br i1 %cmp12.not.2, label %for.inc18.1.for.inc18.2_crit_edge, label %if.then13.2

for.inc18.1.for.inc18.2_crit_edge:                ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.2

if.then13.2:                                      ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %put_sum, align 4
  %call16.2 = tail call i32 %29(ptr noundef %3, ptr noundef nonnull %27) #9
  br label %for.inc18.2

for.inc18.2:                                      ; preds = %if.then13.2, %for.inc18.1.for.inc18.2_crit_edge
  %30 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sums, align 4
  %arrayidx11.3 = getelementptr ptr, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx11.3, align 4
  %cmp12.not.3 = icmp eq ptr %33, null
  br i1 %cmp12.not.3, label %for.inc18.2.for.inc18.3_crit_edge, label %if.then13.3

for.inc18.2.for.inc18.3_crit_edge:                ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.3

if.then13.3:                                      ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %put_sum, align 4
  %call16.3 = tail call i32 %35(ptr noundef %3, ptr noundef nonnull %33) #9
  br label %for.inc18.3

for.inc18.3:                                      ; preds = %if.then13.3, %for.inc18.2.for.inc18.3_crit_edge
  %36 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sums, align 4
  %arrayidx11.4 = getelementptr ptr, ptr %37, i32 4
  %38 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11.4, align 4
  %cmp12.not.4 = icmp eq ptr %39, null
  br i1 %cmp12.not.4, label %for.inc18.3.for.inc18.4_crit_edge, label %if.then13.4

for.inc18.3.for.inc18.4_crit_edge:                ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.4

if.then13.4:                                      ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %put_sum, align 4
  %call16.4 = tail call i32 %41(ptr noundef %3, ptr noundef nonnull %39) #9
  br label %for.inc18.4

for.inc18.4:                                      ; preds = %if.then13.4, %for.inc18.3.for.inc18.4_crit_edge
  %42 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sums, align 4
  %arrayidx11.5 = getelementptr ptr, ptr %43, i32 5
  %44 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx11.5, align 4
  %cmp12.not.5 = icmp eq ptr %45, null
  br i1 %cmp12.not.5, label %for.inc18.4.for.inc18.5_crit_edge, label %if.then13.5

for.inc18.4.for.inc18.5_crit_edge:                ; preds = %for.inc18.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.5

if.then13.5:                                      ; preds = %for.inc18.4
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %put_sum, align 4
  %call16.5 = tail call i32 %47(ptr noundef %3, ptr noundef nonnull %45) #9
  br label %for.inc18.5

for.inc18.5:                                      ; preds = %if.then13.5, %for.inc18.4.for.inc18.5_crit_edge
  %48 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sums, align 4
  %arrayidx11.6 = getelementptr ptr, ptr %49, i32 6
  %50 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx11.6, align 4
  %cmp12.not.6 = icmp eq ptr %51, null
  br i1 %cmp12.not.6, label %for.inc18.5.for.inc18.6_crit_edge, label %if.then13.6

for.inc18.5.for.inc18.6_crit_edge:                ; preds = %for.inc18.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.6

if.then13.6:                                      ; preds = %for.inc18.5
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %put_sum, align 4
  %call16.6 = tail call i32 %53(ptr noundef %3, ptr noundef nonnull %51) #9
  br label %for.inc18.6

for.inc18.6:                                      ; preds = %if.then13.6, %for.inc18.5.for.inc18.6_crit_edge
  %54 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sums, align 4
  %arrayidx11.7 = getelementptr ptr, ptr %55, i32 7
  %56 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx11.7, align 4
  %cmp12.not.7 = icmp eq ptr %57, null
  br i1 %cmp12.not.7, label %for.inc18.6.for.inc18.7_crit_edge, label %if.then13.7

for.inc18.6.for.inc18.7_crit_edge:                ; preds = %for.inc18.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.7

if.then13.7:                                      ; preds = %for.inc18.6
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %put_sum, align 4
  %call16.7 = tail call i32 %59(ptr noundef %3, ptr noundef nonnull %57) #9
  br label %for.inc18.7

for.inc18.7:                                      ; preds = %if.then13.7, %for.inc18.6.for.inc18.7_crit_edge
  %60 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sums, align 4
  %arrayidx11.8 = getelementptr ptr, ptr %61, i32 8
  %62 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx11.8, align 4
  %cmp12.not.8 = icmp eq ptr %63, null
  br i1 %cmp12.not.8, label %for.inc18.7.for.inc18.8_crit_edge, label %if.then13.8

for.inc18.7.for.inc18.8_crit_edge:                ; preds = %for.inc18.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.8

if.then13.8:                                      ; preds = %for.inc18.7
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %put_sum, align 4
  %call16.8 = tail call i32 %65(ptr noundef %3, ptr noundef nonnull %63) #9
  br label %for.inc18.8

for.inc18.8:                                      ; preds = %if.then13.8, %for.inc18.7.for.inc18.8_crit_edge
  %66 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sums, align 4
  %arrayidx11.9 = getelementptr ptr, ptr %67, i32 9
  %68 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx11.9, align 4
  %cmp12.not.9 = icmp eq ptr %69, null
  br i1 %cmp12.not.9, label %for.inc18.8.for.inc18.9_crit_edge, label %if.then13.9

for.inc18.8.for.inc18.9_crit_edge:                ; preds = %for.inc18.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.9

if.then13.9:                                      ; preds = %for.inc18.8
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %put_sum to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %put_sum, align 4
  %call16.9 = tail call i32 %71(ptr noundef %3, ptr noundef nonnull %69) #9
  br label %for.inc18.9

for.inc18.9:                                      ; preds = %if.then13.9, %for.inc18.8.for.inc18.9_crit_edge
  %72 = ptrtoint ptr %sums to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sums, align 4
  tail call void @kfree(ptr noundef %73) #9
  %74 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %amixers, align 4
  tail call void @kfree(ptr noundef %75) #9
  tail call void @kfree(ptr noundef %mixer) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_mixer_create(ptr noundef %atc, ptr nocapture noundef writeonly %rmixer) local_unnamed_addr #0 align 64 {
entry:
  %sum.i = alloca ptr, align 4
  %sum_desc.i = alloca %struct.sum_desc, align 4
  %amixer.i = alloca ptr, align 4
  %am_desc.i = alloca %struct.amixer_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rmixer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rmixer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #12
  %amixers.i = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %amixers.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i.i, ptr %amixers.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.error1.i_crit_edge, label %if.end5.i

if.end.i.error1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error1.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i21.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 40) #12
  %sums.i = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %sums.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i21.i, ptr %sums.i, align 8
  %tobool8.not.i = icmp eq ptr %call7.i.i.i21.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amixers.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  br label %error1.i

error1.i:                                         ; preds = %if.then9.i, %if.end.i.error1.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %switch_state = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %switch_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %switch_state, align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %atc, ptr %call7.i.i.i, align 8
  %get_output_ports = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %get_output_ports to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mixer_get_output_ports, ptr %get_output_ports, align 8
  %set_input_left = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %set_input_left to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mixer_set_input_left, ptr %set_input_left, align 4
  %set_input_right = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %set_input_right to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mixer_set_input_right, ptr %set_input_right, align 8
  %resume = getelementptr inbounds %struct.ct_mixer, ptr %call7.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mixer_resume, ptr %resume, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum.i) #9
  %14 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %sum.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum_desc.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amixer.i) #9
  %15 = ptrtoint ptr %amixer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %amixer.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %am_desc.i) #9
  %16 = ptrtoint ptr %am_desc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %am_desc.i, align 4
  %arrayidx.i = getelementptr %struct.ct_atc, ptr %atc, i32 0, i32 43, i32 3
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %msr.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 3
  %19 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msr.i, align 4
  %21 = ptrtoint ptr %sum_desc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sum_desc.i, align 4
  %get_sum.i = getelementptr inbounds %struct.sum_mgr, ptr %18, i32 0, i32 3
  %22 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_sum.i, align 4
  %call.i = call i32 %23(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %if.end.i15, label %if.end.for.end.thread.i_crit_edge

if.end.for.end.thread.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.end.8.i.for.end.thread.i_crit_edge, %if.end.7.i.for.end.thread.i_crit_edge, %if.end.6.i.for.end.thread.i_crit_edge, %if.end.5.i.for.end.thread.i_crit_edge, %if.end.4.i.for.end.thread.i_crit_edge, %if.end.3.i.for.end.thread.i_crit_edge, %if.end.2.i.for.end.thread.i_crit_edge, %if.end.1.i.for.end.thread.i_crit_edge, %if.end.i15.for.end.thread.i_crit_edge, %if.end.for.end.thread.i_crit_edge
  %call.lcssa.i = phi i32 [ %call.i, %if.end.for.end.thread.i_crit_edge ], [ %call.1.i, %if.end.i15.for.end.thread.i_crit_edge ], [ %call.2.i, %if.end.1.i.for.end.thread.i_crit_edge ], [ %call.3.i, %if.end.2.i.for.end.thread.i_crit_edge ], [ %call.4.i, %if.end.3.i.for.end.thread.i_crit_edge ], [ %call.5.i, %if.end.4.i.for.end.thread.i_crit_edge ], [ %call.6.i, %if.end.5.i.for.end.thread.i_crit_edge ], [ %call.7.i, %if.end.6.i.for.end.thread.i_crit_edge ], [ %call.8.i, %if.end.7.i.for.end.thread.i_crit_edge ], [ %call.9.i, %if.end.8.i.for.end.thread.i_crit_edge ]
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i.i, align 8
  %card.i = getelementptr inbounds %struct.ct_atc, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str) #13
  br label %error1.i17

if.end.i15:                                       ; preds = %if.end
  %30 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sum.i, align 4
  %32 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sums.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %33, align 4
  %35 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_sum.i, align 4
  %call.1.i = call i32 %36(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i15.for.end.thread.i_crit_edge

if.end.i15.for.end.thread.i_crit_edge:            ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.1.i:                                       ; preds = %if.end.i15
  %37 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sum.i, align 4
  %39 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sums.i, align 8
  %arrayidx4.1.i = getelementptr ptr, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx4.1.i, align 4
  %42 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_sum.i, align 4
  %call.2.i = call i32 %43(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.for.end.thread.i_crit_edge

if.end.1.i.for.end.thread.i_crit_edge:            ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %44 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sum.i, align 4
  %46 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sums.i, align 8
  %arrayidx4.2.i = getelementptr ptr, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %arrayidx4.2.i, align 4
  %49 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_sum.i, align 4
  %call.3.i = call i32 %50(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.for.end.thread.i_crit_edge

if.end.2.i.for.end.thread.i_crit_edge:            ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.3.i:                                       ; preds = %if.end.2.i
  %51 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sum.i, align 4
  %53 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sums.i, align 8
  %arrayidx4.3.i = getelementptr ptr, ptr %54, i32 3
  %55 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %arrayidx4.3.i, align 4
  %56 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_sum.i, align 4
  %call.4.i = call i32 %57(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.for.end.thread.i_crit_edge

if.end.3.i.for.end.thread.i_crit_edge:            ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.4.i:                                       ; preds = %if.end.3.i
  %58 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sum.i, align 4
  %60 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sums.i, align 8
  %arrayidx4.4.i = getelementptr ptr, ptr %61, i32 4
  %62 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %arrayidx4.4.i, align 4
  %63 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_sum.i, align 4
  %call.5.i = call i32 %64(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.for.end.thread.i_crit_edge

if.end.4.i.for.end.thread.i_crit_edge:            ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.5.i:                                       ; preds = %if.end.4.i
  %65 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sum.i, align 4
  %67 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sums.i, align 8
  %arrayidx4.5.i = getelementptr ptr, ptr %68, i32 5
  %69 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %arrayidx4.5.i, align 4
  %70 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_sum.i, align 4
  %call.6.i = call i32 %71(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %if.end.5.i.for.end.thread.i_crit_edge

if.end.5.i.for.end.thread.i_crit_edge:            ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.6.i:                                       ; preds = %if.end.5.i
  %72 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sum.i, align 4
  %74 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sums.i, align 8
  %arrayidx4.6.i = getelementptr ptr, ptr %75, i32 6
  %76 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %arrayidx4.6.i, align 4
  %77 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_sum.i, align 4
  %call.7.i = call i32 %78(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %if.end.7.i, label %if.end.6.i.for.end.thread.i_crit_edge

if.end.6.i.for.end.thread.i_crit_edge:            ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.7.i:                                       ; preds = %if.end.6.i
  %79 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sum.i, align 4
  %81 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sums.i, align 8
  %arrayidx4.7.i = getelementptr ptr, ptr %82, i32 7
  %83 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %arrayidx4.7.i, align 4
  %84 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %get_sum.i, align 4
  %call.8.i = call i32 %85(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool.not.8.i, label %if.end.8.i, label %if.end.7.i.for.end.thread.i_crit_edge

if.end.7.i.for.end.thread.i_crit_edge:            ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.8.i:                                       ; preds = %if.end.7.i
  %86 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sum.i, align 4
  %88 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sums.i, align 8
  %arrayidx4.8.i = getelementptr ptr, ptr %89, i32 8
  %90 = ptrtoint ptr %arrayidx4.8.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %arrayidx4.8.i, align 4
  %91 = ptrtoint ptr %get_sum.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_sum.i, align 4
  %call.9.i = call i32 %92(ptr noundef %18, ptr noundef nonnull %sum_desc.i, ptr noundef nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool.not.9.i, label %if.end.9.i, label %if.end.8.i.for.end.thread.i_crit_edge

if.end.8.i.for.end.thread.i_crit_edge:            ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

if.end.9.i:                                       ; preds = %if.end.8.i
  %93 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sum.i, align 4
  %95 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sums.i, align 8
  %arrayidx4.9.i = getelementptr ptr, ptr %96, i32 9
  %97 = ptrtoint ptr %arrayidx4.9.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %arrayidx4.9.i, align 4
  %98 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx10.i = getelementptr %struct.ct_atc, ptr %99, i32 0, i32 43, i32 2
  %100 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx10.i, align 4
  %msr12.i = getelementptr inbounds %struct.ct_atc, ptr %99, i32 0, i32 3
  %102 = ptrtoint ptr %msr12.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %msr12.i, align 4
  %104 = ptrtoint ptr %am_desc.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %am_desc.i, align 4
  %get_amixer.i = getelementptr inbounds %struct.amixer_mgr, ptr %101, i32 0, i32 3
  br label %for.body16.i

for.body16.i:                                     ; preds = %if.end26.i.for.body16.i_crit_edge, %if.end.9.i
  %i.1119.i = phi i32 [ 0, %if.end.9.i ], [ %inc29.i, %if.end26.i.for.body16.i_crit_edge ]
  %105 = ptrtoint ptr %get_amixer.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_amixer.i, align 4
  %call17.i = call i32 %106(ptr noundef %101, ptr noundef nonnull %am_desc.i, ptr noundef nonnull %amixer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end26.i, label %for.end30.i

if.end26.i:                                       ; preds = %for.body16.i
  %107 = ptrtoint ptr %amixer.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %amixer.i, align 4
  %109 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %amixers.i, align 4
  %arrayidx27.i = getelementptr ptr, ptr %110, i32 %i.1119.i
  %111 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %arrayidx27.i, align 4
  %inc29.i = add nuw nsw i32 %i.1119.i, 1
  %exitcond.not.i = icmp eq i32 %inc29.i, 42
  br i1 %exitcond.not.i, label %ct_mixer_get_resources.exit.thread, label %if.end26.i.for.body16.i_crit_edge

if.end26.i.for.body16.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

ct_mixer_get_resources.exit.thread:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %am_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amixer.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum.i) #9
  br label %if.end5

for.end30.i:                                      ; preds = %for.body16.i
  %112 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call7.i.i.i, align 8
  %card24.i = getelementptr inbounds %struct.ct_atc, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %card24.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card24.i, align 4
  %dev25.i = getelementptr inbounds %struct.snd_card, ptr %115, i32 0, i32 27
  %116 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev25.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.6) #13
  %put_amixer.i = getelementptr inbounds %struct.amixer_mgr, ptr %101, i32 0, i32 4
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.inc47.i.for.body36.i_crit_edge, %for.end30.i
  %i.2120.i = phi i32 [ 0, %for.end30.i ], [ %inc48.i, %for.inc47.i.for.body36.i_crit_edge ]
  %118 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %amixers.i, align 4
  %arrayidx38.i = getelementptr ptr, ptr %119, i32 %i.2120.i
  %120 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx38.i, align 4
  %cmp39.not.i = icmp eq ptr %121, null
  br i1 %cmp39.not.i, label %for.body36.i.for.inc47.i_crit_edge, label %if.then40.i

for.body36.i.for.inc47.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i

if.then40.i:                                      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %amixer.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %amixer.i, align 4
  %123 = ptrtoint ptr %put_amixer.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %put_amixer.i, align 4
  %call43.i = call i32 %124(ptr noundef %101, ptr noundef nonnull %121) #9
  %125 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %amixers.i, align 4
  %arrayidx45.i = getelementptr ptr, ptr %126, i32 %i.2120.i
  %127 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx45.i, align 4
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.then40.i, %for.body36.i.for.inc47.i_crit_edge
  %inc48.i = add nuw nsw i32 %i.2120.i, 1
  %exitcond127.not.i = icmp eq i32 %inc48.i, 42
  br i1 %exitcond127.not.i, label %for.inc47.i.error1.i17_crit_edge, label %for.inc47.i.for.body36.i_crit_edge

for.inc47.i.for.body36.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

for.inc47.i.error1.i17_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error1.i17

error1.i17:                                       ; preds = %for.inc47.i.error1.i17_crit_edge, %for.end.thread.i
  %err.4.i = phi i32 [ %call.lcssa.i, %for.end.thread.i ], [ %call17.i, %for.inc47.i.error1.i17_crit_edge ]
  %put_sum.i = getelementptr inbounds %struct.sum_mgr, ptr %18, i32 0, i32 4
  %128 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sums.i, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %cmp55.not.i = icmp eq ptr %131, null
  br i1 %cmp55.not.i, label %error1.i17.for.inc63.i_crit_edge, label %if.then56.i

error1.i17.for.inc63.i_crit_edge:                 ; preds = %error1.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.i

if.then56.i:                                      ; preds = %error1.i17
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %put_sum.i, align 4
  %call59.i = call i32 %133(ptr noundef %18, ptr noundef nonnull %131) #9
  %134 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sums.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %135, align 4
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %if.then56.i, %error1.i17.for.inc63.i_crit_edge
  %137 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sums.i, align 8
  %arrayidx54.1.i = getelementptr ptr, ptr %138, i32 1
  %139 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx54.1.i, align 4
  %cmp55.not.1.i = icmp eq ptr %140, null
  br i1 %cmp55.not.1.i, label %for.inc63.i.for.inc63.1.i_crit_edge, label %if.then56.1.i

for.inc63.i.for.inc63.1.i_crit_edge:              ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.1.i

if.then56.1.i:                                    ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %put_sum.i, align 4
  %call59.1.i = call i32 %142(ptr noundef %18, ptr noundef nonnull %140) #9
  %143 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sums.i, align 8
  %arrayidx61.1.i = getelementptr ptr, ptr %144, i32 1
  %145 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %arrayidx61.1.i, align 4
  br label %for.inc63.1.i

for.inc63.1.i:                                    ; preds = %if.then56.1.i, %for.inc63.i.for.inc63.1.i_crit_edge
  %146 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sums.i, align 8
  %arrayidx54.2.i = getelementptr ptr, ptr %147, i32 2
  %148 = ptrtoint ptr %arrayidx54.2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx54.2.i, align 4
  %cmp55.not.2.i = icmp eq ptr %149, null
  br i1 %cmp55.not.2.i, label %for.inc63.1.i.for.inc63.2.i_crit_edge, label %if.then56.2.i

for.inc63.1.i.for.inc63.2.i_crit_edge:            ; preds = %for.inc63.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.2.i

if.then56.2.i:                                    ; preds = %for.inc63.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %put_sum.i, align 4
  %call59.2.i = call i32 %151(ptr noundef %18, ptr noundef nonnull %149) #9
  %152 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sums.i, align 8
  %arrayidx61.2.i = getelementptr ptr, ptr %153, i32 2
  %154 = ptrtoint ptr %arrayidx61.2.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx61.2.i, align 4
  br label %for.inc63.2.i

for.inc63.2.i:                                    ; preds = %if.then56.2.i, %for.inc63.1.i.for.inc63.2.i_crit_edge
  %155 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sums.i, align 8
  %arrayidx54.3.i = getelementptr ptr, ptr %156, i32 3
  %157 = ptrtoint ptr %arrayidx54.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx54.3.i, align 4
  %cmp55.not.3.i = icmp eq ptr %158, null
  br i1 %cmp55.not.3.i, label %for.inc63.2.i.for.inc63.3.i_crit_edge, label %if.then56.3.i

for.inc63.2.i.for.inc63.3.i_crit_edge:            ; preds = %for.inc63.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.3.i

if.then56.3.i:                                    ; preds = %for.inc63.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %put_sum.i, align 4
  %call59.3.i = call i32 %160(ptr noundef %18, ptr noundef nonnull %158) #9
  %161 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sums.i, align 8
  %arrayidx61.3.i = getelementptr ptr, ptr %162, i32 3
  %163 = ptrtoint ptr %arrayidx61.3.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %arrayidx61.3.i, align 4
  br label %for.inc63.3.i

for.inc63.3.i:                                    ; preds = %if.then56.3.i, %for.inc63.2.i.for.inc63.3.i_crit_edge
  %164 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sums.i, align 8
  %arrayidx54.4.i = getelementptr ptr, ptr %165, i32 4
  %166 = ptrtoint ptr %arrayidx54.4.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx54.4.i, align 4
  %cmp55.not.4.i = icmp eq ptr %167, null
  br i1 %cmp55.not.4.i, label %for.inc63.3.i.for.inc63.4.i_crit_edge, label %if.then56.4.i

for.inc63.3.i.for.inc63.4.i_crit_edge:            ; preds = %for.inc63.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.4.i

if.then56.4.i:                                    ; preds = %for.inc63.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %put_sum.i, align 4
  %call59.4.i = call i32 %169(ptr noundef %18, ptr noundef nonnull %167) #9
  %170 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sums.i, align 8
  %arrayidx61.4.i = getelementptr ptr, ptr %171, i32 4
  %172 = ptrtoint ptr %arrayidx61.4.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %arrayidx61.4.i, align 4
  br label %for.inc63.4.i

for.inc63.4.i:                                    ; preds = %if.then56.4.i, %for.inc63.3.i.for.inc63.4.i_crit_edge
  %173 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sums.i, align 8
  %arrayidx54.5.i = getelementptr ptr, ptr %174, i32 5
  %175 = ptrtoint ptr %arrayidx54.5.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx54.5.i, align 4
  %cmp55.not.5.i = icmp eq ptr %176, null
  br i1 %cmp55.not.5.i, label %for.inc63.4.i.for.inc63.5.i_crit_edge, label %if.then56.5.i

for.inc63.4.i.for.inc63.5.i_crit_edge:            ; preds = %for.inc63.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.5.i

if.then56.5.i:                                    ; preds = %for.inc63.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %put_sum.i, align 4
  %call59.5.i = call i32 %178(ptr noundef %18, ptr noundef nonnull %176) #9
  %179 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sums.i, align 8
  %arrayidx61.5.i = getelementptr ptr, ptr %180, i32 5
  %181 = ptrtoint ptr %arrayidx61.5.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %arrayidx61.5.i, align 4
  br label %for.inc63.5.i

for.inc63.5.i:                                    ; preds = %if.then56.5.i, %for.inc63.4.i.for.inc63.5.i_crit_edge
  %182 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sums.i, align 8
  %arrayidx54.6.i = getelementptr ptr, ptr %183, i32 6
  %184 = ptrtoint ptr %arrayidx54.6.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx54.6.i, align 4
  %cmp55.not.6.i = icmp eq ptr %185, null
  br i1 %cmp55.not.6.i, label %for.inc63.5.i.for.inc63.6.i_crit_edge, label %if.then56.6.i

for.inc63.5.i.for.inc63.6.i_crit_edge:            ; preds = %for.inc63.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.6.i

if.then56.6.i:                                    ; preds = %for.inc63.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %put_sum.i, align 4
  %call59.6.i = call i32 %187(ptr noundef %18, ptr noundef nonnull %185) #9
  %188 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sums.i, align 8
  %arrayidx61.6.i = getelementptr ptr, ptr %189, i32 6
  %190 = ptrtoint ptr %arrayidx61.6.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %arrayidx61.6.i, align 4
  br label %for.inc63.6.i

for.inc63.6.i:                                    ; preds = %if.then56.6.i, %for.inc63.5.i.for.inc63.6.i_crit_edge
  %191 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sums.i, align 8
  %arrayidx54.7.i = getelementptr ptr, ptr %192, i32 7
  %193 = ptrtoint ptr %arrayidx54.7.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx54.7.i, align 4
  %cmp55.not.7.i = icmp eq ptr %194, null
  br i1 %cmp55.not.7.i, label %for.inc63.6.i.for.inc63.7.i_crit_edge, label %if.then56.7.i

for.inc63.6.i.for.inc63.7.i_crit_edge:            ; preds = %for.inc63.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.7.i

if.then56.7.i:                                    ; preds = %for.inc63.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %put_sum.i, align 4
  %call59.7.i = call i32 %196(ptr noundef %18, ptr noundef nonnull %194) #9
  %197 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %sums.i, align 8
  %arrayidx61.7.i = getelementptr ptr, ptr %198, i32 7
  %199 = ptrtoint ptr %arrayidx61.7.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %arrayidx61.7.i, align 4
  br label %for.inc63.7.i

for.inc63.7.i:                                    ; preds = %if.then56.7.i, %for.inc63.6.i.for.inc63.7.i_crit_edge
  %200 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sums.i, align 8
  %arrayidx54.8.i = getelementptr ptr, ptr %201, i32 8
  %202 = ptrtoint ptr %arrayidx54.8.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx54.8.i, align 4
  %cmp55.not.8.i = icmp eq ptr %203, null
  br i1 %cmp55.not.8.i, label %for.inc63.7.i.for.inc63.8.i_crit_edge, label %if.then56.8.i

for.inc63.7.i.for.inc63.8.i_crit_edge:            ; preds = %for.inc63.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63.8.i

if.then56.8.i:                                    ; preds = %for.inc63.7.i
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %put_sum.i, align 4
  %call59.8.i = call i32 %205(ptr noundef %18, ptr noundef nonnull %203) #9
  %206 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sums.i, align 8
  %arrayidx61.8.i = getelementptr ptr, ptr %207, i32 8
  %208 = ptrtoint ptr %arrayidx61.8.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %arrayidx61.8.i, align 4
  br label %for.inc63.8.i

for.inc63.8.i:                                    ; preds = %if.then56.8.i, %for.inc63.7.i.for.inc63.8.i_crit_edge
  %209 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sums.i, align 8
  %arrayidx54.9.i = getelementptr ptr, ptr %210, i32 9
  %211 = ptrtoint ptr %arrayidx54.9.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx54.9.i, align 4
  %cmp55.not.9.i = icmp eq ptr %212, null
  br i1 %cmp55.not.9.i, label %for.inc63.8.i.ct_mixer_get_resources.exit_crit_edge, label %if.then56.9.i

for.inc63.8.i.ct_mixer_get_resources.exit_crit_edge: ; preds = %for.inc63.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ct_mixer_get_resources.exit

if.then56.9.i:                                    ; preds = %for.inc63.8.i
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %put_sum.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %put_sum.i, align 4
  %call59.9.i = call i32 %214(ptr noundef %18, ptr noundef nonnull %212) #9
  %215 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %sums.i, align 8
  %arrayidx61.9.i = getelementptr ptr, ptr %216, i32 9
  %217 = ptrtoint ptr %arrayidx61.9.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %arrayidx61.9.i, align 4
  br label %ct_mixer_get_resources.exit

ct_mixer_get_resources.exit:                      ; preds = %if.then56.9.i, %for.inc63.8.i.ct_mixer_get_resources.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %am_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amixer.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %tobool3.not = icmp eq i32 %err.4.i, 0
  br i1 %tobool3.not, label %ct_mixer_get_resources.exit.if.end5_crit_edge, label %error

ct_mixer_get_resources.exit.if.end5_crit_edge:    ; preds = %ct_mixer_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %ct_mixer_get_resources.exit.if.end5_crit_edge, %ct_mixer_get_resources.exit.thread
  %218 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %amixers.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %222 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sums.i, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %ops.i = getelementptr inbounds %struct.amixer, ptr %221, i32 0, i32 4
  %226 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops.i, align 4
  %setup.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %227, i32 0, i32 6
  %228 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %setup.i, align 4
  %call.i21 = call i32 %229(ptr noundef %221, ptr noundef %225, i32 noundef 7168, ptr noundef null) #9
  %230 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %amixers.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %231, i32 1
  %232 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx5.i, align 4
  %234 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sums.i, align 8
  %arrayidx9.i = getelementptr ptr, ptr %235, i32 1
  %236 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx9.i, align 4
  %ops10.i = getelementptr inbounds %struct.amixer, ptr %233, i32 0, i32 4
  %238 = ptrtoint ptr %ops10.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops10.i, align 4
  %setup11.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %setup11.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %setup11.i, align 4
  %call13.i = call i32 %241(ptr noundef %233, ptr noundef %237, i32 noundef 7168, ptr noundef null) #9
  %242 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %amixers.i, align 4
  %arrayidx.1.i = getelementptr ptr, ptr %243, i32 2
  %244 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx.1.i, align 4
  %246 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sums.i, align 8
  %arrayidx2.1.i = getelementptr ptr, ptr %247, i32 2
  %248 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx2.1.i, align 4
  %ops.1.i = getelementptr inbounds %struct.amixer, ptr %245, i32 0, i32 4
  %250 = ptrtoint ptr %ops.1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ops.1.i, align 4
  %setup.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %251, i32 0, i32 6
  %252 = ptrtoint ptr %setup.1.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %setup.1.i, align 4
  %call.1.i22 = call i32 %253(ptr noundef %245, ptr noundef %249, i32 noundef 7168, ptr noundef null) #9
  %254 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %amixers.i, align 4
  %arrayidx5.1.i = getelementptr ptr, ptr %255, i32 3
  %256 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx5.1.i, align 4
  %258 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %sums.i, align 8
  %arrayidx9.1.i = getelementptr ptr, ptr %259, i32 3
  %260 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx9.1.i, align 4
  %ops10.1.i = getelementptr inbounds %struct.amixer, ptr %257, i32 0, i32 4
  %262 = ptrtoint ptr %ops10.1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops10.1.i, align 4
  %setup11.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %263, i32 0, i32 6
  %264 = ptrtoint ptr %setup11.1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %setup11.1.i, align 4
  %call13.1.i = call i32 %265(ptr noundef %257, ptr noundef %261, i32 noundef 7168, ptr noundef null) #9
  %266 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %amixers.i, align 4
  %arrayidx.2.i = getelementptr ptr, ptr %267, i32 4
  %268 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.2.i, align 4
  %270 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %sums.i, align 8
  %arrayidx2.2.i = getelementptr ptr, ptr %271, i32 4
  %272 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx2.2.i, align 4
  %ops.2.i = getelementptr inbounds %struct.amixer, ptr %269, i32 0, i32 4
  %274 = ptrtoint ptr %ops.2.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ops.2.i, align 4
  %setup.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %275, i32 0, i32 6
  %276 = ptrtoint ptr %setup.2.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %setup.2.i, align 4
  %call.2.i23 = call i32 %277(ptr noundef %269, ptr noundef %273, i32 noundef 7168, ptr noundef null) #9
  %278 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %amixers.i, align 4
  %arrayidx5.2.i = getelementptr ptr, ptr %279, i32 5
  %280 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx5.2.i, align 4
  %282 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sums.i, align 8
  %arrayidx9.2.i = getelementptr ptr, ptr %283, i32 5
  %284 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx9.2.i, align 4
  %ops10.2.i = getelementptr inbounds %struct.amixer, ptr %281, i32 0, i32 4
  %286 = ptrtoint ptr %ops10.2.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ops10.2.i, align 4
  %setup11.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %287, i32 0, i32 6
  %288 = ptrtoint ptr %setup11.2.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %setup11.2.i, align 4
  %call13.2.i = call i32 %289(ptr noundef %281, ptr noundef %285, i32 noundef 7168, ptr noundef null) #9
  %290 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %amixers.i, align 4
  %arrayidx.3.i = getelementptr ptr, ptr %291, i32 6
  %292 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx.3.i, align 4
  %294 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %sums.i, align 8
  %arrayidx2.3.i = getelementptr ptr, ptr %295, i32 6
  %296 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx2.3.i, align 4
  %ops.3.i = getelementptr inbounds %struct.amixer, ptr %293, i32 0, i32 4
  %298 = ptrtoint ptr %ops.3.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ops.3.i, align 4
  %setup.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %299, i32 0, i32 6
  %300 = ptrtoint ptr %setup.3.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %setup.3.i, align 4
  %call.3.i24 = call i32 %301(ptr noundef %293, ptr noundef %297, i32 noundef 7168, ptr noundef null) #9
  %302 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %amixers.i, align 4
  %arrayidx5.3.i = getelementptr ptr, ptr %303, i32 7
  %304 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx5.3.i, align 4
  %306 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %sums.i, align 8
  %arrayidx9.3.i = getelementptr ptr, ptr %307, i32 7
  %308 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx9.3.i, align 4
  %ops10.3.i = getelementptr inbounds %struct.amixer, ptr %305, i32 0, i32 4
  %310 = ptrtoint ptr %ops10.3.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops10.3.i, align 4
  %setup11.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %311, i32 0, i32 6
  %312 = ptrtoint ptr %setup11.3.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %setup11.3.i, align 4
  %call13.3.i = call i32 %313(ptr noundef %305, ptr noundef %309, i32 noundef 7168, ptr noundef null) #9
  %314 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %amixers.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %315, i32 24
  %316 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx20.i, align 4
  %318 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %315, align 4
  %ops24.i = getelementptr inbounds %struct.amixer, ptr %317, i32 0, i32 4
  %320 = ptrtoint ptr %ops24.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ops24.i, align 4
  %setup25.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %321, i32 0, i32 6
  %322 = ptrtoint ptr %setup25.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %setup25.i, align 4
  %call27.i = call i32 %323(ptr noundef %317, ptr noundef %319, i32 noundef 7168, ptr noundef null) #9
  %324 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %amixers.i, align 4
  %arrayidx31.i = getelementptr ptr, ptr %325, i32 25
  %326 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx31.i, align 4
  %arrayidx35.i = getelementptr ptr, ptr %325, i32 1
  %328 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx35.i, align 4
  %ops36.i = getelementptr inbounds %struct.amixer, ptr %327, i32 0, i32 4
  %330 = ptrtoint ptr %ops36.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ops36.i, align 4
  %setup37.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %331, i32 0, i32 6
  %332 = ptrtoint ptr %setup37.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %setup37.i, align 4
  %call39.i = call i32 %333(ptr noundef %327, ptr noundef %329, i32 noundef 7168, ptr noundef null) #9
  %334 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %amixers.i, align 4
  %arrayidx20.1.i = getelementptr ptr, ptr %335, i32 26
  %336 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx20.1.i, align 4
  %arrayidx23.1.i = getelementptr ptr, ptr %335, i32 2
  %338 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx23.1.i, align 4
  %ops24.1.i = getelementptr inbounds %struct.amixer, ptr %337, i32 0, i32 4
  %340 = ptrtoint ptr %ops24.1.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %ops24.1.i, align 4
  %setup25.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %341, i32 0, i32 6
  %342 = ptrtoint ptr %setup25.1.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %setup25.1.i, align 4
  %call27.1.i = call i32 %343(ptr noundef %337, ptr noundef %339, i32 noundef 7168, ptr noundef null) #9
  %344 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %amixers.i, align 4
  %arrayidx31.1.i = getelementptr ptr, ptr %345, i32 27
  %346 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx31.1.i, align 4
  %arrayidx35.1.i = getelementptr ptr, ptr %345, i32 3
  %348 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx35.1.i, align 4
  %ops36.1.i = getelementptr inbounds %struct.amixer, ptr %347, i32 0, i32 4
  %350 = ptrtoint ptr %ops36.1.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ops36.1.i, align 4
  %setup37.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %351, i32 0, i32 6
  %352 = ptrtoint ptr %setup37.1.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %setup37.1.i, align 4
  %call39.1.i = call i32 %353(ptr noundef %347, ptr noundef %349, i32 noundef 7168, ptr noundef null) #9
  %354 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %amixers.i, align 4
  %arrayidx20.2.i = getelementptr ptr, ptr %355, i32 28
  %356 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx20.2.i, align 4
  %arrayidx23.2.i = getelementptr ptr, ptr %355, i32 4
  %358 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx23.2.i, align 4
  %ops24.2.i = getelementptr inbounds %struct.amixer, ptr %357, i32 0, i32 4
  %360 = ptrtoint ptr %ops24.2.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ops24.2.i, align 4
  %setup25.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %361, i32 0, i32 6
  %362 = ptrtoint ptr %setup25.2.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %setup25.2.i, align 4
  %call27.2.i = call i32 %363(ptr noundef %357, ptr noundef %359, i32 noundef 7168, ptr noundef null) #9
  %364 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %amixers.i, align 4
  %arrayidx31.2.i = getelementptr ptr, ptr %365, i32 29
  %366 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx31.2.i, align 4
  %arrayidx35.2.i = getelementptr ptr, ptr %365, i32 5
  %368 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx35.2.i, align 4
  %ops36.2.i = getelementptr inbounds %struct.amixer, ptr %367, i32 0, i32 4
  %370 = ptrtoint ptr %ops36.2.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ops36.2.i, align 4
  %setup37.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %371, i32 0, i32 6
  %372 = ptrtoint ptr %setup37.2.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %setup37.2.i, align 4
  %call39.2.i = call i32 %373(ptr noundef %367, ptr noundef %369, i32 noundef 7168, ptr noundef null) #9
  %374 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %amixers.i, align 4
  %arrayidx20.3.i = getelementptr ptr, ptr %375, i32 30
  %376 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %arrayidx20.3.i, align 4
  %arrayidx23.3.i = getelementptr ptr, ptr %375, i32 6
  %378 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx23.3.i, align 4
  %ops24.3.i = getelementptr inbounds %struct.amixer, ptr %377, i32 0, i32 4
  %380 = ptrtoint ptr %ops24.3.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ops24.3.i, align 4
  %setup25.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %381, i32 0, i32 6
  %382 = ptrtoint ptr %setup25.3.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %setup25.3.i, align 4
  %call27.3.i = call i32 %383(ptr noundef %377, ptr noundef %379, i32 noundef 7168, ptr noundef null) #9
  %384 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %amixers.i, align 4
  %arrayidx31.3.i = getelementptr ptr, ptr %385, i32 31
  %386 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx31.3.i, align 4
  %arrayidx35.3.i = getelementptr ptr, ptr %385, i32 7
  %388 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx35.3.i, align 4
  %ops36.3.i = getelementptr inbounds %struct.amixer, ptr %387, i32 0, i32 4
  %390 = ptrtoint ptr %ops36.3.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops36.3.i, align 4
  %setup37.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %391, i32 0, i32 6
  %392 = ptrtoint ptr %setup37.3.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %setup37.3.i, align 4
  %call39.3.i = call i32 %393(ptr noundef %387, ptr noundef %389, i32 noundef 7168, ptr noundef null) #9
  %394 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %amixers.i, align 4
  %arrayidx45.i25 = getelementptr ptr, ptr %395, i32 22
  %396 = ptrtoint ptr %arrayidx45.i25 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx45.i25, align 4
  %398 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %395, align 4
  %ops48.i = getelementptr inbounds %struct.amixer, ptr %397, i32 0, i32 4
  %400 = ptrtoint ptr %ops48.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ops48.i, align 4
  %setup49.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %401, i32 0, i32 6
  %402 = ptrtoint ptr %setup49.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %setup49.i, align 4
  %call51.i = call i32 %403(ptr noundef %397, ptr noundef %399, i32 noundef 7168, ptr noundef null) #9
  %404 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %amixers.i, align 4
  %arrayidx53.i = getelementptr ptr, ptr %405, i32 23
  %406 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx53.i, align 4
  %arrayidx55.i = getelementptr ptr, ptr %405, i32 1
  %408 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %arrayidx55.i, align 4
  %ops56.i = getelementptr inbounds %struct.amixer, ptr %407, i32 0, i32 4
  %410 = ptrtoint ptr %ops56.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ops56.i, align 4
  %setup57.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %411, i32 0, i32 6
  %412 = ptrtoint ptr %setup57.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %setup57.i, align 4
  %call59.i26 = call i32 %413(ptr noundef %407, ptr noundef %409, i32 noundef 7168, ptr noundef null) #9
  %414 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %amixers.i, align 4
  %arrayidx65.i = getelementptr ptr, ptr %415, i32 8
  %416 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx65.i, align 4
  %418 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %sums.i, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 4
  %ops69.i = getelementptr inbounds %struct.amixer, ptr %417, i32 0, i32 4
  %422 = ptrtoint ptr %ops69.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ops69.i, align 4
  %setup70.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %423, i32 0, i32 6
  %424 = ptrtoint ptr %setup70.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %setup70.i, align 4
  %call71.i = call i32 %425(ptr noundef %417, ptr noundef null, i32 noundef 7168, ptr noundef %421) #9
  %426 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %amixers.i, align 4
  %arrayidx75.i = getelementptr ptr, ptr %427, i32 9
  %428 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx75.i, align 4
  %430 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %sums.i, align 8
  %arrayidx79.i = getelementptr ptr, ptr %431, i32 1
  %432 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx79.i, align 4
  %ops80.i = getelementptr inbounds %struct.amixer, ptr %429, i32 0, i32 4
  %434 = ptrtoint ptr %ops80.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %ops80.i, align 4
  %setup81.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %435, i32 0, i32 6
  %436 = ptrtoint ptr %setup81.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %setup81.i, align 4
  %call82.i = call i32 %437(ptr noundef %429, ptr noundef null, i32 noundef 7168, ptr noundef %433) #9
  %438 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %amixers.i, align 4
  %arrayidx65.1.i = getelementptr ptr, ptr %439, i32 10
  %440 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx65.1.i, align 4
  %442 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %sums.i, align 8
  %arrayidx68.1.i = getelementptr ptr, ptr %443, i32 2
  %444 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %arrayidx68.1.i, align 4
  %ops69.1.i = getelementptr inbounds %struct.amixer, ptr %441, i32 0, i32 4
  %446 = ptrtoint ptr %ops69.1.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %ops69.1.i, align 4
  %setup70.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %447, i32 0, i32 6
  %448 = ptrtoint ptr %setup70.1.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %setup70.1.i, align 4
  %call71.1.i = call i32 %449(ptr noundef %441, ptr noundef null, i32 noundef 7168, ptr noundef %445) #9
  %450 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %amixers.i, align 4
  %arrayidx75.1.i = getelementptr ptr, ptr %451, i32 11
  %452 = ptrtoint ptr %arrayidx75.1.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx75.1.i, align 4
  %454 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %sums.i, align 8
  %arrayidx79.1.i = getelementptr ptr, ptr %455, i32 3
  %456 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx79.1.i, align 4
  %ops80.1.i = getelementptr inbounds %struct.amixer, ptr %453, i32 0, i32 4
  %458 = ptrtoint ptr %ops80.1.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %ops80.1.i, align 4
  %setup81.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %459, i32 0, i32 6
  %460 = ptrtoint ptr %setup81.1.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %setup81.1.i, align 4
  %call82.1.i = call i32 %461(ptr noundef %453, ptr noundef null, i32 noundef 7168, ptr noundef %457) #9
  %462 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %amixers.i, align 4
  %arrayidx65.2.i = getelementptr ptr, ptr %463, i32 12
  %464 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx65.2.i, align 4
  %466 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %sums.i, align 8
  %arrayidx68.2.i = getelementptr ptr, ptr %467, i32 4
  %468 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %arrayidx68.2.i, align 4
  %ops69.2.i = getelementptr inbounds %struct.amixer, ptr %465, i32 0, i32 4
  %470 = ptrtoint ptr %ops69.2.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ops69.2.i, align 4
  %setup70.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %471, i32 0, i32 6
  %472 = ptrtoint ptr %setup70.2.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %setup70.2.i, align 4
  %call71.2.i = call i32 %473(ptr noundef %465, ptr noundef null, i32 noundef 7168, ptr noundef %469) #9
  %474 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %amixers.i, align 4
  %arrayidx75.2.i = getelementptr ptr, ptr %475, i32 13
  %476 = ptrtoint ptr %arrayidx75.2.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx75.2.i, align 4
  %478 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %sums.i, align 8
  %arrayidx79.2.i = getelementptr ptr, ptr %479, i32 5
  %480 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %arrayidx79.2.i, align 4
  %ops80.2.i = getelementptr inbounds %struct.amixer, ptr %477, i32 0, i32 4
  %482 = ptrtoint ptr %ops80.2.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %ops80.2.i, align 4
  %setup81.2.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %483, i32 0, i32 6
  %484 = ptrtoint ptr %setup81.2.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %setup81.2.i, align 4
  %call82.2.i = call i32 %485(ptr noundef %477, ptr noundef null, i32 noundef 7168, ptr noundef %481) #9
  %486 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %amixers.i, align 4
  %arrayidx65.3.i = getelementptr ptr, ptr %487, i32 14
  %488 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx65.3.i, align 4
  %490 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %sums.i, align 8
  %arrayidx68.3.i = getelementptr ptr, ptr %491, i32 6
  %492 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %arrayidx68.3.i, align 4
  %ops69.3.i = getelementptr inbounds %struct.amixer, ptr %489, i32 0, i32 4
  %494 = ptrtoint ptr %ops69.3.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %ops69.3.i, align 4
  %setup70.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %495, i32 0, i32 6
  %496 = ptrtoint ptr %setup70.3.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %setup70.3.i, align 4
  %call71.3.i = call i32 %497(ptr noundef %489, ptr noundef null, i32 noundef 7168, ptr noundef %493) #9
  %498 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %amixers.i, align 4
  %arrayidx75.3.i = getelementptr ptr, ptr %499, i32 15
  %500 = ptrtoint ptr %arrayidx75.3.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx75.3.i, align 4
  %502 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %sums.i, align 8
  %arrayidx79.3.i = getelementptr ptr, ptr %503, i32 7
  %504 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %arrayidx79.3.i, align 4
  %ops80.3.i = getelementptr inbounds %struct.amixer, ptr %501, i32 0, i32 4
  %506 = ptrtoint ptr %ops80.3.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %ops80.3.i, align 4
  %setup81.3.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %507, i32 0, i32 6
  %508 = ptrtoint ptr %setup81.3.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %setup81.3.i, align 4
  %call82.3.i = call i32 %509(ptr noundef %501, ptr noundef null, i32 noundef 7168, ptr noundef %505) #9
  %510 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %amixers.i, align 4
  %arrayidx88.i = getelementptr ptr, ptr %511, i32 18
  %512 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx88.i, align 4
  %514 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %sums.i, align 8
  %516 = ptrtoint ptr %515 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %515, align 4
  %ops91.i = getelementptr inbounds %struct.amixer, ptr %513, i32 0, i32 4
  %518 = ptrtoint ptr %ops91.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %ops91.i, align 4
  %setup92.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %519, i32 0, i32 6
  %520 = ptrtoint ptr %setup92.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %setup92.i, align 4
  %call93.i = call i32 %521(ptr noundef %513, ptr noundef null, i32 noundef 7168, ptr noundef %517) #9
  %522 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %amixers.i, align 4
  %arrayidx95.i = getelementptr ptr, ptr %523, i32 19
  %524 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %arrayidx95.i, align 4
  %526 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %sums.i, align 8
  %arrayidx97.i = getelementptr ptr, ptr %527, i32 1
  %528 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %arrayidx97.i, align 4
  %ops98.i = getelementptr inbounds %struct.amixer, ptr %525, i32 0, i32 4
  %530 = ptrtoint ptr %ops98.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %ops98.i, align 4
  %setup99.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %531, i32 0, i32 6
  %532 = ptrtoint ptr %setup99.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %setup99.i, align 4
  %call100.i = call i32 %533(ptr noundef %525, ptr noundef null, i32 noundef 7168, ptr noundef %529) #9
  %534 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %amixers.i, align 4
  %arrayidx102.i = getelementptr ptr, ptr %535, i32 20
  %536 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %arrayidx102.i, align 4
  %538 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %sums.i, align 8
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %ops105.i = getelementptr inbounds %struct.amixer, ptr %537, i32 0, i32 4
  %542 = ptrtoint ptr %ops105.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %ops105.i, align 4
  %setup106.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %543, i32 0, i32 6
  %544 = ptrtoint ptr %setup106.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %setup106.i, align 4
  %call107.i = call i32 %545(ptr noundef %537, ptr noundef null, i32 noundef 7168, ptr noundef %541) #9
  %546 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %amixers.i, align 4
  %arrayidx109.i = getelementptr ptr, ptr %547, i32 21
  %548 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx109.i, align 4
  %550 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %sums.i, align 8
  %arrayidx111.i = getelementptr ptr, ptr %551, i32 1
  %552 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %arrayidx111.i, align 4
  %ops112.i = getelementptr inbounds %struct.amixer, ptr %549, i32 0, i32 4
  %554 = ptrtoint ptr %ops112.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %ops112.i, align 4
  %setup113.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %555, i32 0, i32 6
  %556 = ptrtoint ptr %setup113.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %setup113.i, align 4
  %call114.i = call i32 %557(ptr noundef %549, ptr noundef null, i32 noundef 7168, ptr noundef %553) #9
  %558 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %amixers.i, align 4
  %arrayidx116.i = getelementptr ptr, ptr %559, i32 16
  %560 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %arrayidx116.i, align 4
  %562 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %sums.i, align 8
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %563, align 4
  %ops119.i = getelementptr inbounds %struct.amixer, ptr %561, i32 0, i32 4
  %566 = ptrtoint ptr %ops119.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %ops119.i, align 4
  %setup120.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %567, i32 0, i32 6
  %568 = ptrtoint ptr %setup120.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %setup120.i, align 4
  %call121.i = call i32 %569(ptr noundef %561, ptr noundef null, i32 noundef 7168, ptr noundef %565) #9
  %570 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %amixers.i, align 4
  %arrayidx123.i = getelementptr ptr, ptr %571, i32 17
  %572 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %arrayidx123.i, align 4
  %574 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %sums.i, align 8
  %arrayidx125.i = getelementptr ptr, ptr %575, i32 1
  %576 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %arrayidx125.i, align 4
  %ops126.i = getelementptr inbounds %struct.amixer, ptr %573, i32 0, i32 4
  %578 = ptrtoint ptr %ops126.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %ops126.i, align 4
  %setup127.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %579, i32 0, i32 6
  %580 = ptrtoint ptr %setup127.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %setup127.i, align 4
  %call128.i = call i32 %581(ptr noundef %573, ptr noundef null, i32 noundef 7168, ptr noundef %577) #9
  %582 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %amixers.i, align 4
  %arrayidx130.i = getelementptr ptr, ptr %583, i32 32
  %584 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %arrayidx130.i, align 4
  %586 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %sums.i, align 8
  %arrayidx132.i = getelementptr ptr, ptr %587, i32 8
  %588 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %arrayidx132.i, align 4
  %ops133.i = getelementptr inbounds %struct.amixer, ptr %585, i32 0, i32 4
  %590 = ptrtoint ptr %ops133.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %ops133.i, align 4
  %setup134.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %591, i32 0, i32 6
  %592 = ptrtoint ptr %setup134.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %setup134.i, align 4
  %call136.i = call i32 %593(ptr noundef %585, ptr noundef %589, i32 noundef 7168, ptr noundef null) #9
  %594 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %amixers.i, align 4
  %arrayidx138.i = getelementptr ptr, ptr %595, i32 33
  %596 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %arrayidx138.i, align 4
  %598 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %sums.i, align 8
  %arrayidx140.i = getelementptr ptr, ptr %599, i32 9
  %600 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx140.i, align 4
  %ops141.i = getelementptr inbounds %struct.amixer, ptr %597, i32 0, i32 4
  %602 = ptrtoint ptr %ops141.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %ops141.i, align 4
  %setup142.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %603, i32 0, i32 6
  %604 = ptrtoint ptr %setup142.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %setup142.i, align 4
  %call144.i = call i32 %605(ptr noundef %597, ptr noundef %601, i32 noundef 7168, ptr noundef null) #9
  %606 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %amixers.i, align 4
  %arrayidx146.i = getelementptr ptr, ptr %607, i32 34
  %608 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %arrayidx146.i, align 4
  %610 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %sums.i, align 8
  %arrayidx148.i = getelementptr ptr, ptr %611, i32 8
  %612 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %arrayidx148.i, align 4
  %ops149.i = getelementptr inbounds %struct.amixer, ptr %609, i32 0, i32 4
  %614 = ptrtoint ptr %ops149.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %ops149.i, align 4
  %setup150.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %615, i32 0, i32 6
  %616 = ptrtoint ptr %setup150.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %setup150.i, align 4
  %call151.i = call i32 %617(ptr noundef %609, ptr noundef null, i32 noundef 7168, ptr noundef %613) #9
  %618 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %amixers.i, align 4
  %arrayidx153.i = getelementptr ptr, ptr %619, i32 35
  %620 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %arrayidx153.i, align 4
  %622 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %sums.i, align 8
  %arrayidx155.i = getelementptr ptr, ptr %623, i32 9
  %624 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %arrayidx155.i, align 4
  %ops156.i = getelementptr inbounds %struct.amixer, ptr %621, i32 0, i32 4
  %626 = ptrtoint ptr %ops156.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %ops156.i, align 4
  %setup157.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %627, i32 0, i32 6
  %628 = ptrtoint ptr %setup157.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %setup157.i, align 4
  %call158.i = call i32 %629(ptr noundef %621, ptr noundef null, i32 noundef 7168, ptr noundef %625) #9
  %630 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %amixers.i, align 4
  %arrayidx160.i = getelementptr ptr, ptr %631, i32 38
  %632 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %arrayidx160.i, align 4
  %634 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %sums.i, align 8
  %arrayidx162.i = getelementptr ptr, ptr %635, i32 8
  %636 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %arrayidx162.i, align 4
  %ops163.i = getelementptr inbounds %struct.amixer, ptr %633, i32 0, i32 4
  %638 = ptrtoint ptr %ops163.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %ops163.i, align 4
  %setup164.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %639, i32 0, i32 6
  %640 = ptrtoint ptr %setup164.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %setup164.i, align 4
  %call165.i = call i32 %641(ptr noundef %633, ptr noundef null, i32 noundef 7168, ptr noundef %637) #9
  %642 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %amixers.i, align 4
  %arrayidx167.i = getelementptr ptr, ptr %643, i32 39
  %644 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %arrayidx167.i, align 4
  %646 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %sums.i, align 8
  %arrayidx169.i = getelementptr ptr, ptr %647, i32 9
  %648 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %arrayidx169.i, align 4
  %ops170.i = getelementptr inbounds %struct.amixer, ptr %645, i32 0, i32 4
  %650 = ptrtoint ptr %ops170.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %ops170.i, align 4
  %setup171.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %651, i32 0, i32 6
  %652 = ptrtoint ptr %setup171.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %setup171.i, align 4
  %call172.i = call i32 %653(ptr noundef %645, ptr noundef null, i32 noundef 7168, ptr noundef %649) #9
  %654 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %amixers.i, align 4
  %arrayidx174.i = getelementptr ptr, ptr %655, i32 40
  %656 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %arrayidx174.i, align 4
  %658 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %sums.i, align 8
  %arrayidx176.i = getelementptr ptr, ptr %659, i32 8
  %660 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %arrayidx176.i, align 4
  %ops177.i = getelementptr inbounds %struct.amixer, ptr %657, i32 0, i32 4
  %662 = ptrtoint ptr %ops177.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %ops177.i, align 4
  %setup178.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %663, i32 0, i32 6
  %664 = ptrtoint ptr %setup178.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %setup178.i, align 4
  %call179.i = call i32 %665(ptr noundef %657, ptr noundef null, i32 noundef 7168, ptr noundef %661) #9
  %666 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %amixers.i, align 4
  %arrayidx181.i = getelementptr ptr, ptr %667, i32 41
  %668 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %arrayidx181.i, align 4
  %670 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %sums.i, align 8
  %arrayidx183.i = getelementptr ptr, ptr %671, i32 9
  %672 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %arrayidx183.i, align 4
  %ops184.i = getelementptr inbounds %struct.amixer, ptr %669, i32 0, i32 4
  %674 = ptrtoint ptr %ops184.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %ops184.i, align 4
  %setup185.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %675, i32 0, i32 6
  %676 = ptrtoint ptr %setup185.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %setup185.i, align 4
  %call186.i = call i32 %677(ptr noundef %669, ptr noundef null, i32 noundef 7168, ptr noundef %673) #9
  %678 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %amixers.i, align 4
  %arrayidx188.i = getelementptr ptr, ptr %679, i32 36
  %680 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %arrayidx188.i, align 4
  %682 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %sums.i, align 8
  %arrayidx190.i = getelementptr ptr, ptr %683, i32 8
  %684 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %arrayidx190.i, align 4
  %ops191.i = getelementptr inbounds %struct.amixer, ptr %681, i32 0, i32 4
  %686 = ptrtoint ptr %ops191.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %ops191.i, align 4
  %setup192.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %687, i32 0, i32 6
  %688 = ptrtoint ptr %setup192.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %setup192.i, align 4
  %call193.i = call i32 %689(ptr noundef %681, ptr noundef null, i32 noundef 7168, ptr noundef %685) #9
  %690 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %amixers.i, align 4
  %arrayidx195.i = getelementptr ptr, ptr %691, i32 37
  %692 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %arrayidx195.i, align 4
  %694 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %sums.i, align 8
  %arrayidx197.i = getelementptr ptr, ptr %695, i32 9
  %696 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %arrayidx197.i, align 4
  %ops198.i = getelementptr inbounds %struct.amixer, ptr %693, i32 0, i32 4
  %698 = ptrtoint ptr %ops198.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %ops198.i, align 4
  %setup199.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %699, i32 0, i32 6
  %700 = ptrtoint ptr %setup199.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %setup199.i, align 4
  %call200.i = call i32 %701(ptr noundef %693, ptr noundef null, i32 noundef 7168, ptr noundef %697) #9
  %702 = ptrtoint ptr %rmixer to i32
  call void @__asan_store4_noabort(i32 %702)
  store ptr %call7.i.i.i, ptr %rmixer, align 4
  br label %cleanup

error:                                            ; preds = %ct_mixer_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @ct_mixer_destroy(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end5, %error1.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4.i, %error ], [ 0, %if.end5 ], [ -12, %error1.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mixer_get_output_ports(ptr nocapture noundef readonly %mixer, i32 noundef %type, ptr noundef writeonly %rleft, ptr noundef writeonly %rright) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %0 = icmp ult i32 %type, 13
  br i1 %0, label %switch.lookup, label %entry.port_to_amixer.exit_crit_edge

entry.port_to_amixer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_to_amixer.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mixer_get_output_ports, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %port_to_amixer.exit

port_to_amixer.exit:                              ; preds = %switch.lookup, %entry.port_to_amixer.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.port_to_amixer.exit_crit_edge ]
  %cmp.not = icmp eq ptr %rleft, null
  br i1 %cmp.not, label %port_to_amixer.exit.if.end_crit_edge, label %if.then

port_to_amixer.exit.if.end_crit_edge:             ; preds = %port_to_amixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %port_to_amixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  %2 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixers, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %retval.0.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %rleft to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %port_to_amixer.exit.if.end_crit_edge
  %cmp1.not = icmp eq ptr %rright, null
  br i1 %cmp1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %amixers3 = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  %7 = ptrtoint ptr %amixers3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amixers3, align 4
  %add = or i32 %retval.0.i, 1
  %arrayidx5 = getelementptr ptr, ptr %8, i32 %add
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %11 = ptrtoint ptr %rright to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %rright, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_set_input_left(ptr nocapture noundef readonly %mixer, i32 noundef %type, ptr noundef %rsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %0 = icmp ult i32 %type, 13
  br i1 %0, label %switch.lookup, label %entry.port_to_amixer.exit_crit_edge

entry.port_to_amixer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_to_amixer.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mixer_set_input_left, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %port_to_amixer.exit

port_to_amixer.exit:                              ; preds = %switch.lookup, %entry.port_to_amixer.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.port_to_amixer.exit_crit_edge ]
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  %2 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixers, align 4
  %mul = shl nuw nsw i32 %retval.0.i, 1
  %arrayidx = getelementptr ptr, ptr %3, i32 %mul
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ops.i = getelementptr inbounds %struct.amixer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %5, ptr noundef %rsc) #9
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %commit_write.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %commit_write.i, align 4
  %call2.i = tail call i32 %13(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %retval.0.i)
  %14 = icmp ult i32 %retval.0.i, 11
  br i1 %14, label %switch.hole_check, label %port_to_amixer.exit.if.end_crit_edge

port_to_amixer.exit.if.end_crit_edge:             ; preds = %port_to_amixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.hole_check:                                ; preds = %port_to_amixer.exit
  %switch.maskindex = trunc i32 %retval.0.i to i16
  %switch.shifted = lshr i16 1809, %switch.maskindex
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup26

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.lookup26:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep27 = getelementptr inbounds [11 x i32], ptr @switch.table.mixer_set_input_left.44, i32 0, i32 %retval.0.i
  %16 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load28 = load i32, ptr %switch.gep27, align 4
  %17 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amixers, align 4
  %arrayidx5 = getelementptr ptr, ptr %18, i32 %switch.load28
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx5, align 4
  %ops.i18 = getelementptr inbounds %struct.amixer, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i18, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i19 = tail call i32 %24(ptr noundef %20, ptr noundef %rsc) #9
  %25 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i18, align 4
  %commit_write.i20 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %commit_write.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %commit_write.i20, align 4
  %call2.i21 = tail call i32 %28(ptr noundef %20) #9
  br label %if.end

if.end:                                           ; preds = %switch.lookup26, %switch.hole_check.if.end_crit_edge, %port_to_amixer.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_set_input_right(ptr nocapture noundef readonly %mixer, i32 noundef %type, ptr noundef %rsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %0 = icmp ult i32 %type, 13
  br i1 %0, label %switch.lookup, label %entry.port_to_amixer.exit_crit_edge

entry.port_to_amixer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_to_amixer.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mixer_set_input_right, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %port_to_amixer.exit

port_to_amixer.exit:                              ; preds = %switch.lookup, %entry.port_to_amixer.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.port_to_amixer.exit_crit_edge ]
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  %2 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixers, align 4
  %mul = shl nuw nsw i32 %retval.0.i, 1
  %add = or i32 %mul, 1
  %arrayidx = getelementptr ptr, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ops.i = getelementptr inbounds %struct.amixer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %5, ptr noundef %rsc) #9
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %commit_write.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %commit_write.i, align 4
  %call2.i = tail call i32 %13(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %retval.0.i)
  %14 = icmp ult i32 %retval.0.i, 11
  br i1 %14, label %switch.hole_check, label %port_to_amixer.exit.if.end_crit_edge

port_to_amixer.exit.if.end_crit_edge:             ; preds = %port_to_amixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.hole_check:                                ; preds = %port_to_amixer.exit
  %switch.maskindex = trunc i32 %retval.0.i to i16
  %switch.shifted = lshr i16 1809, %switch.maskindex
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup27

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.lookup27:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep28 = getelementptr inbounds [11 x i32], ptr @switch.table.mixer_set_input_right.45, i32 0, i32 %retval.0.i
  %16 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load29 = load i32, ptr %switch.gep28, align 4
  %17 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amixers, align 4
  %arrayidx6 = getelementptr ptr, ptr %18, i32 %switch.load29
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx6, align 4
  %ops.i19 = getelementptr inbounds %struct.amixer, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i19, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i20 = tail call i32 %24(ptr noundef %20, ptr noundef %rsc) #9
  %25 = ptrtoint ptr %ops.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i19, align 4
  %commit_write.i21 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %commit_write.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %commit_write.i21, align 4
  %call2.i22 = tail call i32 %28(ptr noundef %20) #9
  br label %if.end

if.end:                                           ; preds = %switch.lookup27, %switch.hole_check.if.end_crit_edge, %port_to_amixer.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_resume(ptr nocapture noundef readonly %mixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 1
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %switch_state.i = getelementptr inbounds %struct.ct_mixer, ptr %mixer, i32 0, i32 3
  %0 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %switch_state.i, align 4
  %2 = and i32 %1, 1
  %3 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %4, i32 noundef 15, i32 noundef %2)
  %5 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %switch_state.i, align 4
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 1
  %9 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %10, i32 noundef 16, i32 noundef %8)
  %11 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %switch_state.i, align 4
  %13 = lshr i32 %12, 2
  %14 = and i32 %13, 1
  %15 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %16, i32 noundef 17, i32 noundef %14)
  %17 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %switch_state.i, align 4
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 1
  %21 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %22, i32 noundef 18, i32 noundef %20)
  %23 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %switch_state.i, align 4
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 1
  %27 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %28, i32 noundef 19, i32 noundef %26)
  %29 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %switch_state.i, align 4
  %31 = lshr i32 %30, 5
  %32 = and i32 %31, 1
  %33 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %34, i32 noundef 20, i32 noundef %32)
  %35 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %switch_state.i, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 1
  %39 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %40, i32 noundef 21, i32 noundef %38)
  %41 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %switch_state.i, align 4
  %43 = lshr i32 %42, 7
  %44 = and i32 %43, 1
  %45 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %46, i32 noundef 22, i32 noundef %44)
  %47 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %switch_state.i, align 4
  %49 = lshr i32 %48, 8
  %50 = and i32 %49, 1
  %51 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %52, i32 noundef 23, i32 noundef %50)
  %53 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %switch_state.i, align 4
  %55 = lshr i32 %54, 9
  %56 = and i32 %55, 1
  %57 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mixer, align 4
  tail call fastcc void @do_switch(ptr noundef %58, i32 noundef 24, i32 noundef %56)
  ret i32 0

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %59 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %amixers, align 4
  %arrayidx = getelementptr ptr, ptr %60, i32 %i.017
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.amixer, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops, align 4
  %commit_write = getelementptr inbounds %struct.amixer_rsc_ops, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %commit_write, align 4
  %call = tail call i32 %66(ptr noundef %62) #9
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_alsa_mix_create(ptr nocapture noundef readonly %atc, i32 noundef %device, ptr nocapture noundef readonly %device_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %capabilities.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %capabilities.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %type.0231.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [28 x %struct.ct_kcontrol_init], ptr @ct_kcontrol_init_table, i32 0, i32 %type.0231.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr [28 x %struct.ct_kcontrol_init], ptr @ct_kcontrol_init_table, i32 0, i32 %type.0231.i, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @vol_ctl, i32 0, i32 3), align 4
  store i32 %type.0231.i, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @vol_ctl, i32 0, i32 11), align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @vol_ctl, ptr noundef %11) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %iface.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 3
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %device.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %device.i.i, align 4
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %card.i.i = getelementptr inbounds %struct.ct_atc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i.i, align 4
  %call5.i.i = tail call i32 @snd_ctl_add(ptr noundef %18, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end3.i.i
  %19 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @vol_ctl, i32 0, i32 11), align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end8.i.i.for.inc.i_crit_edge [
    i32 16, label %if.end8.i.i.cleanup.sink.split.i.i_crit_edge
    i32 17, label %sw.bb9.i.i
  ]

if.end8.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end8.i.i.for.inc.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb9.i.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %sw.bb9.i.i, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge
  %kctls.0.sink.i.i = phi ptr [ @kctls.1, %sw.bb9.i.i ], [ @kctls.0, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge ]
  %21 = ptrtoint ptr %kctls.0.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %kctls.0.sink.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.sink.split.i.i, %if.end8.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %type.0231.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %sum.shift.i = lshr i32 %call.i, 31
  %bf.lshr130.i = trunc i32 %sum.shift.i to i8
  store i8 %bf.lshr130.i, ptr getelementptr inbounds ([28 x %struct.ct_kcontrol_init], ptr @ct_kcontrol_init_table, i32 0, i32 24), align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc22.i.for.body10.i_crit_edge, %for.end.i
  %type.1233.i = phi i32 [ 15, %for.end.i ], [ %inc23.i, %for.inc22.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr [28 x %struct.ct_kcontrol_init], ptr @ct_kcontrol_init_table, i32 0, i32 %type.1233.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not.i = icmp eq i8 %23, 0
  br i1 %tobool13.not.i, label %for.body10.i.for.inc22.i_crit_edge, label %if.then14.i

for.body10.i.for.inc22.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

if.then14.i:                                      ; preds = %for.body10.i
  %name16.i = getelementptr [28 x %struct.ct_kcontrol_init], ptr @ct_kcontrol_init_table, i32 0, i32 %type.1233.i, i32 1
  %24 = ptrtoint ptr %name16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name16.i, align 4
  store ptr %25, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @swh_ctl, i32 0, i32 3), align 4
  store i32 %type.1233.i, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @swh_ctl, i32 0, i32 11), align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i131.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @swh_ctl, ptr noundef %27) #9
  %tobool.not.i132.i = icmp eq ptr %call.i131.i, null
  br i1 %tobool.not.i132.i, label %if.then14.i.cleanup_crit_edge, label %if.end.i135.i

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i135.i:                                    ; preds = %if.then14.i
  %iface.i133.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i131.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %iface.i133.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iface.i133.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i134.i = icmp eq i32 %29, 3
  br i1 %cmp.i134.i, label %if.then1.i137.i, label %if.end.i135.i.if.end3.i141.i_crit_edge

if.end.i135.i.if.end3.i141.i_crit_edge:           ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i141.i

if.then1.i137.i:                                  ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i136.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i131.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %device.i136.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %device.i136.i, align 4
  br label %if.end3.i141.i

if.end3.i141.i:                                   ; preds = %if.then1.i137.i, %if.end.i135.i.if.end3.i141.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %card.i138.i = getelementptr inbounds %struct.ct_atc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %card.i138.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card.i138.i, align 4
  %call5.i139.i = tail call i32 @snd_ctl_add(ptr noundef %34, ptr noundef nonnull %call.i131.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i139.i)
  %tobool6.not.i140.i = icmp eq i32 %call5.i139.i, 0
  br i1 %tobool6.not.i140.i, label %if.end8.i142.i, label %if.end3.i141.i.cleanup_crit_edge

if.end3.i141.i.cleanup_crit_edge:                 ; preds = %if.end3.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i142.i:                                   ; preds = %if.end3.i141.i
  %35 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @swh_ctl, i32 0, i32 11), align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %35, label %if.end8.i142.i.for.inc22.i_crit_edge [
    i32 16, label %if.end8.i142.i.cleanup.sink.split.i145.i_crit_edge
    i32 17, label %sw.bb9.i143.i
  ]

if.end8.i142.i.cleanup.sink.split.i145.i_crit_edge: ; preds = %if.end8.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i145.i

if.end8.i142.i.for.inc22.i_crit_edge:             ; preds = %if.end8.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

sw.bb9.i143.i:                                    ; preds = %if.end8.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i145.i

cleanup.sink.split.i145.i:                        ; preds = %sw.bb9.i143.i, %if.end8.i142.i.cleanup.sink.split.i145.i_crit_edge
  %kctls.0.sink.i144.i = phi ptr [ @kctls.1, %sw.bb9.i143.i ], [ @kctls.0, %if.end8.i142.i.cleanup.sink.split.i145.i_crit_edge ]
  %37 = ptrtoint ptr %kctls.0.sink.i144.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i131.i, ptr %kctls.0.sink.i144.i, align 4
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %cleanup.sink.split.i145.i, %if.end8.i142.i.for.inc22.i_crit_edge, %for.body10.i.for.inc22.i_crit_edge
  %inc23.i = add nuw nsw i32 %type.1233.i, 1
  %exitcond237.not.i = icmp eq i32 %inc23.i, 25
  br i1 %exitcond237.not.i, label %for.end24.i, label %for.inc22.i.for.body10.i_crit_edge

for.inc22.i.for.body10.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.end24.i:                                      ; preds = %for.inc22.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i148.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @iec958_mask_ctl, ptr noundef %39) #9
  %tobool.not.i149.i = icmp eq ptr %call.i148.i, null
  br i1 %tobool.not.i149.i, label %for.end24.i.cleanup_crit_edge, label %if.end.i152.i

for.end24.i.cleanup_crit_edge:                    ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i152.i:                                    ; preds = %for.end24.i
  %iface.i150.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i148.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %iface.i150.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iface.i150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i151.i = icmp eq i32 %41, 3
  br i1 %cmp.i151.i, label %if.then1.i154.i, label %if.end.i152.i.if.end3.i158.i_crit_edge

if.end.i152.i.if.end3.i158.i_crit_edge:           ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i158.i

if.then1.i154.i:                                  ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i153.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i148.i, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %device.i153.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %device.i153.i, align 4
  br label %if.end3.i158.i

if.end3.i158.i:                                   ; preds = %if.then1.i154.i, %if.end.i152.i.if.end3.i158.i_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %card.i155.i = getelementptr inbounds %struct.ct_atc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %card.i155.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i155.i, align 4
  %call5.i156.i = tail call i32 @snd_ctl_add(ptr noundef %46, ptr noundef nonnull %call.i148.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i156.i)
  %tobool6.not.i157.i = icmp eq i32 %call5.i156.i, 0
  br i1 %tobool6.not.i157.i, label %if.end8.i159.i, label %if.end3.i158.i.cleanup_crit_edge

if.end3.i158.i.cleanup_crit_edge:                 ; preds = %if.end3.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i159.i:                                   ; preds = %if.end3.i158.i
  %47 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @iec958_mask_ctl, i32 0, i32 11), align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %47, label %if.end8.i159.i.if.end28.i_crit_edge [
    i32 16, label %if.end8.i159.i.cleanup.sink.split.i162.i_crit_edge
    i32 17, label %sw.bb9.i160.i
  ]

if.end8.i159.i.cleanup.sink.split.i162.i_crit_edge: ; preds = %if.end8.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i162.i

if.end8.i159.i.if.end28.i_crit_edge:              ; preds = %if.end8.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

sw.bb9.i160.i:                                    ; preds = %if.end8.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i162.i

cleanup.sink.split.i162.i:                        ; preds = %sw.bb9.i160.i, %if.end8.i159.i.cleanup.sink.split.i162.i_crit_edge
  %kctls.0.sink.i161.i = phi ptr [ @kctls.1, %sw.bb9.i160.i ], [ @kctls.0, %if.end8.i159.i.cleanup.sink.split.i162.i_crit_edge ]
  %49 = ptrtoint ptr %kctls.0.sink.i161.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i148.i, ptr %kctls.0.sink.i161.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %cleanup.sink.split.i162.i, %if.end8.i159.i.if.end28.i_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i165.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @iec958_default_ctl, ptr noundef %51) #9
  %tobool.not.i166.i = icmp eq ptr %call.i165.i, null
  br i1 %tobool.not.i166.i, label %if.end28.i.cleanup_crit_edge, label %if.end.i169.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i169.i:                                    ; preds = %if.end28.i
  %iface.i167.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i165.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %iface.i167.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iface.i167.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i168.i = icmp eq i32 %53, 3
  br i1 %cmp.i168.i, label %if.then1.i171.i, label %if.end.i169.i.if.end3.i175.i_crit_edge

if.end.i169.i.if.end3.i175.i_crit_edge:           ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i175.i

if.then1.i171.i:                                  ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i170.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i165.i, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %device.i170.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %device.i170.i, align 4
  br label %if.end3.i175.i

if.end3.i175.i:                                   ; preds = %if.then1.i171.i, %if.end.i169.i.if.end3.i175.i_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %card.i172.i = getelementptr inbounds %struct.ct_atc, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %card.i172.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card.i172.i, align 4
  %call5.i173.i = tail call i32 @snd_ctl_add(ptr noundef %58, ptr noundef nonnull %call.i165.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i173.i)
  %tobool6.not.i174.i = icmp eq i32 %call5.i173.i, 0
  br i1 %tobool6.not.i174.i, label %if.end8.i176.i, label %if.end3.i175.i.cleanup_crit_edge

if.end3.i175.i.cleanup_crit_edge:                 ; preds = %if.end3.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i176.i:                                   ; preds = %if.end3.i175.i
  %59 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @iec958_default_ctl, i32 0, i32 11), align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %59, label %if.end8.i176.i.if.end32.i_crit_edge [
    i32 16, label %if.end8.i176.i.cleanup.sink.split.i179.i_crit_edge
    i32 17, label %sw.bb9.i177.i
  ]

if.end8.i176.i.cleanup.sink.split.i179.i_crit_edge: ; preds = %if.end8.i176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i179.i

if.end8.i176.i.if.end32.i_crit_edge:              ; preds = %if.end8.i176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

sw.bb9.i177.i:                                    ; preds = %if.end8.i176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i179.i

cleanup.sink.split.i179.i:                        ; preds = %sw.bb9.i177.i, %if.end8.i176.i.cleanup.sink.split.i179.i_crit_edge
  %kctls.0.sink.i178.i = phi ptr [ @kctls.1, %sw.bb9.i177.i ], [ @kctls.0, %if.end8.i176.i.cleanup.sink.split.i179.i_crit_edge ]
  %61 = ptrtoint ptr %kctls.0.sink.i178.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i165.i, ptr %kctls.0.sink.i178.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %cleanup.sink.split.i179.i, %if.end8.i176.i.if.end32.i_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i182.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @iec958_ctl, ptr noundef %63) #9
  %tobool.not.i183.i = icmp eq ptr %call.i182.i, null
  br i1 %tobool.not.i183.i, label %if.end32.i.cleanup_crit_edge, label %if.end.i186.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i186.i:                                    ; preds = %if.end32.i
  %iface.i184.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i182.i, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %iface.i184.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iface.i184.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp.i185.i = icmp eq i32 %65, 3
  br i1 %cmp.i185.i, label %if.then1.i188.i, label %if.end.i186.i.if.end3.i192.i_crit_edge

if.end.i186.i.if.end3.i192.i_crit_edge:           ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i192.i

if.then1.i188.i:                                  ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i187.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i182.i, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %device.i187.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %device.i187.i, align 4
  br label %if.end3.i192.i

if.end3.i192.i:                                   ; preds = %if.then1.i188.i, %if.end.i186.i.if.end3.i192.i_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %card.i189.i = getelementptr inbounds %struct.ct_atc, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %card.i189.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card.i189.i, align 4
  %call5.i190.i = tail call i32 @snd_ctl_add(ptr noundef %70, ptr noundef nonnull %call.i182.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i190.i)
  %tobool6.not.i191.i = icmp eq i32 %call5.i190.i, 0
  br i1 %tobool6.not.i191.i, label %if.end8.i193.i, label %if.end3.i192.i.cleanup_crit_edge

if.end3.i192.i.cleanup_crit_edge:                 ; preds = %if.end3.i192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i193.i:                                   ; preds = %if.end3.i192.i
  %71 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @iec958_ctl, i32 0, i32 11), align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %71, label %if.end8.i193.i.if.end36.i_crit_edge [
    i32 16, label %if.end8.i193.i.cleanup.sink.split.i196.i_crit_edge
    i32 17, label %sw.bb9.i194.i
  ]

if.end8.i193.i.cleanup.sink.split.i196.i_crit_edge: ; preds = %if.end8.i193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i196.i

if.end8.i193.i.if.end36.i_crit_edge:              ; preds = %if.end8.i193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

sw.bb9.i194.i:                                    ; preds = %if.end8.i193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i196.i

cleanup.sink.split.i196.i:                        ; preds = %sw.bb9.i194.i, %if.end8.i193.i.cleanup.sink.split.i196.i_crit_edge
  %kctls.0.sink.i195.i = phi ptr [ @kctls.1, %sw.bb9.i194.i ], [ @kctls.0, %if.end8.i193.i.cleanup.sink.split.i196.i_crit_edge ]
  %73 = ptrtoint ptr %kctls.0.sink.i195.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i182.i, ptr %kctls.0.sink.i195.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %cleanup.sink.split.i196.i, %if.end8.i193.i.if.end36.i_crit_edge
  %74 = and i32 %call.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool40.not.i = icmp eq i32 %74, 0
  br i1 %tobool40.not.i, label %if.end36.i.if.end46.i_crit_edge, label %if.then41.i

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then41.i:                                      ; preds = %if.end36.i
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i7 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @output_ctl, ptr noundef %76) #9
  %tobool.not.i8 = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i8, label %if.then41.i.cleanup_crit_edge, label %if.end.i11

if.then41.i.cleanup_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i11:                                       ; preds = %if.then41.i
  %iface.i9 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i7, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %iface.i9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iface.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp.i10 = icmp eq i32 %78, 3
  br i1 %cmp.i10, label %if.then1.i13, label %if.end.i11.if.end3.i17_crit_edge

if.end.i11.if.end3.i17_crit_edge:                 ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i17

if.then1.i13:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  %device.i12 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i7, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %device.i12 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %device.i12, align 4
  br label %if.end3.i17

if.end3.i17:                                      ; preds = %if.then1.i13, %if.end.i11.if.end3.i17_crit_edge
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %card.i14 = getelementptr inbounds %struct.ct_atc, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %card.i14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card.i14, align 4
  %call5.i15 = tail call i32 @snd_ctl_add(ptr noundef %83, ptr noundef nonnull %call.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i15)
  %tobool6.not.i16 = icmp eq i32 %call5.i15, 0
  br i1 %tobool6.not.i16, label %if.end8.i18, label %if.end3.i17.cleanup_crit_edge

if.end3.i17.cleanup_crit_edge:                    ; preds = %if.end3.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i18:                                      ; preds = %if.end3.i17
  %84 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @output_ctl, i32 0, i32 11), align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %84, label %if.end8.i18.if.end46.i_crit_edge [
    i32 16, label %if.end8.i18.cleanup.sink.split.i21_crit_edge
    i32 17, label %sw.bb9.i19
  ]

if.end8.i18.cleanup.sink.split.i21_crit_edge:     ; preds = %if.end8.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i21

if.end8.i18.if.end46.i_crit_edge:                 ; preds = %if.end8.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

sw.bb9.i19:                                       ; preds = %if.end8.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i21

cleanup.sink.split.i21:                           ; preds = %sw.bb9.i19, %if.end8.i18.cleanup.sink.split.i21_crit_edge
  %kctls.0.sink.i20 = phi ptr [ @kctls.1, %sw.bb9.i19 ], [ @kctls.0, %if.end8.i18.cleanup.sink.split.i21_crit_edge ]
  %86 = ptrtoint ptr %kctls.0.sink.i20 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i7, ptr %kctls.0.sink.i20, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %cleanup.sink.split.i21, %if.end8.i18.if.end46.i_crit_edge, %if.end36.i.if.end46.i_crit_edge
  %87 = and i32 %call.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool51.not.i = icmp eq i32 %87, 0
  br i1 %tobool51.not.i, label %if.end46.i.if.end57.i_crit_edge, label %if.then52.i

if.end46.i.if.end57.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then52.i:                                      ; preds = %if.end46.i
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call.i4 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @mic_source_ctl, ptr noundef %89) #9
  %tobool.not.i5 = icmp eq ptr %call.i4, null
  br i1 %tobool.not.i5, label %if.then52.i.cleanup_crit_edge, label %if.end.i

if.then52.i.cleanup_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then52.i
  %iface.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i4, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp.i = icmp eq i32 %91, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i4, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %device.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %card.i = getelementptr inbounds %struct.ct_atc, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card.i, align 4
  %call5.i = tail call i32 @snd_ctl_add(ptr noundef %96, ptr noundef nonnull %call.i4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end3.i
  %97 = load i32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @mic_source_ctl, i32 0, i32 11), align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %97, label %if.end8.i.if.end57.i_crit_edge [
    i32 16, label %if.end8.i.cleanup.sink.split.i_crit_edge
    i32 17, label %sw.bb9.i
  ]

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end8.i.if.end57.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

sw.bb9.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb9.i, %if.end8.i.cleanup.sink.split.i_crit_edge
  %kctls.0.sink.i = phi ptr [ @kctls.1, %sw.bb9.i ], [ @kctls.0, %if.end8.i.cleanup.sink.split.i_crit_edge ]
  %99 = ptrtoint ptr %kctls.0.sink.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i4, ptr %kctls.0.sink.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %cleanup.sink.split.i, %if.end8.i.if.end57.i_crit_edge, %if.end46.i.if.end57.i_crit_edge
  %line_front_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 27
  %100 = ptrtoint ptr %line_front_unmute.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %line_front_unmute.i, align 4
  %call58.i = tail call i32 %101(ptr noundef %3, i8 noundef zeroext 1) #9
  %switch_state.i.i = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 3
  %102 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %switch_state.i.i, align 4
  %or.i.i = or i32 %103, 32
  store i32 %or.i.i, ptr %switch_state.i.i, align 4
  %line_surround_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 28
  %104 = ptrtoint ptr %line_surround_unmute.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %line_surround_unmute.i, align 4
  %call59.i = tail call i32 %105(ptr noundef %3, i8 noundef zeroext 0) #9
  %106 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %switch_state.i.i, align 4
  %and.i.i = and i32 %107, -257
  store i32 %and.i.i, ptr %switch_state.i.i, align 4
  %line_clfe_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 29
  %108 = ptrtoint ptr %line_clfe_unmute.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %line_clfe_unmute.i, align 4
  %call60.i = tail call i32 %109(ptr noundef %3, i8 noundef zeroext 0) #9
  %110 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %switch_state.i.i, align 4
  %and.i202.i = and i32 %111, -129
  store i32 %and.i202.i, ptr %switch_state.i.i, align 4
  %line_rear_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 30
  %112 = ptrtoint ptr %line_rear_unmute.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %line_rear_unmute.i, align 4
  %call61.i = tail call i32 %113(ptr noundef %3, i8 noundef zeroext 0) #9
  %114 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %switch_state.i.i, align 4
  %and.i205.i = and i32 %115, -65
  store i32 %and.i205.i, ptr %switch_state.i.i, align 4
  %spdif_out_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 33
  %116 = ptrtoint ptr %spdif_out_unmute.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %spdif_out_unmute.i, align 4
  %call62.i = tail call i32 %117(ptr noundef %3, i8 noundef zeroext 0) #9
  %118 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %switch_state.i.i, align 4
  %and.i208.i = and i32 %119, -17
  store i32 %and.i208.i, ptr %switch_state.i.i, align 4
  %line_in_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 31
  %120 = ptrtoint ptr %line_in_unmute.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %line_in_unmute.i, align 4
  %call63.i = tail call i32 %121(ptr noundef %3, i8 noundef zeroext 0) #9
  %122 = and i32 %call.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool68.not.i = icmp eq i32 %122, 0
  br i1 %tobool68.not.i, label %if.end57.i.if.end_crit_edge, label %if.then69.i

if.end57.i.if.end_crit_edge:                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then69.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %mic_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 32
  %123 = ptrtoint ptr %mic_unmute.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mic_unmute.i, align 4
  %call70.i = tail call i32 %124(ptr noundef %3, i8 noundef zeroext 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then69.i, %if.end57.i.if.end_crit_edge
  %spdif_in_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 34
  %125 = ptrtoint ptr %spdif_in_unmute.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %spdif_in_unmute.i, align 4
  %call72.i = tail call i32 %126(ptr noundef %3, i8 noundef zeroext 0) #9
  %127 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %switch_state.i.i, align 4
  %and.i217.i = and i32 %128, -12
  store i32 %and.i217.i, ptr %switch_state.i.i, align 4
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %129 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %130, i32 0, i32 6
  %call1 = tail call ptr @strcpy(ptr noundef %mixername, ptr noundef %device_name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3.i.cleanup_crit_edge, %if.then52.i.cleanup_crit_edge, %if.end3.i17.cleanup_crit_edge, %if.then41.i.cleanup_crit_edge, %if.end3.i192.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end3.i175.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.end3.i158.i.cleanup_crit_edge, %for.end24.i.cleanup_crit_edge, %if.end3.i141.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call5.i, %if.end3.i.cleanup_crit_edge ], [ -12, %if.then52.i.cleanup_crit_edge ], [ %call5.i15, %if.end3.i17.cleanup_crit_edge ], [ -12, %if.then41.i.cleanup_crit_edge ], [ %call5.i190.i, %if.end3.i192.i.cleanup_crit_edge ], [ -12, %if.end32.i.cleanup_crit_edge ], [ %call5.i173.i, %if.end3.i175.i.cleanup_crit_edge ], [ -12, %if.end28.i.cleanup_crit_edge ], [ %call5.i156.i, %if.end3.i158.i.cleanup_crit_edge ], [ -12, %for.end24.i.cleanup_crit_edge ], [ %call5.i139.i, %if.end3.i141.i.cleanup_crit_edge ], [ -12, %if.then14.i.cleanup_crit_edge ], [ %call5.i.i, %if.end3.i.i.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_switch(ptr noundef %atc, i32 noundef %type, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 44
  %0 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer1, align 4
  %capabilities = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 38
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %capabilities, align 4
  %call = tail call i32 %3(ptr noundef %atc) #9
  %4 = add i32 %type, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %switch.tableidx179 = add i32 %type, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx179)
  %6 = icmp ult i32 %switch.tableidx179, 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  br i1 %6, label %switch.lookup, label %if.then3.get_amixer_index.exit_crit_edge

if.then3.get_amixer_index.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_amixer_index.exit

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.do_switch, i32 0, i32 %switch.tableidx179
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_amixer_index.exit

get_amixer_index.exit:                            ; preds = %switch.lookup, %if.then3.get_amixer_index.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 42, %if.then3.get_amixer_index.exit_crit_edge ]
  %amixers.i = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 1
  %sums.i = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %amixers.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %retval.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sums.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %13, i32 8
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %ops.i = getelementptr inbounds %struct.amixer, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %set_sum.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %set_sum.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_sum.i, align 4
  %call.i = tail call i32 %19(ptr noundef %11, ptr noundef %15) #9
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %commit_write.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %commit_write.i, align 4
  %call4.i = tail call i32 %23(ptr noundef %11) #9
  %24 = ptrtoint ptr %amixers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %amixers.i, align 4
  %add.1.i = or i32 %retval.0.i, 1
  %arrayidx.1.i = getelementptr ptr, ptr %25, i32 %add.1.i
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1.i, align 4
  %28 = ptrtoint ptr %sums.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sums.i, align 4
  %arrayidx2.1.i = getelementptr ptr, ptr %29, i32 9
  %30 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.1.i, align 4
  %ops.1.i = getelementptr inbounds %struct.amixer, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %ops.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.1.i, align 4
  %set_sum.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %set_sum.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_sum.1.i, align 4
  %call.1.i = tail call i32 %35(ptr noundef %27, ptr noundef %31) #9
  br label %if.end6.sink.split

if.else:                                          ; preds = %if.then
  br i1 %6, label %switch.lookup178, label %if.else.get_amixer_index.exit157_crit_edge

if.else.get_amixer_index.exit157_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_amixer_index.exit157

switch.lookup178:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep180 = getelementptr inbounds [4 x i32], ptr @switch.table.do_switch.46, i32 0, i32 %switch.tableidx179
  %36 = ptrtoint ptr %switch.gep180 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load181 = load i32, ptr %switch.gep180, align 4
  br label %get_amixer_index.exit157

get_amixer_index.exit157:                         ; preds = %switch.lookup178, %if.else.get_amixer_index.exit157_crit_edge
  %retval.0.i156 = phi i32 [ %switch.load181, %switch.lookup178 ], [ 42, %if.else.get_amixer_index.exit157_crit_edge ]
  %amixers.i158 = getelementptr inbounds %struct.ct_mixer, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %amixers.i158 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %amixers.i158, align 4
  %arrayidx.i160 = getelementptr ptr, ptr %38, i32 %retval.0.i156
  %39 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i160, align 4
  %ops.i161 = getelementptr inbounds %struct.amixer, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i161 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i161, align 4
  %set_sum.i162 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %set_sum.i162 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_sum.i162, align 4
  %call.i163 = tail call i32 %44(ptr noundef %40, ptr noundef null) #9
  %45 = ptrtoint ptr %ops.i161 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i161, align 4
  %commit_write.i164 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %commit_write.i164 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %commit_write.i164, align 4
  %call2.i = tail call i32 %48(ptr noundef %40) #9
  %49 = ptrtoint ptr %amixers.i158 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %amixers.i158, align 4
  %add.1.i165 = or i32 %retval.0.i156, 1
  %arrayidx.1.i166 = getelementptr ptr, ptr %50, i32 %add.1.i165
  %51 = ptrtoint ptr %arrayidx.1.i166 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.1.i166, align 4
  %ops.1.i167 = getelementptr inbounds %struct.amixer, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ops.1.i167 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.1.i167, align 4
  %set_sum.1.i168 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %set_sum.1.i168 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_sum.1.i168, align 4
  %call.1.i169 = tail call i32 %56(ptr noundef %52, ptr noundef null) #9
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %get_amixer_index.exit157, %get_amixer_index.exit
  %ops.1.i.sink = phi ptr [ %ops.1.i, %get_amixer_index.exit ], [ %ops.1.i167, %get_amixer_index.exit157 ]
  %.sink = phi ptr [ %27, %get_amixer_index.exit ], [ %52, %get_amixer_index.exit157 ]
  %57 = ptrtoint ptr %ops.1.i.sink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.1.i.sink, align 4
  %commit_write.1.i = getelementptr inbounds %struct.amixer_rsc_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %commit_write.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %commit_write.1.i, align 4
  %call4.1.i = tail call i32 %60(ptr noundef %.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  %61 = and i32 %call, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not = icmp eq i32 %61, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true22.critedge

land.lhs.true8:                                   ; preds = %if.end6
  %62 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %type, label %land.lhs.true8.if.end90_crit_edge [
    i32 16, label %land.lhs.true8.if.then11_crit_edge
    i32 17, label %land.lhs.true8.if.then11_crit_edge182
    i32 18, label %land.lhs.true8.if.then44_crit_edge
    i32 20, label %land.lhs.true8.if.then50_crit_edge
    i32 23, label %land.lhs.true8.if.then56_crit_edge
    i32 22, label %land.lhs.true8.if.then62_crit_edge
    i32 21, label %land.lhs.true8.if.then68_crit_edge
    i32 19, label %land.lhs.true8.if.then74_crit_edge
    i32 24, label %land.lhs.true8.if.then80_crit_edge
  ]

land.lhs.true8.if.then80_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

land.lhs.true8.if.then74_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

land.lhs.true8.if.then68_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

land.lhs.true8.if.then62_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

land.lhs.true8.if.then56_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

land.lhs.true8.if.then50_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

land.lhs.true8.if.then44_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

land.lhs.true8.if.then11_crit_edge182:            ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true8.if.then11_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true8.if.end90_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then11:                                        ; preds = %land.lhs.true8.if.then11_crit_edge, %land.lhs.true8.if.then11_crit_edge182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool12.not = icmp eq i32 %state, 0
  br i1 %tobool12.not, label %if.then11.if.end14_crit_edge, label %if.then13

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.then11
  %63 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %if.then13.if.end14_crit_edge [
    i32 16, label %if.then.i
    i32 17, label %if.then2.i
  ]

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %select_line_in.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 24
  br label %if.end7.sink.split.i

if.then2.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %select_mic_in.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 25
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then2.i, %if.then.i
  %select_line_in.sink.i = phi ptr [ %select_line_in.i, %if.then.i ], [ %select_mic_in.i, %if.then2.i ]
  %.sink19.i = phi i32 [ -5, %if.then.i ], [ -3, %if.then2.i ]
  %kctls.0.sink.i = phi ptr [ @kctls.1, %if.then.i ], [ @kctls.0, %if.then2.i ]
  %64 = ptrtoint ptr %select_line_in.sink.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %select_line_in.sink.i, align 4
  %call.i171 = tail call i32 %65(ptr noundef %atc) #9
  %66 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mixer1, align 4
  %switch_state3.i.i = getelementptr inbounds %struct.ct_mixer, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %switch_state3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %switch_state3.i.i, align 4
  %and.i17.i = and i32 %69, %.sink19.i
  store i32 %and.i17.i, ptr %switch_state3.i.i, align 4
  %card5.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %70 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card5.i, align 4
  %72 = ptrtoint ptr %kctls.0.sink.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %kctls.0.sink.i, align 4
  %id6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %73, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %71, i32 noundef 1, ptr noundef %id6.i) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end7.sink.split.i, %if.then13.if.end14_crit_edge, %if.then11.if.end14_crit_edge
  %line_in_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 31
  %74 = ptrtoint ptr %line_in_unmute to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %line_in_unmute, align 4
  %conv = trunc i32 %state to i8
  %call15 = tail call i32 %75(ptr noundef %atc, i8 noundef zeroext %conv) #9
  br label %if.end90

land.lhs.true22.critedge:                         ; preds = %if.end6
  %76 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %type, label %land.lhs.true22.critedge.if.end90_crit_edge [
    i32 16, label %if.then25
    i32 17, label %if.then38
    i32 18, label %land.lhs.true22.critedge.if.then44_crit_edge
    i32 20, label %land.lhs.true22.critedge.if.then50_crit_edge
    i32 23, label %land.lhs.true22.critedge.if.then56_crit_edge
    i32 22, label %land.lhs.true22.critedge.if.then62_crit_edge
    i32 21, label %land.lhs.true22.critedge.if.then68_crit_edge
    i32 19, label %land.lhs.true22.critedge.if.then74_crit_edge
    i32 24, label %land.lhs.true22.critedge.if.then80_crit_edge
  ]

land.lhs.true22.critedge.if.then80_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

land.lhs.true22.critedge.if.then74_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

land.lhs.true22.critedge.if.then68_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

land.lhs.true22.critedge.if.then62_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

land.lhs.true22.critedge.if.then56_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

land.lhs.true22.critedge.if.then50_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

land.lhs.true22.critedge.if.then44_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

land.lhs.true22.critedge.if.end90_crit_edge:      ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then25:                                        ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %line_in_unmute26 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 31
  %77 = ptrtoint ptr %line_in_unmute26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %line_in_unmute26, align 4
  %conv27 = trunc i32 %state to i8
  %call28 = tail call i32 %78(ptr noundef %atc, i8 noundef zeroext %conv27) #9
  br label %if.end90

if.then38:                                        ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %mic_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 32
  %79 = ptrtoint ptr %mic_unmute to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mic_unmute, align 4
  %conv39 = trunc i32 %state to i8
  %call40 = tail call i32 %80(ptr noundef %atc, i8 noundef zeroext %conv39) #9
  br label %if.end90

if.then44:                                        ; preds = %land.lhs.true22.critedge.if.then44_crit_edge, %land.lhs.true8.if.then44_crit_edge
  %spdif_in_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 34
  %81 = ptrtoint ptr %spdif_in_unmute to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spdif_in_unmute, align 4
  %conv45 = trunc i32 %state to i8
  %call46 = tail call i32 %82(ptr noundef %atc, i8 noundef zeroext %conv45) #9
  br label %if.end90

if.then50:                                        ; preds = %land.lhs.true22.critedge.if.then50_crit_edge, %land.lhs.true8.if.then50_crit_edge
  %line_front_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 27
  %83 = ptrtoint ptr %line_front_unmute to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %line_front_unmute, align 4
  %conv51 = trunc i32 %state to i8
  %call52 = tail call i32 %84(ptr noundef %atc, i8 noundef zeroext %conv51) #9
  br label %if.end90

if.then56:                                        ; preds = %land.lhs.true22.critedge.if.then56_crit_edge, %land.lhs.true8.if.then56_crit_edge
  %line_surround_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 28
  %85 = ptrtoint ptr %line_surround_unmute to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %line_surround_unmute, align 4
  %conv57 = trunc i32 %state to i8
  %call58 = tail call i32 %86(ptr noundef %atc, i8 noundef zeroext %conv57) #9
  br label %if.end90

if.then62:                                        ; preds = %land.lhs.true22.critedge.if.then62_crit_edge, %land.lhs.true8.if.then62_crit_edge
  %line_clfe_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 29
  %87 = ptrtoint ptr %line_clfe_unmute to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %line_clfe_unmute, align 4
  %conv63 = trunc i32 %state to i8
  %call64 = tail call i32 %88(ptr noundef %atc, i8 noundef zeroext %conv63) #9
  br label %if.end90

if.then68:                                        ; preds = %land.lhs.true22.critedge.if.then68_crit_edge, %land.lhs.true8.if.then68_crit_edge
  %line_rear_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 30
  %89 = ptrtoint ptr %line_rear_unmute to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %line_rear_unmute, align 4
  %conv69 = trunc i32 %state to i8
  %call70 = tail call i32 %90(ptr noundef %atc, i8 noundef zeroext %conv69) #9
  br label %if.end90

if.then74:                                        ; preds = %land.lhs.true22.critedge.if.then74_crit_edge, %land.lhs.true8.if.then74_crit_edge
  %spdif_out_unmute = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 33
  %91 = ptrtoint ptr %spdif_out_unmute to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spdif_out_unmute, align 4
  %conv75 = trunc i32 %state to i8
  %call76 = tail call i32 %92(ptr noundef %atc, i8 noundef zeroext %conv75) #9
  br label %if.end90

if.then80:                                        ; preds = %land.lhs.true22.critedge.if.then80_crit_edge, %land.lhs.true8.if.then80_crit_edge
  %93 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mixer1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i173

if.then.i173:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %select_digit_io.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 26
  %95 = ptrtoint ptr %select_digit_io.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %select_digit_io.i, align 4
  %call.i172 = tail call i32 %96(ptr noundef %atc) #9
  %spdif_out_unmute.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 33
  %97 = ptrtoint ptr %spdif_out_unmute.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %spdif_out_unmute.i, align 4
  %switch_state.i.i = getelementptr inbounds %struct.ct_mixer, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %switch_state.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %switch_state.i.i, align 4
  %101 = trunc i32 %100 to i8
  %102 = lshr i8 %101, 4
  %103 = and i8 %102, 1
  %call3.i = tail call i32 %98(ptr noundef %atc, i8 noundef zeroext %103) #9
  br label %do_digit_io_switch.exit

if.end.i:                                         ; preds = %if.then80
  %switch_state.i42.i = getelementptr inbounds %struct.ct_mixer, ptr %94, i32 0, i32 3
  %104 = ptrtoint ptr %switch_state.i42.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %switch_state.i42.i, align 4
  %106 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool7.not.i = icmp eq i32 %106, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %select_line_in.i174 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 24
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %107 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool11.not.i = icmp eq i32 %107, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end15.i_crit_edge, label %if.then12.i

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %select_mic_in.i175 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 25
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then12.i, %if.then8.i
  %select_mic_in.sink.i = phi ptr [ %select_mic_in.i175, %if.then12.i ], [ %select_line_in.i174, %if.then8.i ]
  %108 = ptrtoint ptr %select_mic_in.sink.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %select_mic_in.sink.i, align 4
  %call13.i = tail call i32 %109(ptr noundef %atc) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %if.else.i.if.end15.i_crit_edge
  %spdif_out_unmute16.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 33
  %110 = ptrtoint ptr %spdif_out_unmute16.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %spdif_out_unmute16.i, align 4
  %call17.i = tail call i32 %111(ptr noundef %atc, i8 noundef zeroext 0) #9
  br label %do_digit_io_switch.exit

do_digit_io_switch.exit:                          ; preds = %if.end15.i, %if.then.i173
  %.sink51.i = phi i8 [ 0, %if.end15.i ], [ 1, %if.then.i173 ]
  %.sink.i = phi i8 [ 1, %if.end15.i ], [ 0, %if.then.i173 ]
  %spdif_in_unmute18.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 34
  %112 = ptrtoint ptr %spdif_in_unmute18.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spdif_in_unmute18.i, align 4
  %call19.i = tail call i32 %113(ptr noundef %atc, i8 noundef zeroext %.sink51.i) #9
  %line_in_unmute20.i = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 31
  %114 = ptrtoint ptr %line_in_unmute20.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %line_in_unmute20.i, align 4
  %call21.i = tail call i32 %115(ptr noundef %atc, i8 noundef zeroext %.sink.i) #9
  br label %if.end90

if.end90:                                         ; preds = %do_digit_io_switch.exit, %if.then74, %if.then68, %if.then62, %if.then56, %if.then50, %if.then44, %if.then38, %if.then25, %land.lhs.true22.critedge.if.end90_crit_edge, %if.end14, %land.lhs.true8.if.end90_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ct_alsa_mix_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
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
  store i32 256, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_alsa_mix_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %4 = icmp ult i32 %3, 19
  br i1 %4, label %switch.lookup, label %entry.get_amixer_index.exit_crit_edge

entry.get_amixer_index.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_amixer_index.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.ct_alsa_mix_volume_get, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_amixer_index.exit

get_amixer_index.exit:                            ; preds = %switch.lookup, %entry.get_amixer_index.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 42, %entry.get_amixer_index.exit_crit_edge ]
  %mixer = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 44
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mixer, align 4
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %amixers, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %retval.0.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.amixer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %get_scale = getelementptr inbounds %struct.amixer_rsc_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %get_scale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_scale, align 4
  %call1 = tail call i32 %15(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -27, i32 %call1)
  %cmp2 = icmp slt i32 %call1, -27
  %div = sdiv i32 %call1, 28
  %16 = tail call i32 @llvm.smin.i32(i32 %div, i32 256)
  %val.0 = select i1 %cmp2, i32 0, i32 %16
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val.0, ptr %value, align 4
  %18 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mixer, align 4
  %amixers.1 = getelementptr inbounds %struct.ct_mixer, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %amixers.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %amixers.1, align 4
  %add.1 = or i32 %retval.0.i, 1
  %arrayidx.1 = getelementptr ptr, ptr %21, i32 %add.1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %ops.1 = getelementptr inbounds %struct.amixer, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.1, align 4
  %get_scale.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %get_scale.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_scale.1, align 4
  %call1.1 = tail call i32 %27(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -27, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, -27
  %div.1 = sdiv i32 %call1.1, 28
  %28 = tail call i32 @llvm.smin.i32(i32 %div.1, i32 256)
  %val.0.1 = select i1 %cmp2.1, i32 0, i32 %28
  %arrayidx6.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %val.0.1, ptr %arrayidx6.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_alsa_mix_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %6 = icmp ult i32 %5, 19
  br i1 %6, label %switch.lookup, label %entry.get_amixer_index.exit_crit_edge

entry.get_amixer_index.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_amixer_index.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.ct_alsa_mix_volume_put, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_amixer_index.exit

get_amixer_index.exit:                            ; preds = %switch.lookup, %entry.get_amixer_index.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 21, %entry.get_amixer_index.exit_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %amixers = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 1
  %mul6 = shl nuw nsw i32 %retval.0.i, 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 256)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %mul = mul nuw nsw i32 %11, 28
  %12 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %amixers, align 4
  %arrayidx7 = getelementptr ptr, ptr %13, i32 %mul6
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %ops = getelementptr inbounds %struct.amixer, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %get_scale = getelementptr inbounds %struct.amixer_rsc_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %get_scale to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_scale, align 4
  %call8 = tail call i32 %19(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %call8)
  %cmp9.not = icmp eq i32 %mul, %call8
  br i1 %cmp9.not, label %get_amixer_index.exit.for.inc34_crit_edge, label %if.then10

get_amixer_index.exit.for.inc34_crit_edge:        ; preds = %get_amixer_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34

if.then10:                                        ; preds = %get_amixer_index.exit
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %set_scale = getelementptr inbounds %struct.amixer_rsc_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set_scale to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_scale, align 4
  %call12 = tail call i32 %23(ptr noundef %15, i32 noundef %mul) #9
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %commit_write = getelementptr inbounds %struct.amixer_rsc_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %commit_write, align 4
  %call14 = tail call i32 %27(ptr noundef %15) #9
  %28 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %retval.0.i, label %if.then10.for.inc34_crit_edge [
    i32 0, label %if.then10.if.then17_crit_edge
    i32 4, label %if.then10.if.then17_crit_edge75
  ]

if.then10.if.then17_crit_edge75:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then10.if.then17_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then10.for.inc34_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34

if.then17:                                        ; preds = %if.then10.if.then17_crit_edge, %if.then10.if.then17_crit_edge75
  %29 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %amixers, align 4
  %add22 = shl nuw nsw i32 %retval.0.i, 1
  %mul23 = add nuw nsw i32 %add22, 2
  %arrayidx25 = getelementptr ptr, ptr %30, i32 %mul23
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx25, align 4
  %ops26 = getelementptr inbounds %struct.amixer, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops26, align 4
  %set_scale27 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %set_scale27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_scale27, align 4
  %call28 = tail call i32 %36(ptr noundef %32, i32 noundef %mul) #9
  %37 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops26, align 4
  %commit_write30 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %commit_write30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %commit_write30, align 4
  %call31 = tail call i32 %40(ptr noundef %32) #9
  %41 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %amixers, align 4
  %add22.1 = shl nuw nsw i32 %retval.0.i, 1
  %mul23.1 = add nuw nsw i32 %add22.1, 4
  %arrayidx25.1 = getelementptr ptr, ptr %42, i32 %mul23.1
  %43 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx25.1, align 4
  %ops26.1 = getelementptr inbounds %struct.amixer, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ops26.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops26.1, align 4
  %set_scale27.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %set_scale27.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_scale27.1, align 4
  %call28.1 = tail call i32 %48(ptr noundef %44, i32 noundef %mul) #9
  %49 = ptrtoint ptr %ops26.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops26.1, align 4
  %commit_write30.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %commit_write30.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %commit_write30.1, align 4
  %call31.1 = tail call i32 %52(ptr noundef %44) #9
  %53 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %amixers, align 4
  %add22.2 = shl nuw nsw i32 %retval.0.i, 1
  %mul23.2 = add nuw nsw i32 %add22.2, 6
  %arrayidx25.2 = getelementptr ptr, ptr %54, i32 %mul23.2
  %55 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx25.2, align 4
  %ops26.2 = getelementptr inbounds %struct.amixer, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops26.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops26.2, align 4
  %set_scale27.2 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %set_scale27.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_scale27.2, align 4
  %call28.2 = tail call i32 %60(ptr noundef %56, i32 noundef %mul) #9
  %61 = ptrtoint ptr %ops26.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops26.2, align 4
  %commit_write30.2 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %commit_write30.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %commit_write30.2, align 4
  %call31.2 = tail call i32 %64(ptr noundef %56) #9
  br label %for.inc34

for.inc34:                                        ; preds = %if.then17, %if.then10.for.inc34_crit_edge, %get_amixer_index.exit.for.inc34_crit_edge
  %change.1 = phi i32 [ 0, %get_amixer_index.exit.for.inc34_crit_edge ], [ 1, %if.then10.for.inc34_crit_edge ], [ 1, %if.then17 ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.1, align 4
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 256)
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 0)
  %mul.1 = mul nuw nsw i32 %68, 28
  %69 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %amixers, align 4
  %add.1 = or i32 %mul6, 1
  %arrayidx7.1 = getelementptr ptr, ptr %70, i32 %add.1
  %71 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx7.1, align 4
  %ops.1 = getelementptr inbounds %struct.amixer, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.1, align 4
  %get_scale.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %get_scale.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_scale.1, align 4
  %call8.1 = tail call i32 %76(ptr noundef %72) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %call8.1)
  %cmp9.not.1 = icmp eq i32 %mul.1, %call8.1
  br i1 %cmp9.not.1, label %for.inc34.for.inc34.1_crit_edge, label %if.then10.1

for.inc34.for.inc34.1_crit_edge:                  ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.1

if.then10.1:                                      ; preds = %for.inc34
  %77 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.1, align 4
  %set_scale.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %set_scale.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_scale.1, align 4
  %call12.1 = tail call i32 %80(ptr noundef %72, i32 noundef %mul.1) #9
  %81 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.1, align 4
  %commit_write.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %commit_write.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %commit_write.1, align 4
  %call14.1 = tail call i32 %84(ptr noundef %72) #9
  %85 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %retval.0.i, label %if.then10.1.for.inc34.1_crit_edge [
    i32 0, label %if.then10.1.if.then17.1_crit_edge
    i32 4, label %if.then10.1.if.then17.1_crit_edge76
  ]

if.then10.1.if.then17.1_crit_edge76:              ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.1

if.then10.1.if.then17.1_crit_edge:                ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.1

if.then10.1.for.inc34.1_crit_edge:                ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.1

if.then17.1:                                      ; preds = %if.then10.1.if.then17.1_crit_edge, %if.then10.1.if.then17.1_crit_edge76
  %86 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %amixers, align 4
  %add22.166 = shl nuw nsw i32 %retval.0.i, 1
  %add24.168 = add nuw nsw i32 %add22.166, 3
  %arrayidx25.169 = getelementptr ptr, ptr %87, i32 %add24.168
  %88 = ptrtoint ptr %arrayidx25.169 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx25.169, align 4
  %ops26.170 = getelementptr inbounds %struct.amixer, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ops26.170 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops26.170, align 4
  %set_scale27.171 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %set_scale27.171 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_scale27.171, align 4
  %call28.172 = tail call i32 %93(ptr noundef %89, i32 noundef %mul.1) #9
  %94 = ptrtoint ptr %ops26.170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops26.170, align 4
  %commit_write30.173 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %commit_write30.173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %commit_write30.173, align 4
  %call31.174 = tail call i32 %97(ptr noundef %89) #9
  %98 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %amixers, align 4
  %add22.1.1 = shl nuw nsw i32 %retval.0.i, 1
  %add24.1.1 = add nuw nsw i32 %add22.1.1, 5
  %arrayidx25.1.1 = getelementptr ptr, ptr %99, i32 %add24.1.1
  %100 = ptrtoint ptr %arrayidx25.1.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx25.1.1, align 4
  %ops26.1.1 = getelementptr inbounds %struct.amixer, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %ops26.1.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops26.1.1, align 4
  %set_scale27.1.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %set_scale27.1.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_scale27.1.1, align 4
  %call28.1.1 = tail call i32 %105(ptr noundef %101, i32 noundef %mul.1) #9
  %106 = ptrtoint ptr %ops26.1.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops26.1.1, align 4
  %commit_write30.1.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %commit_write30.1.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %commit_write30.1.1, align 4
  %call31.1.1 = tail call i32 %109(ptr noundef %101) #9
  %110 = ptrtoint ptr %amixers to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %amixers, align 4
  %add22.2.1 = shl nuw nsw i32 %retval.0.i, 1
  %add24.2.1 = add nuw nsw i32 %add22.2.1, 7
  %arrayidx25.2.1 = getelementptr ptr, ptr %111, i32 %add24.2.1
  %112 = ptrtoint ptr %arrayidx25.2.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx25.2.1, align 4
  %ops26.2.1 = getelementptr inbounds %struct.amixer, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %ops26.2.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops26.2.1, align 4
  %set_scale27.2.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %set_scale27.2.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_scale27.2.1, align 4
  %call28.2.1 = tail call i32 %117(ptr noundef %113, i32 noundef %mul.1) #9
  %118 = ptrtoint ptr %ops26.2.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops26.2.1, align 4
  %commit_write30.2.1 = getelementptr inbounds %struct.amixer_rsc_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %commit_write30.2.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %commit_write30.2.1, align 4
  %call31.2.1 = tail call i32 %121(ptr noundef %113) #9
  br label %for.inc34.1

for.inc34.1:                                      ; preds = %if.then17.1, %if.then10.1.for.inc34.1_crit_edge, %for.inc34.for.inc34.1_crit_edge
  %change.1.1 = phi i32 [ %change.1, %for.inc34.for.inc34.1_crit_edge ], [ 1, %if.then10.1.for.inc34.1_crit_edge ], [ 1, %if.then17.1 ]
  ret i32 %change.1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ct_alsa_mix_switch_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
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
  store i32 1, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ct_alsa_mix_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %switch_state.i = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_state.i, align 4
  %sub.i = add i32 %5, -15
  %8 = lshr i32 %7, %sub.i
  %9 = and i32 %8, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_alsa_mix_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer1 = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %switch_state.i = getelementptr inbounds %struct.ct_mixer, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %switch_state.i, align 4
  %sub.i = add i32 %5, -15
  %10 = lshr i32 %9, %sub.i
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp = icmp eq i32 %7, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw i32 1, %sub.i
  %conv3 = trunc i32 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not.i14 = icmp eq i8 %conv3, 0
  %or.i = or i32 %9, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i16 = and i32 %9, %neg.i
  %storemerge = select i1 %tobool.not.i14, i32 %and.i16, i32 %or.i
  %12 = ptrtoint ptr %switch_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %switch_state.i, align 4
  tail call fastcc void @do_switch(ptr noundef %1, i32 noundef %5, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ct_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ct_spdif_get_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !117
  %spdif_out_get_status = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %spdif_out_get_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spdif_out_get_status, align 4
  %call = call i32 %4(ptr noundef %1, ptr noundef nonnull %status) #9
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 33587712, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %conv = trunc i32 %9 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %value, align 8
  %shr2 = lshr i32 %9, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %arrayidx7, align 1
  %shr8 = lshr i32 %9, 16
  %conv10 = trunc i32 %shr8 to i8
  %arrayidx13 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %arrayidx13, align 2
  %shr14 = lshr i32 %9, 24
  %conv16 = trunc i32 %shr14 to i8
  %arrayidx19 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16, ptr %arrayidx19, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %old_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_status) #9
  %2 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %old_status, align 4, !annotation !117
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 8
  %conv = zext i8 %4 to i32
  %arrayidx4 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %conv
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 2
  %conv10 = zext i8 %8 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %arrayidx15 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  %shl17 = shl nuw i32 %conv16, 24
  %or18 = or i32 %or12, %shl17
  %spdif_out_get_status = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %spdif_out_get_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spdif_out_get_status, align 4
  %call = call i32 %12(ptr noundef %1, ptr noundef nonnull %old_status) #9
  %13 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %or18)
  %cmp = icmp ne i32 %14, %or18
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spdif_out_set_status = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %spdif_out_set_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spdif_out_set_status, align 4
  %call20 = call i32 %16(ptr noundef %1, i32 noundef %or18) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv19 = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_status) #9
  ret i32 %conv19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @output_switch_info.names) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %output_switch_get = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %output_switch_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_switch_get, align 4
  %call = tail call i32 %3(ptr noundef %1) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %output_switch_put = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %output_switch_put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %output_switch_put, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_source_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @mic_source_switch_info.names) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_source_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mic_source_switch_get = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %mic_source_switch_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mic_source_switch_get, align 4
  %call = tail call i32 %3(ptr noundef %1) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_source_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mic_source_switch_put = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %mic_source_switch_put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mic_source_switch_put, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = distinct !{null, !1, !"kctls", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 226, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 853, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ct_mixer_get_resources._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ct_mixer_get_resources._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 868, i32 4}
!12 = !{ptr @ct_mixer_get_resources._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ct_mixer_get_resources._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 118, i32 11}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 126, i32 11}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 134, i32 11}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 142, i32 11}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 150, i32 11}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 158, i32 11}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 162, i32 11}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 174, i32 11}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 170, i32 11}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 166, i32 11}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 122, i32 11}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 130, i32 11}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 138, i32 11}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 146, i32 11}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 154, i32 11}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 178, i32 11}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 182, i32 11}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 186, i32 11}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 190, i32 11}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 194, i32 11}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 198, i32 11}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 210, i32 11}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 206, i32 11}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 202, i32 11}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 214, i32 11}
!64 = !{ptr @ct_kcontrol_init_table, !65, !"ct_kcontrol_init_table", i1 false, i1 false}
!65 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 115, i32 1}
!66 = !{ptr @vol_ctl, !67, !"vol_ctl", i1 false, i1 false}
!67 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 400, i32 32}
!68 = !{ptr @ct_vol_db_scale, !69, !"ct_vol_db_scale", i1 false, i1 false}
!69 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 328, i32 14}
!70 = !{ptr @swh_ctl, !71, !"swh_ctl", i1 false, i1 false}
!71 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 607, i32 32}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 675, i32 11}
!74 = !{ptr @iec958_mask_ctl, !75, !"iec958_mask_ctl", i1 false, i1 false}
!75 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 672, i32 32}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 684, i32 11}
!78 = !{ptr @iec958_default_ctl, !79, !"iec958_default_ctl", i1 false, i1 false}
!79 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 682, i32 32}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 695, i32 11}
!82 = !{ptr @iec958_ctl, !83, !"iec958_ctl", i1 false, i1 false}
!83 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 692, i32 32}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 439, i32 10}
!86 = !{ptr @output_ctl, !87, !"output_ctl", i1 false, i1 false}
!87 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 437, i32 32}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 414, i32 4}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 414, i32 21}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 414, i32 35}
!94 = !{ptr @output_switch_info.names, !95, !"names", i1 false, i1 false}
!95 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 413, i32 27}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 475, i32 10}
!98 = !{ptr @mic_source_ctl, !99, !"mic_source_ctl", i1 false, i1 false}
!99 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 473, i32 32}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 449, i32 4}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 449, i32 11}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 449, i32 21}
!106 = !{ptr @mic_source_switch_info.names, !107, !"names", i1 false, i1 false}
!107 = !{!"../sound/pci/ctxfi/ctmixer.c", i32 448, i32 27}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
