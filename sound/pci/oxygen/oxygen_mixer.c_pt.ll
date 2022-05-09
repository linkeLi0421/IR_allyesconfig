; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/oxygen_mixer.c_pt.bc'
source_filename = "../sound/pci/oxygen/oxygen_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+oxygen_update_dac_routing\22, \22a\22\09"
module asm "\09.weak\09__crc_oxygen_update_dac_routing\09\09\09\09"
module asm "\09.long\09__crc_oxygen_update_dac_routing\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oxygen_update_dac_routing:\09\09\09\09\09"
module asm "\09.asciz \09\22oxygen_update_dac_routing\22\09\09\09\09\09"
module asm "__kstrtabns_oxygen_update_dac_routing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32, [2 x %struct.snd_kcontrol_new] }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.83, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.83 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@oxygen_update_dac_routing.reg_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 58368, i32 57344, i32 8192, i32 49152, i32 0], [44 x i8] zeroinitializer }, align 32
@__kstrtab_oxygen_update_dac_routing = external dso_local constant [0 x i8], align 1
@__kstrtabns_oxygen_update_dac_routing = external dso_local constant [0 x i8], align 1
@__ksymtab_oxygen_update_dac_routing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oxygen_update_dac_routing to i32), ptr @__kstrtab_oxygen_update_dac_routing, ptr @__kstrtabns_oxygen_update_dac_routing }, section "___ksymtab+oxygen_update_dac_routing", align 4
@controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 3, i32 0, ptr @dac_volume_info, ptr @dac_volume_get, ptr @dac_volume_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @dac_mute_get, ptr @dac_mute_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @upmix_info, ptr @upmix_get, ptr @upmix_put, %union.anon.84 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@spdif_output_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @spdif_switch_get, ptr @spdif_switch_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 1, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @spdif_info, ptr @spdif_default_get, ptr @spdif_default_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 1, i32 0, ptr @.str.18, i32 0, i32 1, i32 0, ptr @spdif_info, ptr @spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 1, i32 0, ptr @.str, i32 0, i32 259, i32 0, ptr @spdif_info, ptr @spdif_pcm_get, ptr @spdif_pcm_put, %union.anon.84 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@spdif_input_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 1, i32 0, ptr @.str.19, i32 0, i32 1, i32 0, ptr @spdif_info, ptr @spdif_input_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 1, i32 0, ptr @.str.1, i32 0, i32 1, i32 0, ptr @spdif_info, ptr @spdif_input_default_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @spdif_bit_switch_get, ptr @spdif_bit_switch_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @spdif_bit_switch_get, ptr @spdif_bit_switch_put, %union.anon.84 zeroinitializer, i32 64 }], [32 x i8] zeroinitializer }, align 32
@monitor_controls = internal constant { [5 x %struct.anon.85], [108 x i8] } { [5 x %struct.anon.85] [%struct.anon.85 { i32 16, [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @monitor_volume_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 { ptr @monitor_db_scale }, i32 258 }] }, %struct.anon.85 { i32 32, [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @monitor_volume_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 { ptr @monitor_db_scale }, i32 264 }] }, %struct.anon.85 { i32 256, [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 1, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 1, i32 19, i32 0, ptr @monitor_volume_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 { ptr @monitor_db_scale }, i32 264 }] }, %struct.anon.85 { i32 1024, [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 2, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 2, i32 19, i32 0, ptr @monitor_volume_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 { ptr @monitor_db_scale }, i32 288 }] }, %struct.anon.85 { i32 128, [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @monitor_volume_info, ptr @monitor_get, ptr @monitor_put, %union.anon.84 { ptr @monitor_db_scale }, i32 288 }] }], [108 x i8] zeroinitializer }, align 32
@ac97_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @ac97_volume_info, ptr @ac97_volume_get, ptr @ac97_volume_put, %union.anon.84 { ptr @ac97_db_scale }, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 69390 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 1550 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @mic_fmic_source_info, ptr @mic_fmic_source_get, ptr @mic_fmic_source_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 69392 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @ac97_volume_info, ptr @ac97_volume_get, ptr @ac97_volume_put, %union.anon.84 { ptr @ac97_db_scale }, i32 65554 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 69394 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @ac97_volume_info, ptr @ac97_volume_get, ptr @ac97_volume_put, %union.anon.84 { ptr @ac97_db_scale }, i32 65558 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 69398 }], [112 x i8] zeroinitializer }, align 32
@ac97_fp_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @ac97_volume_info, ptr @ac97_volume_get, ptr @ac97_volume_put, %union.anon.84 { ptr @ac97_db_scale }, i32 16842756 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 16846596 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @ac97_fp_rec_volume_info, ptr @ac97_fp_rec_volume_get, ptr @ac97_fp_rec_volume_put, %union.anon.84 { ptr @ac97_rec_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @ac97_switch_get, ptr @ac97_switch_put, %union.anon.84 zeroinitializer, i32 16846620 }], [32 x i8] zeroinitializer }, align 32
@add_controls.known_ctl_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo Upmixing\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mic Source Capture Enum\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CD Capture \00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@upmix_info.names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Front\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Front+Surround\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Front+Surround+Back\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Front+Surround+Center/LFE\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Front+Surround+Center/LFE+Back\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Loopback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IEC958 Validity Check Capture Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Analog Input Monitor Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Analog Input Monitor Playback Volume\00", [59 x i8] zeroinitializer }, align 32
@monitor_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Digital Input Monitor Playback Switch\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Digital Input Monitor Playback Volume\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@ac97_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Boost (+20dB)\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@mic_fmic_source_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Jack\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Panel\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Front Panel Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Front Panel Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Front Panel Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@ac97_rec_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Front Panel Capture Switch\00", [37 x i8] zeroinitializer }, align 32
@switch.table.oxygen_update_spdif_source = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12288, i32 0, i32 8192, i32 45056, i32 32768, i32 40960, i32 49152, i32 57344], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 8, i64 14, i64 16, i64 18, i64 20, i64 22]
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"reg_values\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 126, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 754, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"spdif_output_controls\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 779, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"spdif_input_controls\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 815, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"monitor_controls\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 853, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"ac97_controls\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 985, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"ac97_fp_controls\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1003, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"known_ctl_names\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1033, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1035, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1037, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1038, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1039, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1040, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1041, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1057, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1060, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1063, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1066, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 765, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 100, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 101, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 102, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 103, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 104, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 105, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 782, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 790, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 798, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 819, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 834, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 842, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 859, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 867, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"monitor_db_scale\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 750, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 963, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 971, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 986, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"ac97_db_scale\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 751, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 988, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 997, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 999, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 649, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 649, i32 39 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 649, i32 51 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1004, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1005, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1008, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"ac97_rec_db_scale\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 752, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [35 x i8] c"../sound/pci/oxygen/oxygen_mixer.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1016, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [40 x i8] c"switch.table.oxygen_update_spdif_source\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__ksymtab_oxygen_update_dac_routing, ptr @oxygen_update_dac_routing.reg_values, ptr @controls, ptr @spdif_output_controls, ptr @spdif_input_controls, ptr @monitor_controls, ptr @ac97_controls, ptr @ac97_fp_controls, ptr @add_controls.known_ctl_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @upmix_info.names, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @monitor_db_scale, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ac97_db_scale, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mic_fmic_source_info.names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ac97_rec_db_scale, ptr @.str.35, ptr @switch.table.oxygen_update_spdif_source], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_update_dac_routing.reg_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_output_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_input_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_controls to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_fp_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_controls.known_ctl_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upmix_info.names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_fmic_source_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_rec_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.oxygen_update_spdif_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oxygen_update_dac_routing(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef 67) #8
  %trunc = trunc i8 %call to i2
  %0 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.else8 [
    i2 0, label %if.then
    i2 -1, label %entry.if.end9_crit_edge
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dac_routing = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 13
  %1 = ptrtoint ptr %dac_routing to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dac_routing, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [5 x i32], ptr @oxygen_update_dac_routing.reg_values, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  br label %if.end9

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then, %entry.if.end9_crit_edge
  %reg_value.0 = phi i32 [ %4, %if.then ], [ 58368, %if.else8 ], [ 27648, %entry.if.end9_crit_edge ]
  %adjust_dac_routing = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 15
  %5 = ptrtoint ptr %adjust_dac_routing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adjust_dac_routing, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end9.if.end14_crit_edge, label %if.then10

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 %6(ptr noundef %chip, i32 noundef %reg_value.0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end9.if.end14_crit_edge
  %reg_value.1 = phi i32 [ %call13, %if.then10 ], [ %reg_value.0, %if.end9.if.end14_crit_edge ]
  %conv15 = trunc i32 %reg_value.1 to i16
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 192, i16 noundef zeroext %conv15, i16 noundef zeroext -256) #8
  %update_center_lfe_mix = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 14
  %7 = ptrtoint ptr %update_center_lfe_mix to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %update_center_lfe_mix, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end14.if.end25_crit_edge, label %if.then18

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dac_routing21 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 13
  %9 = ptrtoint ptr %dac_routing21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dac_routing21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp23 = icmp ugt i8 %10, 2
  tail call void %8(ptr noundef %chip, i1 noundef zeroext %cmp23) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end14.if.end25_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @oxygen_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oxygen_update_spdif_source(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @oxygen_read32(ptr noundef %chip, i32 noundef 112) #8
  %call1 = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 192) #8
  %pcm_active = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcm_active, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = and i16 %call1, -225
  %shr = lshr i32 %call, 24
  %and6 = and i32 %shr, 7
  br label %if.end26

if.else:                                          ; preds = %entry
  %and9 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end26.thread_crit_edge, label %land.lhs.true

if.else.if.end26.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread

land.lhs.true:                                    ; preds = %if.else
  %spdif_playback_enable = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 14
  %3 = ptrtoint ptr %spdif_playback_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %spdif_playback_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end26.thread_crit_edge, label %if.then13

land.lhs.true.if.end26.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %call1, -225
  %6 = or i16 %5, 32
  %call18 = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 96) #8
  %7 = and i16 %call18, 7
  %and20 = zext i16 %7 to i32
  %and21 = and i32 %call, -117440515
  %shl = shl nuw nsw i32 %and20, 24
  %or22 = or i32 %shl, %and21
  br label %if.end26

