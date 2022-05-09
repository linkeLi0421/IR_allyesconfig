; ModuleID = '/llk/IR_all_yes/sound/pci/ca0106/ca0106_mixer.c_pt.bc'
source_filename = "../sound/pci/ca0106/ca0106_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ca0106 = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.spinlock, ptr, [4 x ptr], [4 x %struct.snd_ca0106_channel], [4 x %struct.snd_ca0106_channel], [4 x i32], [4 x i32], i32, i32, i32, [4 x [2 x i8]], i32, ptr, %struct.snd_ca_midi, %struct.snd_ca_midi, [16 x i16], [9 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ca0106_channel = type { ptr, i32, i32, ptr, ptr }
%struct.snd_ca_midi = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ca0106_details = type { i32, ptr, i32, i32, i32, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }

@snd_ca0106_mixer.ca0106_remove_ctls = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3D Control - Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3D Control Sigmatel - Depth\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Video Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Video Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mono Output Select\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"External Amplifier\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sigmatel 4-Speaker Stereo Playback Switch\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Surround Phase Inversion Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@snd_ca0106_mixer.ca0106_rename_ctls = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.21, ptr @.str.16, ptr @.str.22, ptr @.str.17, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AC97 Line Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AC97 Line Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AC97 Aux Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AC97 Aux Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AC97 Mic Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AC97 Mic Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Select\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AC97 Mic Select\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Boost (+20dB)\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AC97 Mic Boost (+20dB)\00", [41 x i8] zeroinitializer }, align 32
@snd_ca0106_volume_ctls = internal constant { [15 x %struct.snd_kcontrol_new], [176 x i8] } { [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 106 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 874 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 362 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 618 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 102 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 870 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 358 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 614 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_ca0106_volume_info, ptr @snd_ca0106_volume_get, ptr @snd_ca0106_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale1 }, i32 369 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.49, i32 0, i32 1, i32 4, ptr @snd_ca0106_spdif_info, ptr @snd_ca0106_spdif_get_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ca0106_shared_spdif_get, ptr @snd_ca0106_shared_spdif_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_ca0106_capture_source_info, ptr @snd_ca0106_capture_source_get, ptr @snd_ca0106_capture_source_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_ca0106_i2c_capture_source_info, ptr @snd_ca0106_i2c_capture_source_get, ptr @snd_ca0106_i2c_capture_source_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 4, ptr @snd_ca0106_spdif_info, ptr @snd_ca0106_spdif_get_default, ptr @snd_ca0106_spdif_put_default, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 4, ptr @snd_ca0106_spdif_info, ptr @snd_ca0106_spdif_get_stream, ptr @snd_ca0106_spdif_put_stream, %union.anon.86 zeroinitializer, i32 0 }], [176 x i8] zeroinitializer }, align 32
@snd_ca0106_volume_i2c_adc_ctls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_ca0106_i2c_volume_info, ptr @snd_ca0106_i2c_volume_get, ptr @snd_ca0106_i2c_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale2 }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_ca0106_i2c_volume_info, ptr @snd_ca0106_i2c_volume_get, ptr @snd_ca0106_i2c_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale2 }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_ca0106_i2c_volume_info, ptr @snd_ca0106_i2c_volume_get, ptr @snd_ca0106_i2c_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale2 }, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_ca0106_i2c_volume_info, ptr @snd_ca0106_i2c_volume_get, ptr @snd_ca0106_i2c_volume_put, %union.anon.86 { ptr @snd_ca0106_db_scale2 }, i32 3 }], [32 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_mic_line_in = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_ca0106_capture_mic_line_in_info, ptr @snd_ca0106_capture_mic_line_in_get, ptr @snd_ca0106_capture_mic_line_in_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_line_in_side_out = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_ca0106_capture_line_in_side_out_info, ptr @snd_ca0106_capture_mic_line_in_get, ptr @snd_ca0106_capture_mic_line_in_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ca0106_master_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6375, i32 65561], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CA0106\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog Front Playback Volume\00", [35 x i8] zeroinitializer }, align 32
@snd_ca0106_db_scale1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5175, i32 65561], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Rear Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Analog Center/LFE Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Side Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IEC958 Front Playback Volume\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958 Rear Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IEC958 Center/LFE Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IEC958 Unknown Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CAPTURE feedback Playback Volume\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Digital Source Capture Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Analog Source Capture Enum\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_source_info.texts = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IEC958 out\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s mixer out\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IEC958 in\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s in\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AC97 in\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SRC out\00", [24 x i8] zeroinitializer }, align 32
@snd_ca0106_i2c_capture_source_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phone\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line in\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phone Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@snd_ca0106_db_scale2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Line in Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Shared Mic/Line in Capture Switch\00", [62 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_mic_line_in_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.63, ptr @.str.70], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mic in\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Shared Line in/Side out Capture Switch\00", [57 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_line_in_side_out_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.72, ptr @.str.63], [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Side out\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog Front Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Rear Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Analog Center/LFE Playback Switch\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Side Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@spi_dmute_reg = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 9, i32 9, i32 9, i32 0, i32 15], [44 x i8] zeroinitializer }, align 32
@spi_dmute_bit = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 32, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"ca0106_remove_ctls\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 780, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 781, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 782, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 783, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 784, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 785, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 786, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 787, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 788, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 789, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 790, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 791, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 792, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 793, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 794, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 795, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 796, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 797, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 798, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 799, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 800, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 801, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"ca0106_rename_ctls\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 804, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 805, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 806, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 807, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 807, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 808, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 808, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 809, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 809, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 810, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 810, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 811, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 811, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 812, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 812, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 813, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 813, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 814, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 814, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"snd_ca0106_volume_ctls\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 553, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant [31 x i8] c"snd_ca0106_volume_i2c_adc_ctls\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 634, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"snd_ca0106_capture_mic_line_in\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 290, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant [36 x i8] c"snd_ca0106_capture_line_in_side_out\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 299, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"snd_ca0106_master_db_scale\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 740, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 868, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 554, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"snd_ca0106_db_scale1\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 141, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 556, i32 9 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 558, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 560, i32 9 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 563, i32 9 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 565, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 567, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 569, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 572, i32 9 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 578, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 585, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 592, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 599, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 606, i32 19 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 614, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 174, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 47 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 57 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 175, i32 68 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 211, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 19 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 635, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant [21 x i8] c"snd_ca0106_db_scale2\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 142, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 636, i32 9 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 637, i32 9 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 638, i32 9 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 293, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 258, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 258, i32 52 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 302, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 250, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 250, i32 41 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 672, i32 21 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 676, i32 21 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 680, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 684, i32 21 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"spi_dmute_reg\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 641, i32 18 }
@___asan_gen_.350 = private unnamed_addr constant [14 x i8] c"spi_dmute_bit\00", align 1
@___asan_gen_.351 = private constant [35 x i8] c"../sound/pci/ca0106/ca0106_mixer.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 648, i32 18 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @snd_ca0106_mixer.ca0106_remove_ctls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_ca0106_mixer.ca0106_rename_ctls, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @snd_ca0106_volume_ctls, ptr @snd_ca0106_volume_i2c_adc_ctls, ptr @snd_ca0106_capture_mic_line_in, ptr @snd_ca0106_capture_line_in_side_out, ptr @snd_ca0106_master_db_scale, ptr @.str.39, ptr @.str.40, ptr @snd_ca0106_db_scale1, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @snd_ca0106_capture_source_info.texts, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @snd_ca0106_i2c_capture_source_info.texts, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @snd_ca0106_db_scale2, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @snd_ca0106_capture_mic_line_in_info.texts, ptr @.str.70, ptr @.str.71, ptr @snd_ca0106_capture_line_in_side_out_info.texts, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @spi_dmute_reg, ptr @spi_dmute_bit], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_mixer.ca0106_remove_ctls to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_mixer.ca0106_rename_ctls to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_volume_ctls to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_volume_i2c_adc_ctls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_mic_line_in to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_line_in_side_out to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_master_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_db_scale1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_source_info.texts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_i2c_capture_source_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_db_scale2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_mic_line_in_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_line_in_side_out_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_dmute_reg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_dmute_bit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ca0106_mixer(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  %sid.i.i163 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i156 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i = alloca %struct.snd_ctl_elem_id, align 4
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  %ctl = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu, align 4
  %name1.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %name1.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 4
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 1
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %2 = phi ptr [ @.str, %entry ], [ %6, %for.body.for.body_crit_edge ]
  %c.0193 = phi ptr [ @snd_ca0106_mixer.ca0106_remove_ctls, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #6
  %3 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %call.i = call ptr @strcpy(ptr noundef %name1.i, ptr noundef nonnull %2) #9
  %4 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %iface.i, align 4
  %call2.i = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #6
  %incdec.ptr = getelementptr ptr, ptr %c.0193, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.cond2.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body4:                                        ; preds = %rename_ctl.exit.for.body4_crit_edge, %for.cond2.preheader
  %7 = phi ptr [ @.str.21, %for.cond2.preheader ], [ %13, %rename_ctl.exit.for.body4_crit_edge ]
  %c.1194 = phi ptr [ @snd_ca0106_mixer.ca0106_rename_ctls, %for.cond2.preheader ], [ %add.ptr, %rename_ctl.exit.for.body4_crit_edge ]
  %arrayidx5 = getelementptr ptr, ptr %c.1194, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #6
  %10 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.i = call ptr @strcpy(ptr noundef %name1.i.i, ptr noundef nonnull %7) #9
  %11 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #6
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %for.body4.rename_ctl.exit_crit_edge, label %if.then.i

for.body4.rename_ctl.exit_crit_edge:              ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rename_ctl.exit

if.then.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i, i32 0, i32 1, i32 4
  %call1.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %9) #9
  br label %rename_ctl.exit

