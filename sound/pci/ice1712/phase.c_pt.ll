; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/phase.c_pt.bc'
source_filename = "../sound/pci/ice1712/phase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.phase28_spec = type { [2 x i16], [8 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Terratec PHASE 22\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phase22\00", [24 x i8] zeroinitializer }, align 32
@phase22_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(\80\F0\C3\FF\FF\FF\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Terratec PHASE 28\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phase28\00", [24 x i8] zeroinitializer }, align 32
@phase28_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"+\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Terrasoniq TS22 PCI\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TS22\00", [27 x i8] zeroinitializer }, align 32
@snd_vt1724_phase_cards = dso_local global { [4 x %struct.snd_ice1712_card_info], [32 x i8] } { [4 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 991252497, ptr @.str, ptr @.str.1, ptr null, ptr @phase22_init, ptr null, ptr @phase22_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @phase22_eeprom }, %struct.snd_ice1712_card_info { i32 991250705, ptr @.str.2, ptr @.str.3, ptr null, ptr @phase28_init, ptr null, ptr @phase28_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @phase28_eeprom }, %struct.snd_ice1712_card_info { i32 991263505, ptr @.str.4, ptr @.str.5, ptr null, ptr @phase22_init, ptr null, ptr @phase22_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @phase22_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ice1712/phase.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@akm_phase22 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops zeroinitializer, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_phase22_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 -128, i8 2, i32 16, i32 32, i32 1024, i32 1024, i32 0, i32 8, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@phase28_init.wm_inits_phase28 = internal constant { [61 x i16], [38 x i8] } { [61 x i16] [i16 27, i16 68, i16 28, i16 11, i16 29, i16 9, i16 24, i16 0, i16 22, i16 290, i16 23, i16 34, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 255, i16 10, i16 255, i16 11, i16 255, i16 12, i16 255, i16 13, i16 255, i16 14, i16 255, i16 15, i16 255, i16 16, i16 255, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm_vol = internal constant { <{ [241 x i8], [15 x i8] }>, [64 x i8] } { <{ [241 x i8], [15 x i8] }> <{ [241 x i8] c"\7F0*'$\22!\1F\1E\1D\1C\1B\1B\1A\19\19\18\18\17\17\16\16\15\15\15\14\14\14\13\13\13\12\12\12\12\11\11\11\11\10\10\10\10\0F\0F\0F\0F\0F\0F\0E\0E\0E\0E\0E\0D\0D\0D\0D\0D\0D\0D\0C\0C\0C\0C\0C\0C\0C\0B\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\09\09\09\09\09\09\09\09\09\09\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [15 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@phase28_dac_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @wm_master_mute_get, ptr @wm_master_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @wm_master_vol_info, ptr @wm_master_vol_get, ptr @wm_master_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 512 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 512 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 514 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 514 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 518 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 518 }], [128 x i8] zeroinitializer }, align 32
@wm_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_pcm_mute_get, ptr @wm_pcm_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @wm_pcm_vol_info, ptr @wm_pcm_vol_get, ptr @wm_pcm_vol_put, %union.anon.87 { ptr @db_scale_wm_pcm }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @phase28_deemp_get, ptr @phase28_deemp_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @phase28_oversampling_info, ptr @phase28_oversampling_get, ptr @phase28_oversampling_put, %union.anon.87 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_wm_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rear Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rear Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_wm_pcm = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6400, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Deemphasis Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Oversampling\00", [47 x i8] zeroinitializer }, align 32
@phase28_oversampling_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"128x\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"64x\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 991252497, i64 991263505]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 991252497, i64 991263505]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 991252497, i64 991263505]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 924, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 925, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"phase22_eeprom\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 160, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 933, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 934, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"phase28_eeprom\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 177, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 942, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 943, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"snd_vt1724_phase_cards\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 921, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 123, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"akm_phase22\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 91, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"akm_phase22_priv\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 97, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"wm_inits_phase28\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 369, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"wm_vol\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 73, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"phase28_dac_controls\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 748, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"wm_controls\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 863, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 751, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 760, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"db_scale_wm_dac\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 745, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 768, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 778, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 787, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 797, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 806, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 816, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 825, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 835, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 844, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 854, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 866, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 875, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"db_scale_wm_pcm\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 746, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 883, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 890, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 710, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 710, i32 41 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [29 x i8] c"../sound/pci/ice1712/phase.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 710, i32 49 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @phase22_eeprom, ptr @.str.2, ptr @.str.3, ptr @phase28_eeprom, ptr @.str.4, ptr @.str.5, ptr @snd_vt1724_phase_cards, ptr @.str.6, ptr @.str.7, ptr @akm_phase22, ptr @akm_phase22_priv, ptr @phase28_init.wm_inits_phase28, ptr @wm_vol, ptr @phase28_dac_controls, ptr @wm_controls, ptr @.str.9, ptr @.str.10, ptr @db_scale_wm_dac, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @db_scale_wm_pcm, ptr @.str.23, ptr @.str.24, ptr @phase28_oversampling_info.texts, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase22_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase28_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_phase_cards to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_phase22 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_phase22_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase28_init.wm_inits_phase28 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_vol to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase28_dac_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_pcm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase28_oversampling_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase22_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 991252497, label %entry.sw.bb_crit_edge
    i32 991263505, label %entry.sw.bb_crit_edge38
  ]

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge38
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %3 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %4 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_total_adcs, align 4
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %5 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %vt1720, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 216) #11
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %7 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %akm, align 4
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %sw.bb.cleanup_crit_edge, label %if.end18

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end18:                                         ; preds = %sw.bb
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %8 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %akm_codecs, align 4
  %9 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eeprom, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %10, label %if.end18.sw.epilog25_crit_edge [
    i32 991252497, label %if.end18.sw.bb21_crit_edge
    i32 991263505, label %if.end18.sw.bb21_crit_edge39
  ]

if.end18.sw.bb21_crit_edge39:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

if.end18.sw.bb21_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

if.end18.sw.epilog25_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb21:                                          ; preds = %if.end18.sw.bb21_crit_edge, %if.end18.sw.bb21_crit_edge39
  %call22 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @akm_phase22, ptr noundef nonnull @akm_phase22_priv, ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %sw.bb21.cleanup_crit_edge, label %sw.bb21.sw.epilog25_crit_edge

sw.bb21.sw.epilog25_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog25:                                      ; preds = %sw.bb21.sw.epilog25_crit_edge, %if.end18.sw.epilog25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %sw.bb21.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog25 ], [ -12, %sw.bb.cleanup_crit_edge ], [ %call22, %sw.bb21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase22_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 991252497, label %entry.sw.bb_crit_edge
    i32 991263505, label %entry.sw.bb_crit_edge3
  ]

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %call = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase28_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %3 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %spec1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #11
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %5 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i66, ptr %akm, align 4
  %tobool4.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %6 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %akm_codecs, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %7 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_dir.i, align 4
  tail call void %8(ptr noundef %ice, i32 noundef 6291455) #8
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %9 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %11 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %12 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx5.i, align 4
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_mask.i, align 4
  tail call void %16(ptr noundef %ice, i32 noundef -1069057) #8
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %17 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %18(ptr noundef %ice) #8
  %and = and i32 %call.i, -1048577
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %19 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i, align 4
  tail call void %20(ptr noundef %ice, i32 noundef %and) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %or = or i32 %and, 4096
  %22 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #8
  %or8 = or i32 %call.i, 1052672
  %25 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data.i, align 4
  tail call void %26(ptr noundef %ice, i32 noundef %or8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %28 = phi i16 [ 27, %if.end6 ], [ %38, %for.body.for.body_crit_edge ]
  %p.076 = phi ptr [ @phase28_init.wm_inits_phase28, %if.end6 ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %conv = zext i16 %28 to i32
  %arrayidx11 = getelementptr i16, ptr %p.076, i32 1
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx11, align 2
  tail call fastcc void @wm_put_nocache(ptr noundef %ice, i32 noundef %conv, i16 noundef zeroext %30) #8
  %shl.i = shl nuw nsw i32 %conv, 1
  %31 = lshr i16 %30, 8
  %conv1.i = trunc i16 %31 to i8
  %32 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %akm, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %33, i32 0, i32 3, i32 %shl.i
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %30 to i8
  %35 = load ptr, ptr %akm, align 4
  %add.i = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %35, i32 0, i32 3, i32 %add.i
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.i, ptr %arrayidx7.i, align 1
  %add.ptr = getelementptr i16, ptr %p.076, i32 2
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr, align 2
  %cmp.not = icmp eq i16 %38, -1
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %39 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_dir.i, align 4
  %41 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saved.i, align 4
  tail call void %40(ptr noundef %ice, i32 noundef %42) #8
  %43 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_mask.i, align 4
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i, align 4
  tail call void %44(ptr noundef %ice, i32 noundef %46) #8
  %47 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %saved.i, align 4
  %49 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %gpio.i, align 4
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i, align 4
  %52 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -32768, ptr %call7.i.i, align 8
  %arrayidx14 = getelementptr [2 x i16], ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -32768, ptr %arrayidx14, align 2
  %55 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1777.not = icmp eq i32 %56, 0
  br i1 %cmp1777.not, label %for.end.cleanup_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %i.078 = phi i32 [ %inc, %for.body19.for.body19_crit_edge ], [ 0, %for.end.for.body19_crit_edge ]
  %arrayidx20 = getelementptr %struct.phase28_spec, ptr %call7.i.i, i32 0, i32 1, i32 %i.078
  %57 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -32768, ptr %arrayidx20, align 2
  tail call fastcc void @wm_put_nocache(ptr noundef %ice, i32 noundef %i.078, i16 noundef zeroext 0) #8
  %shl.i.i = shl i32 %i.078, 1
  %58 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %akm, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %59, i32 0, i32 3, i32 %shl.i.i
  %60 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %61 = load ptr, ptr %akm, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %61, i32 0, i32 3, i32 %add.i.i
  %62 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx7.i.i, align 1
  tail call fastcc void @wm_put_nocache(ptr noundef %ice, i32 noundef %i.078, i16 noundef zeroext 384) #8
  %inc = add nuw i32 %i.078, 1
  %63 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_total_dacs, align 4
  %cmp17 = icmp ult i32 %inc, %64
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase28_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @phase28_dac_controls, ptr noundef %ice) #8
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 1), ptr noundef %ice) #8
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 2), ptr noundef %ice) #8
  %call1.2 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 3), ptr noundef %ice) #8
  %call1.3 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 4), ptr noundef %ice) #8
  %call1.4 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 5), ptr noundef %ice) #8
  %call1.5 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 6), ptr noundef %ice) #8
  %call1.6 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %cmp2.6 = icmp slt i32 %call1.6, 0
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 7), ptr noundef %ice) #8
  %call1.7 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %cmp2.7 = icmp slt i32 %call1.7, 0
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 8), ptr noundef %ice) #8
  %call1.8 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %cmp2.8 = icmp slt i32 %call1.8, 0
  br i1 %cmp2.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 9), ptr noundef %ice) #8
  %call1.9 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %cmp2.9 = icmp slt i32 %call1.9, 0
  br i1 %cmp2.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call.10 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 10), ptr noundef %ice) #8
  %call1.10 = tail call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.10)
  %cmp2.10 = icmp slt i32 %call1.10, 0
  br i1 %cmp2.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call.11 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @phase28_dac_controls, i32 0, i32 11), ptr noundef %ice) #8
  %call1.11 = tail call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.11)
  %cmp2.11 = icmp slt i32 %call1.11, 0
  br i1 %cmp2.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %call8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @wm_controls, ptr noundef %ice) #8
  %call9 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.cond.11.cleanup_crit_edge, label %for.cond3

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond3:                                        ; preds = %for.cond.11
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %call8.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 1), ptr noundef %ice) #8
  %call9.1 = tail call i32 @snd_ctl_add(ptr noundef %27, ptr noundef %call8.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.1 = icmp slt i32 %call9.1, 0
  br i1 %cmp10.1, label %for.cond3.cleanup_crit_edge, label %for.cond3.1

for.cond3.cleanup_crit_edge:                      ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond3.1:                                      ; preds = %for.cond3
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %call8.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 2), ptr noundef %ice) #8
  %call9.2 = tail call i32 @snd_ctl_add(ptr noundef %29, ptr noundef %call8.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.2 = icmp slt i32 %call9.2, 0
  br i1 %cmp10.2, label %for.cond3.1.cleanup_crit_edge, label %for.cond3.2

for.cond3.1.cleanup_crit_edge:                    ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond3.2:                                      ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %call8.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 3), ptr noundef %ice) #8
  %call9.3 = tail call i32 @snd_ctl_add(ptr noundef %31, ptr noundef %call8.3) #8
  %32 = call i32 @llvm.smin.i32(i32 %call9.3, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond3.2, %for.cond3.1.cleanup_crit_edge, %for.cond3.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %for.cond.11.cleanup_crit_edge ], [ %call9.1, %for.cond3.cleanup_crit_edge ], [ %call9.2, %for.cond3.1.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ], [ %call1.3, %for.cond.2.cleanup_crit_edge ], [ %call1.4, %for.cond.3.cleanup_crit_edge ], [ %call1.5, %for.cond.4.cleanup_crit_edge ], [ %call1.6, %for.cond.5.cleanup_crit_edge ], [ %call1.7, %for.cond.6.cleanup_crit_edge ], [ %call1.8, %for.cond.7.cleanup_crit_edge ], [ %call1.9, %for.cond.8.cleanup_crit_edge ], [ %call1.10, %for.cond.9.cleanup_crit_edge ], [ %call1.11, %for.cond.10.cleanup_crit_edge ], [ %32, %for.cond3.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm_put_nocache(ptr noundef %ice, i32 noundef %reg, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 9
  %0 = and i16 %val, 511
  %and = zext i16 %0 to i32
  %or = or i32 %shl, %and
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %1 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %2(ptr noundef %ice) #8
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %3 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %4(ptr noundef %ice, i32 noundef -921601) #8
  %or.i = and i32 %call.i.i, -135169
  %and.i = or i32 %or.i, 131072
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %5 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_data.i.i, align 4
  tail call void %6(ptr noundef %ice, i32 noundef %and.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 15, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.06.i = phi i32 [ %and.i, %entry ], [ %or5.i, %for.body.i.for.body.i_crit_edge ]
  %and1.i = and i32 %tmp.06.i, -524289
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %ice, i32 noundef %and1.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %shl.i = shl nuw i32 1, %i.07.i
  %and2.i = and i32 %shl.i, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %or3.i = or i32 %and1.i, 262144
  %and4.i = and i32 %tmp.06.i, -786433
  %tmp.1.i = select i1 %tobool.not.i, i32 %and4.i, i32 %or3.i
  %11 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data.i.i, align 4
  tail call void %12(ptr noundef %ice, i32 noundef %tmp.1.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #8
  %or5.i = or i32 %tmp.1.i, 524288
  %14 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %or5.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %dec.i = add nsw i32 %i.07.i, -1
  %cmp.not.i = icmp eq i32 %i.07.i, 0
  br i1 %cmp.not.i, label %phase28_spi_write.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

phase28_spi_write.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %or7.i = or i32 %tmp.1.i, 4096
  %17 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %or7.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %or8.i = or i32 %tmp.1.i, 528384
  %20 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %or8.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_master_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = xor i16 %5, -1
  %7 = lshr i16 %6, 15
  %.not = zext i16 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.not, ptr %value, align 8
  %arrayidx4 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4, align 2
  %11 = xor i16 %10, -1
  %12 = lshr i16 %11, 15
  %.not13 = zext i16 %12 to i32
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.not13, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_master_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 33
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 2
  %12 = xor i16 %11, -1
  %13 = lshr i16 %12, 15
  %14 = zext i16 %13 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp3.not = icmp eq i32 %16, %14
  br i1 %cmp3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %and8 = and i16 %11, 32767
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %and8, ptr %3, align 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  %cond13 = select i1 %tobool12.not, i16 -32768, i16 0
  %or = or i16 %cond13, %and8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or, ptr %3, align 2
  %21 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1956.not = icmp eq i32 %22, 0
  br i1 %cmp1956.not, label %if.then.if.end_crit_edge, label %if.then.for.body21_crit_edge

if.then.for.body21_crit_edge:                     ; preds = %if.then
  br label %for.body21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body21:                                       ; preds = %wm_set_vol.exit.for.body21_crit_edge, %if.then.for.body21_crit_edge
  %dac.057 = phi i32 [ %add27, %wm_set_vol.exit.for.body21_crit_edge ], [ 0, %if.then.for.body21_crit_edge ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 2
  %conv.i = zext i16 %24 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body21.wm_set_vol.exit_crit_edge

for.body21.wm_set_vol.exit_crit_edge:             ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %for.body21
  %arrayidx24 = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %dac.057
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx24, align 2
  %conv1.i = zext i16 %26 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %conv1.i, 32767
  %and7.i = and i32 %conv.i, 32767
  %mul.i = mul nuw nsw i32 %and5.i, %and7.i
  %div.i = udiv i32 %mul.i, 127
  %and8.i = and i32 %div.i, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %sub.i = sub i8 127, %28
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %for.body21.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %sub.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %for.body21.wm_set_vol.exit_crit_edge ]
  %conv11.i = zext i8 %nvol.0.i to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %dac.057, i16 noundef zeroext %conv11.i) #8
  %shl.i.i = shl i32 %dac.057, 1
  %29 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 %shl.i.i
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %32 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %32, i32 0, i32 3, i32 %add.i.i
  %33 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %or.i = or i16 %conv11.i, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %dac.057, i16 noundef zeroext %or.i) #8
  %add27 = add i32 %dac.057, 2
  %34 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_total_dacs, align 4
  %cmp19 = icmp ult i32 %add27, %35
  br i1 %cmp19, label %wm_set_vol.exit.for.body21_crit_edge, label %wm_set_vol.exit.if.end_crit_edge

wm_set_vol.exit.if.end_crit_edge:                 ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

wm_set_vol.exit.for.body21_crit_edge:             ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

if.end:                                           ; preds = %wm_set_vol.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %change.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %wm_set_vol.exit.if.end_crit_edge ]
  %arrayidx.1 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.1, align 2
  %38 = xor i16 %37, -1
  %39 = lshr i16 %38, 15
  %40 = zext i16 %39 to i32
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp3.not.1 = icmp eq i32 %42, %40
  br i1 %cmp3.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  %and8.1 = and i16 %37, 32767
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %and8.1, ptr %arrayidx.1, align 2
  %44 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool12.not.1 = icmp eq i32 %45, 0
  %cond13.1 = select i1 %tobool12.not.1, i16 -32768, i16 0
  %or.1 = or i16 %cond13.1, %and8.1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %or.1, ptr %arrayidx.1, align 2
  %47 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1956.not.1 = icmp eq i32 %48, 0
  br i1 %cmp1956.not.1, label %if.then.1.if.end.1_crit_edge, label %if.then.1.for.body21.1_crit_edge

if.then.1.for.body21.1_crit_edge:                 ; preds = %if.then.1
  br label %for.body21.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

for.body21.1:                                     ; preds = %wm_set_vol.exit.1.for.body21.1_crit_edge, %if.then.1.for.body21.1_crit_edge
  %dac.057.1 = phi i32 [ %add27.1, %wm_set_vol.exit.1.for.body21.1_crit_edge ], [ 0, %if.then.1.for.body21.1_crit_edge ]
  %add22.1 = or i32 %dac.057.1, 1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.1, align 2
  %conv.i.1 = zext i16 %50 to i32
  %and.i.1 = and i32 %conv.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %lor.lhs.false.i.1, label %for.body21.1.wm_set_vol.exit.1_crit_edge

for.body21.1.wm_set_vol.exit.1_crit_edge:         ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

lor.lhs.false.i.1:                                ; preds = %for.body21.1
  %arrayidx24.1 = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add22.1
  %51 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx24.1, align 2
  %conv1.i.1 = zext i16 %52 to i32
  %and2.i.1 = and i32 %conv1.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.1)
  %tobool3.not.i.1 = icmp eq i32 %and2.i.1, 0
  br i1 %tobool3.not.i.1, label %if.else.i.1, label %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge

lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge:    ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

if.else.i.1:                                      ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i.1 = and i32 %conv1.i.1, 32767
  %and7.i.1 = and i32 %conv.i.1, 32767
  %mul.i.1 = mul nuw nsw i32 %and5.i.1, %and7.i.1
  %div.i.1 = udiv i32 %mul.i.1, 127
  %and8.i.1 = and i32 %div.i.1, 255
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i.1
  %53 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.1, align 1
  %sub.i.1 = sub i8 127, %54
  br label %wm_set_vol.exit.1

wm_set_vol.exit.1:                                ; preds = %if.else.i.1, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge, %for.body21.1.wm_set_vol.exit.1_crit_edge
  %nvol.0.i.1 = phi i8 [ %sub.i.1, %if.else.i.1 ], [ 0, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge ], [ 0, %for.body21.1.wm_set_vol.exit.1_crit_edge ]
  %conv11.i.1 = zext i8 %nvol.0.i.1 to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add22.1, i16 noundef zeroext %conv11.i.1) #8
  %shl.i.i.1 = shl i32 %add22.1, 1
  %55 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %56, i32 0, i32 3, i32 %shl.i.i.1
  %57 = ptrtoint ptr %arrayidx2.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx2.i.i.1, align 1
  %58 = load ptr, ptr %akm.i.i, align 4
  %add.i.i.1 = or i32 %shl.i.i.1, 1
  %arrayidx7.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %58, i32 0, i32 3, i32 %add.i.i.1
  %59 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %nvol.0.i.1, ptr %arrayidx7.i.i.1, align 1
  %or.i.1 = or i16 %conv11.i.1, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add22.1, i16 noundef zeroext %or.i.1) #8
  %add27.1 = add i32 %dac.057.1, 2
  %60 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_total_dacs, align 4
  %cmp19.1 = icmp ult i32 %add27.1, %61
  br i1 %cmp19.1, label %wm_set_vol.exit.1.for.body21.1_crit_edge, label %wm_set_vol.exit.1.if.end.1_crit_edge