if.end26.thread:                                  ; preds = %land.lhs.true.if.end26.thread_crit_edge, %if.else.if.end26.thread_crit_edge
  %and25 = and i32 %call, -3
  br label %if.end32

if.end26:                                         ; preds = %if.then13, %if.then
  %new_control.0.in = phi i32 [ %call, %if.then ], [ %or22, %if.then13 ]
  %new_routing.0 = phi i16 [ %2, %if.then ], [ %6, %if.then13 ]
  %oxygen_rate.0 = phi i32 [ %and6, %if.then ], [ %and20, %if.then13 ]
  %new_control.0 = or i32 %new_control.0.in, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call1, i16 %new_routing.0)
  %cmp.not = icmp eq i16 %call1, %new_routing.0
  br i1 %cmp.not, label %if.end26.if.end32_crit_edge, label %if.then30

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = and i32 %new_control.0.in, -3
  tail call void @oxygen_write32(ptr noundef %chip, i32 noundef 112, i32 noundef %and31) #8
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 192, i16 noundef zeroext %new_routing.0) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge, %if.end26.thread
  %oxygen_rate.070 = phi i32 [ 1, %if.end26.thread ], [ %oxygen_rate.0, %if.then30 ], [ %oxygen_rate.0, %if.end26.if.end32_crit_edge ]
  %new_control.069 = phi i32 [ %and25, %if.end26.thread ], [ %new_control.0, %if.then30 ], [ %new_control.0, %if.end26.if.end32_crit_edge ]
  %and33 = and i32 %new_control.069, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %switch.lookup

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

switch.lookup:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.oxygen_update_spdif_source, i32 0, i32 %oxygen_rate.070
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %9 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcm_active, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool40.not = icmp eq i8 %11, 0
  %spdif_pcm_bits = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 18
  %spdif_bits = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 17
  %cond.in = select i1 %tobool40.not, ptr %spdif_bits, ptr %spdif_pcm_bits
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  %or41 = or i32 %cond, %switch.load
  tail call void @oxygen_write32(ptr noundef %chip, i32 noundef 116, i32 noundef %or41) #8
  br label %if.end42

