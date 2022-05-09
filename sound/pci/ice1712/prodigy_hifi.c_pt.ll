; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/prodigy_hifi.c_pt.bc'
source_filename = "../sound/pci/ice1712/prodigy_hifi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
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
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.prodigy_hifi_spec = type { [2 x i16], [8 x i16] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Audiotrak Prodigy 7.1 HiFi\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prodigy71hifi\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Prodigy71HIFI\00", [18 x i8] zeroinitializer }, align 32
@prodigy71hifi_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"K\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Audiotrak Prodigy HD2\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prodigyhd2\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Prodigy71HD2\00", [19 x i8] zeroinitializer }, align 32
@prodigyhd2_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"K\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hercules Fortissimo IV\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fortissimo4\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fortissimo4\00", [20 x i8] zeroinitializer }, align 32
@fortissimo4_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"C\80\FC\C1\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_prodigy_hifi_cards = dso_local global { [4 x %struct.snd_ice1712_card_info], [32 x i8] } { [4 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 942756929, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @prodigy_hifi_init, ptr null, ptr @prodigy_hifi_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @prodigy71hifi_eeprom }, %struct.snd_ice1712_card_info { i32 925979713, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @prodigy_hd2_init, ptr null, ptr @prodigy_hd2_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @prodigyhd2_eeprom }, %struct.snd_ice1712_card_info { i32 -2129264384, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @prodigy_hifi_init, ptr null, ptr @prodigy_hifi_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @fortissimo4_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@prodigy_hifi_init.wm8776_defaults = internal constant { [42 x i16], [44 x i8] } { [42 x i16] [i16 12, i16 34, i16 10, i16 34, i16 11, i16 34, i16 7, i16 144, i16 22, i16 1, i16 0, i16 377, i16 1, i16 377, i16 3, i16 0, i16 3, i16 256, i16 4, i16 0, i16 4, i16 256, i16 6, i16 0, i16 9, i16 0, i16 14, i16 0, i16 15, i16 0, i16 16, i16 123, i16 17, i16 0, i16 18, i16 0, i16 19, i16 0, i16 8, i16 0, i16 21, i16 3], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@prodigy_hifi_resume.wm8776_reinit_registers = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 12, i16 10, i16 11, i16 22, i16 0, i16 1, i16 6, i16 9, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 21], [34 x i8] zeroinitializer }, align 32
@prodigy_hifi_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @wm_master_vol_info, ptr @wm_master_vol_get, ptr @wm_master_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @wm_dac_vol_info, ptr @wm_dac_vol_get, ptr @wm_dac_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @wm8766_vol_info, ptr @wm8766_vol_get, ptr @wm8766_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 512 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @wm8766_vol_info, ptr @wm8766_vol_get, ptr @wm8766_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @wm8766_vol_info, ptr @wm8766_vol_get, ptr @wm8766_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @wm8766_vol_info, ptr @wm8766_vol_get, ptr @wm8766_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 518 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @wm_adc_vol_info, ptr @wm_adc_vol_get, ptr @wm_adc_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_adc_mux_get, ptr @wm_adc_mux_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_adc_mux_get, ptr @wm_adc_mux_put, %union.anon.87 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_bypass_get, ptr @wm_bypass_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_chswap_get, ptr @wm_chswap_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @wm_adc_mux_enum_info, ptr @wm_adc_mux_enum_get, ptr @wm_adc_mux_enum_put, %union.anon.87 zeroinitializer, i32 0 }], [128 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_wm_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rear Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Swap Output Channels\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Capture Source\00", [42 x i8] zeroinitializer }, align 32
@wm_adc_mux_enum_info.texts = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1+AIN2\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1+AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2+AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN2+AIN3\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1+AIN4\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2+AIN4\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN2+AIN4\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN3+AIN4\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN3+AIN4\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN2+AIN3+AIN4\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN1+AIN2+AIN3+AIN4\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN5\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1+AIN5\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2+AIN5\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN2+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN3+AIN5\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN3+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN2+AIN3+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN1+AIN2+AIN3+AIN5\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN4+AIN5\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN1+AIN4+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN2+AIN4+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN1+AIN2+AIN4+AIN5\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIN3+AIN4+AIN5\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN1+AIN3+AIN4+AIN5\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN2+AIN3+AIN4+AIN5\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AIN1+AIN2+AIN3+AIN4+AIN5\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wm_codec\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02x = %04x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@prodigy_hd2_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @ak4396_dac_vol_info, ptr @ak4396_dac_vol_get, ptr @ak4396_dac_vol_put, %union.anon.87 { ptr @ak4396_db_scale }, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ak4396_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 8, i32 -9999999, i32 0], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1235, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1236, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1241, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"prodigy71hifi_eeprom\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1183, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1245, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1246, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1251, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"prodigyhd2_eeprom\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1199, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1255, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1256, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1261, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"fortissimo4_eeprom\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1215, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"snd_vt1724_prodigy_hifi_cards\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1232, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"wm8776_defaults\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1036, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"wm8776_reinit_registers\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 976, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"prodigy_hifi_controls\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 744, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 749, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"db_scale_wm_dac\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 284, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 759, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 769, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 780, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 791, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 802, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 813, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 821, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 829, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 837, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 844, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 851, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 507, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 508, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 508, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 508, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 508, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 509, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 509, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 509, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 510, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 511, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 511, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 511, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 512, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 513, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 513, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 514, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 515, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 516, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 516, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 516, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 517, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 518, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 518, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 519, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 520, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 521, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 521, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 522, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 523, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 524, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 525, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 526, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 527, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 893, i32 34 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 886, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 869, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant [21 x i8] c"prodigy_hd2_controls\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 287, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant [16 x i8] c"ak4396_db_scale\00", align 1
@___asan_gen_.255 = private constant [36 x i8] c"../sound/pci/ice1712/prodigy_hifi.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 285, i32 14 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @prodigy71hifi_eeprom, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @prodigyhd2_eeprom, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fortissimo4_eeprom, ptr @snd_vt1724_prodigy_hifi_cards, ptr @prodigy_hifi_init.wm8776_defaults, ptr @prodigy_hifi_resume.wm8776_reinit_registers, ptr @prodigy_hifi_controls, ptr @.str.9, ptr @db_scale_wm_dac, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @wm_adc_mux_enum_info.texts, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @prodigy_hd2_controls, ptr @ak4396_db_scale], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy71hifi_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigyhd2_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fortissimo4_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_prodigy_hifi_cards to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy_hifi_init.wm8776_defaults to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy_hifi_resume.wm8776_reinit_registers to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy_hifi_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_adc_mux_enum_info.texts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy_hd2_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4396_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hifi_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %0 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.clear2 = and i16 %bf.load, -12289
  %bf.set3 = or i16 %bf.clear2, 8192
  store i16 %bf.set3, ptr %vt1720, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %1 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %2 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_total_adcs, align 4
  %saved = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %3 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %saved, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #11
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %5 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %akm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %6 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %akm_codecs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #11
  %tobool6.not = icmp eq ptr %call7.i.i35, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %spec9 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %8 = ptrtoint ptr %spec9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i35, ptr %spec9, align 4
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 42, i8 noundef zeroext 3) #8
  %9 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %akm, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %10, i32 0, i32 3, i32 42
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %12 = load ptr, ptr %akm, align 4
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %12, i32 0, i32 3, i32 43
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx7.i.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext 1) #8
  %14 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %akm, align 4
  %arrayidx2.i.1.i = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 16
  %16 = ptrtoint ptr %arrayidx2.i.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx2.i.1.i, align 1
  %17 = load ptr, ptr %akm, align 4
  %arrayidx7.i.1.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 17
  %18 = ptrtoint ptr %arrayidx7.i.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx7.i.1.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext 0) #8
  %19 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %akm, align 4
  %arrayidx2.i.2.i = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 14
  %21 = ptrtoint ptr %arrayidx2.i.2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx2.i.2.i, align 1
  %22 = load ptr, ptr %akm, align 4
  %arrayidx7.i.2.i = getelementptr %struct.snd_akm4xxx, ptr %22, i32 0, i32 3, i32 15
  %23 = ptrtoint ptr %arrayidx7.i.2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx7.i.2.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 26, i8 noundef zeroext 8) #8
  %24 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %akm, align 4
  %arrayidx2.i.3.i = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 26
  %26 = ptrtoint ptr %arrayidx2.i.3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx2.i.3.i, align 1
  %27 = load ptr, ptr %akm, align 4
  %arrayidx7.i.3.i = getelementptr %struct.snd_akm4xxx, ptr %27, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %arrayidx7.i.3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %arrayidx7.i.3.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  %29 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm, align 4
  %arrayidx2.i.4.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 46
  %31 = ptrtoint ptr %arrayidx2.i.4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx2.i.4.i, align 1
  %32 = load ptr, ptr %akm, align 4
  %arrayidx7.i.4.i = getelementptr %struct.snd_akm4xxx, ptr %32, i32 0, i32 3, i32 47
  %33 = ptrtoint ptr %arrayidx7.i.4.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx7.i.4.i, align 1
  %call10 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8
  %i.036 = phi i32 [ 0, %if.end8 ], [ %add13, %for.body.for.body_crit_edge ]
  %arrayidx11 = getelementptr [42 x i16], ptr @prodigy_hifi_init.wm8776_defaults, i32 0, i32 %i.036
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx11, align 2
  %conv = zext i16 %35 to i32
  %add = or i32 %i.036, 1
  %arrayidx12 = getelementptr [42 x i16], ptr @prodigy_hifi_init.wm8776_defaults, i32 0, i32 %add
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx12, align 2
  %38 = shl i16 %35, 9
  %conv1.i.i = or i16 %38, %37
  %39 = lshr i16 %conv1.i.i, 8
  %conv3.i.i = trunc i16 %39 to i8
  %conv5.i.i = trunc i16 %37 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #8
  %shl.i = shl nuw nsw i32 %conv, 1
  %40 = lshr i16 %37, 8
  %conv1.i = trunc i16 %40 to i8
  %41 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %akm, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %42, i32 0, i32 3, i32 %shl.i
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %44 = load ptr, ptr %akm, align 4
  %add.i = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %44, i32 0, i32 3, i32 %add.i
  %45 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv5.i.i, ptr %arrayidx7.i, align 1
  %add13 = add nuw nsw i32 %i.036, 2
  %cmp = icmp ult i32 %i.036, 40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wm8766_init(ptr noundef %ice)
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %46 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @prodigy_hifi_resume, ptr %pm_resume, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %47 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load14 = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set16 = or i8 %bf.load14, -128
  store i8 %bf.set16, ptr %pm_suspend_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hifi_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @prodigy_hifi_controls, ptr noundef %ice) #8
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
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 1), ptr noundef %ice) #8
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
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 2), ptr noundef %ice) #8
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
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 3), ptr noundef %ice) #8
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
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 4), ptr noundef %ice) #8
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
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 5), ptr noundef %ice) #8
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
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 6), ptr noundef %ice) #8
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
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 7), ptr noundef %ice) #8
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
  %call.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 8), ptr noundef %ice) #8
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
  %call.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 9), ptr noundef %ice) #8
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
  %call.10 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 10), ptr noundef %ice) #8
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
  %call.11 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @prodigy_hifi_controls, i32 0, i32 11), ptr noundef %ice) #8
  %call1.11 = tail call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.11)
  %cmp2.11 = icmp slt i32 %call1.11, 0
  br i1 %cmp2.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %25, ptr noundef nonnull @.str.53, ptr noundef %ice, ptr noundef nonnull @wm_proc_regs_read, ptr noundef nonnull @wm_proc_regs_write) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.11, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ], [ %call1.3, %for.cond.2.cleanup_crit_edge ], [ %call1.4, %for.cond.3.cleanup_crit_edge ], [ %call1.5, %for.cond.4.cleanup_crit_edge ], [ %call1.6, %for.cond.5.cleanup_crit_edge ], [ %call1.7, %for.cond.6.cleanup_crit_edge ], [ %call1.8, %for.cond.7.cleanup_crit_edge ], [ %call1.9, %for.cond.8.cleanup_crit_edge ], [ %call1.10, %for.cond.9.cleanup_crit_edge ], [ %call1.11, %for.cond.10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hd2_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %0 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.clear2 = and i16 %bf.load, -12289
  %bf.set3 = or i16 %bf.clear2, 8192
  store i16 %bf.set3, ptr %vt1720, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %1 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %2 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_total_adcs, align 4
  %saved = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %3 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %saved, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #11
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %5 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %akm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %6 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %akm_codecs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #11
  %tobool6.not = icmp eq ptr %call7.i.i25, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %spec9 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %8 = ptrtoint ptr %spec9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i25, ptr %spec9, align 4
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %9 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @prodigy_hd2_resume, ptr %pm_resume, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %10 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10 = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set12 = or i8 %bf.load10, -128
  store i8 %bf.set12, ptr %pm_suspend_enabled, align 4
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 134) #8
  tail call void @msleep(i32 noundef 100) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 135) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 135) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 1, i32 noundef 2) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 2, i32 noundef 0) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 3, i32 noundef 0) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 4, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hd2_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @prodigy_hd2_controls, ptr noundef %ice) #8
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef %ice, ptr noundef nonnull @wm_proc_regs_read, ptr noundef nonnull @wm_proc_regs_write) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8766_init(ptr noundef %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 31, i32 noundef 0)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 2, i32 noundef 288)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 3, i32 noundef 34)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 9, i32 noundef 1)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 10, i32 noundef 128)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 0, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 4, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 6, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 1, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 5, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 7, i32 noundef 256)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 12, i32 noundef 0)
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef 15, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hifi_resume(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 42, i8 noundef zeroext 3) #8
  %2 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 42
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %5 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 43
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx7.i.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext 1) #8
  %7 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.1.i = getelementptr %struct.snd_akm4xxx, ptr %8, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %arrayidx2.i.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx2.i.1.i, align 1
  %10 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.1.i = getelementptr %struct.snd_akm4xxx, ptr %10, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %arrayidx7.i.1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx7.i.1.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext 0) #8
  %12 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.2.i = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 14
  %14 = ptrtoint ptr %arrayidx2.i.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i.2.i, align 1
  %15 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.2.i = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 15
  %16 = ptrtoint ptr %arrayidx7.i.2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i.2.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 26, i8 noundef zeroext 8) #8
  %17 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.3.i = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 26
  %19 = ptrtoint ptr %arrayidx2.i.3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx2.i.3.i, align 1
  %20 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.3.i = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %arrayidx7.i.3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %arrayidx7.i.3.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  %22 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.4.i = getelementptr %struct.snd_akm4xxx, ptr %23, i32 0, i32 3, i32 46
  %24 = ptrtoint ptr %arrayidx2.i.4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx2.i.4.i, align 1
  %25 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.4.i = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 47
  %26 = ptrtoint ptr %arrayidx7.i.4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx7.i.4.i, align 1
  %call = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0129 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x i16], ptr @prodigy_hifi_resume.wm8776_reinit_registers, i32 0, i32 %i.0129
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %28 to i32
  %shl.i = shl nuw nsw i32 %conv, 1
  %29 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm.i.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 %shl.i
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %32 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %add.i = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 %add.i
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx7.i, align 1
  %35 = shl i16 %28, 9
  %conv1.i.i = or i16 %shl3.i, %35
  %36 = lshr exact i16 %conv1.i.i, 8
  %conv3.i.i = trunc i16 %36 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %34) #8
  %37 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %38, i32 0, i32 3, i32 %shl.i
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %32, ptr %arrayidx2.i, align 1
  %40 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i72 = getelementptr %struct.snd_akm4xxx, ptr %40, i32 0, i32 3, i32 %add.i
  %41 = ptrtoint ptr %arrayidx7.i72 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %34, ptr %arrayidx7.i72, align 1
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @wm8766_init(ptr noundef %ice)
  br label %for.body8