rename_ctl.exit:                                  ; preds = %if.then.i, %for.body4.rename_ctl.exit_crit_edge
  %add.ptr = getelementptr ptr, ptr %c.1194, i32 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %rename_ctl.exit.for.body10_crit_edge, label %rename_ctl.exit.for.body4_crit_edge

rename_ctl.exit.for.body4_crit_edge:              ; preds = %rename_ctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

rename_ctl.exit.for.body10_crit_edge:             ; preds = %rename_ctl.exit
  br label %for.body10

for.cond9:                                        ; preds = %for.body10
  %inc = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %do.end, label %for.cond9.for.body10_crit_edge

for.cond9.for.body10_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.body10:                                       ; preds = %for.cond9.for.body10_crit_edge, %rename_ctl.exit.for.body10_crit_edge
  %i.0195 = phi i32 [ %inc, %for.cond9.for.body10_crit_edge ], [ 0, %rename_ctl.exit.for.body10_crit_edge ]
  %arrayidx11 = getelementptr [15 x %struct.snd_kcontrol_new], ptr @snd_ca0106_volume_ctls, i32 0, i32 %i.0195
  %call12 = call ptr @snd_ctl_new1(ptr noundef %arrayidx11, ptr noundef %emu) #6
  %call13 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.body10.cleanup99_crit_edge, label %for.cond9

for.body10.cleanup99_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

do.end:                                           ; preds = %for.cond9
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %details, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_ca0106_details, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2c_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp18 = icmp eq i32 %17, 1
  br i1 %cmp18, label %for.body25.preheader, label %do.end.if.end52_crit_edge

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.body25.preheader:                             ; preds = %do.end
  %call27 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ca0106_volume_i2c_adc_ctls, ptr noundef %emu) #6
  %call28 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %for.body25.preheader.cleanup99_crit_edge, label %for.cond23

for.body25.preheader.cleanup99_crit_edge:         ; preds = %for.body25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

for.cond23:                                       ; preds = %for.body25.preheader
  %call27.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_ca0106_volume_i2c_adc_ctls, i32 0, i32 1), ptr noundef %emu) #6
  %call28.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call27.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1)
  %cmp29.1 = icmp slt i32 %call28.1, 0
  br i1 %cmp29.1, label %for.cond23.cleanup99_crit_edge, label %for.cond23.1

for.cond23.cleanup99_crit_edge:                   ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

for.cond23.1:                                     ; preds = %for.cond23
  %call27.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_ca0106_volume_i2c_adc_ctls, i32 0, i32 2), ptr noundef %emu) #6
  %call28.2 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call27.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2)
  %cmp29.2 = icmp slt i32 %call28.2, 0
  br i1 %cmp29.2, label %for.cond23.1.cleanup99_crit_edge, label %for.cond23.2

for.cond23.1.cleanup99_crit_edge:                 ; preds = %for.cond23.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

for.cond23.2:                                     ; preds = %for.cond23.1
  %call27.3 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_ca0106_volume_i2c_adc_ctls, i32 0, i32 3), ptr noundef %emu) #6
  %call28.3 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call27.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3)
  %cmp29.3 = icmp slt i32 %call28.3, 0
  br i1 %cmp29.3, label %for.cond23.2.cleanup99_crit_edge, label %for.cond23.3