if.end42:                                         ; preds = %switch.lookup, %if.end32.if.end42_crit_edge
  tail call void @oxygen_write32(ptr noundef %chip, i32 noundef 112, i32 noundef %new_control.069) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oxygen_mixer_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef nonnull @controls, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_config = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %0 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_config, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef nonnull @spdif_output_controls, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %2 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_config, align 4
  %and9 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end6.if.end16_crit_edge, label %if.then11

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end6
  %call12 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef nonnull @spdif_input_controls, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %4 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_config, align 4
  %and20 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end16.for.inc_crit_edge, label %if.end23

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %if.end16
  %call25 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef getelementptr inbounds ([5 x %struct.anon.85], ptr @monitor_controls, i32 0, i32 0, i32 1), i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %6 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_config, align 4
  %and20.1 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end23.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end23.1:                                       ; preds = %for.inc
  %call25.1 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef getelementptr inbounds ([5 x %struct.anon.85], ptr @monitor_controls, i32 0, i32 1, i32 1), i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.1 = icmp slt i32 %call25.1, 0
  br i1 %cmp26.1, label %if.end23.1.cleanup_crit_edge, label %if.end23.1.for.inc.1_crit_edge

if.end23.1.for.inc.1_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end23.1.cleanup_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %if.end23.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %8 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_config, align 4
  %and20.2 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end23.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end23.2:                                       ; preds = %for.inc.1
  %call25.2 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef getelementptr inbounds ([5 x %struct.anon.85], ptr @monitor_controls, i32 0, i32 2, i32 1), i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %cmp26.2 = icmp slt i32 %call25.2, 0
  br i1 %cmp26.2, label %if.end23.2.cleanup_crit_edge, label %if.end23.2.for.inc.2_crit_edge

if.end23.2.for.inc.2_crit_edge:                   ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end23.2.cleanup_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %if.end23.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %10 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_config, align 4
  %and20.3 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end23.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end23.3:                                       ; preds = %for.inc.2
  %call25.3 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef getelementptr inbounds ([5 x %struct.anon.85], ptr @monitor_controls, i32 0, i32 3, i32 1), i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %cmp26.3 = icmp slt i32 %call25.3, 0
  br i1 %cmp26.3, label %if.end23.3.cleanup_crit_edge, label %if.end23.3.for.inc.3_crit_edge

if.end23.3.for.inc.3_crit_edge:                   ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end23.3.cleanup_crit_edge:                     ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %if.end23.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %12 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_config, align 4
  %and20.4 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end23.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end23.4:                                       ; preds = %for.inc.3
  %call25.4 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef getelementptr inbounds ([5 x %struct.anon.85], ptr @monitor_controls, i32 0, i32 4, i32 1), i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4)
  %cmp26.4 = icmp slt i32 %call25.4, 0
  br i1 %cmp26.4, label %if.end23.4.cleanup_crit_edge, label %if.end23.4.for.inc.4_crit_edge

if.end23.4.for.inc.4_crit_edge:                   ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end23.4.cleanup_crit_edge:                     ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4:                                        ; preds = %if.end23.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %has_ac97_0 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 15
  %14 = ptrtoint ptr %has_ac97_0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_ac97_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool29.not = icmp eq i8 %15, 0
  br i1 %tobool29.not, label %for.inc.4.if.end35_crit_edge, label %if.then30