for.body8:                                        ; preds = %wm8766_set_vol.exit122.for.body8_crit_edge, %for.end
  %cmp6 = phi i1 [ true, %for.end ], [ false, %wm8766_set_vol.exit122.for.body8_crit_edge ]
  %ch.0130 = phi i32 [ 0, %for.end ], [ 1, %wm8766_set_vol.exit122.for.body8_crit_edge ]
  %add = add nuw nsw i32 %ch.0130, 3
  %arrayidx11 = getelementptr [2 x i16], ptr %1, i32 0, i32 %ch.0130
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx11, align 2
  %conv.i = zext i16 %43 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body8.wm_set_vol.exit_crit_edge

for.body8.wm_set_vol.exit_crit_edge:              ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %for.body8
  %add9 = or i32 %ch.0130, 2
  %arrayidx10 = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 %add9
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx10, align 2
  %conv1.i = zext i16 %45 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %46 = and i32 %mul.i, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not.i = icmp eq i32 %46, 0
  %div25.i = lshr i32 %mul.i, 7
  %47 = trunc i32 %div25.i to i8
  %phi.cast.i = add i8 %47, 127
  %cond.i = select i1 %tobool11.not.i, i8 0, i8 %phi.cast.i
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %for.body8.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %cond.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %for.body8.wm_set_vol.exit_crit_edge ]
  %reg.tr.i.i.i = trunc i32 %add to i8
  %48 = shl nuw nsw i8 %reg.tr.i.i.i, 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %48, i8 noundef zeroext %nvol.0.i) #8
  %shl.i.i = shl nuw nsw i32 %add, 1
  %49 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i74 = getelementptr %struct.snd_akm4xxx, ptr %50, i32 0, i32 3, i32 %shl.i.i
  %51 = ptrtoint ptr %arrayidx2.i.i74 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx2.i.i74, align 1
  %52 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i75 = getelementptr %struct.snd_akm4xxx, ptr %52, i32 0, i32 3, i32 %add.i.i
  %53 = ptrtoint ptr %arrayidx7.i.i75 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i75, align 1
  %conv3.i.i76 = or i8 %48, 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i76, i8 noundef zeroext %nvol.0.i) #8
  %54 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx11, align 2
  %conv.i77 = zext i16 %55 to i32
  %and.i78 = and i32 %conv.i77, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %lor.lhs.false.i83, label %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge

wm_set_vol.exit.wm8766_set_vol.exit_crit_edge:    ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

lor.lhs.false.i83:                                ; preds = %wm_set_vol.exit
  %arrayidx15 = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 %ch.0130
  %56 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx15, align 2
  %conv1.i80 = zext i16 %57 to i32
  %and2.i81 = and i32 %conv1.i80, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i81)
  %tobool3.not.i82 = icmp eq i32 %and2.i81, 0
  br i1 %tobool3.not.i82, label %if.else.i87, label %lor.lhs.false.i83.wm8766_set_vol.exit_crit_edge

lor.lhs.false.i83.wm8766_set_vol.exit_crit_edge:  ; preds = %lor.lhs.false.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

if.else.i87:                                      ; preds = %lor.lhs.false.i83
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i84 = mul nuw i32 %conv1.i80, %conv.i77
  %58 = and i32 %mul.i84, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool11.not.i85 = icmp eq i32 %58, 0
  %div20.i = lshr i32 %mul.i84, 7
  %phi.cast.i86 = add nuw nsw i32 %div20.i, 127
  %phi.cast.op.i = and i32 %phi.cast.i86, 255
  %phi.cast.op.op.i = or i32 %phi.cast.op.i, 256
  %phi.bo21.i = select i1 %tobool11.not.i85, i32 256, i32 %phi.cast.op.op.i
  br label %wm8766_set_vol.exit

wm8766_set_vol.exit:                              ; preds = %if.else.i87, %lor.lhs.false.i83.wm8766_set_vol.exit_crit_edge, %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge
  %nvol.0.i88 = phi i32 [ %phi.bo21.i, %if.else.i87 ], [ 256, %lor.lhs.false.i83.wm8766_set_vol.exit_crit_edge ], [ 256, %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef %ch.0130, i32 noundef %nvol.0.i88) #8
  %add18 = or i32 %ch.0130, 4
  %59 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx11, align 2
  %conv.i89 = zext i16 %60 to i32
  %and.i90 = and i32 %conv.i89, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %lor.lhs.false.i95, label %wm8766_set_vol.exit.wm8766_set_vol.exit105_crit_edge

wm8766_set_vol.exit.wm8766_set_vol.exit105_crit_edge: ; preds = %wm8766_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit105

lor.lhs.false.i95:                                ; preds = %wm8766_set_vol.exit
  %arrayidx21 = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 %add18
  %61 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx21, align 2
  %conv1.i92 = zext i16 %62 to i32
  %and2.i93 = and i32 %conv1.i92, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i93)
  %tobool3.not.i94 = icmp eq i32 %and2.i93, 0
  br i1 %tobool3.not.i94, label %if.else.i103, label %lor.lhs.false.i95.wm8766_set_vol.exit105_crit_edge

lor.lhs.false.i95.wm8766_set_vol.exit105_crit_edge: ; preds = %lor.lhs.false.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit105