for.cond23.2.cleanup99_crit_edge:                 ; preds = %for.cond23.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

for.cond23.3:                                     ; preds = %for.cond23.2
  %18 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %details, align 4
  %gpio_type = getelementptr inbounds %struct.snd_ca0106_details, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %gpio_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp42 = icmp eq i32 %21, 1
  %snd_ca0106_capture_mic_line_in.snd_ca0106_capture_line_in_side_out = select i1 %cmp42, ptr @snd_ca0106_capture_mic_line_in, ptr @snd_ca0106_capture_line_in_side_out
  %call46 = call ptr @snd_ctl_new1(ptr noundef nonnull %snd_ca0106_capture_mic_line_in.snd_ca0106_capture_line_in_side_out, ptr noundef %emu) #6
  %call47 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp49 = icmp slt i32 %call47, 0
  br i1 %cmp49, label %for.cond23.3.cleanup99_crit_edge, label %for.cond23.3.if.end52_crit_edge

for.cond23.3.if.end52_crit_edge:                  ; preds = %for.cond23.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.cond23.3.cleanup99_crit_edge:                 ; preds = %for.cond23.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end52:                                         ; preds = %for.cond23.3.if.end52_crit_edge, %do.end.if.end52_crit_edge
  %22 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %details, align 4
  %spi_dac = getelementptr inbounds %struct.snd_ca0106_details, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %spi_dac to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %spi_dac, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool54.not = icmp eq i16 %25, 0
  br i1 %tobool54.not, label %if.end52.if.end76_crit_edge, label %for.cond57.preheader

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

for.cond57.preheader:                             ; preds = %if.end52
  %tmp.sroa.4.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 4
  %tmp.sroa.5.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 12
  %tmp.sroa.9.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 16
  %tmp.sroa.9177.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 20
  %tmp.sroa.10.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 24
  %tmp.sroa.10178.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 28
  %tmp.sroa.11.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 32
  %tmp.sroa.12.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 36
  %tmp.sroa.13.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 40
  %tmp.sroa.13179.0.ctl.sroa_idx = getelementptr inbounds i8, ptr %ctl, i32 44
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.cond57.preheader
  %i56.0 = phi i32 [ %inc71, %for.inc70 ], [ 0, %for.cond57.preheader ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ctl) #6
  %26 = call ptr @memset(ptr %ctl, i32 255, i32 48)
  %27 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %details, align 4
  %29 = zext i32 %i56.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i56.0, label %for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb13.i
  ]

for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge: ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_ca0106_volume_spi_dac_ctl.exit

sw.bb.i:                                          ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  %spi_dac.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %28, i32 0, i32 5
  %30 = ptrtoint ptr %spi_dac.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %spi_dac.i, align 4, !noalias !199
  %32 = lshr i16 %31, 12
  br label %snd_ca0106_volume_spi_dac_ctl.exit

sw.bb1.i:                                         ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  %spi_dac3.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %spi_dac3.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %spi_dac3.i, align 4, !noalias !199
  %35 = lshr i16 %34, 8
  %36 = and i16 %35, 15
  br label %snd_ca0106_volume_spi_dac_ctl.exit

sw.bb7.i:                                         ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  %spi_dac9.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %spi_dac9.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %spi_dac9.i, align 4, !noalias !199
  %39 = lshr i16 %38, 4
  %40 = and i16 %39, 15
  br label %snd_ca0106_volume_spi_dac_ctl.exit

sw.bb13.i:                                        ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  %spi_dac15.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %28, i32 0, i32 5
  %41 = ptrtoint ptr %spi_dac15.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %spi_dac15.i, align 4, !noalias !199
  %43 = and i16 %42, 15
  br label %snd_ca0106_volume_spi_dac_ctl.exit

snd_ca0106_volume_spi_dac_ctl.exit:               ; preds = %sw.bb13.i, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge
  %tobool59.not = phi i1 [ true, %for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge ], [ false, %sw.bb.i ], [ false, %sw.bb1.i ], [ false, %sw.bb7.i ], [ false, %sw.bb13.i ]
  %tmp.sroa.5.1 = phi ptr [ null, %for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge ], [ @.str.73, %sw.bb.i ], [ @.str.74, %sw.bb1.i ], [ @.str.75, %sw.bb7.i ], [ @.str.76, %sw.bb13.i ]
  %dac_id.0.shrunk.i = phi i16 [ 0, %for.cond57.snd_ca0106_volume_spi_dac_ctl.exit_crit_edge ], [ %32, %sw.bb.i ], [ %36, %sw.bb1.i ], [ %40, %sw.bb7.i ], [ %43, %sw.bb13.i ]
  %dac_id.0.i = zext i16 %dac_id.0.shrunk.i to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @spi_dmute_reg, i32 0, i32 %dac_id.0.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4, !noalias !199
  %arrayidx20.i = getelementptr [5 x i32], ptr @spi_dmute_bit, i32 0, i32 %dac_id.0.i
  %46 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx20.i, align 4, !noalias !199
  %shl.i = shl i32 %45, 9
  %or.i = or i32 %shl.i, %47
  %48 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %ctl, align 4
  %49 = ptrtoint ptr %tmp.sroa.4.0.ctl.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %tmp.sroa.4.0.ctl.sroa_idx, align 4
  %50 = ptrtoint ptr %tmp.sroa.5.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tmp.sroa.5.1, ptr %tmp.sroa.5.0.ctl.sroa_idx, align 4
  %51 = ptrtoint ptr %tmp.sroa.9.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tmp.sroa.9.0.ctl.sroa_idx, align 4
  %52 = ptrtoint ptr %tmp.sroa.9177.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %tmp.sroa.9177.0.ctl.sroa_idx, align 4
  %53 = ptrtoint ptr %tmp.sroa.10.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tmp.sroa.10.0.ctl.sroa_idx, align 4
  %54 = ptrtoint ptr %tmp.sroa.10178.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @snd_ctl_boolean_mono_info, ptr %tmp.sroa.10178.0.ctl.sroa_idx, align 4
  %55 = ptrtoint ptr %tmp.sroa.11.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @spi_mute_get, ptr %tmp.sroa.11.0.ctl.sroa_idx, align 4
  %56 = ptrtoint ptr %tmp.sroa.12.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @spi_mute_put, ptr %tmp.sroa.12.0.ctl.sroa_idx, align 4
  %57 = ptrtoint ptr %tmp.sroa.13.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %tmp.sroa.13.0.ctl.sroa_idx, align 4
  %58 = ptrtoint ptr %tmp.sroa.13179.0.ctl.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i, ptr %tmp.sroa.13179.0.ctl.sroa_idx, align 4
  br i1 %tobool59.not, label %cleanup73.thread, label %if.end61