for.inc.4.if.end35_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %for.inc.4
  %call31 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef nonnull @ac97_controls, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then30.cleanup_crit_edge, label %if.then30.if.end35_crit_edge

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %for.inc.4.if.end35_crit_edge
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 16
  %16 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool36.not = icmp eq i8 %17, 0
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %if.then37

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then37:                                        ; preds = %if.end35
  %call38 = tail call fastcc i32 @add_controls(ptr noundef %chip, ptr noundef nonnull @ac97_fp_controls, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then37.cleanup_crit_edge, label %if.then37.if.end42_crit_edge

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %mixer_init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %18 = ptrtoint ptr %mixer_init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mixer_init, align 4
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %cond.true

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 %19(ptr noundef %chip) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end42.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end23.4.cleanup_crit_edge, %if.end23.3.cleanup_crit_edge, %if.end23.2.cleanup_crit_edge, %if.end23.1.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ], [ %call47, %cond.true ], [ 0, %if.end42.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call25.1, %if.end23.1.cleanup_crit_edge ], [ %call25.2, %if.end23.2.cleanup_crit_edge ], [ %call25.3, %if.end23.3.cleanup_crit_edge ], [ %call25.4, %if.end23.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_controls(ptr noundef %chip, ptr nocapture noundef readonly %controls, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %template = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %template) #8
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp86.not = icmp eq i32 %count, 0
  br i1 %cmp86.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %control_filter = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 4
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 3
  %dac_channels_pcm = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %device_config = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %dac_tlv = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 20
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 10
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.087
  %0 = call ptr @memcpy(ptr %template, ptr %arrayidx, i32 48)
  %1 = ptrtoint ptr %control_filter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %control_filter, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end8_crit_edge, label %if.then

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %for.body
  %call = call i32 %2(ptr noundef nonnull %template) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp5 = icmp eq i32 %call, 1
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call9 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %5 = ptrtoint ptr %dac_channels_pcm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dac_channels_pcm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp12 = icmp eq i8 %6, 2
  br i1 %cmp12, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call17 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(24) @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true19:                                  ; preds = %if.end15
  %7 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_config, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %land.lhs.true19.for.inc_crit_edge, label %land.lhs.true19.if.end23_crit_edge

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %land.lhs.true19.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %call25 = call i32 @strncmp(ptr noundef %4, ptr noundef nonnull dereferenceable(12) @.str.8, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true27:                                  ; preds = %if.end23
  %9 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_config, align 4
  %and30 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.if.end33_crit_edge

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end33:                                         ; preds = %land.lhs.true27.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %call35 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(23) @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true37:                                  ; preds = %if.end33
  %11 = ptrtoint ptr %dac_tlv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dac_tlv, align 4
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %land.lhs.true37.if.end43_crit_edge, label %if.then40

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %tlv, align 4
  %14 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access, align 4
  %or = or i32 %15, 16
  store i32 %or, ptr %access, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true37.if.end43_crit_edge, %if.end33.if.end43_crit_edge
  %call44 = call ptr @snd_ctl_new1(ptr noundef nonnull %template, ptr noundef %chip) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call48 = call i32 @snd_ctl_add(ptr noundef %17, ptr noundef nonnull %call44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.cleanup_crit_edge, label %if.end52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %name53 = getelementptr inbounds %struct.snd_kcontrol, ptr %call44, i32 0, i32 1, i32 4
  %call54 = call i32 @match_string(ptr noundef nonnull @add_controls.known_ctl_names, i32 noundef 6, ptr noundef %name53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %if.then57, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx59 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 20, i32 %call54
  %18 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call44, ptr %arrayidx59, align 4
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call44, i32 0, i32 9
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @oxygen_any_ctl_free, ptr %private_free, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.end52.for.inc_crit_edge, %land.lhs.true27.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ -12, %if.end43.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %template) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_any_ctl_free(ptr nocapture noundef readonly %ctl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %uglygep = getelementptr i8, ptr %1, i32 212
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 24)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dac_volume_info(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 24
  %3 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac_channels_mixer, align 1
  %conv = zext i8 %4 to i32
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %count, align 8
  %dac_volume_min = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 25
  %6 = ptrtoint ptr %dac_volume_min to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac_volume_min, align 2
  %conv2 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %value, align 8
  %dac_volume_max = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 26
  %9 = ptrtoint ptr %dac_volume_max to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dac_volume_max, align 1
  %conv4 = zext i8 %10 to i32
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_volume_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 24
  %2 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13.not = icmp eq i8 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.oxygen, ptr %1, i32 0, i32 9, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %arrayidx4 = getelementptr [128 x i32], ptr %value3, i32 0, i32 %i.014
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %7 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_channels_mixer, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_volume_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 24
  %2 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp30.not = icmp eq i8 %3, 0
  br i1 %cmp30.not, label %entry.if.end14_crit_edge, label %for.body.lr.ph

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.lr.ph:                                   ; preds = %entry
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %changed.032 = phi i32 [ 0, %for.body.lr.ph ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value2, i32 0, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 9, i32 %i.031
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv4)
  %cmp5.not = icmp eq i32 %5, %conv4
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = trunc i32 %5 to i8
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then ], [ %changed.032, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.031, 1
  %9 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dac_channels_mixer, align 1
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool.not = icmp eq i32 %changed.1, 0
  br i1 %tobool.not, label %for.end.if.end14_crit_edge, label %if.then12

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %update_dac_volume = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 12
  %11 = ptrtoint ptr %update_dac_volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update_dac_volume, align 4
  tail call void %12(ptr noundef %1) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %changed.0.lcssa35 = phi i32 [ %changed.1, %if.then12 ], [ 0, %for.end.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %changed.0.lcssa35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_mute_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value1, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_mute_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dac_mute, align 4
  %6 = zext i1 %tobool.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp ne i8 %5, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dac_mute to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %dac_mute, align 4
  %update_dac_mute = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 13
  %8 = ptrtoint ptr %update_dac_mute to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_dac_mute, align 4
  tail call void %9(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv2 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upmix_info(ptr nocapture noundef readonly %ctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ult i8 %3, 8
  br i1 %cmp.i, label %entry.upmix_item_count.exit_crit_edge, label %if.else.i

entry.upmix_item_count.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %upmix_item_count.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_center_lfe_mix.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 14
  %4 = ptrtoint ptr %update_center_lfe_mix.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_center_lfe_mix.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %..i = select i1 %tobool.not.i, i32 3, i32 5
  br label %upmix_item_count.exit

upmix_item_count.exit:                            ; preds = %if.else.i, %entry.upmix_item_count.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %entry.upmix_item_count.exit_crit_edge ], [ %..i, %if.else.i ]
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef %retval.0.i, ptr noundef nonnull @upmix_info.names) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upmix_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dac_routing = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dac_routing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_routing, align 1
  %conv = zext i8 %3 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value1, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upmix_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ult i8 %3, 8
  br i1 %cmp.i, label %entry.upmix_item_count.exit_crit_edge, label %if.else.i

entry.upmix_item_count.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %upmix_item_count.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_center_lfe_mix.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 14
  %4 = ptrtoint ptr %update_center_lfe_mix.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_center_lfe_mix.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %..i = select i1 %tobool.not.i, i32 3, i32 5
  br label %upmix_item_count.exit

upmix_item_count.exit:                            ; preds = %if.else.i, %entry.upmix_item_count.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %entry.upmix_item_count.exit_crit_edge ], [ %..i, %if.else.i ]
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %retval.0.i)
  %cmp.not = icmp ult i32 %7, %retval.0.i
  br i1 %cmp.not, label %if.end, label %upmix_item_count.exit.cleanup_crit_edge

upmix_item_count.exit.cleanup_crit_edge:          ; preds = %upmix_item_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %upmix_item_count.exit
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value1, align 8
  %dac_routing = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dac_routing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dac_routing, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp4 = icmp ne i32 %9, %conv
  %conv5 = zext i1 %cmp4 to i32
  br i1 %cmp4, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %conv9 = trunc i32 %9 to i8
  %12 = ptrtoint ptr %dac_routing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %dac_routing, align 1
  %call.i = tail call zeroext i8 @oxygen_read8(ptr noundef %1, i32 noundef 67) #8
  %trunc.i = trunc i8 %call.i to i2
  %13 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.36)
  switch i2 %trunc.i, label %if.else8.i [
    i2 0, label %if.then.i
    i2 -1, label %if.then6.if.end9.i_crit_edge
  ]

if.then6.if.end9.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dac_routing to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dac_routing, align 1
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @oxygen_update_dac_routing.reg_values, i32 0, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  br label %if.end9.i

if.else8.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else8.i, %if.then.i, %if.then6.if.end9.i_crit_edge
  %reg_value.0.i = phi i32 [ %17, %if.then.i ], [ 58368, %if.else8.i ], [ 27648, %if.then6.if.end9.i_crit_edge ]
  %adjust_dac_routing.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 15
  %18 = ptrtoint ptr %adjust_dac_routing.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adjust_dac_routing.i, align 4
  %tobool.not.i23 = icmp eq ptr %19, null
  br i1 %tobool.not.i23, label %if.end9.i.if.end14.i_crit_edge, label %if.then10.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 %19(ptr noundef %1, i32 noundef %reg_value.0.i) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end9.i.if.end14.i_crit_edge
  %reg_value.1.i = phi i32 [ %call13.i, %if.then10.i ], [ %reg_value.0.i, %if.end9.i.if.end14.i_crit_edge ]
  %conv15.i = trunc i32 %reg_value.1.i to i16
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 192, i16 noundef zeroext %conv15.i, i16 noundef zeroext -256) #8
  %update_center_lfe_mix.i24 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 14
  %20 = ptrtoint ptr %update_center_lfe_mix.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %update_center_lfe_mix.i24, align 4
  %tobool17.not.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i, label %if.end14.i.if.end11_crit_edge, label %if.then18.i

if.end14.i.if.end11_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dac_routing to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dac_routing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp23.i = icmp ugt i8 %23, 2
  tail call void %21(ptr noundef %1, i1 noundef zeroext %cmp23.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then18.i, %if.end14.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %upmix_item_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv5, %if.end11 ], [ -22, %upmix_item_count.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spdif_playback_enable = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %spdif_playback_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spdif_playback_enable, align 4
  %conv = zext i8 %3 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value1, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %spdif_playback_enable = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %spdif_playback_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spdif_playback_enable, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ne i32 %3, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5 = icmp ne i32 %3, 0
  %conv7 = zext i1 %tobool5 to i8
  %6 = ptrtoint ptr %spdif_playback_enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %spdif_playback_enable, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  tail call void @oxygen_update_spdif_source(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv2 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spdif_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_default_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spdif_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_bits, align 4
  %4 = trunc i32 %3 to i8
  %conv.i = and i8 %4, 14
  %value1.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %value1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %value1.i, align 8
  %shr.i = lshr i32 %3, 4
  %conv2.i = trunc i32 %shr.i to i8
  %arrayidx5.i = getelementptr [24 x i8], ptr %value1.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %arrayidx5.i, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_default_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value1.i, align 8
  %4 = and i8 %3, 14
  %and.i = zext i8 %4 to i32
  %arrayidx4.i = getelementptr [24 x i8], ptr %value1.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 4
  %or.i = or i32 %shl.i, %and.i
  %and6.i = shl nuw nsw i32 %and.i, 15
  %7 = and i32 %and6.i, 65536
  %8 = or i32 %7, %or.i
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spdif_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ne i32 %8, %10
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %spdif_bits, align 4
  %pcm_active = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pcm_active, align 1
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write32_masked(ptr noundef %1, i32 noundef 116, i32 noundef %8, i32 noundef 69630) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %conv = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spdif_mask_get(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 62, ptr %value1, align 8
  %arrayidx4 = getelementptr [24 x i8], ptr %value1, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_pcm_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spdif_pcm_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_pcm_bits, align 4
  %4 = trunc i32 %3 to i8
  %conv.i = and i8 %4, 14
  %value1.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %value1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %value1.i, align 8
  %shr.i = lshr i32 %3, 4
  %conv2.i = trunc i32 %shr.i to i8
  %arrayidx5.i = getelementptr [24 x i8], ptr %value1.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %arrayidx5.i, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_pcm_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value1.i, align 8
  %4 = and i8 %3, 14
  %and.i = zext i8 %4 to i32
  %arrayidx4.i = getelementptr [24 x i8], ptr %value1.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 4
  %or.i = or i32 %shl.i, %and.i
  %and6.i = shl nuw nsw i32 %and.i, 15
  %7 = and i32 %and6.i, 65536
  %8 = or i32 %7, %or.i
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spdif_pcm_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_pcm_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ne i32 %8, %10
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %spdif_pcm_bits, align 4
  %pcm_active = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pcm_active, align 1
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write32_masked(ptr noundef %1, i32 noundef 116, i32 noundef %8, i32 noundef 69630) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %conv = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32_masked(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spdif_input_mask_get(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_input_default_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_read32(ptr noundef %1, i32 noundef 120) #8
  %conv = trunc i32 %call to i8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %value1, align 8
  %shr = lshr i32 %call, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx5 = getelementptr [24 x i8], ptr %value1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %call, 16
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx10 = getelementptr [24 x i8], ptr %value1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %arrayidx10, align 2
  %shr11 = lshr i32 %call, 24
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx15 = getelementptr [24 x i8], ptr %value1, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %arrayidx15, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_bit_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call i32 @oxygen_read32(ptr noundef %1, i32 noundef 112) #8
  %and = and i32 %call, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_bit_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %call = tail call i32 @oxygen_read32(ptr noundef %1, i32 noundef 112) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %or = or i32 %call, %3
  %neg = xor i32 %3, -1
  %and = and i32 %call, %neg
  %newreg.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %newreg.0, i32 %call)
  %cmp = icmp ne i32 %newreg.0, %call
  br i1 %cmp, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write32(ptr noundef %1, i32 noundef 112, i32 noundef %newreg.0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = lshr i32 %3, 8
  %and.lobit = and i32 %and, 1
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %1, i32 noundef 195) #8
  %conv3 = zext i8 %call to i32
  %and5 = and i32 %3, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  %lnot.ext10 = zext i1 %tobool6 to i32
  %xor = xor i32 %and.lobit, %lnot.ext10
  %value11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %value11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %1, i32 noundef 195) #8
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp eq i32 %5, 0
  %6 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp ne i32 %6, 0
  %cmp.not = xor i1 %7, %tobool
  %8 = trunc i32 %3 to i8
  %conv12 = or i8 %call, %8
  %9 = xor i8 %8, -1
  %conv16 = and i8 %call, %9
  %newreg.0 = select i1 %cmp.not, i8 %conv16, i8 %conv12
  call void @__sanitizer_cov_trace_cmp1(i8 %newreg.0, i8 %call)
  %cmp19 = icmp ne i8 %newreg.0, %call
  br i1 %cmp19, label %if.then22, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write8(ptr noundef %1, i32 noundef 195, i8 noundef zeroext %newreg.0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %entry.if.end23_crit_edge
  %conv20 = zext i1 %cmp19 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 %conv20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @monitor_volume_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ac97_volume_info(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %3 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_volume_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 1
  %and5 = and i32 %3, 255
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and5) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %call, 31
  %6 = xor i16 %5, 31
  %sub = zext i16 %6 to i32
  %value8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %value8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = zext i16 %call to i32
  %8 = lshr i32 %conv9, 8
  %and11 = and i32 %8, 31
  %sub12 = xor i32 %and11, 31
  %value13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub12, ptr %value13, align 8
  %and16 = and i32 %conv9, 31
  %sub17 = xor i32 %and16, 31
  %arrayidx19 = getelementptr [128 x i32], ptr %value13, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub17, ptr %arrayidx19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_volume_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 1
  %and5 = and i32 %3, 255
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and5) #8
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %call, -32
  %value8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value8, align 8
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = and i16 %call, -7968
  %value15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %11 = ptrtoint ptr %value15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value15, align 8
  %.tr = trunc i32 %12 to i16
  %13 = shl i16 %.tr, 8
  %14 = and i16 %13, 7936
  %15 = or i16 %14, %10
  %arrayidx23 = getelementptr [128 x i32], ptr %value15, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23, align 4
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink55 = phi i16 [ %19, %if.else ], [ %5, %if.then ]
  %.sink54 = phi i16 [ %15, %if.else ], [ %9, %if.then ]
  %.sink53 = phi i16 [ 7967, %if.else ], [ 31, %if.then ]
  %20 = or i16 %.sink54, %.sink55
  %conv28 = xor i16 %20, %.sink53
  call void @__sanitizer_cov_trace_cmp2(i16 %conv28, i16 %call)
  %cmp = icmp ne i16 %conv28, %call
  br i1 %cmp, label %if.then33, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and5, i16 noundef zeroext %conv28) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end.if.end34_crit_edge
  %conv31 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 1
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 8
  %and5 = and i32 %shr4, 255
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and2) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %conv = zext i16 %call to i32
  %4 = xor i32 %conv, -1
  %5 = lshr i32 %4, %and5
  %and7 = lshr i32 %3, 16
  %and7.lobit24 = xor i32 %5, %and7
  %6 = and i32 %and7.lobit24, 1
  %7 = xor i32 %6, 1
  %8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 1
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 8
  %and5 = and i32 %shr4, 255
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and2) #8
  %value8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %and7 = lshr i32 %3, 16
  %and7.lobit = and i32 %and7, 1
  %6 = xor i32 %and7.lobit, %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %tobool12.not = icmp eq i32 %6, 1
  %shl14 = shl nuw i32 1, %and5
  %7 = trunc i32 %shl14 to i16
  %conv13 = or i16 %call, %7
  %8 = xor i16 %7, -1
  %conv17 = and i16 %call, %8
  %newreg.0 = select i1 %tobool12.not, i16 %conv17, i16 %conv13
  %conv18 = zext i16 %newreg.0 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %newreg.0, i16 %call)
  %cmp = icmp ne i16 %newreg.0, %call
  br i1 %cmp, label %if.then22, label %entry.if.end65_crit_edge

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then22:                                        ; preds = %entry
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef %and, i32 noundef %and2, i16 noundef zeroext %newreg.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp23 = icmp eq i32 %and, 0
  br i1 %cmp23, label %land.lhs.true, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then22
  %ac97_switch = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 18
  %9 = ptrtoint ptr %ac97_switch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac97_switch, align 4
  %tobool25.not = icmp eq ptr %10, null
  br i1 %tobool25.not, label %land.lhs.true.if.end31_crit_edge, label %if.then26

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and30 = and i32 %conv18, 32768
  tail call void %10(ptr noundef %1, i32 noundef %and2, i32 noundef %and30) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %land.lhs.true.if.end31_crit_edge, %if.then22.if.end31_crit_edge
  %trunc = trunc i32 %3 to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %if.end31.if.end65_crit_edge [
    i8 16, label %if.then34
    i8 14, label %if.end31.land.lhs.true55_crit_edge
    i8 18, label %if.end31.land.lhs.true55_crit_edge151
    i8 20, label %if.end31.land.lhs.true55_crit_edge152
    i8 22, label %if.end31.land.lhs.true55_crit_edge153
  ]