if.else.i103:                                     ; preds = %lor.lhs.false.i95
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i96 = mul nuw i32 %conv1.i92, %conv.i89
  %63 = and i32 %mul.i96, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool11.not.i97 = icmp eq i32 %63, 0
  %div20.i98 = lshr i32 %mul.i96, 7
  %phi.cast.i99 = add nuw nsw i32 %div20.i98, 127
  %phi.cast.op.i100 = and i32 %phi.cast.i99, 255
  %phi.cast.op.op.i101 = or i32 %phi.cast.op.i100, 256
  %phi.bo21.i102 = select i1 %tobool11.not.i97, i32 256, i32 %phi.cast.op.op.i101
  br label %wm8766_set_vol.exit105

wm8766_set_vol.exit105:                           ; preds = %if.else.i103, %lor.lhs.false.i95.wm8766_set_vol.exit105_crit_edge, %wm8766_set_vol.exit.wm8766_set_vol.exit105_crit_edge
  %nvol.0.i104 = phi i32 [ %phi.bo21.i102, %if.else.i103 ], [ 256, %lor.lhs.false.i95.wm8766_set_vol.exit105_crit_edge ], [ 256, %wm8766_set_vol.exit.wm8766_set_vol.exit105_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef %add18, i32 noundef %nvol.0.i104) #8
  %add24 = or i32 %ch.0130, 6
  %64 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx11, align 2
  %conv.i106 = zext i16 %65 to i32
  %and.i107 = and i32 %conv.i106, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %lor.lhs.false.i112, label %wm8766_set_vol.exit105.wm8766_set_vol.exit122_crit_edge

wm8766_set_vol.exit105.wm8766_set_vol.exit122_crit_edge: ; preds = %wm8766_set_vol.exit105
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit122

lor.lhs.false.i112:                               ; preds = %wm8766_set_vol.exit105
  %arrayidx27 = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 %add24
  %66 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx27, align 2
  %conv1.i109 = zext i16 %67 to i32
  %and2.i110 = and i32 %conv1.i109, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i110)
  %tobool3.not.i111 = icmp eq i32 %and2.i110, 0
  br i1 %tobool3.not.i111, label %if.else.i120, label %lor.lhs.false.i112.wm8766_set_vol.exit122_crit_edge

lor.lhs.false.i112.wm8766_set_vol.exit122_crit_edge: ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit122

if.else.i120:                                     ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i113 = mul nuw i32 %conv1.i109, %conv.i106
  %68 = and i32 %mul.i113, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool11.not.i114 = icmp eq i32 %68, 0
  %div20.i115 = lshr i32 %mul.i113, 7
  %phi.cast.i116 = add nuw nsw i32 %div20.i115, 127
  %phi.cast.op.i117 = and i32 %phi.cast.i116, 255
  %phi.cast.op.op.i118 = or i32 %phi.cast.op.i117, 256
  %phi.bo21.i119 = select i1 %tobool11.not.i114, i32 256, i32 %phi.cast.op.op.i118
  br label %wm8766_set_vol.exit122

wm8766_set_vol.exit122:                           ; preds = %if.else.i120, %lor.lhs.false.i112.wm8766_set_vol.exit122_crit_edge, %wm8766_set_vol.exit105.wm8766_set_vol.exit122_crit_edge
  %nvol.0.i121 = phi i32 [ %phi.bo21.i119, %if.else.i120 ], [ 256, %lor.lhs.false.i112.wm8766_set_vol.exit122_crit_edge ], [ 256, %wm8766_set_vol.exit105.wm8766_set_vol.exit122_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef %add24, i32 noundef %nvol.0.i121) #8
  br i1 %cmp6, label %wm8766_set_vol.exit122.for.body8_crit_edge, label %for.end32

wm8766_set_vol.exit122.for.body8_crit_edge:       ; preds = %wm8766_set_vol.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.end32:                                        ; preds = %wm8766_set_vol.exit122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %69 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i124 = getelementptr %struct.snd_akm4xxx, ptr %70, i32 0, i32 3, i32 16
  %71 = ptrtoint ptr %arrayidx2.i124 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx2.i124, align 1
  %72 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i125 = getelementptr %struct.snd_akm4xxx, ptr %72, i32 0, i32 3, i32 17
  %73 = ptrtoint ptr %arrayidx7.i125 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx7.i125, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext -112) #8
  %74 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i127 = getelementptr %struct.snd_akm4xxx, ptr %75, i32 0, i32 3, i32 14
  %76 = ptrtoint ptr %arrayidx2.i127 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx2.i127, align 1
  %77 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i128 = getelementptr %struct.snd_akm4xxx, ptr %77, i32 0, i32 3, i32 15
  %78 = ptrtoint ptr %arrayidx7.i128 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -112, ptr %arrayidx7.i128, align 1
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8766_spi_write(ptr noundef %ice, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %0 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dir.i, align 4
  tail call void %1(ptr noundef %ice, i32 noundef 458752) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mask.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef -458753) #8
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ice) #8
  %and.i = and i32 %call.i.i, -262145
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %6 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_data.i.i, align 4
  tail call void %7(ptr noundef %ice, i32 noundef %and.i) #8
  %shl = shl i32 %reg, 9
  %and = and i32 %data, 511
  %or = or i32 %and, %shl
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.015.i = phi i32 [ %or, %entry ], [ %and.i10, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %ice) #8
  %and.i.i = and i32 %call.i.i.i, -131073
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i6.i = tail call i32 %14(ptr noundef %ice) #8
  %and.i8.i = and i32 %call.i.i6.i, -65537
  %and.i10 = shl i32 %data.addr.015.i, 1
  %15 = and i32 %and.i10, 65536
  %tmp.0.i.i = or i32 %and.i8.i, %15
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %ice, i32 noundef %tmp.0.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #8
  %19 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i11.i = tail call i32 %20(ptr noundef %ice) #8
  %or.i12.i = or i32 %call.i.i11.i, 131072
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef %or.i12.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %wm8766_spi_send_word.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

wm8766_spi_send_word.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i12 = tail call i32 %25(ptr noundef %ice) #8
  %or.i13 = or i32 %call.i.i12, 262144
  %26 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_data.i.i, align 4
  tail call void %27(ptr noundef %ice, i32 noundef %or.i13) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #8
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %29 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_mask, align 4
  %31 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_mask.i, align 4
  tail call void %32(ptr noundef %ice, i32 noundef %30) #8
  %33 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio, align 4
  %35 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_dir.i, align 4
  tail call void %36(ptr noundef %ice, i32 noundef %34) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

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
  store i32 128, ptr %max, align 4
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
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 4
  %arrayidx.1 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %8 to i32
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.1, ptr %arrayidx2.1, align 4
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %change.0114 = phi i32 [ 0, %entry ], [ %change.1, %for.inc.for.body_crit_edge ]
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %ch.0112 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %ch.0112
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [2 x i16], ptr %3, i32 0, i32 %ch.0112
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp eq i32 %5, %conv
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %conv7 = trunc i32 %5 to i16
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv7, ptr %arrayidx2, align 2
  %add = add nuw nsw i32 %ch.0112, 3
  %conv.i = and i32 %5, 65535
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.wm_set_vol.exit_crit_edge