if.end61:                                         ; preds = %snd_ca0106_volume_spi_dac_ctl.exit
  %call62 = call ptr @snd_ctl_new1(ptr noundef nonnull %ctl, ptr noundef %emu) #6
  %call63 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call62) #6
  %cmp64 = icmp slt i32 %call63, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctl) #6
  br i1 %cmp64, label %if.end61.cleanup99_crit_edge, label %for.inc70

if.end61.cleanup99_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

for.inc70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %inc71 = add i32 %i56.0, 1
  br label %for.cond57

cleanup73.thread:                                 ; preds = %snd_ca0106_volume_spi_dac_ctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctl) #6
  br label %if.end76

if.end76:                                         ; preds = %cleanup73.thread, %if.end52.if.end76_crit_edge
  %call77 = call ptr @snd_ctl_make_virtual_master(ptr noundef nonnull @.str.22, ptr noundef nonnull @snd_ca0106_master_db_scale) #6
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end76.cleanup99_crit_edge, label %if.end80

if.end76.cleanup99_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.cleanup99_crit_edge, label %if.end84

if.end80.cleanup99_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end84:                                         ; preds = %if.end80
  %name1.i.i157 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i156, i32 0, i32 4
  %iface.i.i158 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i156, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %59 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %60 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.40, i32 29)
  %61 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i = icmp eq ptr %call2.i.i160, null
  br i1 %tobool1.not.i, label %if.end84.if.end.i_crit_edge, label %if.then.i161

if.end84.if.end.i_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i161:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i161, %if.end84.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %62 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %63 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.41, i32 28)
  %64 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.1 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.1 = icmp eq ptr %call2.i.i160.1, null
  br i1 %tobool1.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i161.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.1

if.then.i161.1:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.1 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.1, i32 noundef 0) #6
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i161.1, %if.end.i.if.end.i.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %65 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %66 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.42, i32 34)
  %67 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.2 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.2 = icmp eq ptr %call2.i.i160.2, null
  br i1 %tobool1.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i161.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.2

if.then.i161.2:                                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.2 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.2, i32 noundef 0) #6
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i161.2, %if.end.i.1.if.end.i.2_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %68 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %69 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.43, i32 28)
  %70 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.3 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.3 = icmp eq ptr %call2.i.i160.3, null
  br i1 %tobool1.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i161.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.3

if.then.i161.3:                                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.3 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.3, i32 noundef 0) #6
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i161.3, %if.end.i.2.if.end.i.3_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %71 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %72 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.44, i32 29)
  %73 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.4 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.4 = icmp eq ptr %call2.i.i160.4, null
  br i1 %tobool1.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i161.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.4

if.then.i161.4:                                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.4 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.4, i32 noundef 0) #6
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i161.4, %if.end.i.3.if.end.i.4_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %74 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %75 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.45, i32 28)
  %76 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.5 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.5 = icmp eq ptr %call2.i.i160.5, null
  br i1 %tobool1.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i161.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.5

if.then.i161.5:                                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.5 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.5, i32 noundef 0) #6
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i161.5, %if.end.i.4.if.end.i.5_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %77 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %78 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.46, i32 34)
  %79 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.6 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.6 = icmp eq ptr %call2.i.i160.6, null
  br i1 %tobool1.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i161.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.6

if.then.i161.6:                                   ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.6 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.6, i32 noundef 0) #6
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i161.6, %if.end.i.5.if.end.i.6_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %80 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %81 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.47, i32 31)
  %82 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.7 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.7 = icmp eq ptr %call2.i.i160.7, null
  br i1 %tobool1.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i161.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.7

if.then.i161.7:                                   ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.7 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.7, i32 noundef 0) #6
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i161.7, %if.end.i.6.if.end.i.7_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %83 = call ptr @memset(ptr %sid.i.i156, i32 0, i32 64)
  %84 = call ptr @memcpy(ptr %name1.i.i157, ptr @.str.48, i32 33)
  %85 = ptrtoint ptr %iface.i.i158 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %iface.i.i158, align 4
  %call2.i.i160.8 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i156) #6
  %tobool1.not.i.8 = icmp eq ptr %call2.i.i160.8, null
  br i1 %tobool1.not.i.8, label %if.end.i.7.if.end.i.8_crit_edge, label %if.then.i161.8

if.end.i.7.if.end.i.8_crit_edge:                  ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.8

if.then.i161.8:                                   ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i.8 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call77, ptr noundef nonnull %call2.i.i160.8, i32 noundef 0) #6
  br label %if.end.i.8

if.end.i.8:                                       ; preds = %if.then.i161.8, %if.end.i.7.if.end.i.8_crit_edge
  %86 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %details, align 4
  %spi_dac86 = getelementptr inbounds %struct.snd_ca0106_details, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %spi_dac86 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %spi_dac86, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool87.not = icmp eq i16 %89, 0
  br i1 %tobool87.not, label %if.end.i.8.if.end97_crit_edge, label %if.then88

if.end.i.8.if.end97_crit_edge:                    ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then88:                                        ; preds = %if.end.i.8
  %call89 = call ptr @snd_ctl_make_virtual_master(ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.then88.cleanup99_crit_edge, label %if.end92

if.then88.cleanup99_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end92:                                         ; preds = %if.then88
  %call93 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.cleanup99_crit_edge, label %if.end96

if.end92.cleanup99_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end96:                                         ; preds = %if.end92
  %name1.i.i164 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i163, i32 0, i32 4
  %iface.i.i165 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i163, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %90 = call ptr @memset(ptr %sid.i.i163, i32 0, i32 64)
  %91 = call ptr @memcpy(ptr %name1.i.i164, ptr @.str.73, i32 29)
  %92 = ptrtoint ptr %iface.i.i165 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %iface.i.i165, align 4
  %call2.i.i168 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i163) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %tobool1.not.i169 = icmp eq ptr %call2.i.i168, null
  br i1 %tobool1.not.i169, label %if.end96.if.end.i175_crit_edge, label %if.then.i172