if.end31.land.lhs.true55_crit_edge153:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

if.end31.land.lhs.true55_crit_edge152:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

if.end31.land.lhs.true55_crit_edge151:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

if.end31.land.lhs.true55_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

if.end31.if.end65_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then34:                                        ; preds = %if.end31
  %and36 = and i32 %conv18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %not.tobool37.not = xor i1 %tobool37.not, true
  %conv38 = zext i1 %not.tobool37.not to i16
  tail call void @oxygen_write_ac97_masked(ptr noundef %1, i32 noundef 0, i32 noundef 114, i16 noundef zeroext %conv38, i16 noundef zeroext 1) #8
  br i1 %tobool37.not, label %if.then42, label %if.then34.if.end65_crit_edge

if.then34.if.end65_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then42:                                        ; preds = %if.then34
  %arrayidx.i = getelementptr %struct.oxygen, ptr %1, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then42.mute_ac97_ctl.exit_crit_edge, label %if.end.i

if.then42.mute_ac97_ctl.exit_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit

if.end.i:                                         ; preds = %if.then42
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private_value.i, align 4
  %and.i = and i32 %15, 255
  %call.i = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %tobool4.not.i = icmp sgt i16 %call.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.mute_ac97_ctl.exit_crit_edge

if.end.i.mute_ac97_ctl.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit

if.then5.i:                                       ; preds = %if.end.i
  %or.i = or i16 %call.i, -32768
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i, i16 noundef zeroext %or.i) #8
  %ac97_switch.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 18
  %16 = ptrtoint ptr %ac97_switch.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ac97_switch.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then9.i

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %1, i32 noundef %and.i, i32 noundef 32768) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then5.i.if.end12.i_crit_edge
  %card.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %19, i32 noundef 1, ptr noundef %id.i) #8
  br label %mute_ac97_ctl.exit

mute_ac97_ctl.exit:                               ; preds = %if.end12.i, %if.end.i.mute_ac97_ctl.exit_crit_edge, %if.then42.mute_ac97_ctl.exit_crit_edge
  %arrayidx.i103 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 20, i32 4
  %22 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i103, align 4
  %tobool.not.i104 = icmp eq ptr %23, null
  br i1 %tobool.not.i104, label %mute_ac97_ctl.exit.mute_ac97_ctl.exit118_crit_edge, label %if.end.i109

mute_ac97_ctl.exit.mute_ac97_ctl.exit118_crit_edge: ; preds = %mute_ac97_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit118

if.end.i109:                                      ; preds = %mute_ac97_ctl.exit
  %private_value.i105 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %private_value.i105 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %private_value.i105, align 4
  %and.i106 = and i32 %25, 255
  %call.i107 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i106) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i107)
  %tobool4.not.i108 = icmp sgt i16 %call.i107, -1
  br i1 %tobool4.not.i108, label %if.then5.i113, label %if.end.i109.mute_ac97_ctl.exit118_crit_edge

