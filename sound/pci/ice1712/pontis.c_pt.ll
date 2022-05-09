; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/pontis.c_pt.bc'
source_filename = "../sound/pci/ice1712/pontis.c"
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

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pontis MS300\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ms300\00", [26 x i8] zeroinitializer }, align 32
@pontis_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\08\80\F8\C3\07\00\00\0F\FF\00\06\00\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1720_pontis_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 131074, ptr @.str, ptr @.str.1, ptr null, ptr @pontis_init, ptr null, ptr @pontis_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @pontis_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pontis_init.wm_inits2 = internal constant { [34 x i16], [60 x i8] } { [34 x i16] [i16 12, i16 34, i16 10, i16 34, i16 11, i16 34, i16 7, i16 144, i16 22, i16 1, i16 0, i16 377, i16 1, i16 377, i16 3, i16 0, i16 3, i16 256, i16 4, i16 0, i16 4, i16 256, i16 6, i16 0, i16 9, i16 0, i16 14, i16 0, i16 15, i16 0, i16 8, i16 0, i16 21, i16 3], [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pontis_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @wm_dac_vol_info, ptr @wm_dac_vol_get, ptr @wm_dac_vol_put, %union.anon.87 { ptr @db_scale_volume }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @wm_adc_vol_info, ptr @wm_adc_vol_get, ptr @wm_adc_vol_put, %union.anon.87 { ptr @db_scale_volume }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_adc_mux_get, ptr @wm_adc_mux_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_adc_mux_get, ptr @wm_adc_mux_put, %union.anon.87 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_bypass_get, ptr @wm_bypass_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_chswap_get, ptr @wm_chswap_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @cs_source_info, ptr @cs_source_get, ptr @cs_source_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @pontis_gpio_mask_info, ptr @pontis_gpio_mask_get, ptr @pontis_gpio_mask_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @pontis_gpio_mask_info, ptr @pontis_gpio_dir_get, ptr @pontis_gpio_dir_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @pontis_gpio_mask_info, ptr @pontis_gpio_data_get, ptr @pontis_gpio_data_put, %union.anon.87 zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_volume = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6400, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Swap Output Channels\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Input Source\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GPIO Mask\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO Direction\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GPIO Data\00", [22 x i8] zeroinitializer }, align 32
@cs_source_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Coax\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wm_codec\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02x = %04x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs_codec\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02x = %02x\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 801, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 802, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"pontis_eeprom\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 781, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"snd_vt1720_pontis_cards\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 798, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"wm_inits2\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 705, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"pontis_controls\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 532, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 537, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"db_scale_volume\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 526, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 547, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 555, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 563, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 571, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 578, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 585, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 593, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 600, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 607, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 401, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 402, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 403, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 404, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 648, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 641, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 625, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 669, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [30 x i8] c"../sound/pci/ice1712/pontis.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 660, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @pontis_eeprom, ptr @snd_vt1720_pontis_cards, ptr @pontis_init.wm_inits2, ptr @pontis_controls, ptr @.str.2, ptr @db_scale_volume, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cs_source_info.texts, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pontis_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1720_pontis_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pontis_init.wm_inits2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pontis_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_volume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_source_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %0 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %vt1720, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %1 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %2 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 216) #9
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %4 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %akm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %5 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %akm_codecs, align 4
  %saved = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %saved, align 4
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 42, i8 noundef zeroext -64) #6
  %7 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %akm, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %8, i32 0, i32 3, i32 42
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx2.i, align 1
  %10 = load ptr, ptr %akm, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %10, i32 0, i32 3, i32 43
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -64, ptr %arrayidx7.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext 1) #6
  %12 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %akm, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i.1, align 1
  %15 = load ptr, ptr %akm, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %15, i32 0, i32 3, i32 17
  %16 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx7.i.1, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext 0) #6
  %17 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %akm, align 4
  %arrayidx2.i.2 = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 14
  %19 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx2.i.2, align 1
  %20 = load ptr, ptr %akm, align 4
  %arrayidx7.i.2 = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 15
  %21 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx7.i.2, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 26, i8 noundef zeroext 8) #6
  %22 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %akm, align 4
  %arrayidx2.i.3 = getelementptr %struct.snd_akm4xxx, ptr %23, i32 0, i32 3, i32 26
  %24 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx2.i.3, align 1
  %25 = load ptr, ptr %akm, align 4
  %arrayidx7.i.3 = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %arrayidx7.i.3, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #6
  %27 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %akm, align 4
  %arrayidx2.i.4 = getelementptr %struct.snd_akm4xxx, ptr %28, i32 0, i32 3, i32 46
  %29 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx2.i.4, align 1
  %30 = load ptr, ptr %akm, align 4
  %arrayidx7.i.4 = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 47
  %31 = ptrtoint ptr %arrayidx7.i.4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx7.i.4, align 1
  %call5 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %if.end
  %i.194 = phi i32 [ 0, %if.end ], [ %add15, %for.body9.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [34 x i16], ptr @pontis_init.wm_inits2, i32 0, i32 %i.194
  %32 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %33 to i32
  %add12 = or i32 %i.194, 1
  %arrayidx13 = getelementptr [34 x i16], ptr @pontis_init.wm_inits2, i32 0, i32 %add12
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx13, align 2
  %36 = shl i16 %33, 9
  %conv1.i.i84 = or i16 %36, %35
  %37 = lshr i16 %conv1.i.i84, 8
  %conv3.i.i85 = trunc i16 %37 to i8
  %conv5.i.i86 = trunc i16 %35 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i85, i8 noundef zeroext %conv5.i.i86) #6
  %shl.i87 = shl nuw nsw i32 %conv11, 1
  %38 = lshr i16 %35, 8
  %conv1.i88 = trunc i16 %38 to i8
  %39 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %akm, align 4
  %arrayidx2.i90 = getelementptr %struct.snd_akm4xxx, ptr %40, i32 0, i32 3, i32 %shl.i87
  %41 = ptrtoint ptr %arrayidx2.i90 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv1.i88, ptr %arrayidx2.i90, align 1
  %42 = load ptr, ptr %akm, align 4
  %add.i91 = or i32 %shl.i87, 1
  %arrayidx7.i92 = getelementptr %struct.snd_akm4xxx, ptr %42, i32 0, i32 3, i32 %add.i91
  %43 = ptrtoint ptr %arrayidx7.i92 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv5.i.i86, ptr %arrayidx7.i92, align 1
  %add15 = add nuw nsw i32 %i.194, 2
  %cmp7 = icmp ult i32 %i.194, 32
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %do.body

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