if.end96.if.end.i175_crit_edge:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i175

if.then.i172:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i171 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call89, ptr noundef nonnull %call2.i.i168, i32 noundef 0) #6
  br label %if.end.i175

if.end.i175:                                      ; preds = %if.then.i172, %if.end96.if.end.i175_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %93 = call ptr @memset(ptr %sid.i.i163, i32 0, i32 64)
  %94 = call ptr @memcpy(ptr %name1.i.i164, ptr @.str.74, i32 28)
  %95 = ptrtoint ptr %iface.i.i165 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %iface.i.i165, align 4
  %call2.i.i168.1 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i163) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %tobool1.not.i169.1 = icmp eq ptr %call2.i.i168.1, null
  br i1 %tobool1.not.i169.1, label %if.end.i175.if.end.i175.1_crit_edge, label %if.then.i172.1

if.end.i175.if.end.i175.1_crit_edge:              ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i175.1

if.then.i172.1:                                   ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i171.1 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call89, ptr noundef nonnull %call2.i.i168.1, i32 noundef 0) #6
  br label %if.end.i175.1

if.end.i175.1:                                    ; preds = %if.then.i172.1, %if.end.i175.if.end.i175.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %96 = call ptr @memset(ptr %sid.i.i163, i32 0, i32 64)
  %97 = call ptr @memcpy(ptr %name1.i.i164, ptr @.str.75, i32 34)
  %98 = ptrtoint ptr %iface.i.i165 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %iface.i.i165, align 4
  %call2.i.i168.2 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i163) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %tobool1.not.i169.2 = icmp eq ptr %call2.i.i168.2, null
  br i1 %tobool1.not.i169.2, label %if.end.i175.1.if.end.i175.2_crit_edge, label %if.then.i172.2

if.end.i175.1.if.end.i175.2_crit_edge:            ; preds = %if.end.i175.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i175.2

if.then.i172.2:                                   ; preds = %if.end.i175.1
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i171.2 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call89, ptr noundef nonnull %call2.i.i168.2, i32 noundef 0) #6
  br label %if.end.i175.2

if.end.i175.2:                                    ; preds = %if.then.i172.2, %if.end.i175.1.if.end.i175.2_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %99 = call ptr @memset(ptr %sid.i.i163, i32 0, i32 64)
  %100 = call ptr @memcpy(ptr %name1.i.i164, ptr @.str.76, i32 28)
  %101 = ptrtoint ptr %iface.i.i165 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %iface.i.i165, align 4
  %call2.i.i168.3 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i163) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %tobool1.not.i169.3 = icmp eq ptr %call2.i.i168.3, null
  br i1 %tobool1.not.i169.3, label %if.end.i175.2.if.end.i175.3_crit_edge, label %if.then.i172.3

if.end.i175.2.if.end.i175.3_crit_edge:            ; preds = %if.end.i175.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i175.3

if.then.i172.3:                                   ; preds = %if.end.i175.2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i171.3 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call89, ptr noundef nonnull %call2.i.i168.3, i32 noundef 0) #6
  br label %if.end.i175.3

if.end.i175.3:                                    ; preds = %if.then.i172.3, %if.end.i175.2.if.end.i175.3_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %102 = call ptr @memset(ptr %sid.i.i163, i32 0, i32 64)
  %103 = call ptr @memcpy(ptr %name1.i.i164, ptr @.str.50, i32 23)
  %104 = ptrtoint ptr %iface.i.i165 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %iface.i.i165, align 4
  %call2.i.i168.4 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i163) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i163) #6
  %tobool1.not.i169.4 = icmp eq ptr %call2.i.i168.4, null
  br i1 %tobool1.not.i169.4, label %if.end.i175.3.if.end97_crit_edge, label %if.then.i172.4

if.end.i175.3.if.end97_crit_edge:                 ; preds = %if.end.i175.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then.i172.4:                                   ; preds = %if.end.i175.3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6.i171.4 = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call89, ptr noundef nonnull %call2.i.i168.4, i32 noundef 0) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then.i172.4, %if.end.i175.3.if.end97_crit_edge, %if.end.i.8.if.end97_crit_edge
  %mixername = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 6
  %105 = call ptr @memcpy(ptr %mixername, ptr @.str.39, i32 7)
  br label %cleanup99