if.end.i109.mute_ac97_ctl.exit118_crit_edge:      ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit118

if.then5.i113:                                    ; preds = %if.end.i109
  %or.i110 = or i16 %call.i107, -32768
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i106, i16 noundef zeroext %or.i110) #8
  %ac97_switch.i111 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 18
  %26 = ptrtoint ptr %ac97_switch.i111 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ac97_switch.i111, align 4
  %tobool8.not.i112 = icmp eq ptr %27, null
  br i1 %tobool8.not.i112, label %if.then5.i113.if.end12.i117_crit_edge, label %if.then9.i114

if.then5.i113.if.end12.i117_crit_edge:            ; preds = %if.then5.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i117

if.then9.i114:                                    ; preds = %if.then5.i113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %27(ptr noundef %1, i32 noundef %and.i106, i32 noundef 32768) #8
  br label %if.end12.i117

if.end12.i117:                                    ; preds = %if.then9.i114, %if.then5.i113.if.end12.i117_crit_edge
  %card.i115 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %card.i115 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i115, align 4
  %30 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i103, align 4
  %id.i116 = getelementptr inbounds %struct.snd_kcontrol, ptr %31, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %29, i32 noundef 1, ptr noundef %id.i116) #8
  br label %mute_ac97_ctl.exit118

mute_ac97_ctl.exit118:                            ; preds = %if.end12.i117, %if.end.i109.mute_ac97_ctl.exit118_crit_edge, %mute_ac97_ctl.exit.mute_ac97_ctl.exit118_crit_edge
  %arrayidx.i119 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 20, i32 5
  %32 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i119, align 4
  %tobool.not.i120 = icmp eq ptr %33, null
  br i1 %tobool.not.i120, label %mute_ac97_ctl.exit118.if.end65_crit_edge, label %if.end.i125

mute_ac97_ctl.exit118.if.end65_crit_edge:         ; preds = %mute_ac97_ctl.exit118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end.i125:                                      ; preds = %mute_ac97_ctl.exit118
  %private_value.i121 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %private_value.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %private_value.i121, align 4
  %and.i122 = and i32 %35, 255
  %call.i123 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i122) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i123)
  %tobool4.not.i124 = icmp sgt i16 %call.i123, -1
  br i1 %tobool4.not.i124, label %if.then5.i129, label %if.end.i125.if.end65_crit_edge

if.end.i125.if.end65_crit_edge:                   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then5.i129:                                    ; preds = %if.end.i125
  %or.i126 = or i16 %call.i123, -32768
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i122, i16 noundef zeroext %or.i126) #8
  %ac97_switch.i127 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 18
  %36 = ptrtoint ptr %ac97_switch.i127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ac97_switch.i127, align 4
  %tobool8.not.i128 = icmp eq ptr %37, null
  br i1 %tobool8.not.i128, label %if.then5.i129.if.end12.i133_crit_edge, label %if.then9.i130

if.then5.i129.if.end12.i133_crit_edge:            ; preds = %if.then5.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i133

if.then9.i130:                                    ; preds = %if.then5.i129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %37(ptr noundef %1, i32 noundef %and.i122, i32 noundef 32768) #8
  br label %if.end12.i133

if.end12.i133:                                    ; preds = %if.then9.i130, %if.then5.i129.if.end12.i133_crit_edge
  %card.i131 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %card.i131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card.i131, align 4
  %40 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i119, align 4
  %id.i132 = getelementptr inbounds %struct.snd_kcontrol, ptr %41, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %39, i32 noundef 1, ptr noundef %id.i132) #8
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.end31.land.lhs.true55_crit_edge, %if.end31.land.lhs.true55_crit_edge151, %if.end31.land.lhs.true55_crit_edge152, %if.end31.land.lhs.true55_crit_edge153
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and5)
  %cmp56 = icmp eq i32 %and5, 15
  %and60 = and i32 %conv18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %or.cond = select i1 %cmp56, i1 %tobool61.not, i1 false
  br i1 %or.cond, label %if.then62, label %land.lhs.true55.if.end65_crit_edge

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true55
  %arrayidx.i135 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 20, i32 3
  %42 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i135, align 4
  %tobool.not.i136 = icmp eq ptr %43, null
  br i1 %tobool.not.i136, label %if.then62.mute_ac97_ctl.exit150_crit_edge, label %if.end.i141

if.then62.mute_ac97_ctl.exit150_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit150

if.end.i141:                                      ; preds = %if.then62
  %private_value.i137 = getelementptr inbounds %struct.snd_kcontrol, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %private_value.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private_value.i137, align 4
  %and.i138 = and i32 %45, 255
  %call.i139 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i138) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i139)
  %tobool4.not.i140 = icmp sgt i16 %call.i139, -1
  br i1 %tobool4.not.i140, label %if.then5.i145, label %if.end.i141.mute_ac97_ctl.exit150_crit_edge

if.end.i141.mute_ac97_ctl.exit150_crit_edge:      ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %mute_ac97_ctl.exit150