wm_set_vol.exit.1.if.end.1_crit_edge:             ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

wm_set_vol.exit.1.for.body21.1_crit_edge:         ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.1

if.end.1:                                         ; preds = %wm_set_vol.exit.1.if.end.1_crit_edge, %if.then.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %change.1.1 = phi i32 [ %change.1, %if.end.if.end.1_crit_edge ], [ 1, %if.then.1.if.end.1_crit_edge ], [ 1, %wm_set_vol.exit.1.if.end.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %62 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_dir.i, align 4
  %64 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %saved.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef %65) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %66 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_mask.i, align 4
  %68 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx5.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef %69) #8
  %70 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %saved.i, align 4
  %72 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %gpio.i, align 4
  %73 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx5.i, align 4
  %75 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_master_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_master_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 32767
  %and = zext i16 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value, align 4
  %arrayidx.1 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.1, align 2
  %10 = and i16 %9, 32767
  %and.1 = zext i16 %10 to i32
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.1, ptr %arrayidx2.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_master_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 33
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp2 = icmp ugt i32 %11, 255
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 2
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 32768
  %or = or i32 %and, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp7.not = icmp eq i32 %or, %conv
  br i1 %cmp7.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %conv10 = trunc i32 %or to i16
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %3, align 2
  %15 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1458.not = icmp eq i32 %16, 0
  br i1 %cmp1458.not, label %if.then9.cleanup_crit_edge, label %if.then9.for.body16_crit_edge