cleanup99:                                        ; preds = %if.end97, %if.end92.cleanup99_crit_edge, %if.then88.cleanup99_crit_edge, %if.end80.cleanup99_crit_edge, %if.end76.cleanup99_crit_edge, %if.end61.cleanup99_crit_edge, %for.cond23.3.cleanup99_crit_edge, %for.cond23.2.cleanup99_crit_edge, %for.cond23.1.cleanup99_crit_edge, %for.cond23.cleanup99_crit_edge, %for.body25.preheader.cleanup99_crit_edge, %for.body10.cleanup99_crit_edge
  %retval.5 = phi i32 [ 0, %if.end97 ], [ %call47, %for.cond23.3.cleanup99_crit_edge ], [ -12, %if.end76.cleanup99_crit_edge ], [ %call81, %if.end80.cleanup99_crit_edge ], [ -12, %if.then88.cleanup99_crit_edge ], [ %call93, %if.end92.cleanup99_crit_edge ], [ %call28, %for.body25.preheader.cleanup99_crit_edge ], [ %call28.1, %for.cond23.cleanup99_crit_edge ], [ %call28.2, %for.cond23.1.cleanup99_crit_edge ], [ %call28.3, %for.cond23.2.cleanup99_crit_edge ], [ %call63, %if.end61.cleanup99_crit_edge ], [ %call13, %for.body10.cleanup99_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_make_virtual_master(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ca0106_mixer_suspend(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 106, i32 noundef 0) #6
  %arrayidx2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %arrayidx2, align 4
  %call.1 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 106, i32 noundef 3) #6
  %arrayidx2.1 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 1
  %1 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.1, ptr %arrayidx2.1, align 4
  %call.2 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 106, i32 noundef 1) #6
  %arrayidx2.2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.2, ptr %arrayidx2.2, align 4
  %call.3 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 106, i32 noundef 2) #6
  %arrayidx2.3 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 3
  %3 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.3, ptr %arrayidx2.3, align 4
  %call.4 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 102, i32 noundef 0) #6
  %arrayidx2.4 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 4
  %4 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.4, ptr %arrayidx2.4, align 4
  %call.5 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 102, i32 noundef 3) #6
  %arrayidx2.5 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 5
  %5 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.5, ptr %arrayidx2.5, align 4
  %call.6 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 102, i32 noundef 1) #6
  %arrayidx2.6 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 6
  %6 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.6, ptr %arrayidx2.6, align 4
  %call.7 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 102, i32 noundef 2) #6
  %arrayidx2.7 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 7
  %7 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.7, ptr %arrayidx2.7, align 4
  %call.8 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 113, i32 noundef 1) #6
  %arrayidx2.8 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 8
  %8 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.8, ptr %arrayidx2.8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ca0106_mixer_resume(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 106, i32 noundef 0, i32 noundef %1) #6
  %arrayidx2.1 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.1, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 106, i32 noundef 3, i32 noundef %3) #6
  %arrayidx2.2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.2, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 106, i32 noundef 1, i32 noundef %5) #6
  %arrayidx2.3 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 3
  %6 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.3, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 106, i32 noundef 2, i32 noundef %7) #6
  %arrayidx2.4 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 4
  %8 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.4, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 102, i32 noundef 0, i32 noundef %9) #6
  %arrayidx2.5 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 5
  %10 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.5, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 102, i32 noundef 3, i32 noundef %11) #6
  %arrayidx2.6 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 6
  %12 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.6, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 102, i32 noundef 1, i32 noundef %13) #6
  %arrayidx2.7 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 7
  %14 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.7, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 102, i32 noundef 2, i32 noundef %15) #6
  %arrayidx2.8 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 23, i32 8
  %16 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.8, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 113, i32 noundef 1, i32 noundef %17) #6
  tail call fastcc void @ca0106_spdif_enable(ptr noundef %chip)
  %capture_source.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 15
  %18 = ptrtoint ptr %capture_source.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capture_source.i, align 4
  %shl.i = shl i32 %19, 28
  %shl1.i = shl i32 %19, 24
  %or.i = or i32 %shl.i, %shl1.i
  %shl2.i = shl i32 %19, 20
  %or3.i = or i32 %or.i, %shl2.i
  %shl4.i = shl i32 %19, 16
  %or5.i = or i32 %or3.i, %shl4.i
  %call.i = tail call i32 @snd_ca0106_ptr_read(ptr noundef %chip, i32 noundef 96, i32 noundef 0) #6
  %and.i = and i32 %call.i, 65535
  %or6.i = or i32 %or5.i, %and.i
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 96, i32 noundef 0, i32 noundef %or6.i) #6
  %i2c_capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 16
  %20 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_capture_source, align 4
  %call.i24 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 21, i32 noundef 0) #6
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 17, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %23 to i32
  %call7.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 14, i32 noundef %conv.i) #6
  %arrayidx10.i = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 17, i32 %21, i32 1
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10.i, align 1
  %conv1147.i = zext i8 %25 to i32
  %call23.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 15, i32 noundef %conv1147.i) #6
  %shl.i25 = shl nuw i32 1, %21
  %call25.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 21, i32 noundef %shl.i25) #6
  %26 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %i2c_capture_source, align 4
  %arrayidx.i26 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 0
  %27 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i26, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 65, i32 noundef 0, i32 noundef %28) #6
  %arrayidx.i26.1 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %arrayidx.i26.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i26.1, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 66, i32 noundef 0, i32 noundef %30) #6
  %arrayidx.i26.2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %arrayidx.i26.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i26.2, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 67, i32 noundef 0, i32 noundef %32) #6
  %arrayidx.i26.3 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 3
  %33 = ptrtoint ptr %arrayidx.i26.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i26.3, align 4
  tail call void @snd_ca0106_ptr_write(ptr noundef %chip, i32 noundef 68, i32 noundef 0, i32 noundef %34) #6
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 1
  %35 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %details, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_ca0106_details, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2c_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %capture_mic_line_in.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 18
  %39 = ptrtoint ptr %capture_mic_line_in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capture_mic_line_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  %port11.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 3
  %41 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port11.i, align 4
  %add12.i = add i32 %42, 24
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %43 = inttoptr i32 %add14.i to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %45 = or i32 %44, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port11.i, align 4
  %add6.i = add i32 %47, 24
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %48 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #6, !srcloc !203
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %49 = and i32 %44, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port11.i, align 4
  %add23.i = add i32 %51, 24
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %52 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #6, !srcloc !203
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ca0106_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca0106_spdif_enable(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spdif_enable = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 14
  %0 = ptrtoint ptr %spdif_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spdif_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  tail call void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef 69, i32 noundef 0, i32 noundef 15) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef 114, i32 noundef 0, i32 noundef 184549376) #6
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %emu, i32 noundef 113, i32 noundef 0) #6
  %and = and i32 %call, -4097
  tail call void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef 113, i32 noundef 0, i32 noundef %and) #6
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 24
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  %6 = and i32 %5, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add7 = add i32 %8, 24
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %9 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !203
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef 114, i32 noundef 0, i32 noundef 983040) #6
  %call11 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %emu, i32 noundef 113, i32 noundef 0) #6
  %or = or i32 %call11, 4096
  tail call void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef 113, i32 noundef 0, i32 noundef %or) #6
  %port13 = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %10 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port13, align 4
  %add14 = add i32 %11, 24
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %12 = inttoptr i32 %add16 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %14 = or i32 %13, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port13, align 4
  %add25 = add i32 %16, 24
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %17 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #6, !srcloc !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ca0106_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ca0106_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %and2, i32 noundef %and) #6
  %4 = xor i32 %call, -1
  %sub = lshr i32 %4, 24
  %value5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %value5, align 8
  %shr6 = lshr i32 %call, 16
  %and7 = and i32 %shr6, 255
  %sub8 = xor i32 %and7, 255
  %arrayidx10 = getelementptr [128 x i32], ptr %value5, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub8, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %and2, i32 noundef %and) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %sub = sub i32 255, %5
  %shl = shl i32 %sub, 24
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %sub5 = sub i32 255, %7
  %shl6 = shl i32 %sub5, 16
  %shl10 = shl i32 %sub, 8
  %or = or i32 %shl10, %sub5
  %or14 = or i32 %or, %shl
  %or15 = or i32 %or14, %shl6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or15)
  %cmp = icmp eq i32 %call, %or15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_ca0106_ptr_write(ptr noundef %1, i32 noundef %and2, i32 noundef %and, i32 noundef %or15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ca0106_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ca0106_spdif_get_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ca0106_shared_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spdif_enable = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %spdif_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_enable, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_shared_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %tobool = icmp ne i32 %3, 0
  %lnot.ext = zext i1 %tobool to i32
  %spdif_enable = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %spdif_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_enable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lnot.ext)
  %cmp = icmp ne i32 %5, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %spdif_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %spdif_enable, align 4
  tail call fastcc void @ca0106_spdif_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 6, ptr noundef nonnull @snd_ca0106_capture_source_info.texts) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ca0106_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %capture_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %capture_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %capture_source to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %capture_source, align 4
  %shl.i = shl nuw nsw i32 %3, 28
  %shl1.i = shl nuw nsw i32 %3, 24
  %or.i = or i32 %shl.i, %shl1.i
  %shl2.i = shl nuw nsw i32 %3, 20
  %or3.i = or i32 %or.i, %shl2.i
  %shl4.i = shl nuw nsw i32 %3, 16
  %or5.i = or i32 %or3.i, %shl4.i
  %call.i = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef 96, i32 noundef 0) #6
  %and.i = and i32 %call.i, 65535
  %or6.i = or i32 %or5.i, %and.i
  tail call void @snd_ca0106_ptr_write(ptr noundef %1, i32 noundef 96, i32 noundef 0, i32 noundef %or6.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_i2c_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_ca0106_i2c_capture_source_info.texts) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ca0106_i2c_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i2c_capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_capture_source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_i2c_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 21, i32 noundef 0) #6
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 2
  %8 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_capture_source, align 4
  %arrayidx3.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %9
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %11)
  %cmp.not.i = icmp eq i8 %7, %11
  br i1 %cmp.not.i, label %if.then2.lor.lhs.false18.i_crit_edge, label %if.end.thread49.i