if.then.wm_set_vol.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %add10 = or i32 %ch.0112, 2
  %arrayidx11 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %add10
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx11, align 2
  %conv1.i = zext i16 %10 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %11 = and i32 %mul.i, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not.i = icmp eq i32 %11, 0
  %div25.i = lshr i32 %mul.i, 7
  %12 = trunc i32 %div25.i to i8
  %phi.cast.i = add i8 %12, 127
  %cond.i = select i1 %tobool11.not.i, i8 0, i8 %phi.cast.i
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %if.then.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %cond.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %if.then.wm_set_vol.exit_crit_edge ]
  %reg.tr.i.i.i = trunc i32 %add to i8
  %13 = shl nuw nsw i8 %reg.tr.i.i.i, 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %13, i8 noundef zeroext %nvol.0.i) #8
  %shl.i.i = shl nuw nsw i32 %add, 1
  %14 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 %shl.i.i
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %17 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 %add.i.i
  %18 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %conv3.i.i = or i8 %13, 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %nvol.0.i) #8
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx2, align 2
  %conv.i66 = zext i16 %20 to i32
  %and.i67 = and i32 %conv.i66, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %lor.lhs.false.i72, label %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge

wm_set_vol.exit.wm8766_set_vol.exit_crit_edge:    ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

lor.lhs.false.i72:                                ; preds = %wm_set_vol.exit
  %arrayidx17 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %ch.0112
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx17, align 2
  %conv1.i69 = zext i16 %22 to i32
  %and2.i70 = and i32 %conv1.i69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i70)
  %tobool3.not.i71 = icmp eq i32 %and2.i70, 0
  br i1 %tobool3.not.i71, label %if.else.i76, label %lor.lhs.false.i72.wm8766_set_vol.exit_crit_edge

lor.lhs.false.i72.wm8766_set_vol.exit_crit_edge:  ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

if.else.i76:                                      ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i73 = mul nuw i32 %conv1.i69, %conv.i66
  %23 = and i32 %mul.i73, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.i74 = icmp eq i32 %23, 0
  %div20.i = lshr i32 %mul.i73, 7
  %phi.cast.i75 = add nuw nsw i32 %div20.i, 127
  %phi.cast.op.i = and i32 %phi.cast.i75, 255
  %phi.cast.op.op.i = or i32 %phi.cast.op.i, 256
  %phi.bo21.i = select i1 %tobool11.not.i74, i32 256, i32 %phi.cast.op.op.i
  br label %wm8766_set_vol.exit

wm8766_set_vol.exit:                              ; preds = %if.else.i76, %lor.lhs.false.i72.wm8766_set_vol.exit_crit_edge, %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge
  %nvol.0.i77 = phi i32 [ %phi.bo21.i, %if.else.i76 ], [ 256, %lor.lhs.false.i72.wm8766_set_vol.exit_crit_edge ], [ 256, %wm_set_vol.exit.wm8766_set_vol.exit_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %1, i32 noundef %ch.0112, i32 noundef %nvol.0.i77) #8
  %add20 = or i32 %ch.0112, 4
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx2, align 2
  %conv.i78 = zext i16 %25 to i32
  %and.i79 = and i32 %conv.i78, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %lor.lhs.false.i84, label %wm8766_set_vol.exit.wm8766_set_vol.exit94_crit_edge

wm8766_set_vol.exit.wm8766_set_vol.exit94_crit_edge: ; preds = %wm8766_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit94

lor.lhs.false.i84:                                ; preds = %wm8766_set_vol.exit
  %arrayidx23 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %add20
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx23, align 2
  %conv1.i81 = zext i16 %27 to i32
  %and2.i82 = and i32 %conv1.i81, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i82)
  %tobool3.not.i83 = icmp eq i32 %and2.i82, 0
  br i1 %tobool3.not.i83, label %if.else.i92, label %lor.lhs.false.i84.wm8766_set_vol.exit94_crit_edge

lor.lhs.false.i84.wm8766_set_vol.exit94_crit_edge: ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit94

if.else.i92:                                      ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i85 = mul nuw i32 %conv1.i81, %conv.i78
  %28 = and i32 %mul.i85, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool11.not.i86 = icmp eq i32 %28, 0
  %div20.i87 = lshr i32 %mul.i85, 7
  %phi.cast.i88 = add nuw nsw i32 %div20.i87, 127
  %phi.cast.op.i89 = and i32 %phi.cast.i88, 255
  %phi.cast.op.op.i90 = or i32 %phi.cast.op.i89, 256
  %phi.bo21.i91 = select i1 %tobool11.not.i86, i32 256, i32 %phi.cast.op.op.i90
  br label %wm8766_set_vol.exit94

wm8766_set_vol.exit94:                            ; preds = %if.else.i92, %lor.lhs.false.i84.wm8766_set_vol.exit94_crit_edge, %wm8766_set_vol.exit.wm8766_set_vol.exit94_crit_edge
  %nvol.0.i93 = phi i32 [ %phi.bo21.i91, %if.else.i92 ], [ 256, %lor.lhs.false.i84.wm8766_set_vol.exit94_crit_edge ], [ 256, %wm8766_set_vol.exit.wm8766_set_vol.exit94_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %1, i32 noundef %add20, i32 noundef %nvol.0.i93) #8
  %add26 = or i32 %ch.0112, 6
  %29 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx2, align 2
  %conv.i95 = zext i16 %30 to i32
  %and.i96 = and i32 %conv.i95, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %lor.lhs.false.i101, label %wm8766_set_vol.exit94.wm8766_set_vol.exit111_crit_edge

wm8766_set_vol.exit94.wm8766_set_vol.exit111_crit_edge: ; preds = %wm8766_set_vol.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit111

lor.lhs.false.i101:                               ; preds = %wm8766_set_vol.exit94
  %arrayidx29 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %add26
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx29, align 2
  %conv1.i98 = zext i16 %32 to i32
  %and2.i99 = and i32 %conv1.i98, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i99)
  %tobool3.not.i100 = icmp eq i32 %and2.i99, 0
  br i1 %tobool3.not.i100, label %if.else.i109, label %lor.lhs.false.i101.wm8766_set_vol.exit111_crit_edge

lor.lhs.false.i101.wm8766_set_vol.exit111_crit_edge: ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit111

if.else.i109:                                     ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i102 = mul nuw i32 %conv1.i98, %conv.i95
  %33 = and i32 %mul.i102, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not.i103 = icmp eq i32 %33, 0
  %div20.i104 = lshr i32 %mul.i102, 7
  %phi.cast.i105 = add nuw nsw i32 %div20.i104, 127
  %phi.cast.op.i106 = and i32 %phi.cast.i105, 255
  %phi.cast.op.op.i107 = or i32 %phi.cast.op.i106, 256
  %phi.bo21.i108 = select i1 %tobool11.not.i103, i32 256, i32 %phi.cast.op.op.i107
  br label %wm8766_set_vol.exit111