if.then9.for.body16_crit_edge:                    ; preds = %if.then9
  br label %for.body16

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body16:                                       ; preds = %wm_set_vol.exit.for.body16_crit_edge, %if.then9.for.body16_crit_edge
  %dac.059 = phi i32 [ %add23, %wm_set_vol.exit.for.body16_crit_edge ], [ 0, %if.then9.for.body16_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 2
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body16.wm_set_vol.exit_crit_edge

for.body16.wm_set_vol.exit_crit_edge:             ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %for.body16
  %arrayidx20 = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %dac.059
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx20, align 2
  %conv1.i = zext i16 %20 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %conv1.i, 32767
  %and7.i = and i32 %conv.i, 32767
  %mul.i = mul nuw nsw i32 %and5.i, %and7.i
  %div.i = udiv i32 %mul.i, 127
  %and8.i = and i32 %div.i, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %sub.i = sub i8 127, %22
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %for.body16.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %sub.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %for.body16.wm_set_vol.exit_crit_edge ]
  %conv11.i = zext i8 %nvol.0.i to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %dac.059, i16 noundef zeroext %conv11.i) #8
  %shl.i.i = shl i32 %dac.059, 1
  %23 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 %shl.i.i
  %25 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %26 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %26, i32 0, i32 3, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %or.i = or i16 %conv11.i, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %dac.059, i16 noundef zeroext %or.i) #8
  %add23 = add i32 %dac.059, 2
  %28 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_total_dacs, align 4
  %cmp14 = icmp ult i32 %add23, %29
  br i1 %cmp14, label %wm_set_vol.exit.for.body16_crit_edge, label %wm_set_vol.exit.cleanup_crit_edge