if.then5.i145:                                    ; preds = %if.end.i141
  %or.i142 = or i16 %call.i139, -32768
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %and.i138, i16 noundef zeroext %or.i142) #8
  %ac97_switch.i143 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 18
  %46 = ptrtoint ptr %ac97_switch.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ac97_switch.i143, align 4
  %tobool8.not.i144 = icmp eq ptr %47, null
  br i1 %tobool8.not.i144, label %if.then5.i145.if.end12.i149_crit_edge, label %if.then9.i146

if.then5.i145.if.end12.i149_crit_edge:            ; preds = %if.then5.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i149

if.then9.i146:                                    ; preds = %if.then5.i145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %47(ptr noundef %1, i32 noundef %and.i138, i32 noundef 32768) #8
  br label %if.end12.i149

if.end12.i149:                                    ; preds = %if.then9.i146, %if.then5.i145.if.end12.i149_crit_edge
  %card.i147 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %card.i147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card.i147, align 4
  %50 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i135, align 4
  %id.i148 = getelementptr inbounds %struct.snd_kcontrol, ptr %51, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %49, i32 noundef 1, ptr noundef %id.i148) #8
  br label %mute_ac97_ctl.exit150

mute_ac97_ctl.exit150:                            ; preds = %if.end12.i149, %if.end.i141.mute_ac97_ctl.exit150_crit_edge, %if.then62.mute_ac97_ctl.exit150_crit_edge
  tail call void @oxygen_write_ac97_masked(ptr noundef %1, i32 noundef 0, i32 noundef 114, i16 noundef zeroext 1, i16 noundef zeroext 1) #8
  br label %if.end65

if.end65:                                         ; preds = %mute_ac97_ctl.exit150, %land.lhs.true55.if.end65_crit_edge, %if.end12.i133, %if.end.i125.if.end65_crit_edge, %mute_ac97_ctl.exit118.if.end65_crit_edge, %if.then34.if.end65_crit_edge, %if.end31.if.end65_crit_edge, %entry.if.end65_crit_edge
  %conv20 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_fmic_source_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @mic_fmic_source_info.names) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_fmic_source_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef 98) #8
  %2 = lshr i16 %call, 7
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value2, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_fmic_source_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef 98) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = and i16 %call, -129
  %masksel = select i1 %tobool.not, i16 0, i16 128
  %newreg.0 = or i16 %masksel, %4
  call void @__sanitizer_cov_trace_cmp2(i16 %newreg.0, i16 %call)
  %cmp = icmp ne i16 %newreg.0, %call
  br i1 %cmp, label %if.then9, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 0, i32 noundef 98, i16 noundef zeroext %newreg.0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry.if.end10_crit_edge
  %conv7 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read_ac97(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_ac97(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_ac97_masked(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ac97_fp_rec_volume_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_fp_rec_volume_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef 28) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 7
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value2, align 8
  %3 = lshr i32 %conv, 8
  %and4 = and i32 %3, 7
  %arrayidx6 = getelementptr [128 x i32], ptr %value2, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_fp_rec_volume_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef 28) #8
  %and = and i16 %call, -1800
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value3, align 8
  %4 = trunc i32 %3 to i16
  %5 = and i16 %4, 7
  %conv5 = or i16 %and, %5
  %6 = shl nuw nsw i16 %5, 8
  %conv11 = or i16 %6, %conv5
  call void @__sanitizer_cov_trace_cmp2(i16 %conv11, i16 %call)
  %cmp = icmp ne i16 %conv11, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_ac97(ptr noundef %1, i32 noundef 1, i32 noundef 28, i16 noundef zeroext %conv11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv14 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv14
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @oxygen_update_dac_routing.reg_values, !1, !"reg_values", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 126, i32 28}
!2 = !{ptr @__ksymtab_oxygen_update_dac_routing, !3, !"__ksymtab_oxygen_update_dac_routing", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 181, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1035, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1037, i32 4}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1038, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1039, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1040, i32 33}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1041, i32 34}
!16 = !{ptr @add_controls.known_ctl_names, !17, !"known_ctl_names", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1033, i32 27}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1057, i32 30}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1060, i32 30}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1063, i32 31}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1066, i32 30}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 765, i32 11}
!28 = !{ptr @controls, !29, !"controls", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 754, i32 38}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 101, i32 3}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 102, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 103, i32 3}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 104, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 105, i32 3}
!40 = !{ptr @upmix_info.names, !41, !"names", i1 false, i1 false}
!41 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 100, i32 27}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 782, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 790, i32 11}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 798, i32 11}
!48 = !{ptr @spdif_output_controls, !49, !"spdif_output_controls", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 779, i32 38}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 819, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 834, i32 11}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 842, i32 11}
!56 = !{ptr @spdif_input_controls, !57, !"spdif_input_controls", i1 false, i1 false}
!57 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 815, i32 38}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 859, i32 13}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 867, i32 13}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 963, i32 13}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 971, i32 13}
!66 = !{ptr @monitor_controls, !67, !"monitor_controls", i1 false, i1 false}
!67 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 853, i32 3}
!68 = !{ptr @monitor_db_scale, !69, !"monitor_db_scale", i1 false, i1 false}
!69 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 750, i32 8}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 986, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 988, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 997, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 999, i32 2}
!78 = !{ptr @ac97_controls, !79, !"ac97_controls", i1 false, i1 false}
!79 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 985, i32 38}
!80 = !{ptr @ac97_db_scale, !81, !"ac97_db_scale", i1 false, i1 false}
!81 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 751, i32 8}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 649, i32 39}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 649, i32 51}
!86 = !{ptr @mic_fmic_source_info.names, !87, !"names", i1 false, i1 false}
!87 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 649, i32 27}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1004, i32 2}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1005, i32 2}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1008, i32 11}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1016, i32 2}
!96 = !{ptr @ac97_fp_controls, !97, !"ac97_fp_controls", i1 false, i1 false}
!97 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 1003, i32 38}
!98 = !{ptr @ac97_rec_db_scale, !99, !"ac97_rec_db_scale", i1 false, i1 false}
!99 = !{!"../sound/pci/oxygen/oxygen_mixer.c", i32 752, i32 8}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