wm8766_set_vol.exit111:                           ; preds = %if.else.i109, %lor.lhs.false.i101.wm8766_set_vol.exit111_crit_edge, %wm8766_set_vol.exit94.wm8766_set_vol.exit111_crit_edge
  %nvol.0.i110 = phi i32 [ %phi.bo21.i108, %if.else.i109 ], [ 256, %lor.lhs.false.i101.wm8766_set_vol.exit111_crit_edge ], [ 256, %wm8766_set_vol.exit94.wm8766_set_vol.exit111_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %1, i32 noundef %add26, i32 noundef %nvol.0.i110) #8
  br label %for.inc

for.inc:                                          ; preds = %wm8766_set_vol.exit111, %for.body.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %wm8766_set_vol.exit111 ], [ %change.0114, %for.body.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_dac_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_dac_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
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
  %arrayidx = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, 32767
  %and = zext i16 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 3
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
define internal i32 @wm_dac_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp eq i32 %5, %conv
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  %and = and i16 %7, -32768
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %and, ptr %arrayidx2, align 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %11 = trunc i32 %10 to i16
  %conv17 = or i16 %and, %11
  store i16 %conv17, ptr %arrayidx2, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 2
  %conv.i = zext i16 %13 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.wm_set_vol.exit_crit_edge

if.then.wm_set_vol.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %conv1.i = zext i16 %conv17 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm_set_vol.exit_crit_edge

lor.lhs.false.i.wm_set_vol.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %14 = and i32 %mul.i, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not.i = icmp eq i32 %14, 0
  %div25.i = lshr i32 %mul.i, 7
  %15 = trunc i32 %div25.i to i8
  %phi.cast.i = add i8 %15, 127
  %cond.i = select i1 %tobool11.not.i, i8 0, i8 %phi.cast.i
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %lor.lhs.false.i.wm_set_vol.exit_crit_edge, %if.then.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %cond.i, %if.else.i ], [ 0, %lor.lhs.false.i.wm_set_vol.exit_crit_edge ], [ 0, %if.then.wm_set_vol.exit_crit_edge ]
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 6, i8 noundef zeroext %nvol.0.i) #8
  %16 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %19 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %19, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 7, i8 noundef zeroext %nvol.0.i) #8
  br label %for.inc

for.inc:                                          ; preds = %wm_set_vol.exit, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %wm_set_vol.exit ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx2.1, align 2
  %conv.1 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.1)
  %cmp3.not.1 = icmp eq i32 %22, %conv.1
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %and.1 = and i16 %24, -32768
  %25 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %and.1, ptr %arrayidx2.1, align 2
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  %28 = trunc i32 %27 to i16
  %conv17.1 = or i16 %and.1, %28
  store i16 %conv17.1, ptr %arrayidx2.1, align 2
  %arrayidx21.1 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx21.1, align 2
  %conv.i.1 = zext i16 %30 to i32
  %and.i.1 = and i32 %conv.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %lor.lhs.false.i.1, label %if.then.1.wm_set_vol.exit.1_crit_edge

if.then.1.wm_set_vol.exit.1_crit_edge:            ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

lor.lhs.false.i.1:                                ; preds = %if.then.1
  %conv1.i.1 = zext i16 %conv17.1 to i32
  %and2.i.1 = and i32 %conv1.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.1)
  %tobool3.not.i.1 = icmp eq i32 %and2.i.1, 0
  br i1 %tobool3.not.i.1, label %if.else.i.1, label %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge

lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge:    ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm_set_vol.exit.1

if.else.i.1:                                      ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.1 = mul nuw i32 %conv.i.1, %conv1.i.1
  %31 = and i32 %mul.i.1, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool11.not.i.1 = icmp eq i32 %31, 0
  %div25.i.1 = lshr i32 %mul.i.1, 7
  %32 = trunc i32 %div25.i.1 to i8
  %phi.cast.i.1 = add i8 %32, 127
  %cond.i.1 = select i1 %tobool11.not.i.1, i8 0, i8 %phi.cast.i.1
  br label %wm_set_vol.exit.1