wm_set_vol.exit.cleanup_crit_edge:                ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wm_set_vol.exit.for.body16_crit_edge:             ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

cleanup:                                          ; preds = %wm_set_vol.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %change.2 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ 1, %wm_set_vol.exit.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %31)
  %cmp2.1 = icmp ugt i32 %31, 255
  br i1 %cmp2.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %arrayidx3.1 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx3.1, align 2
  %conv.1 = zext i16 %33 to i32
  %and.1 = and i32 %conv.1, 32768
  %or.1 = or i32 %and.1, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1, i32 %conv.1)
  %cmp7.not.1 = icmp eq i32 %or.1, %conv.1
  br i1 %cmp7.not.1, label %if.end.1.cleanup.1_crit_edge, label %if.then9.1

if.end.1.cleanup.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.then9.1:                                       ; preds = %if.end.1
  %conv10.1 = trunc i32 %or.1 to i16
  %34 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv10.1, ptr %arrayidx3.1, align 2
  %35 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1458.not.1 = icmp eq i32 %36, 0
  br i1 %cmp1458.not.1, label %if.then9.1.cleanup.1_crit_edge, label %if.then9.1.for.body16.1_crit_edge

if.then9.1.for.body16.1_crit_edge:                ; preds = %if.then9.1
  br label %for.body16.1