do.body:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %44 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %profi_port, align 4
  %add17 = add i32 %45, 5
  %and = and i32 %add17, 1048575
  %add18 = or i32 %and, -18874368
  %46 = inttoptr i32 %add18 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %48 = or i8 %47, -128
  %49 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %profi_port, align 4
  %add24 = add i32 %50, 5
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %51 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %profi_port, align 4
  %add34 = add i32 %58, 5
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %59 = inttoptr i32 %add36 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %61 = and i8 %60, 127
  %62 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %profi_port, align 4
  %add44 = add i32 %63, 5
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %64 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %61) #6, !srcloc !68
  tail call fastcc void @spi_write(ptr noundef %ice, i32 noundef 4, i32 noundef 128)
  tail call fastcc void @spi_write(ptr noundef %ice, i32 noundef 5, i32 noundef 5)
  tail call fastcc void @spi_write(ptr noundef %ice, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @spi_write(ptr noundef %ice, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @spi_write(ptr noundef %ice, i32 noundef 3, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @pontis_controls, ptr noundef %ice) #6
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 1), ptr noundef %ice) #6
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 2), ptr noundef %ice) #6
  %call1.2 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 3), ptr noundef %ice) #6
  %call1.3 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 4), ptr noundef %ice) #6
  %call1.4 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 5), ptr noundef %ice) #6
  %call1.5 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 6), ptr noundef %ice) #6
  %call1.6 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %cmp2.6 = icmp slt i32 %call1.6, 0
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 7), ptr noundef %ice) #6
  %call1.7 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %cmp2.7 = icmp slt i32 %call1.7, 0
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 8), ptr noundef %ice) #6
  %call1.8 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %cmp2.8 = icmp slt i32 %call1.8, 0
  br i1 %cmp2.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @pontis_controls, i32 0, i32 9), ptr noundef %ice) #6
  %call1.9 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %cmp2.9 = icmp slt i32 %call1.9, 0
  br i1 %cmp2.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %ice, ptr noundef nonnull @wm_proc_regs_read, ptr noundef nonnull @wm_proc_regs_write) #6
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call.i.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %23, ptr noundef nonnull @.str.18, ptr noundef %ice, ptr noundef nonnull @cs_proc_regs_read, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond.9, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.9 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ], [ %call1.3, %for.cond.2.cleanup_crit_edge ], [ %call1.4, %for.cond.3.cleanup_crit_edge ], [ %call1.5, %for.cond.4.cleanup_crit_edge ], [ %call1.6, %for.cond.5.cleanup_crit_edge ], [ %call1.7, %for.cond.6.cleanup_crit_edge ], [ %call1.8, %for.cond.7.cleanup_crit_edge ], [ %call1.9, %for.cond.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_write(ptr noundef %ice, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %0 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dir.i, align 4
  tail call void %1(ptr noundef %ice, i32 noundef 176) #6
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mask.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef -177) #6
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ice) #6
  %and.i = and i32 %call.i.i, -17
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %6 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_data.i.i, align 4
  tail call void %7(ptr noundef %ice, i32 noundef %and.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.019.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.018.i = phi i8 [ 32, %entry ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %ice) #6
  %and.i.i = and i32 %call.i.i.i, -33
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i = tail call i32 %14(ptr noundef %ice) #6
  %and.i10.i = and i32 %call.i.i8.i, -129
  %15 = and i8 %data.addr.018.i, -128
  %16 = zext i8 %15 to i32
  %tmp.0.i.i = or i32 %and.i10.i, %16
  %17 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %tmp.0.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i = tail call i32 %21(ptr noundef %ice) #6
  %or.i14.i = or i32 %call.i.i13.i, 32
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or.i14.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  %shl.i = shl i8 %data.addr.018.i, 1
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %spi_send_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

spi_send_byte.exit:                               ; preds = %for.body.i
  %conv1 = trunc i32 %reg to i8
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %spi_send_byte.exit
  %i.019.i3 = phi i32 [ 0, %spi_send_byte.exit ], [ %inc.i13, %for.body.i15.for.body.i15_crit_edge ]
  %data.addr.018.i4 = phi i8 [ %conv1, %spi_send_byte.exit ], [ %shl.i12, %for.body.i15.for.body.i15_crit_edge ]
  %25 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i5 = tail call i32 %26(ptr noundef %ice) #6
  %and.i.i6 = and i32 %call.i.i.i5, -33
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef %and.i.i6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i7 = tail call i32 %31(ptr noundef %ice) #6
  %and.i10.i8 = and i32 %call.i.i8.i7, -129
  %32 = and i8 %data.addr.018.i4, -128
  %33 = zext i8 %32 to i32
  %tmp.0.i.i9 = or i32 %and.i10.i8, %33
  %34 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_data.i.i, align 4
  tail call void %35(ptr noundef %ice, i32 noundef %tmp.0.i.i9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i10 = tail call i32 %38(ptr noundef %ice) #6
  %or.i14.i11 = or i32 %call.i.i13.i10, 32
  %39 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_data.i.i, align 4
  tail call void %40(ptr noundef %ice, i32 noundef %or.i14.i11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #6
  %shl.i12 = shl i8 %data.addr.018.i4, 1
  %inc.i13 = add nuw nsw i32 %i.019.i3, 1
  %exitcond.not.i14 = icmp eq i32 %inc.i13, 8
  br i1 %exitcond.not.i14, label %spi_send_byte.exit16, label %for.body.i15.for.body.i15_crit_edge

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i15

spi_send_byte.exit16:                             ; preds = %for.body.i15
  %conv2 = trunc i32 %data to i8
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %spi_send_byte.exit16
  %i.019.i19 = phi i32 [ 0, %spi_send_byte.exit16 ], [ %inc.i29, %for.body.i31.for.body.i31_crit_edge ]
  %data.addr.018.i20 = phi i8 [ %conv2, %spi_send_byte.exit16 ], [ %shl.i28, %for.body.i31.for.body.i31_crit_edge ]
  %42 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i21 = tail call i32 %43(ptr noundef %ice) #6
  %and.i.i22 = and i32 %call.i.i.i21, -33
  %44 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_data.i.i, align 4
  tail call void %45(ptr noundef %ice, i32 noundef %and.i.i22) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %47 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i23 = tail call i32 %48(ptr noundef %ice) #6
  %and.i10.i24 = and i32 %call.i.i8.i23, -129
  %49 = and i8 %data.addr.018.i20, -128
  %50 = zext i8 %49 to i32
  %tmp.0.i.i25 = or i32 %and.i10.i24, %50
  %51 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_data.i.i, align 4
  tail call void %52(ptr noundef %ice, i32 noundef %tmp.0.i.i25) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #6
  %54 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i26 = tail call i32 %55(ptr noundef %ice) #6
  %or.i14.i27 = or i32 %call.i.i13.i26, 32
  %56 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_data.i.i, align 4
  tail call void %57(ptr noundef %ice, i32 noundef %or.i14.i27) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #6
  %shl.i28 = shl i8 %data.addr.018.i20, 1
  %inc.i29 = add nuw nsw i32 %i.019.i19, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 8
  br i1 %exitcond.not.i30, label %spi_send_byte.exit32, label %for.body.i31.for.body.i31_crit_edge

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i31

spi_send_byte.exit32:                             ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i34 = tail call i32 %60(ptr noundef %ice) #6
  %or.i35 = or i32 %call.i.i34, 16
  %61 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_data.i.i, align 4
  tail call void %62(ptr noundef %ice, i32 noundef %or.i35) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #6
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %64 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %write_mask, align 4
  %66 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_mask.i, align 4
  tail call void %67(ptr noundef %ice, i32 noundef %65) #6
  %68 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gpio, align 4
  %70 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_dir.i, align 4
  tail call void %71(ptr noundef %ice, i32 noundef %69) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_dac_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_dac_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp slt i8 %5, 0
  %sub = add nuw nsw i32 %conv8.i, 65409
  %6 = and i32 %sub, 65535
  %conv7 = select i1 %cmp3, i32 %6, i32 0
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %value, align 4
  %8 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 9
  %10 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3.1 = icmp slt i8 %11, 0
  %sub.1 = add nuw nsw i32 %conv8.i.1, 65409
  %12 = and i32 %sub.1, 65535
  %conv7.1 = select i1 %cmp3.1, i32 %12, i32 0
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7.1, ptr %arrayidx.1, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_dac_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %conv1 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not = icmp eq i32 %conv1, 0
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, 127
  %.op = and i16 %5, 255
  %conv3 = select i1 %tobool.not, i16 0, i16 %.op
  %6 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %7, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv3, i16 %conv8.i)
  %cmp10.not = icmp eq i16 %conv3, %conv8.i
  br i1 %cmp10.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i = trunc i16 %conv3 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 6, i8 noundef zeroext %conv5.i.i) #6
  %10 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %11, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx2.i, align 1
  %13 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i31 = getelementptr %struct.snd_akm4xxx, ptr %13, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %arrayidx7.i31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i.i, ptr %arrayidx7.i31, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 7, i8 noundef zeroext %conv5.i.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %conv1.1 = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.1)
  %tobool.not.1 = icmp eq i32 %conv1.1, 0
  %17 = trunc i32 %16 to i16
  %18 = add i16 %17, 127
  %.op.1 = and i16 %18, 255
  %conv3.1 = select i1 %tobool.not.1, i16 0, i16 %.op.1
  %19 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 9
  %21 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv3.1, i16 %conv8.i.1)
  %cmp10.not.1 = icmp eq i16 %conv3.1, %conv8.i.1
  br i1 %cmp10.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i.1 = trunc i16 %conv3.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 8, i8 noundef zeroext %conv5.i.i.1) #6
  %23 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx2.i.1, align 1
  %26 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i31.1 = getelementptr %struct.snd_akm4xxx, ptr %26, i32 0, i32 3, i32 9
  %27 = ptrtoint ptr %arrayidx7.i31.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.i.i.1, ptr %arrayidx7.i31.1, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext %conv5.i.i.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_adc_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  store i32 128, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = lshr i16 %10, 8
  %11 = trunc i16 %conv1.i.i to i8
  %conv3.i.i = or i8 %11, 28
  %conv5.i.i = trunc i16 %10 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i.1 = lshr i16 %26, 8
  %27 = trunc i16 %conv1.i.i.1 to i8
  %conv3.i.i.1 = or i8 %27, 30
  %conv5.i.i.1 = trunc i16 %26 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i.1, i8 noundef zeroext %conv5.i.i.1) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %change.1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  %cmp = icmp ne i16 %nval.0, %or.i
  br i1 %cmp, label %if.then9, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = lshr i16 %nval.0, 8
  %14 = trunc i16 %conv1.i.i to i8
  %conv3.i.i = or i8 %14, 42
  %conv5.i.i = trunc i16 %nval.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #6
  %15 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %16, i32 0, i32 3, i32 42
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx2.i, align 1
  %18 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i22 = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 43
  %19 = ptrtoint ptr %arrayidx7.i22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5.i.i, ptr %arrayidx7.i22, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry.if.end10_crit_edge
  %conv7 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_bypass_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_bypass_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %5, 44
  %conv5.i.i = trunc i16 %val.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %11, i8 noundef zeroext %conv5.i.i) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_chswap_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_chswap_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i = trunc i16 %val.0 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext %conv5.i.i) #6
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
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext %conv5.i.i) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  %change.0 = phi i32 [ 1, %if.then10 ], [ 0, %entry.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @cs_source_info.texts) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %saved = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %saved = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %3, 3
  %6 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %saved, align 4
  %7 = shl nuw nsw i32 %and, 3
  %conv = or i32 %7, 128
  tail call fastcc void @spi_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %change.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pontis_gpio_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %2 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_mask, align 4
  %neg = and i32 %3, 65295
  %or = xor i32 %neg, 65535
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_mask_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %neg = and i32 %3, 65295
  %or = xor i32 %neg, 65535
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %4 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp = icmp ne i32 %or, %5
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %write_mask, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_dir_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %and = and i32 %3, 65295
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_dir_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and = and i32 %3, 65295
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp ne i32 %and, %5
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %gpio, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_data_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %4 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_dir.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef %3) #6
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %6 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_mask, align 4
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %8 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mask.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %7) #6
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %10 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1) #6
  %and = and i32 %call.i, 65535
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pontis_gpio_data_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %4 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_dir.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef %3) #6
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %6 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_mask, align 4
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %8 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mask.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %7) #6
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %10 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1) #6
  %and = and i32 %call.i, 65535
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %and2 = and i32 %13, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp.not = icmp eq i32 %and, %and2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %and2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %reg.09, i32 noundef %or.i) #6
  %inc = add nuw nsw i32 %reg.09, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm_proc_regs_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #6
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !71
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  %call12 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not13 = icmp eq i32 %call12, 0
  br i1 %tobool.not13, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.17, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %cmp4 = icmp ult i32 %6, 24
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp5 = icmp ult i32 %8, 65536
  br i1 %cmp5, label %if.then6, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %8 to i16
  %reg.tr.i.i = trunc i32 %6 to i16
  %9 = shl nuw nsw i16 %reg.tr.i.i, 9
  %conv1.i.i = or i16 %9, %conv
  %10 = lshr i16 %conv1.i.i, 8
  %conv3.i.i = trunc i16 %10 to i8
  %conv5.i.i = trunc i32 %8 to i8
  call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv5.i.i) #6
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
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call = tail call fastcc i32 @spi_read(ptr noundef %1, i32 noundef %reg.014)
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %reg.014, i32 noundef %call) #6
  %inc = add nuw nsw i32 %reg.014, 1
  %exitcond.not = icmp eq i32 %inc, 39
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @spi_read(ptr noundef %1, i32 noundef 127)
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 127, i32 noundef %call3) #6
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_read(ptr noundef %ice, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %0 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dir.i, align 4
  tail call void %1(ptr noundef %ice, i32 noundef 176) #6
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mask.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef -177) #6
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ice) #6
  %and.i = and i32 %call.i.i, -17
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %6 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_data.i.i, align 4
  tail call void %7(ptr noundef %ice, i32 noundef %and.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.019.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.018.i = phi i8 [ 32, %entry ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %ice) #6
  %and.i.i = and i32 %call.i.i.i, -33
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i = tail call i32 %14(ptr noundef %ice) #6
  %and.i10.i = and i32 %call.i.i8.i, -129
  %15 = and i8 %data.addr.018.i, -128
  %16 = zext i8 %15 to i32
  %tmp.0.i.i = or i32 %and.i10.i, %16
  %17 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %tmp.0.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i = tail call i32 %21(ptr noundef %ice) #6
  %or.i14.i = or i32 %call.i.i13.i, 32
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or.i14.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  %shl.i = shl i8 %data.addr.018.i, 1
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %spi_send_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

spi_send_byte.exit:                               ; preds = %for.body.i
  %conv1 = trunc i32 %reg to i8
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %spi_send_byte.exit
  %i.019.i3 = phi i32 [ 0, %spi_send_byte.exit ], [ %inc.i13, %for.body.i15.for.body.i15_crit_edge ]
  %data.addr.018.i4 = phi i8 [ %conv1, %spi_send_byte.exit ], [ %shl.i12, %for.body.i15.for.body.i15_crit_edge ]
  %25 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i5 = tail call i32 %26(ptr noundef %ice) #6
  %and.i.i6 = and i32 %call.i.i.i5, -33
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef %and.i.i6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i7 = tail call i32 %31(ptr noundef %ice) #6
  %and.i10.i8 = and i32 %call.i.i8.i7, -129
  %32 = and i8 %data.addr.018.i4, -128
  %33 = zext i8 %32 to i32
  %tmp.0.i.i9 = or i32 %and.i10.i8, %33
  %34 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_data.i.i, align 4
  tail call void %35(ptr noundef %ice, i32 noundef %tmp.0.i.i9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i10 = tail call i32 %38(ptr noundef %ice) #6
  %or.i14.i11 = or i32 %call.i.i13.i10, 32
  %39 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_data.i.i, align 4
  tail call void %40(ptr noundef %ice, i32 noundef %or.i14.i11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #6
  %shl.i12 = shl i8 %data.addr.018.i4, 1
  %inc.i13 = add nuw nsw i32 %i.019.i3, 1
  %exitcond.not.i14 = icmp eq i32 %inc.i13, 8
  br i1 %exitcond.not.i14, label %spi_send_byte.exit16, label %for.body.i15.for.body.i15_crit_edge

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i15

spi_send_byte.exit16:                             ; preds = %for.body.i15
  %42 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i18 = tail call i32 %43(ptr noundef %ice) #6
  %or.i19 = or i32 %call.i.i18, 16
  %44 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_data.i.i, align 4
  tail call void %45(ptr noundef %ice, i32 noundef %or.i19) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %47 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i23 = tail call i32 %48(ptr noundef %ice) #6
  %and.i25 = and i32 %call.i.i23, -17
  %49 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_data.i.i, align 4
  tail call void %50(ptr noundef %ice, i32 noundef %and.i25) #6
  br label %for.body.i41

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %spi_send_byte.exit16
  %i.019.i29 = phi i32 [ 0, %spi_send_byte.exit16 ], [ %inc.i39, %for.body.i41.for.body.i41_crit_edge ]
  %data.addr.018.i30 = phi i8 [ 33, %spi_send_byte.exit16 ], [ %shl.i38, %for.body.i41.for.body.i41_crit_edge ]
  %51 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i31 = tail call i32 %52(ptr noundef %ice) #6
  %and.i.i32 = and i32 %call.i.i.i31, -33
  %53 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_data.i.i, align 4
  tail call void %54(ptr noundef %ice, i32 noundef %and.i.i32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #6
  %56 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i8.i33 = tail call i32 %57(ptr noundef %ice) #6
  %and.i10.i34 = and i32 %call.i.i8.i33, -129
  %58 = and i8 %data.addr.018.i30, -128
  %59 = zext i8 %58 to i32
  %tmp.0.i.i35 = or i32 %and.i10.i34, %59
  %60 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_data.i.i, align 4
  tail call void %61(ptr noundef %ice, i32 noundef %tmp.0.i.i35) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #6
  %63 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i13.i36 = tail call i32 %64(ptr noundef %ice) #6
  %or.i14.i37 = or i32 %call.i.i13.i36, 32
  %65 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_data.i.i, align 4
  tail call void %66(ptr noundef %ice, i32 noundef %or.i14.i37) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #6
  %shl.i38 = shl i8 %data.addr.018.i30, 1
  %inc.i39 = add nuw nsw i32 %i.019.i29, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 8
  br i1 %exitcond.not.i40, label %for.body.i41.for.body.i52_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i41

for.body.i41.for.body.i52_crit_edge:              ; preds = %for.body.i41
  br label %for.body.i52

for.body.i52:                                     ; preds = %for.body.i52.for.body.i52_crit_edge, %for.body.i41.for.body.i52_crit_edge
  %val.012.i = phi i32 [ %76, %for.body.i52.for.body.i52_crit_edge ], [ 0, %for.body.i41.for.body.i52_crit_edge ]
  %i.011.i = phi i32 [ %inc.i50, %for.body.i52.for.body.i52_crit_edge ], [ 0, %for.body.i41.for.body.i52_crit_edge ]
  %shl.i45 = shl i32 %val.012.i, 1
  %68 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i.i46 = tail call i32 %69(ptr noundef %ice) #6
  %and.i.i47 = and i32 %call.i.i.i46, -33
  %70 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_data.i.i, align 4
  tail call void %71(ptr noundef %ice, i32 noundef %and.i.i47) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #6
  %73 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i48 = tail call i32 %74(ptr noundef %ice) #6
  %and.i49 = lshr i32 %call.i.i48, 6
  %75 = and i32 %and.i49, 1
  %76 = or i32 %75, %shl.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #6
  %78 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i7.i = tail call i32 %79(ptr noundef %ice) #6
  %or.i8.i = or i32 %call.i.i7.i, 32
  %80 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_data.i.i, align 4
  tail call void %81(ptr noundef %ice, i32 noundef %or.i8.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #6
  %inc.i50 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, 8
  br i1 %exitcond.not.i51, label %spi_read_byte.exit, label %for.body.i52.for.body.i52_crit_edge

for.body.i52.for.body.i52_crit_edge:              ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i52

spi_read_byte.exit:                               ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i54 = tail call i32 %84(ptr noundef %ice) #6
  %or.i55 = or i32 %call.i.i54, 16
  %85 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_data.i.i, align 4
  tail call void %86(ptr noundef %ice, i32 noundef %or.i55) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #6
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %88 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %write_mask, align 4
  %90 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_mask.i, align 4
  tail call void %91(ptr noundef %ice, i32 noundef %89) #6
  %92 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gpio, align 4
  %94 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_dir.i, align 4
  tail call void %95(ptr noundef %ice, i32 noundef %93) #6
  ret i32 %76
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/pontis.c", i32 801, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/pontis.c", i32 802, i32 12}
!4 = !{ptr @snd_vt1720_pontis_cards, !5, !"snd_vt1720_pontis_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/pontis.c", i32 798, i32 30}
!6 = distinct !{null, !7, !"wm_inits", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/pontis.c", i32 696, i32 30}
!8 = !{ptr @pontis_init.wm_inits2, !9, !"wm_inits2", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/pontis.c", i32 705, i32 30}
!10 = distinct !{null, !11, !"cs_inits", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/pontis.c", i32 731, i32 29}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/pontis.c", i32 537, i32 11}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/pontis.c", i32 547, i32 11}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/pontis.c", i32 555, i32 11}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/pontis.c", i32 563, i32 11}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/pontis.c", i32 571, i32 11}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/pontis.c", i32 578, i32 11}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/pontis.c", i32 585, i32 11}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/pontis.c", i32 593, i32 11}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/pontis.c", i32 600, i32 11}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/pontis.c", i32 607, i32 11}
!32 = !{ptr @pontis_controls, !33, !"pontis_controls", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/pontis.c", i32 532, i32 38}
!34 = !{ptr @db_scale_volume, !35, !"db_scale_volume", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/pontis.c", i32 526, i32 14}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/pontis.c", i32 402, i32 3}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/pontis.c", i32 403, i32 3}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/pontis.c", i32 404, i32 3}
!42 = !{ptr @cs_source_info.texts, !43, !"texts", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/pontis.c", i32 401, i32 28}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/pontis.c", i32 648, i32 34}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/pontis.c", i32 641, i32 3}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/pontis.c", i32 625, i32 20}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/pontis.c", i32 669, i32 34}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/pontis.c", i32 660, i32 3}
!54 = !{ptr @pontis_eeprom, !55, !"pontis_eeprom", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/pontis.c", i32 781, i32 28}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2154391222}
!66 = !{i64 4225375}
!67 = !{i64 2154390948}
!68 = !{i64 4224980}
!69 = !{i64 2154393568}
!70 = !{i64 2154393293}
!71 = !{!"auto-init"}