wm_set_vol.exit.1:                                ; preds = %if.else.i.1, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge, %if.then.1.wm_set_vol.exit.1_crit_edge
  %nvol.0.i.1 = phi i8 [ %cond.i.1, %if.else.i.1 ], [ 0, %lor.lhs.false.i.1.wm_set_vol.exit.1_crit_edge ], [ 0, %if.then.1.wm_set_vol.exit.1_crit_edge ]
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 8, i8 noundef zeroext %nvol.0.i.1) #8
  %33 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %34, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %arrayidx2.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx2.i.i.1, align 1
  %36 = load ptr, ptr %akm.i.i, align 4
  %arrayidx7.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %36, i32 0, i32 3, i32 9
  %37 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %nvol.0.i.1, ptr %arrayidx7.i.i.1, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext %nvol.0.i.1) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %wm_set_vol.exit.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %wm_set_vol.exit.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8766_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8766_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
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
  %cmp9.not = icmp ult i32 %5, 256
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.010, %and
  %arrayidx = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.010
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.010, 1
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
define internal i32 @wm8766_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp49.not = icmp ult i32 %5, 256
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %change.052 = phi i32 [ 0, %for.body.lr.ph ], [ %change.1, %for.inc.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.050
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.050, %and
  %arrayidx3 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 %add
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp4.not = icmp eq i32 %7, %conv
  br i1 %cmp4.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %and12 = and i16 %9, -32768
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %and12, ptr %arrayidx3, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = trunc i32 %12 to i16
  %conv20 = or i16 %and12, %13
  store i16 %conv20, ptr %arrayidx3, align 2
  %arrayidx24 = getelementptr [2 x i16], ptr %3, i32 0, i32 %i.050
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx24, align 2
  %conv.i = zext i16 %15 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.wm8766_set_vol.exit_crit_edge

if.then.wm8766_set_vol.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %conv1.i = zext i16 %conv20 to i32
  %and2.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.wm8766_set_vol.exit_crit_edge

lor.lhs.false.i.wm8766_set_vol.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_set_vol.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %16 = and i32 %mul.i, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not.i = icmp eq i32 %16, 0
  %div20.i = lshr i32 %mul.i, 7
  %phi.cast.i = add nuw nsw i32 %div20.i, 127
  %phi.cast.op.i = and i32 %phi.cast.i, 255
  %phi.cast.op.op.i = or i32 %phi.cast.op.i, 256
  %phi.bo21.i = select i1 %tobool11.not.i, i32 256, i32 %phi.cast.op.op.i
  br label %wm8766_set_vol.exit

wm8766_set_vol.exit:                              ; preds = %if.else.i, %lor.lhs.false.i.wm8766_set_vol.exit_crit_edge, %if.then.wm8766_set_vol.exit_crit_edge
  %nvol.0.i = phi i32 [ %phi.bo21.i, %if.else.i ], [ 256, %lor.lhs.false.i.wm8766_set_vol.exit_crit_edge ], [ 256, %if.then.wm8766_set_vol.exit_crit_edge ]
  tail call fastcc void @wm8766_spi_write(ptr noundef %1, i32 noundef %add, i32 noundef %nvol.0.i) #8
  br label %for.inc

for.inc:                                          ; preds = %wm8766_set_vol.exit, %for.body.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %wm8766_set_vol.exit ], [ %change.052, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %change.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_adc_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 29
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %5)
  %cmp3 = icmp ugt i8 %5, 79
  %sub = add nuw nsw i32 %conv8.i, 65457
  %6 = and i32 %sub, 65535
  %conv7 = select i1 %cmp3, i32 %6, i32 0
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %value, align 4
  %8 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 31
  %10 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %11)
  %cmp3.1 = icmp ugt i8 %11, 79
  %sub.1 = add nuw nsw i32 %conv8.i.1, 65457
  %12 = and i32 %sub.1, 65535
  %conv7.1 = select i1 %cmp3.1, i32 %12, i32 0
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7.1, ptr %arrayidx.1, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %conv1 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not = icmp eq i32 %conv1, 0
  %4 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 29
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i16
  %8 = trunc i32 %3 to i16
  %9 = add i16 %8, 79
  %10 = select i1 %tobool.not, i16 0, i16 %9
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %conv8.i)
  %cmp9.not = icmp eq i16 %10, %conv8.i
  br i1 %cmp9.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = lshr i16 %10, 8
  %11 = trunc i16 %conv1.i.i to i8
  %conv3.i.i = or i8 %11, 28
  %conv5.i.i = trunc i16 %10 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #8
  %12 = lshr i16 %10, 8
  %conv1.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %14, i32 0, i32 3, i32 28
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %16 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i25 = getelementptr %struct.snd_akm4xxx, ptr %16, i32 0, i32 3, i32 29
  %17 = ptrtoint ptr %arrayidx7.i25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5.i.i, ptr %arrayidx7.i25, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  %conv1.1 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.1)
  %tobool.not.1 = icmp eq i32 %conv1.1, 0
  %20 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %21, i32 0, i32 3, i32 31
  %22 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %23 to i16
  %24 = trunc i32 %19 to i16
  %25 = add i16 %24, 79
  %26 = select i1 %tobool.not.1, i16 0, i16 %25
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %conv8.i.1)
  %cmp9.not.1 = icmp eq i16 %26, %conv8.i.1
  br i1 %cmp9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.1 = lshr i16 %26, 8
  %27 = trunc i16 %conv1.i.i.1 to i8
  %conv3.i.i.1 = or i8 %27, 30
  %conv5.i.i.1 = trunc i16 %26 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i.1, i8 noundef zeroext %conv5.i.i.1) #8
  %28 = lshr i16 %26, 8
  %conv1.i.1 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 30
  %31 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i.1, ptr %arrayidx2.i.1, align 1
  %32 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i25.1 = getelementptr %struct.snd_akm4xxx, ptr %32, i32 0, i32 3, i32 31
  %33 = ptrtoint ptr %arrayidx7.i25.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv5.i.i.1, ptr %arrayidx7.i25.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 42
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 43
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %9 to i32
  %or.i = or i32 %shl3.i, %conv8.i
  %10 = lshr i32 %or.i, %3
  %11 = and i32 %10, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 42
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 43
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %9 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %shl2 = shl nuw i32 1, %3
  %12 = trunc i32 %shl2 to i16
  %conv1 = or i16 %or.i, %12
  %13 = xor i16 %12, -1
  %conv4 = and i16 %or.i, %13
  %nval.0 = select i1 %tobool.not, i16 %conv4, i16 %conv1
  call void @__sanitizer_cov_trace_cmp2(i16 %nval.0, i16 %or.i)
  %cmp.not = icmp eq i16 %nval.0, %or.i
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then9

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = lshr i16 %nval.0, 8
  %14 = trunc i16 %conv1.i.i to i8
  %conv3.i.i = or i8 %14, 42
  %conv5.i.i = trunc i16 %nval.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #8
  %15 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %16, i32 0, i32 3, i32 42
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx2.i, align 1
  %18 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i21 = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 43
  %19 = ptrtoint ptr %arrayidx7.i21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5.i.i, ptr %arrayidx7.i21, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_bypass_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 45
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_bypass_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 44
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 45
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %10 = and i16 %or.i, -5
  %masksel = select i1 %tobool.not, i16 0, i16 4
  %val.0 = or i16 %10, %masksel
  call void @__sanitizer_cov_trace_cmp2(i16 %val.0, i16 %or.i)
  %cmp.not = icmp eq i16 %val.0, %or.i
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i8 %5, 44
  %conv5.i.i = trunc i16 %val.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %11, i8 noundef zeroext %conv5.i.i) #8
  %12 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 44
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %arrayidx2.i, align 1
  %15 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i17 = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 45
  %16 = ptrtoint ptr %arrayidx7.i17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5.i.i, ptr %arrayidx7.i17, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %change.0 = phi i32 [ 1, %if.then7 ], [ 0, %entry.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_chswap_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 15
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = and i8 %5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %6)
  %cmp = icmp ne i8 %6, -112
  %conv1 = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_chswap_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %and = and i16 %conv8.i, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %val.0.v = select i1 %tobool.not, i16 144, i16 96
  %val.0 = or i16 %val.0.v, %and
  call void @__sanitizer_cov_trace_cmp2(i16 %val.0, i16 %or.i)
  %cmp.not = icmp eq i16 %val.0, %or.i
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i = trunc i16 %val.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext %conv5.i.i) #8
  %10 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %11, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx2.i, align 1
  %13 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i23 = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 15
  %14 = ptrtoint ptr %arrayidx7.i23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i.i, ptr %arrayidx7.i23, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext %conv5.i.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  %change.0 = phi i32 [ 1, %if.then10 ], [ 0, %entry.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_enum_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @wm_adc_mux_enum_info.texts) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 43
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = and i8 %5, 31
  %and = zext i8 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_enum_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %and = and i32 %conv8.i, 224
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %or = or i32 %and, %9
  %conv2 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %or.i)
  %cmp.not = icmp eq i32 %conv2, %or.i
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i13 = lshr i32 %9, 8
  %10 = trunc i32 %conv1.i.i13 to i8
  %conv3.i.i = or i8 %10, 42
  %conv5.i.i = trunc i32 %or to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #8
  %11 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %12, i32 0, i32 3, i32 42
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx2.i, align 1
  %14 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i12 = getelementptr %struct.snd_akm4xxx, ptr %14, i32 0, i32 3, i32 43
  %15 = ptrtoint ptr %arrayidx7.i12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5.i.i, ptr %arrayidx7.i12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl.i = shl nuw i32 %reg.09, 1
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 %shl.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %add.i = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 %add.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %or.i = or i32 %shl3.i, %conv8.i
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %reg.09, i32 noundef %or.i) #8
  %inc = add nuw nsw i32 %reg.09, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm_proc_regs_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #8
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !149
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %call12 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not13 = icmp eq i32 %call12, 0
  br i1 %tobool.not13, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.55, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %cmp4 = icmp ult i32 %6, 24
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp5 = icmp ult i32 %8, 65536
  br i1 %cmp5, label %if.then6, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %8 to i16
  %reg.tr.i.i = trunc i32 %6 to i16
  %9 = shl nuw nsw i16 %reg.tr.i.i, 9
  %conv1.i.i = or i16 %9, %conv
  %10 = lshr i16 %conv1.i.i, 8
  %conv3.i.i = trunc i16 %10 to i8
  %conv5.i.i = trunc i32 %8 to i8
  call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #8
  %shl.i = shl nuw nsw i32 %6, 1
  %11 = lshr i32 %8, 8
  %conv1.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 %shl.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %15 = load ptr, ptr %akm.i, align 4
  %add.i = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 %add.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5.i.i, ptr %arrayidx7.i, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then6, %land.lhs.true.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy_hd2_resume(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 134) #8
  tail call void @msleep(i32 noundef 100) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 135) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 0, i32 noundef 135) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 1, i32 noundef 2) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 2, i32 noundef 0) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 3, i32 noundef 0) #8
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 4, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 3, i32 noundef %and)
  %arrayidx.1 = getelementptr %struct.prodigy_hifi_spec, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.1, align 2
  %7 = and i16 %6, 255
  %and.1 = zext i16 %7 to i32
  tail call fastcc void @ak4396_write(ptr noundef %ice, i32 noundef 4, i32 noundef %and.1)
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ak4396_write(ptr noundef %ice, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %0 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dir.i, align 4
  tail call void %1(ptr noundef %ice, i32 noundef 1792) #8
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mask.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef -1793) #8
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ice) #8
  %and.i = and i32 %call.i.i, -257
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %6 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_data.i.i, align 4
  tail call void %7(ptr noundef %ice, i32 noundef %and.i) #8
  %and = shl i32 %reg, 8
  %shl = and i32 %and, 7936
  %and1 = and i32 %data, 255
  %or = or i32 %and1, %shl
  %or2 = or i32 %or, 8192
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.015.i = phi i32 [ %or2, %entry ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %ice) #8
  %and.i.i = and i32 %call.i.i.i, -513
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i6.i = tail call i32 %14(ptr noundef %ice) #8
  %and.i8.i = and i32 %call.i.i6.i, -1025
  %and.i12 = lshr i32 %data.addr.015.i, 5
  %15 = and i32 %and.i12, 1024
  %tmp.0.i.i = or i32 %and.i8.i, %15
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %ice, i32 noundef %tmp.0.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #8
  %19 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i11.i = tail call i32 %20(ptr noundef %ice) #8
  %or.i12.i = or i32 %call.i.i11.i, 512
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef %or.i12.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  %shl.i = shl i32 %data.addr.015.i, 1
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %ak4396_send_word.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ak4396_send_word.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i14 = tail call i32 %25(ptr noundef %ice) #8
  %or.i15 = or i32 %call.i.i14, 256
  %26 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_data.i.i, align 4
  tail call void %27(ptr noundef %ice, i32 noundef %or.i15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #8
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %29 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_mask, align 4
  %31 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_mask.i, align 4
  tail call void %32(ptr noundef %ice, i32 noundef %30) #8
  %33 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio, align 4
  %35 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_dir.i, align 4
  tail call void %36(ptr noundef %ice, i32 noundef %34) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ak4396_dac_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
define internal i32 @ak4396_dac_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
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
  %arrayidx = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %8 to i32
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.1, ptr %arrayidx2.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4396_dac_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp eq i32 %5, %conv
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = trunc i32 %5 to i16
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv7, ptr %arrayidx2, align 2
  %and = and i32 %5, 255
  tail call fastcc void @ak4396_write(ptr noundef %1, i32 noundef 3, i32 noundef %and)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.prodigy_hifi_spec, ptr %3, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx2.1, align 2
  %conv.1 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.1)
  %cmp3.not.1 = icmp eq i32 %10, %conv.1
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.1 = trunc i32 %10 to i16
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7.1, ptr %arrayidx2.1, align 2
  %and.1 = and i32 %10, 255
  tail call fastcc void @ak4396_write(ptr noundef %1, i32 noundef 4, i32 noundef %and.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %change.1.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1235, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1236, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1241, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1245, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1246, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1251, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1255, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1256, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1261, i32 13}