if.then9.1.cleanup.1_crit_edge:                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

for.body16.1:                                     ; preds = %wm_set_vol.exit.1.for.body16.1_crit_edge, %if.then9.1.for.body16.1_crit_edge
  %dac.059.1 = phi i32 [ %add23.1, %wm_set_vol.exit.1.for.body16.1_crit_edge ], [ 0, %if.then9.1.for.body16.1_crit_edge ]
  %add17.1 = or i32 %dac.059.1, 1
  %37 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx3.1, align 2
  %conv.i.1 = zext i16 %38 to i32
  %and.i.1 = and i32 %conv.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %lor.lhs.false.i.1, label %for.body16.1.wm_set_vol.exit.1_crit_edge

for.body16.1.wm_set_vol.exit.1_crit_edge:         ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

lor.lhs.false.i.1:                                ; preds = %for.body16.1
  %arrayidx20.1 = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add17.1
  %39 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx20.1, align 2
  %conv1.i.1 = zext i16 %40 to i32
  %and2.i.1 = and i32 %conv1.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.1)
  %tobool3.not.i.1 = icmp eq i32 %and2.i.1, 0
  br i1 %tobool3.not.i.1, label %if.else.i.1, label %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge

lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge:    ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

if.else.i.1:                                      ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i.1 = and i32 %conv1.i.1, 32767
  %and7.i.1 = and i32 %conv.i.1, 32767
  %mul.i.1 = mul nuw nsw i32 %and5.i.1, %and7.i.1
  %div.i.1 = udiv i32 %mul.i.1, 127
  %and8.i.1 = and i32 %div.i.1, 255
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i.1
  %41 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.1, align 1
  %sub.i.1 = sub i8 127, %42
  br label %wm_set_vol.exit.1

wm_set_vol.exit.1:                                ; preds = %if.else.i.1, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge, %for.body16.1.wm_set_vol.exit.1_crit_edge
  %nvol.0.i.1 = phi i8 [ %sub.i.1, %if.else.i.1 ], [ 0, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge ], [ 0, %for.body16.1.wm_set_vol.exit.1_crit_edge ]
  %conv11.i.1 = zext i8 %nvol.0.i.1 to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add17.1, i16 noundef zeroext %conv11.i.1) #8
  %shl.i.i.1 = shl i32 %add17.1, 1
  %43 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %44, i32 0, i32 3, i32 %shl.i.i.1
  %45 = ptrtoint ptr %arrayidx2.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx2.i.i.1, align 1
  %46 = load ptr, ptr %akm.i.i, align 4
  %add.i.i.1 = or i32 %shl.i.i.1, 1
  %arrayidx7.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %46, i32 0, i32 3, i32 %add.i.i.1
  %47 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %nvol.0.i.1, ptr %arrayidx7.i.i.1, align 1
  %or.i.1 = or i16 %conv11.i.1, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add17.1, i16 noundef zeroext %or.i.1) #8
  %add23.1 = add i32 %dac.059.1, 2
  %48 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_total_dacs, align 4
  %cmp14.1 = icmp ult i32 %add23.1, %49
  br i1 %cmp14.1, label %wm_set_vol.exit.1.for.body16.1_crit_edge, label %wm_set_vol.exit.1.cleanup.1_crit_edge

wm_set_vol.exit.1.cleanup.1_crit_edge:            ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

wm_set_vol.exit.1.for.body16.1_crit_edge:         ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.1

cleanup.1:                                        ; preds = %wm_set_vol.exit.1.cleanup.1_crit_edge, %if.then9.1.cleanup.1_crit_edge, %if.end.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %change.2.1 = phi i32 [ %change.2, %cleanup.cleanup.1_crit_edge ], [ %change.2, %if.end.1.cleanup.1_crit_edge ], [ 1, %if.then9.1.cleanup.1_crit_edge ], [ 1, %wm_set_vol.exit.1.cleanup.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %50 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_dir.i, align 4
  %52 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saved.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef %53) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %54 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_mask.i, align 4
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx5.i, align 4
  tail call void %55(ptr noundef %1, i32 noundef %57) #8
  %58 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saved.i, align 4
  %60 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %gpio.i, align 4
  %61 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx5.i, align 4
  %63 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  ret i32 %change.2.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_mute_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %1 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %2, 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp10.not = icmp ult i32 %5, 256
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.011, %and
  %arrayidx = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = xor i16 %7, -1
  %9 = lshr i16 %8, 15
  %.not = zext i16 %9 to i32
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.011
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.not, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp55.not = icmp ult i32 %5, 256
  br i1 %cmp55.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %change.056 = phi i32 [ 0, %for.body.lr.ph ], [ %change.1, %if.end.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.057, %and
  %arrayidx = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = xor i16 %13, -1
  %15 = lshr i16 %14, 15
  %16 = zext i16 %15 to i32
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.057
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp5.not = icmp eq i32 %18, %16
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  %and11 = and i16 %13, 32767
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %and11, ptr %arrayidx, align 2
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  %cond16 = select i1 %tobool15.not, i16 -32768, i16 0
  %or = or i16 %cond16, %and11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %arrayidx, align 2
  %arrayidx26 = getelementptr [2 x i16], ptr %3, i32 0, i32 %i.057
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx26, align 2
  %conv.i = zext i16 %24 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.wm_set_vol.exit_crit_edge

if.then.wm_set_vol.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %conv1.i = zext i16 %or to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %conv1.i, 32767
  %and7.i = and i32 %conv.i, 32767
  %mul.i = mul nuw nsw i32 %and5.i, %and7.i
  %div.i = udiv i32 %mul.i, 127
  %and8.i = and i32 %div.i, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %sub.i = sub i8 127, %26
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %if.then.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %sub.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %if.then.wm_set_vol.exit_crit_edge ]
  %conv11.i = zext i8 %nvol.0.i to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %conv11.i) #8
  %shl.i.i = shl nuw i32 %add, 1
  %27 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %28, i32 0, i32 3, i32 %shl.i.i
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %30 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 %add.i.i
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %or.i = or i16 %conv11.i, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %or.i) #8
  br label %if.end