if.then2.lor.lhs.false18.i_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false18.i

if.end.thread49.i:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %7 to i32
  %call750.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 14, i32 noundef %conv.i) #6
  br label %lor.lhs.false18.i

lor.lhs.false18.i:                                ; preds = %if.end.thread49.i, %if.then2.lor.lhs.false18.i_crit_edge
  %.in.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3, i32 1
  %12 = ptrtoint ptr %.in.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %.in.i, align 1
  %14 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i2c_capture_source, align 4
  %arrayidx15.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %15, i32 1
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp19.not.i = icmp eq i8 %13, %17
  br i1 %cmp19.not.i, label %lor.lhs.false18.i.ca0106_set_i2c_capture_source.exit_crit_edge, label %if.then21.i

lor.lhs.false18.i.ca0106_set_i2c_capture_source.exit_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ca0106_set_i2c_capture_source.exit

if.then21.i:                                      ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1147.i = zext i8 %13 to i32
  %call23.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 15, i32 noundef %conv1147.i) #6
  br label %ca0106_set_i2c_capture_source.exit

ca0106_set_i2c_capture_source.exit:               ; preds = %if.then21.i, %lor.lhs.false18.i.ca0106_set_i2c_capture_source.exit_crit_edge
  %shl.i = shl nuw nsw i32 1, %3
  %call25.i = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 21, i32 noundef %shl.i) #6
  %18 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %3, ptr %i2c_capture_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %ca0106_set_i2c_capture_source.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %ca0106_set_i2c_capture_source.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_spdif_get_default(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !210
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 12, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %value, align 1
  %shr1.i = lshr i32 %10, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr i8, ptr %value, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %shr5.i = lshr i32 %10, 16
  %conv7.i = trunc i32 %shr5.i to i8
  %arrayidx8.i = getelementptr i8, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %shr9.i = lshr i32 %10, 24
  %conv11.i = trunc i32 %shr9.i to i8
  %arrayidx12.i = getelementptr i8, ptr %value, i32 3
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_spdif_put_default(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !210
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %conv.i = zext i8 %10 to i32
  %arrayidx1.i = getelementptr i8, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  %arrayidx4.i = getelementptr i8, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %value, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %16 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %or11.i = or i32 %or7.i, %shl10.i
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 12, i32 %and.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i, i32 %18)
  %cmp.not = icmp eq i32 %or11.i, %18
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or11.i, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 13, i32 %and.i
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or11.i, ptr %arrayidx4, align 4
  %add.i = add i32 %and.i, 65
  tail call void @snd_ca0106_ptr_write(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef %or11.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_spdif_get_stream(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !210
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 13, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %value, align 1
  %shr1.i = lshr i32 %10, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr i8, ptr %value, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %shr5.i = lshr i32 %10, 16
  %conv7.i = trunc i32 %shr5.i to i8
  %arrayidx8.i = getelementptr i8, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %shr9.i = lshr i32 %10, 24
  %conv11.i = trunc i32 %shr9.i to i8
  %arrayidx12.i = getelementptr i8, ptr %value, i32 3
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_spdif_put_stream(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !210
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %conv.i = zext i8 %10 to i32
  %arrayidx1.i = getelementptr i8, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  %arrayidx4.i = getelementptr i8, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %value, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %16 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %or11.i = or i32 %or7.i, %shl10.i
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 13, i32 %and.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i, i32 %18)
  %cmp.not = icmp eq i32 %or11.i, %18
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or11.i, ptr %arrayidx, align 4
  %add.i = add i32 %and.i, 65
  tail call void @snd_ca0106_ptr_write(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef %or11.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ca0106_i2c_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ca0106_i2c_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv6, ptr %arrayidx8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_i2c_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp4.not = icmp eq i32 %5, %conv
  br i1 %cmp4.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %i2c_capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp7 = icmp eq i32 %9, %3
  br i1 %cmp7, label %if.then9, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 14, i32 noundef %5) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %conv13 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.end10, %if.end.if.end17_crit_edge
  %change.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.end.if.end17_crit_edge ]
  %arrayidx20 = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 17, i32 %3, i32 1
  %arrayidx23 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp24 = icmp ugt i32 %14, 255
  br i1 %cmp24, label %if.end17.cleanup_crit_edge, label %if.end27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv21)
  %cmp28.not = icmp eq i32 %14, %conv21
  br i1 %cmp28.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  %i2c_capture_source31 = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %i2c_capture_source31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_capture_source31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %3)
  %cmp32 = icmp eq i32 %18, %3
  br i1 %cmp32, label %if.then34, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 15, i32 noundef %14) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then30.if.end37_crit_edge
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %conv40 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv40, ptr %arrayidx20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end27.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ 1, %if.end37 ], [ %change.0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_i2c_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_capture_mic_line_in_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_ca0106_capture_mic_line_in_info.texts) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ca0106_capture_mic_line_in_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_mic_line_in = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %capture_mic_line_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_mic_line_in, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_capture_mic_line_in_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %capture_mic_line_in = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %capture_mic_line_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_mic_line_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %capture_mic_line_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %capture_mic_line_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %port11.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port11.i, align 4
  %add12.i = add i32 %8, 24
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %9 = inttoptr i32 %add14.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i32 %10, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port11.i, align 4
  %add6.i = add i32 %13, 24
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %14 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !203
  br label %cleanup

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %15 = and i32 %10, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port11.i, align 4
  %add23.i = add i32 %17, 24
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %18 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #6, !srcloc !203
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_capture_line_in_side_out_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_ca0106_capture_line_in_side_out_info.texts) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spi_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 9
  %and = and i32 %3, 511
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 22, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %and2 = and i32 %and, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 9
  %and = and i32 %3, 511
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 22, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %and2 = and i32 %and, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool11.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool11.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i32 %and to i16
  %9 = xor i16 %8, -1
  %conv10 = and i16 %5, %9
  br label %if.end18