!18 = !{ptr @snd_vt1724_prodigy_hifi_cards, !19, !"snd_vt1724_prodigy_hifi_cards", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1232, i32 30}
!20 = !{ptr @prodigy_hifi_init.wm8776_defaults, !21, !"wm8776_defaults", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1036, i32 30}
!22 = distinct !{null, !23, !"wm8776_inits", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 956, i32 30}
!24 = distinct !{null, !25, !"wm8766_inits", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 933, i32 30}
!26 = !{ptr @prodigy_hifi_resume.wm8776_reinit_registers, !27, !"wm8776_reinit_registers", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 976, i32 30}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 749, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 759, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 769, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 780, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 791, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 802, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 813, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 821, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 829, i32 11}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 837, i32 11}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 844, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 851, i32 11}
!52 = !{ptr @prodigy_hifi_controls, !53, !"prodigy_hifi_controls", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 744, i32 38}
!54 = !{ptr @db_scale_wm_dac, !55, !"db_scale_wm_dac", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 284, i32 14}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 508, i32 3}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 508, i32 11}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 508, i32 20}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 508, i32 29}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 509, i32 3}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 509, i32 12}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 509, i32 33}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 510, i32 3}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 511, i32 3}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 511, i32 12}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 511, i32 33}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 512, i32 3}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 513, i32 3}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 513, i32 24}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 514, i32 3}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 515, i32 3}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 516, i32 3}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 516, i32 12}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 516, i32 33}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 517, i32 3}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 518, i32 3}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 518, i32 24}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 519, i32 3}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 520, i32 3}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 521, i32 3}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 521, i32 24}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 522, i32 3}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 523, i32 3}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 524, i32 3}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 525, i32 3}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 526, i32 3}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 527, i32 3}
!120 = !{ptr @wm_adc_mux_enum_info.texts, !121, !"texts", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 507, i32 28}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 893, i32 34}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 886, i32 3}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 869, i32 20}
!128 = !{ptr @prodigy71hifi_eeprom, !129, !"prodigy71hifi_eeprom", i1 false, i1 false}
!129 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1183, i32 28}
!130 = distinct !{null, !131, !"ak4396_inits", i1 false, i1 false}
!131 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1111, i32 30}
!132 = !{ptr @prodigy_hd2_controls, !133, !"prodigy_hd2_controls", i1 false, i1 false}
!133 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 287, i32 38}
!134 = !{ptr @ak4396_db_scale, !135, !"ak4396_db_scale", i1 false, i1 false}
!135 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 285, i32 14}
!136 = !{ptr @prodigyhd2_eeprom, !137, !"prodigyhd2_eeprom", i1 false, i1 false}
!137 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1199, i32 28}
!138 = !{ptr @fortissimo4_eeprom, !139, !"fortissimo4_eeprom", i1 false, i1 false}
!139 = !{!"../sound/pci/ice1712/prodigy_hifi.c", i32 1215, i32 28}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