if.end:                                           ; preds = %wm_set_vol.exit, %for.body.if.end_crit_edge
  %change.1 = phi i32 [ 1, %wm_set_vol.exit ], [ %change.056, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %change.1, %if.end.for.end_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %32 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_dir.i, align 4
  %34 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saved.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef %35) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %36 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_mask.i, align 4
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i, align 4
  tail call void %37(ptr noundef %1, i32 noundef %39) #8
  %40 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saved.i, align 4
  %42 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %gpio.i, align 4
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.i, align 4
  %45 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  ret i32 %change.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp10.not = icmp ult i32 %5, 256
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.011, %and
  %arrayidx = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = and i16 %7, 32767
  %and3 = zext i16 %8 to i32
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.011
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and3, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp61.not = icmp ult i32 %5, 256
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %change.063 = phi i32 [ 0, %for.body.lr.ph ], [ %change.2, %cleanup.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.062
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %13)
  %cmp3 = icmp ugt i32 %13, 127
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add = add nuw nsw i32 %i.062, %and
  %arrayidx5 = getelementptr %struct.phase28_spec, ptr %3, i32 0, i32 1, i32 %add
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %15 to i32
  %and6 = and i32 %conv, 32768
  %or = or i32 %and6, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp11.not = icmp eq i32 %or, %conv
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %conv14 = trunc i32 %or to i16
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %arrayidx5, align 2
  %arrayidx23 = getelementptr [2 x i16], ptr %3, i32 0, i32 %i.062
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx23, align 2
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond, label %if.else.i, label %if.then13.wm_set_vol.exit_crit_edge

if.then13.wm_set_vol.exit_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %and7.i = and i32 %conv.i, 32767
  %mul.i = mul nuw nsw i32 %and7.i, %13
  %div.i = udiv i32 %mul.i, 127
  %and8.i = and i32 %div.i, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @wm_vol, i32 0, i32 %and8.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %sub.i = sub i8 127, %20
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %if.then13.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %sub.i, %if.else.i ], [ 0, %if.then13.wm_set_vol.exit_crit_edge ]
  %conv11.i = zext i8 %nvol.0.i to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %conv11.i) #8
  %shl.i.i = shl nuw i32 %add, 1
  %21 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %22, i32 0, i32 3, i32 %shl.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %24 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 %add.i.i
  %25 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %or.i = or i16 %conv11.i, 384
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %or.i) #8
  br label %cleanup