if.else:                                          ; preds = %entry
  br i1 %tobool11.not, label %if.end13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %and to i16
  %conv17 = or i16 %5, %10
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.end
  %storemerge = phi i16 [ %conv17, %if.end13 ], [ %conv10, %if.end ]
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %storemerge, ptr %arrayidx, align 2
  %conv21 = zext i16 %storemerge to i32
  %call = tail call i32 @snd_ca0106_spi_write(ptr noundef %1, i32 noundef %conv21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool22.not, i32 1, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end18 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_spi_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_ctl_add_follower(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 781, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 782, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 783, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 784, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 785, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 786, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 787, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 788, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 789, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 790, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 791, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 792, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 793, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 794, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 795, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 796, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 797, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 798, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 799, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 800, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 801, i32 3}
!42 = !{ptr @snd_ca0106_mixer.ca0106_remove_ctls, !43, !"ca0106_remove_ctls", i1 false, i1 false}
!43 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 780, i32 28}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 805, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 806, i32 3}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 807, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 807, i32 27}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 808, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 808, i32 27}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 809, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 809, i32 26}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 810, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 810, i32 26}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 811, i32 3}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 811, i32 26}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 812, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 812, i32 26}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 813, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 813, i32 17}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 814, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 814, i32 24}
!80 = !{ptr @snd_ca0106_mixer.ca0106_rename_ctls, !81, !"ca0106_rename_ctls", i1 false, i1 false}
!81 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 804, i32 28}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 868, i32 26}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 554, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 556, i32 9}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 558, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 560, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 563, i32 9}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 565, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 567, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 569, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 572, i32 9}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 578, i32 19}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 585, i32 12}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 592, i32 12}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 599, i32 12}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 606, i32 19}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 614, i32 19}
!114 = !{ptr @snd_ca0106_volume_ctls, !115, !"snd_ca0106_volume_ctls", i1 false, i1 false}
!115 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 553, i32 38}
!116 = !{ptr @snd_ca0106_db_scale1, !117, !"snd_ca0106_db_scale1", i1 false, i1 false}
!117 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 141, i32 14}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 3}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 17}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 34}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 47}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 57}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 175, i32 68}
!130 = !{ptr @snd_ca0106_capture_source_info.texts, !131, !"texts", i1 false, i1 false}
!131 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 174, i32 28}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 212, i32 3}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 212, i32 12}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 212, i32 19}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 212, i32 30}
!140 = !{ptr @snd_ca0106_i2c_capture_source_info.texts, !141, !"texts", i1 false, i1 false}
!141 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 211, i32 28}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 635, i32 9}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 636, i32 9}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 637, i32 9}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 638, i32 9}
!150 = !{ptr @snd_ca0106_volume_i2c_adc_ctls, !151, !"snd_ca0106_volume_i2c_adc_ctls", i1 false, i1 false}
!151 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 634, i32 38}
!152 = !{ptr @snd_ca0106_db_scale2, !153, !"snd_ca0106_db_scale2", i1 false, i1 false}
!153 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 142, i32 14}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 293, i32 11}
!156 = !{ptr @snd_ca0106_capture_mic_line_in, !157, !"snd_ca0106_capture_mic_line_in", i1 false, i1 false}
!157 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 290, i32 38}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 258, i32 52}
!160 = !{ptr @snd_ca0106_capture_mic_line_in_info.texts, !161, !"texts", i1 false, i1 false}
!161 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 258, i32 28}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 302, i32 11}
!164 = !{ptr @snd_ca0106_capture_line_in_side_out, !165, !"snd_ca0106_capture_line_in_side_out", i1 false, i1 false}
!165 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 299, i32 38}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 250, i32 41}
!168 = !{ptr @snd_ca0106_capture_line_in_side_out_info.texts, !169, !"texts", i1 false, i1 false}
!169 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 250, i32 28}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 672, i32 21}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 676, i32 21}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 680, i32 21}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 684, i32 21}
!178 = !{ptr @spi_dmute_reg, !179, !"spi_dmute_reg", i1 false, i1 false}
!179 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 641, i32 18}
!180 = !{ptr @spi_dmute_bit, !181, !"spi_dmute_bit", i1 false, i1 false}
!181 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 648, i32 18}
!182 = !{ptr @snd_ca0106_master_db_scale, !183, !"snd_ca0106_master_db_scale", i1 false, i1 false}
!183 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 740, i32 1}
!184 = distinct !{null, !185, !"follower_vols", i1 false, i1 false}
!185 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 742, i32 27}
!186 = distinct !{null, !187, !"follower_sws", i1 false, i1 false}
!187 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 755, i32 27}
!188 = distinct !{null, !189, !"saved_volumes", i1 false, i1 false}
!189 = !{!"../sound/pci/ca0106/ca0106_mixer.c", i32 878, i32 36}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"snd_ca0106_volume_spi_dac_ctl: %agg.result"}
!201 = distinct !{!201, !"snd_ca0106_volume_spi_dac_ctl"}
!202 = !{i64 2154382811}
!203 = !{i64 4230924}
!204 = !{i64 2154383962}
!205 = !{i64 4231342}
!206 = !{i64 2154380170}
!207 = !{i64 2154380428}
!208 = !{i64 2154381347}
!209 = !{i64 2154381605}
!210 = !{i64 662155, i64 662172}