cleanup:                                          ; preds = %wm_set_vol.exit, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %change.2 = phi i32 [ %change.063, %for.body.cleanup_crit_edge ], [ 1, %wm_set_vol.exit ], [ %change.063, %if.end.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %change.2, %cleanup.for.end_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %26 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_dir.i, align 4
  %28 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saved.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef %29) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %30 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_mask.i, align 4
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef %33) #8
  %34 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saved.i, align 4
  %36 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %gpio.i, align 4
  %37 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx5.i, align 4
  %39 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  ret i32 %change.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 41
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = lshr i8 %5, 4
  %7 = and i8 %6, 1
  %8 = xor i8 %7, 1
  %9 = zext i8 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5.i, align 4
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 40
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 41
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %and = and i16 %or.i, -17
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool.not, i16 16, i16 0
  %or = or i16 %and, %cond
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %or.i)
  %cmp = icmp ne i16 %or, %or.i
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef 20, i16 noundef zeroext %or) #8
  %16 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 40
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %11, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %or to i8
  %19 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i13 = getelementptr %struct.snd_akm4xxx, ptr %19, i32 0, i32 3, i32 41
  %20 = ptrtoint ptr %arrayidx7.i13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %arrayidx7.i13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %21 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_dir.i, align 4
  %23 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saved.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef %24) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %25 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_mask.i, align 4
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef %28) #8
  %29 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saved.i, align 4
  %31 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gpio.i, align 4
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.i, align 4
  %34 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  ret i32 %conv4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_pcm_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 35
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp slt i8 %5, 0
  %sub = add nuw nsw i32 %conv8.i, 65409
  %phi.cast = and i32 %sub, 65535
  %cond = select i1 %cmp, i32 %phi.cast, i32 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv1 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv1)
  %cmp = icmp ugt i32 %conv1, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not = icmp eq i32 %conv1, 0
  %10 = trunc i32 %3 to i16
  %11 = add i16 %10, 127
  %phi.cast = and i16 %11, 255
  %cond = select i1 %tobool.not, i16 0, i16 %phi.cast
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %12 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 35
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %15 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cond, i16 %conv8.i)
  %cmp11.not = icmp eq i16 %cond, %conv8.i
  br i1 %cmp11.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef 17, i16 noundef zeroext %cond) #8
  %16 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 34
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %cond to i8
  %19 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i30 = getelementptr %struct.snd_akm4xxx, ptr %19, i32 0, i32 3, i32 35
  %20 = ptrtoint ptr %arrayidx7.i30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %arrayidx7.i30, align 1
  %21 = or i16 %cond, 256
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef 17, i16 noundef zeroext %21)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %change.0 = phi i32 [ 1, %if.then13 ], [ 0, %if.end.if.end16_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %22 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_dir.i, align 4
  %24 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef %25) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %26 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_mask.i, align 4
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef %29) #8
  %30 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved.i, align 4
  %32 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %gpio.i, align 4
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.i, align 4
  %35 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %change.0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phase28_deemp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 43
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %6)
  %cmp = icmp eq i8 %6, 15
  %conv1 = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase28_deemp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 42
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 43
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %or.i = or i32 %shl3.i, %conv8.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %or = or i32 %or.i, 15
  %and = and i32 %or.i, 65520
  %temp.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.0, i32 %or.i)
  %cmp.not = icmp eq i32 %temp.0, %or.i
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = trunc i32 %temp.0 to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef 21, i16 noundef zeroext %conv3) #8
  %10 = lshr i32 %temp.0, 8
  %conv1.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %12, i32 0, i32 3, i32 42
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %temp.0 to i8
  %14 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i13 = getelementptr %struct.snd_akm4xxx, ptr %14, i32 0, i32 3, i32 43
  %15 = ptrtoint ptr %arrayidx7.i13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %arrayidx7.i13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase28_oversampling_info(ptr nocapture noundef readnone %k, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @phase28_oversampling_info.texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phase28_oversampling_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 47
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase28_oversampling_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 46
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 47
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %or.i = or i32 %shl3.i, %conv8.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %or = or i32 %or.i, 8
  %and = and i32 %or.i, 65527
  %temp.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.0, i32 %or.i)
  %cmp.not = icmp eq i32 %temp.0, %or.i
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = trunc i32 %temp.0 to i16
  tail call fastcc void @wm_put_nocache(ptr noundef %1, i32 noundef 23, i16 noundef zeroext %conv3) #8
  %10 = lshr i32 %temp.0, 8
  %conv1.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %12, i32 0, i32 3, i32 46
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %temp.0 to i8
  %14 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i13 = getelementptr %struct.snd_akm4xxx, ptr %14, i32 0, i32 3, i32 47
  %15 = ptrtoint ptr %arrayidx7.i13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %arrayidx7.i13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/phase.c", i32 924, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/phase.c", i32 925, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/phase.c", i32 933, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/phase.c", i32 934, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/phase.c", i32 942, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/phase.c", i32 943, i32 12}
!12 = !{ptr @snd_vt1724_phase_cards, !13, !"snd_vt1724_phase_cards", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/phase.c", i32 921, i32 30}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/phase.c", i32 123, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @akm_phase22, !18, !"akm_phase22", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/phase.c", i32 91, i32 33}
!19 = !{ptr @akm_phase22_priv, !20, !"akm_phase22_priv", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/phase.c", i32 97, i32 40}
!21 = !{ptr @phase22_eeprom, !22, !"phase22_eeprom", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/phase.c", i32 160, i32 28}
!23 = !{ptr @phase28_init.wm_inits_phase28, !24, !"wm_inits_phase28", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/phase.c", i32 369, i32 30}
!25 = !{ptr @wm_vol, !26, !"wm_vol", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/phase.c", i32 73, i32 28}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/phase.c", i32 751, i32 11}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/phase.c", i32 760, i32 11}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/phase.c", i32 768, i32 11}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/phase.c", i32 778, i32 11}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/phase.c", i32 787, i32 11}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/phase.c", i32 797, i32 11}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/phase.c", i32 806, i32 11}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/ice1712/phase.c", i32 816, i32 11}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/phase.c", i32 825, i32 11}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/ice1712/phase.c", i32 835, i32 11}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/phase.c", i32 844, i32 11}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/ice1712/phase.c", i32 854, i32 11}
!51 = !{ptr @phase28_dac_controls, !52, !"phase28_dac_controls", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/phase.c", i32 748, i32 38}
!53 = !{ptr @db_scale_wm_dac, !54, !"db_scale_wm_dac", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/phase.c", i32 745, i32 14}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/phase.c", i32 866, i32 11}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ice1712/phase.c", i32 875, i32 11}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/phase.c", i32 883, i32 11}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/phase.c", i32 890, i32 11}
!63 = !{ptr @wm_controls, !64, !"wm_controls", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/phase.c", i32 863, i32 38}
!65 = !{ptr @db_scale_wm_pcm, !66, !"db_scale_wm_pcm", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/phase.c", i32 746, i32 14}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/phase.c", i32 710, i32 41}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ice1712/phase.c", i32 710, i32 49}
!71 = !{ptr @phase28_oversampling_info.texts, !72, !"texts", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/phase.c", i32 710, i32 28}
!73 = !{ptr @phase28_eeprom, !74, !"phase28_eeprom", i1 false, i1 false}
!74 = !{!"../sound/pci/ice1712/phase.c", i32 177, i32 28}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
