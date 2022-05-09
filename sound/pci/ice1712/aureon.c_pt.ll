; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/aureon.c_pt.bc'
source_filename = "../sound/pci/ice1712/aureon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.aureon_spec = type { [64 x i16], i32, [2 x i16], [8 x i16], i8 }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
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
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Aureon 5.1-Sky\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aureon51\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Aureon51\00", [23 x i8] zeroinitializer }, align 32
@aureon51_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Terratec Aureon 7.1-Space\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aureon71\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Aureon71\00", [23 x i8] zeroinitializer }, align 32
@aureon71_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0B\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Terratec Aureon 7.1-Universe\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"universe\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aureon71Univ\00", [19 x i8] zeroinitializer }, align 32
@aureon71_universe_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"+\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Audiotrak Prodigy 7.1\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prodigy71\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Prodigy71\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Audiotrak Prodigy 7.1 LT\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prodigy71lt\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Prodigy71LT\00", [20 x i8] zeroinitializer }, align 32
@prodigy71lt_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"K\80\FC\C3\FF\FF_\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Audiotrak Prodigy 7.1 XT\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prodigy71xt\00", [20 x i8] zeroinitializer }, align 32
@snd_vt1724_aureon_cards = dso_local global { [7 x %struct.snd_ice1712_card_info], [120 x i8] } { [7 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 991250193, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @aureon51_eeprom }, %struct.snd_ice1712_card_info { i32 991249681, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @aureon71_eeprom }, %struct.snd_ice1712_card_info { i32 991253265, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @aureon71_universe_eeprom }, %struct.snd_ice1712_card_info { i32 860443461, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @aureon71_eeprom }, %struct.snd_ice1712_card_info { i32 842093633, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @prodigy71lt_eeprom }, %struct.snd_ice1712_card_info { i32 909202497, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr @aureon_init, ptr null, ptr @aureon_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @prodigy71lt_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aureon_reset.wm_inits_aureon = internal constant { [61 x i16], [38 x i8] } { [61 x i16] [i16 27, i16 68, i16 28, i16 11, i16 29, i16 9, i16 24, i16 0, i16 22, i16 290, i16 23, i16 34, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 255, i16 10, i16 255, i16 11, i16 255, i16 12, i16 255, i16 13, i16 255, i16 14, i16 255, i16 15, i16 255, i16 16, i16 255, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], [38 x i8] zeroinitializer }, align 32
@aureon_reset.wm_inits_prodigy = internal constant { [61 x i16], [38 x i8] } { [61 x i16] [i16 27, i16 0, i16 28, i16 9, i16 29, i16 9, i16 24, i16 0, i16 22, i16 34, i16 23, i16 6, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 127, i16 10, i16 127, i16 11, i16 127, i16 12, i16 127, i16 13, i16 127, i16 14, i16 127, i16 15, i16 127, i16 16, i16 127, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aureon_ac97_init.ac97_defaults = internal constant { [37 x i16], [54 x i8] } { [37 x i16] [i16 0, i16 -27072, i16 2, i16 -32768, i16 4, i16 -32768, i16 6, i16 -32768, i16 12, i16 -32760, i16 14, i16 -32760, i16 16, i16 -30712, i16 18, i16 -30712, i16 20, i16 -30712, i16 22, i16 -30712, i16 24, i16 -30712, i16 28, i16 -32768, i16 38, i16 15, i16 40, i16 513, i16 44, i16 -17536, i16 50, i16 -17536, i16 124, i16 -31868, i16 126, i16 30276, i16 -1], [54 x i8] zeroinitializer }, align 32
@aureon_dac_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @wm_master_mute_get, ptr @wm_master_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @wm_master_vol_info, ptr @wm_master_vol_get, ptr @wm_master_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 512 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 512 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 514 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 514 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @wm_mute_info, ptr @wm_mute_get, ptr @wm_mute_put, %union.anon.87 zeroinitializer, i32 518 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @wm_vol_info, ptr @wm_vol_get, ptr @wm_vol_put, %union.anon.87 { ptr @db_scale_wm_dac }, i32 518 }], [128 x i8] zeroinitializer }, align 32
@wm_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm_pcm_mute_get, ptr @wm_pcm_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @wm_pcm_vol_info, ptr @wm_pcm_vol_get, ptr @wm_pcm_vol_put, %union.anon.87 { ptr @db_scale_wm_pcm }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @wm_adc_mute_get, ptr @wm_adc_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @wm_adc_vol_info, ptr @wm_adc_vol_get, ptr @wm_adc_vol_put, %union.anon.87 { ptr @db_scale_wm_adc }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @wm_adc_mux_info, ptr @wm_adc_mux_get, ptr @wm_adc_mux_put, %union.anon.87 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_hpamp_get, ptr @aureon_hpamp_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_deemp_get, ptr @aureon_deemp_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @aureon_oversampling_info, ptr @aureon_oversampling_get, ptr @aureon_oversampling_put, %union.anon.87 zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@universe_ac97_controls = internal constant { [14 x %struct.snd_kcontrol_new], [160 x i8] } { [14 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mmute_get, ptr @aureon_ac97_mmute_put, %union.anon.87 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_master }, i32 130 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 22 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 150 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 18 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 146 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 144 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_micboost_get, ptr @aureon_ac97_micboost_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 20 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 148 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @aureon_universe_inmux_info, ptr @aureon_universe_inmux_get, ptr @aureon_universe_inmux_put, %union.anon.87 zeroinitializer, i32 0 }], [160 x i8] zeroinitializer }, align 32
@ac97_controls = internal constant { [11 x %struct.snd_kcontrol_new], [144 x i8] } { [11 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mmute_get, ptr @aureon_ac97_mmute_put, %union.anon.87 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_master }, i32 130 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 18 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 146 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 22 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 150 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 144 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_mute_get, ptr @aureon_ac97_mute_put, %union.anon.87 zeroinitializer, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @aureon_ac97_vol_info, ptr @aureon_ac97_vol_get, ptr @aureon_ac97_vol_put, %union.anon.87 { ptr @db_scale_ac97_gain }, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_ac97_micboost_get, ptr @aureon_ac97_micboost_put, %union.anon.87 zeroinitializer, i32 0 }], [144 x i8] zeroinitializer }, align 32
@aureon_add_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 1897, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No CS8415 chip. Skipping CS8415 controls.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aureon_add_controls\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ice1712/aureon.c\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aureon_add_controls._entry_ptr = internal global ptr @aureon_add_controls._entry, section ".printk_index", align 4
@aureon_add_controls._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.19, i32 1901, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Detected unsupported CS8415 rev. (%c)\0A\00", [57 x i8] zeroinitializer }, align 32
@aureon_add_controls._entry_ptr.24 = internal global ptr @aureon_add_controls._entry.22, section ".printk_index", align 4
@cs8415_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aureon_cs8415_mute_get, ptr @aureon_cs8415_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @aureon_cs8415_mux_info, ptr @aureon_cs8415_mux_get, ptr @aureon_cs8415_mux_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.75, i32 0, i32 5, i32 0, ptr @aureon_cs8415_qsub_info, ptr @aureon_cs8415_qsub_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.76, i32 0, i32 1, i32 0, ptr @aureon_cs8415_spdif_info, ptr @aureon_cs8415_mask_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.77, i32 0, i32 5, i32 0, ptr @aureon_cs8415_spdif_info, ptr @aureon_cs8415_spdif_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.78, i32 0, i32 5, i32 0, ptr @aureon_cs8415_rate_info, ptr @aureon_cs8415_rate_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_wm_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10000, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rear Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rear Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_wm_pcm = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6400, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@db_scale_wm_adc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"External Amplifier\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Deemphasis Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Oversampling\00", [47 x i8] zeroinitializer }, align 32
@wm_adc_mux_info.texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AC97\00", [27 x i8] zeroinitializer }, align 32
@wm_adc_mux_info.universe_texts = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.50, ptr @.str.45, ptr @.str.51, ptr @.str.47, ptr @.str.52, ptr @.str.48, ptr @.str.53, ptr @.str.49], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Aux1\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phono\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Aux2\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Aux3\00", [27 x i8] zeroinitializer }, align 32
@aureon_oversampling_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.54, ptr @.str.55], [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"128x\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"64x\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AC97 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AC97 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@db_scale_ac97_master = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@db_scale_ac97_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Boost (+20dB)\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Source\00", [21 x i8] zeroinitializer }, align 32
@aureon_universe_inmux_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72], [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Internal Aux\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Wavetable\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Rear Line-In\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Source\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Q-subcode Capture Default\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Rate\00", [44 x i8] zeroinitializer }, align 32
@aureon_cs8415_mux_info.aureon_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.79], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@aureon_cs8415_mux_info.prodigy_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Coax\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 842093633, i64 909202497, i64 991253265]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 842093633, i64 909202497]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 842093633, i64 860443461, i64 909202497]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 842093633, i64 909202497]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 842093633, i64 909202497]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 842093633, i64 909202497]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 842093633, i64 909202497]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2208, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2209, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2214, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"aureon51_eeprom\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2136, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2218, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2219, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2224, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"aureon71_eeprom\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2152, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2228, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2229, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2234, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"aureon71_universe_eeprom\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2169, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2238, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2239, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2244, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2248, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2249, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2254, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"prodigy71lt_eeprom\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2187, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2258, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2259, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"snd_vt1724_aureon_cards\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2205, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"wm_inits_aureon\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1923, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"wm_inits_prodigy\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1959, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"ac97_defaults\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 296, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"aureon_dac_controls\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1392, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"wm_controls\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1507, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"universe_ac97_controls\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1678, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"ac97_controls\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1573, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1896, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1899, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"cs8415_controls\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1810, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1395, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1404, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"db_scale_wm_dac\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 672, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1412, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1422, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1431, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1441, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1450, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1460, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1469, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1479, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1488, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1498, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1510, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1519, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"db_scale_wm_pcm\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 673, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1527, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1536, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"db_scale_wm_adc\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 674, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1544, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1552, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1559, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1566, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1070, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1071, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1072, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1073, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1074, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1075, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [15 x i8] c"universe_texts\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1077, i32 28 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1078, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1080, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1082, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1084, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1357, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1357, i32 41 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1357, i32 49 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1681, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1691, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"db_scale_ac97_master\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 675, i32 14 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1700, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1710, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c"db_scale_ac97_gain\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 676, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1719, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1729, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1738, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1748, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1757, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1767, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1776, i32 11 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1783, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1793, i32 11 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1802, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 191, i32 28 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 192, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 192, i32 20 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 192, i32 33 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1813, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1820, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1827, i32 11 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1834, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1841, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1848, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant [13 x i8] c"aureon_texts\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1132, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1134, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant [14 x i8] c"prodigy_texts\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1136, i32 28 }
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [30 x i8] c"../sound/pci/ice1712/aureon.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1138, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @aureon_add_controls._entry, ptr @aureon_add_controls._entry.22, ptr @aureon_add_controls._entry_ptr, ptr @aureon_add_controls._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aureon51_eeprom, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aureon71_eeprom, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @aureon71_universe_eeprom, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @prodigy71lt_eeprom, ptr @.str.15, ptr @.str.16, ptr @snd_vt1724_aureon_cards, ptr @aureon_reset.wm_inits_aureon, ptr @aureon_reset.wm_inits_prodigy, ptr @aureon_ac97_init.ac97_defaults, ptr @aureon_dac_controls, ptr @wm_controls, ptr @universe_ac97_controls, ptr @ac97_controls, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @cs8415_controls, ptr @.str.25, ptr @.str.26, ptr @db_scale_wm_dac, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @db_scale_wm_pcm, ptr @.str.39, ptr @.str.40, ptr @db_scale_wm_adc, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @wm_adc_mux_info.texts, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @wm_adc_mux_info.universe_texts, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @aureon_oversampling_info.texts, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @db_scale_ac97_master, ptr @.str.58, ptr @.str.59, ptr @db_scale_ac97_gain, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @aureon_universe_inmux_info.texts, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @aureon_cs8415_mux_info.aureon_texts, ptr @.str.79, ptr @aureon_cs8415_mux_info.prodigy_texts, ptr @.str.80], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon51_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon71_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon71_universe_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy71lt_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_aureon_cards to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_reset.wm_inits_aureon to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_reset.wm_inits_prodigy to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_ac97_init.ac97_defaults to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_dac_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @universe_ac97_controls to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_controls to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_add_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_add_controls._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8415_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_pcm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_wm_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_adc_mux_info.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm_adc_mux_info.universe_texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_oversampling_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_ac97_master to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_ac97_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_universe_inmux_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_cs8415_mux_info.aureon_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aureon_cs8415_mux_info.prodigy_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 156) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec1, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991250193, i32 %3)
  %cmp = icmp eq i32 %3, 991250193
  %spec.select = select i1 %cmp, i32 6, i32 8
  %4 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 216) #14
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %9 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i51, ptr %akm, align 4
  %tobool8.not = icmp eq ptr %call7.i.i51, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %10 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %akm_codecs, align 4
  tail call fastcc void @aureon_reset(ptr noundef %ice)
  %master = getelementptr inbounds %struct.aureon_spec, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %master to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -32768, ptr %master, align 4
  %arrayidx16 = getelementptr %struct.aureon_spec, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -32768, ptr %arrayidx16, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1852.not = icmp eq i32 %14, 0
  br i1 %cmp1852.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.aureon_spec, ptr %call7.i.i, i32 0, i32 3, i32 %i.053
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32768, ptr %arrayidx19, align 2
  %16 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %shl.i.i.i = shl i32 %i.053, 9
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %20, i32 noundef %shl.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl i32 %i.053, 1
  %21 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %akm, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %22, i32 0, i32 3, i32 %shl.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %24 = load ptr, ptr %akm, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 %add.i.i
  %25 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %26 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eeprom, align 4
  %28 = and i32 %27, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %28)
  %29 = icmp eq i32 %28, 842093633
  %30 = select i1 %29, i32 256, i32 4096
  %or.i.i = or i32 %shl.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %30, i32 noundef %or.i.i, i32 noundef 16) #11
  %inc = add nuw i32 %i.053, 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %cmp18 = icmp ult i32 %inc, %32
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %33 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @aureon_resume, ptr %pm_resume, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %34 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991250193, i32 %1)
  %cmp = icmp eq i32 %1, 991250193
  %spec.select = select i1 %cmp, i32 10, i32 12
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0182, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.cond6.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond6.preheader:                              ; preds = %for.cond
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call11 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @wm_controls, ptr noundef %ice) #11
  %call12 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %for.cond6.preheader.cleanup114_crit_edge, label %for.cond6

for.cond6.preheader.cleanup114_crit_edge:         ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0182 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %arrayidx = getelementptr [12 x %struct.snd_kcontrol_new], ptr @aureon_dac_controls, i32 0, i32 %i.0182
  %call = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %ice) #11
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup114_crit_edge, label %for.cond

for.body.cleanup114_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6:                                        ; preds = %for.cond6.preheader
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call11.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 1), ptr noundef %ice) #11
  %call12.1 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call11.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.1 = icmp slt i32 %call12.1, 0
  br i1 %cmp13.1, label %for.cond6.cleanup114_crit_edge, label %for.cond6.1

for.cond6.cleanup114_crit_edge:                   ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.1:                                      ; preds = %for.cond6
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call11.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 2), ptr noundef %ice) #11
  %call12.2 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call11.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %cmp13.2 = icmp slt i32 %call12.2, 0
  br i1 %cmp13.2, label %for.cond6.1.cleanup114_crit_edge, label %for.cond6.2

for.cond6.1.cleanup114_crit_edge:                 ; preds = %for.cond6.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.2:                                      ; preds = %for.cond6.1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call11.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 3), ptr noundef %ice) #11
  %call12.3 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call11.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %cmp13.3 = icmp slt i32 %call12.3, 0
  br i1 %cmp13.3, label %for.cond6.2.cleanup114_crit_edge, label %for.cond6.3

for.cond6.2.cleanup114_crit_edge:                 ; preds = %for.cond6.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.3:                                      ; preds = %for.cond6.2
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call11.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 4), ptr noundef %ice) #11
  %call12.4 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call11.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %cmp13.4 = icmp slt i32 %call12.4, 0
  br i1 %cmp13.4, label %for.cond6.3.cleanup114_crit_edge, label %for.cond6.4

for.cond6.3.cleanup114_crit_edge:                 ; preds = %for.cond6.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.4:                                      ; preds = %for.cond6.3
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call11.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 5), ptr noundef %ice) #11
  %call12.5 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call11.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %cmp13.5 = icmp slt i32 %call12.5, 0
  br i1 %cmp13.5, label %for.cond6.4.cleanup114_crit_edge, label %for.cond6.5

for.cond6.4.cleanup114_crit_edge:                 ; preds = %for.cond6.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.5:                                      ; preds = %for.cond6.4
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call11.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 6), ptr noundef %ice) #11
  %call12.6 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call11.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.6)
  %cmp13.6 = icmp slt i32 %call12.6, 0
  br i1 %cmp13.6, label %for.cond6.5.cleanup114_crit_edge, label %for.cond6.6

for.cond6.5.cleanup114_crit_edge:                 ; preds = %for.cond6.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.6:                                      ; preds = %for.cond6.5
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call11.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @wm_controls, i32 0, i32 7), ptr noundef %ice) #11
  %call12.7 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call11.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.7)
  %cmp13.7 = icmp slt i32 %call12.7, 0
  br i1 %cmp13.7, label %for.cond6.6.cleanup114_crit_edge, label %for.cond6.7

for.cond6.6.cleanup114_crit_edge:                 ; preds = %for.cond6.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond6.7:                                      ; preds = %for.cond6.6
  %20 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eeprom, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %for.cond43.preheader [
    i32 991253265, label %for.cond6.7.for.body25_crit_edge
    i32 842093633, label %for.cond6.7.if.end57_crit_edge
    i32 909202497, label %for.cond6.7.if.end57_crit_edge212
  ]

for.cond6.7.if.end57_crit_edge212:                ; preds = %for.cond6.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

for.cond6.7.if.end57_crit_edge:                   ; preds = %for.cond6.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

for.cond6.7.for.body25_crit_edge:                 ; preds = %for.cond6.7
  br label %for.body25

for.cond43.preheader:                             ; preds = %for.cond6.7
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call48 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @ac97_controls, ptr noundef %ice) #11
  %call49 = tail call i32 @snd_ctl_add(ptr noundef %24, ptr noundef %call48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %for.cond43.preheader.cleanup114_crit_edge, label %for.cond43

for.cond43.preheader.cleanup114_crit_edge:        ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond23:                                       ; preds = %for.body25
  %inc34 = add nuw nsw i32 %i.2184, 1
  %exitcond198.not = icmp eq i32 %inc34, 14
  br i1 %exitcond198.not, label %for.cond23.if.end57thread-pre-split_crit_edge, label %for.cond23.for.body25_crit_edge

for.cond23.for.body25_crit_edge:                  ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25

for.cond23.if.end57thread-pre-split_crit_edge:    ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57thread-pre-split

for.body25:                                       ; preds = %for.cond23.for.body25_crit_edge, %for.cond6.7.for.body25_crit_edge
  %i.2184 = phi i32 [ %inc34, %for.cond23.for.body25_crit_edge ], [ 0, %for.cond6.7.for.body25_crit_edge ]
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %arrayidx27 = getelementptr [14 x %struct.snd_kcontrol_new], ptr @universe_ac97_controls, i32 0, i32 %i.2184
  %call28 = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx27, ptr noundef %ice) #11
  %call29 = tail call i32 @snd_ctl_add(ptr noundef %26, ptr noundef %call28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.body25.cleanup114_crit_edge, label %for.cond23

for.body25.cleanup114_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43:                                       ; preds = %for.cond43.preheader
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %call48.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 1), ptr noundef %ice) #11
  %call49.1 = tail call i32 @snd_ctl_add(ptr noundef %28, ptr noundef %call48.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %cmp50.1 = icmp slt i32 %call49.1, 0
  br i1 %cmp50.1, label %for.cond43.cleanup114_crit_edge, label %for.cond43.1

for.cond43.cleanup114_crit_edge:                  ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.1:                                     ; preds = %for.cond43
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %call48.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 2), ptr noundef %ice) #11
  %call49.2 = tail call i32 @snd_ctl_add(ptr noundef %30, ptr noundef %call48.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %cmp50.2 = icmp slt i32 %call49.2, 0
  br i1 %cmp50.2, label %for.cond43.1.cleanup114_crit_edge, label %for.cond43.2

for.cond43.1.cleanup114_crit_edge:                ; preds = %for.cond43.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.2:                                     ; preds = %for.cond43.1
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %call48.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 3), ptr noundef %ice) #11
  %call49.3 = tail call i32 @snd_ctl_add(ptr noundef %32, ptr noundef %call48.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.3)
  %cmp50.3 = icmp slt i32 %call49.3, 0
  br i1 %cmp50.3, label %for.cond43.2.cleanup114_crit_edge, label %for.cond43.3

for.cond43.2.cleanup114_crit_edge:                ; preds = %for.cond43.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.3:                                     ; preds = %for.cond43.2
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %call48.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 4), ptr noundef %ice) #11
  %call49.4 = tail call i32 @snd_ctl_add(ptr noundef %34, ptr noundef %call48.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.4)
  %cmp50.4 = icmp slt i32 %call49.4, 0
  br i1 %cmp50.4, label %for.cond43.3.cleanup114_crit_edge, label %for.cond43.4

for.cond43.3.cleanup114_crit_edge:                ; preds = %for.cond43.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.4:                                     ; preds = %for.cond43.3
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %call48.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 5), ptr noundef %ice) #11
  %call49.5 = tail call i32 @snd_ctl_add(ptr noundef %36, ptr noundef %call48.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.5)
  %cmp50.5 = icmp slt i32 %call49.5, 0
  br i1 %cmp50.5, label %for.cond43.4.cleanup114_crit_edge, label %for.cond43.5

for.cond43.4.cleanup114_crit_edge:                ; preds = %for.cond43.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.5:                                     ; preds = %for.cond43.4
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %call48.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 6), ptr noundef %ice) #11
  %call49.6 = tail call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call48.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.6)
  %cmp50.6 = icmp slt i32 %call49.6, 0
  br i1 %cmp50.6, label %for.cond43.5.cleanup114_crit_edge, label %for.cond43.6

for.cond43.5.cleanup114_crit_edge:                ; preds = %for.cond43.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.6:                                     ; preds = %for.cond43.5
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %call48.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 7), ptr noundef %ice) #11
  %call49.7 = tail call i32 @snd_ctl_add(ptr noundef %40, ptr noundef %call48.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.7)
  %cmp50.7 = icmp slt i32 %call49.7, 0
  br i1 %cmp50.7, label %for.cond43.6.cleanup114_crit_edge, label %for.cond43.7

for.cond43.6.cleanup114_crit_edge:                ; preds = %for.cond43.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.7:                                     ; preds = %for.cond43.6
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %call48.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 8), ptr noundef %ice) #11
  %call49.8 = tail call i32 @snd_ctl_add(ptr noundef %42, ptr noundef %call48.8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.8)
  %cmp50.8 = icmp slt i32 %call49.8, 0
  br i1 %cmp50.8, label %for.cond43.7.cleanup114_crit_edge, label %for.cond43.8

for.cond43.7.cleanup114_crit_edge:                ; preds = %for.cond43.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.8:                                     ; preds = %for.cond43.7
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %call48.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 9), ptr noundef %ice) #11
  %call49.9 = tail call i32 @snd_ctl_add(ptr noundef %44, ptr noundef %call48.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.9)
  %cmp50.9 = icmp slt i32 %call49.9, 0
  br i1 %cmp50.9, label %for.cond43.8.cleanup114_crit_edge, label %for.cond43.9

for.cond43.8.cleanup114_crit_edge:                ; preds = %for.cond43.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.cond43.9:                                     ; preds = %for.cond43.8
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %call48.10 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([11 x %struct.snd_kcontrol_new], ptr @ac97_controls, i32 0, i32 10), ptr noundef %ice) #11
  %call49.10 = tail call i32 @snd_ctl_add(ptr noundef %46, ptr noundef %call48.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.10)
  %cmp50.10 = icmp slt i32 %call49.10, 0
  br i1 %cmp50.10, label %for.cond43.9.cleanup114_crit_edge, label %for.cond43.9.if.end57thread-pre-split_crit_edge

for.cond43.9.if.end57thread-pre-split_crit_edge:  ; preds = %for.cond43.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57thread-pre-split

for.cond43.9.cleanup114_crit_edge:                ; preds = %for.cond43.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

if.end57thread-pre-split:                         ; preds = %for.cond43.9.if.end57thread-pre-split_crit_edge, %for.cond23.if.end57thread-pre-split_crit_edge
  %47 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %eeprom, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %for.cond6.7.if.end57_crit_edge, %for.cond6.7.if.end57_crit_edge212
  %48 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %21, %for.cond6.7.if.end57_crit_edge ], [ %21, %for.cond6.7.if.end57_crit_edge212 ]
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %48, label %if.then65 [
    i32 842093633, label %if.end57.cleanup114_crit_edge
    i32 909202497, label %if.end57.cleanup114_crit_edge213
  ]

if.end57.cleanup114_crit_edge213:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

if.end57.cleanup114_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

if.then65:                                        ; preds = %if.end57
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %50 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %52 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %53 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2, i32 1
  %55 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #11
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef 4194304, i32 noundef 8319, i32 noundef 16) #11
  call fastcc void @aureon_spi_read(ptr noundef %ice, ptr noundef nonnull %val.i, i32 noundef 1) #11
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %58)
  %cmp67.not = icmp eq i8 %58, 65
  br i1 %cmp67.not, label %for.cond87.preheader, label %do.end

for.cond87.preheader:                             ; preds = %if.then65
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %call93 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @cs8415_controls, ptr noundef %ice) #11
  %call94 = tail call i32 @snd_ctl_add(ptr noundef %60, ptr noundef %call93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %for.cond87.preheader.cleanup114_crit_edge, label %for.inc105

for.cond87.preheader.cleanup114_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

do.end:                                           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 27
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.17) #15
  br label %cleanup110.thread

for.inc105:                                       ; preds = %for.cond87.preheader
  %65 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card, align 4
  %call93.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @cs8415_controls, i32 0, i32 1), ptr noundef %ice) #11
  %call94.1 = tail call i32 @snd_ctl_add(ptr noundef %66, ptr noundef %call93.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.1)
  %cmp95.1 = icmp slt i32 %call94.1, 0
  br i1 %cmp95.1, label %for.inc105.cleanup114_crit_edge, label %for.inc105.1

for.inc105.cleanup114_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.inc105.1:                                     ; preds = %for.inc105
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %call93.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @cs8415_controls, i32 0, i32 2), ptr noundef %ice) #11
  %call94.2 = tail call i32 @snd_ctl_add(ptr noundef %68, ptr noundef %call93.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.2)
  %cmp95.2 = icmp slt i32 %call94.2, 0
  br i1 %cmp95.2, label %for.inc105.1.cleanup114_crit_edge, label %for.inc105.2

for.inc105.1.cleanup114_crit_edge:                ; preds = %for.inc105.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.inc105.2:                                     ; preds = %for.inc105.1
  %69 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcm, align 4
  %device.2 = getelementptr inbounds %struct.snd_pcm, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %device.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %device.2, align 4
  %device103.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call93.2, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %device103.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %device103.2, align 4
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %call93.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @cs8415_controls, i32 0, i32 3), ptr noundef %ice) #11
  %call94.3 = tail call i32 @snd_ctl_add(ptr noundef %75, ptr noundef %call93.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.3)
  %cmp95.3 = icmp slt i32 %call94.3, 0
  br i1 %cmp95.3, label %for.inc105.2.cleanup114_crit_edge, label %for.inc105.3

for.inc105.2.cleanup114_crit_edge:                ; preds = %for.inc105.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.inc105.3:                                     ; preds = %for.inc105.2
  %76 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcm, align 4
  %device.3 = getelementptr inbounds %struct.snd_pcm, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %device.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %device.3, align 4
  %device103.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call93.3, i32 0, i32 1, i32 2
  %80 = ptrtoint ptr %device103.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %device103.3, align 4
  %81 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card, align 4
  %call93.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @cs8415_controls, i32 0, i32 4), ptr noundef %ice) #11
  %call94.4 = tail call i32 @snd_ctl_add(ptr noundef %82, ptr noundef %call93.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.4)
  %cmp95.4 = icmp slt i32 %call94.4, 0
  br i1 %cmp95.4, label %for.inc105.3.cleanup114_crit_edge, label %for.inc105.4

for.inc105.3.cleanup114_crit_edge:                ; preds = %for.inc105.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.inc105.4:                                     ; preds = %for.inc105.3
  %83 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcm, align 4
  %device.4 = getelementptr inbounds %struct.snd_pcm, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %device.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %device.4, align 4
  %device103.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call93.4, i32 0, i32 1, i32 2
  %87 = ptrtoint ptr %device103.4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %device103.4, align 4
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %call93.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @cs8415_controls, i32 0, i32 5), ptr noundef %ice) #11
  %call94.5 = tail call i32 @snd_ctl_add(ptr noundef %89, ptr noundef %call93.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.5)
  %cmp95.5 = icmp slt i32 %call94.5, 0
  br i1 %cmp95.5, label %for.inc105.4.cleanup114_crit_edge, label %for.inc105.5

for.inc105.4.cleanup114_crit_edge:                ; preds = %for.inc105.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

for.inc105.5:                                     ; preds = %for.inc105.4
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcm, align 4
  %device.5 = getelementptr inbounds %struct.snd_pcm, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %device.5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %device.5, align 4
  %device103.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call93.5, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %device103.5 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %device103.5, align 4
  br label %cleanup110.thread

cleanup110.thread:                                ; preds = %for.inc105.5, %do.end
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %95 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %set_dir.i, align 4
  %97 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %saved.i, align 4
  tail call void %96(ptr noundef %ice, i32 noundef %98) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %99 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_mask.i, align 4
  %101 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx5.i, align 4
  tail call void %100(ptr noundef %ice, i32 noundef %102) #11
  %103 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %saved.i, align 4
  %105 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %gpio.i, align 4
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx5.i, align 4
  %108 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  br label %cleanup114

cleanup114:                                       ; preds = %cleanup110.thread, %for.inc105.4.cleanup114_crit_edge, %for.inc105.3.cleanup114_crit_edge, %for.inc105.2.cleanup114_crit_edge, %for.inc105.1.cleanup114_crit_edge, %for.inc105.cleanup114_crit_edge, %for.cond87.preheader.cleanup114_crit_edge, %if.end57.cleanup114_crit_edge, %if.end57.cleanup114_crit_edge213, %for.cond43.9.cleanup114_crit_edge, %for.cond43.8.cleanup114_crit_edge, %for.cond43.7.cleanup114_crit_edge, %for.cond43.6.cleanup114_crit_edge, %for.cond43.5.cleanup114_crit_edge, %for.cond43.4.cleanup114_crit_edge, %for.cond43.3.cleanup114_crit_edge, %for.cond43.2.cleanup114_crit_edge, %for.cond43.1.cleanup114_crit_edge, %for.cond43.cleanup114_crit_edge, %for.body25.cleanup114_crit_edge, %for.cond43.preheader.cleanup114_crit_edge, %for.cond6.6.cleanup114_crit_edge, %for.cond6.5.cleanup114_crit_edge, %for.cond6.4.cleanup114_crit_edge, %for.cond6.3.cleanup114_crit_edge, %for.cond6.2.cleanup114_crit_edge, %for.cond6.1.cleanup114_crit_edge, %for.cond6.cleanup114_crit_edge, %for.body.cleanup114_crit_edge, %for.cond6.preheader.cleanup114_crit_edge
  %retval.4 = phi i32 [ 0, %cleanup110.thread ], [ 0, %if.end57.cleanup114_crit_edge ], [ 0, %if.end57.cleanup114_crit_edge213 ], [ %call94, %for.cond87.preheader.cleanup114_crit_edge ], [ %call94.1, %for.inc105.cleanup114_crit_edge ], [ %call94.2, %for.inc105.1.cleanup114_crit_edge ], [ %call94.3, %for.inc105.2.cleanup114_crit_edge ], [ %call94.4, %for.inc105.3.cleanup114_crit_edge ], [ %call94.5, %for.inc105.4.cleanup114_crit_edge ], [ %call49, %for.cond43.preheader.cleanup114_crit_edge ], [ %call49.1, %for.cond43.cleanup114_crit_edge ], [ %call49.2, %for.cond43.1.cleanup114_crit_edge ], [ %call49.3, %for.cond43.2.cleanup114_crit_edge ], [ %call49.4, %for.cond43.3.cleanup114_crit_edge ], [ %call49.5, %for.cond43.4.cleanup114_crit_edge ], [ %call49.6, %for.cond43.5.cleanup114_crit_edge ], [ %call49.7, %for.cond43.6.cleanup114_crit_edge ], [ %call49.8, %for.cond43.7.cleanup114_crit_edge ], [ %call49.9, %for.cond43.8.cleanup114_crit_edge ], [ %call49.10, %for.cond43.9.cleanup114_crit_edge ], [ %call12, %for.cond6.preheader.cleanup114_crit_edge ], [ %call12.1, %for.cond6.cleanup114_crit_edge ], [ %call12.2, %for.cond6.1.cleanup114_crit_edge ], [ %call12.3, %for.cond6.2.cleanup114_crit_edge ], [ %call12.4, %for.cond6.3.cleanup114_crit_edge ], [ %call12.5, %for.cond6.4.cleanup114_crit_edge ], [ %call12.6, %for.cond6.5.cleanup114_crit_edge ], [ %call12.7, %for.cond6.6.cleanup114_crit_edge ], [ %call29, %for.body25.cleanup114_crit_edge ], [ %call2, %for.body.cleanup114_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aureon_reset(ptr noundef %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %ice) #11
  %or.i = and i32 %call.i.i, -65792
  %and.i = or i32 %or.i, 65536
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %4 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_data.i.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef %and.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 644244) #11
  %7 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_data.i.i, align 4
  tail call void %8(ptr noundef %ice, i32 noundef %or.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 644244) #11
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 644244) #11
  %13 = call ptr @memset(ptr %1, i32 0, i32 128)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %add10.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [37 x i16], ptr @aureon_ac97_init.ac97_defaults, i32 0, i32 %i.03.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %add.i = or i32 %i.03.i, 1
  %arrayidx5.i = getelementptr [37 x i16], ptr @aureon_ac97_init.ac97_defaults, i32 0, i32 %add.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.i, align 2
  %18 = lshr i16 %15, 1
  %19 = zext i16 %18 to i32
  %arrayidx9.i = getelementptr [64 x i16], ptr %1, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %arrayidx9.i, align 2
  %add10.i = add nuw nsw i32 %i.03.i, 2
  %cmp.not.i = icmp eq i32 %add10.i, 36
  br i1 %cmp.not.i, label %aureon_ac97_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

aureon_ac97_init.exit:                            ; preds = %for.body.i
  tail call fastcc void @aureon_ac97_write(ptr noundef %ice, i16 noundef zeroext 2, i16 noundef zeroext 0) #11
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %21 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_dir.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef 6291455) #11
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %23 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %25 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %26 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i1 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx5.i1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx5.i1, align 4
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %29 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mask.i, align 4
  tail call void %30(ptr noundef %ice, i32 noundef -5263361) #11
  %31 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_data.i.i, align 4
  %call.i = tail call i32 %32(ptr noundef %ice) #11
  %and = and i32 %call.i, -1048577
  %33 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i.i, align 4
  tail call void %34(ptr noundef %ice, i32 noundef %and) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #11
  %or = or i32 %and, 4198400
  %36 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_data.i.i, align 4
  tail call void %37(ptr noundef %ice, i32 noundef %or) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #11
  %or3 = or i32 %call.i, 5246976
  %39 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_data.i.i, align 4
  tail call void %40(ptr noundef %ice, i32 noundef %or3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #11
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %42 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eeprom, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %43, label %if.else [
    i32 860443461, label %aureon_ac97_init.exit.if.end13_crit_edge
    i32 842093633, label %aureon_ac97_init.exit.if.end13_crit_edge19
    i32 909202497, label %aureon_ac97_init.exit.if.end13_crit_edge20
  ]

aureon_ac97_init.exit.if.end13_crit_edge20:       ; preds = %aureon_ac97_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

aureon_ac97_init.exit.if.end13_crit_edge19:       ; preds = %aureon_ac97_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

aureon_ac97_init.exit.if.end13_crit_edge:         ; preds = %aureon_ac97_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %aureon_ac97_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %if.else, %aureon_ac97_init.exit.if.end13_crit_edge, %aureon_ac97_init.exit.if.end13_crit_edge19, %aureon_ac97_init.exit.if.end13_crit_edge20
  %p.0 = phi ptr [ @aureon_reset.wm_inits_aureon, %if.else ], [ @aureon_reset.wm_inits_prodigy, %aureon_ac97_init.exit.if.end13_crit_edge ], [ @aureon_reset.wm_inits_prodigy, %aureon_ac97_init.exit.if.end13_crit_edge19 ], [ @aureon_reset.wm_inits_prodigy, %aureon_ac97_init.exit.if.end13_crit_edge20 ]
  %45 = ptrtoint ptr %p.0 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %p.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp14.not16 = icmp eq i16 %46, -1
  br i1 %cmp14.not16, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %47 = phi i16 [ %46, %for.body.lr.ph ], [ %63, %for.body.for.body_crit_edge ]
  %p.117 = phi ptr [ %p.0, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %conv = zext i16 %47 to i32
  %arrayidx17 = getelementptr i16, ptr %p.117, i32 1
  %48 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx17, align 2
  %50 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eeprom, align 4
  %52 = and i32 %51, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %52)
  %53 = icmp eq i32 %52, 842093633
  %54 = select i1 %53, i32 256, i32 4096
  %shl.i.i = shl nuw nsw i32 %conv, 9
  %55 = and i16 %49, 511
  %and.i.i = zext i16 %55 to i32
  %or.i.i = or i32 %shl.i.i, %and.i.i
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %54, i32 noundef %or.i.i, i32 noundef 16) #11
  %shl.i = shl nuw nsw i32 %conv, 1
  %56 = lshr i16 %49, 8
  %conv1.i = trunc i16 %56 to i8
  %57 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %58, i32 0, i32 3, i32 %shl.i
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %49 to i8
  %60 = load ptr, ptr %akm.i, align 4
  %add.i4 = or i32 %shl.i, 1
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %60, i32 0, i32 3, i32 %add.i4
  %61 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv3.i, ptr %arrayidx7.i, align 1
  %add.ptr = getelementptr i16, ptr %p.117, i32 2
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr, align 2
  %cmp14.not = icmp eq i16 %63, -1
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %64 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %eeprom, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %65, label %for.body31.preheader [
    i32 842093633, label %for.end.if.end37_crit_edge
    i32 909202497, label %for.end.if.end37_crit_edge21
  ]

for.end.if.end37_crit_edge21:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.body31.preheader:                             ; preds = %for.end
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef 4194304, i32 noundef 2098241, i32 noundef 24)
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef 4194304, i32 noundef 2097536, i32 noundef 24)
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef 4194304, i32 noundef 2097665, i32 noundef 24)
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef 4194304, i32 noundef 2098693, i32 noundef 24)
  %cs8415_mux = getelementptr inbounds %struct.aureon_spec, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %cs8415_mux to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %cs8415_mux, align 4
  %68 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i6 = tail call i32 %69(ptr noundef %ice) #11
  %70 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %eeprom, align 4
  %72 = add i32 %71, -842093633
  %switch.and = and i32 %72, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %73 = select i1 %switch.selectcmp, i32 32, i32 16384
  %or5.i = or i32 %call.i.i6, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %or5.i, i32 %call.i.i6)
  %cmp19.not.i = icmp eq i32 %or5.i, %call.i.i6
  br i1 %cmp19.not.i, label %for.body31.preheader.if.end37_crit_edge, label %if.then20.i

for.body31.preheader.if.end37_crit_edge:          ; preds = %for.body31.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then20.i:                                      ; preds = %for.body31.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_data.i.i, align 4
  tail call void %75(ptr noundef %ice, i32 noundef %or5.i) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then20.i, %for.body31.preheader.if.end37_crit_edge, %for.end.if.end37_crit_edge, %for.end.if.end37_crit_edge21
  %76 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_dir.i, align 4
  %78 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %saved.i, align 4
  tail call void %77(ptr noundef %ice, i32 noundef %79) #11
  %80 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_mask.i, align 4
  %82 = ptrtoint ptr %arrayidx5.i1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx5.i1, align 4
  tail call void %81(ptr noundef %ice, i32 noundef %83) #11
  %84 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %saved.i, align 4
  %86 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %gpio.i, align 4
  %87 = ptrtoint ptr %arrayidx5.i1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx5.i1, align 4
  %89 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  tail call fastcc void @aureon_pca9554_write(ptr noundef %ice, i8 noundef zeroext 3, i8 noundef zeroext 0)
  tail call fastcc void @aureon_pca9554_write(ptr noundef %ice, i8 noundef zeroext 1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_resume(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  tail call fastcc void @aureon_reset(ptr noundef %ice)
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %2 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp215.not = icmp eq i32 %3, 0
  br i1 %cmp215.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %eeprom.i.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %wm_set_vol.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %wm_set_vol.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aureon_spec, ptr %1, i32 0, i32 3, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %rem = srem i32 %i.016, 2
  %arrayidx3 = getelementptr %struct.aureon_spec, ptr %1, i32 0, i32 2, i32 %rem
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %8 = or i16 %7, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %9 = icmp sgt i16 %8, -1
  br i1 %9, label %if.else.i, label %for.body.wm_set_vol.exit_crit_edge

for.body.wm_set_vol.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i16 %5, 101
  %rem6.i = urem i16 %7, 101
  %mul.i = mul nuw nsw i16 %rem6.i, %rem.i
  %div.i = udiv i16 %mul.i, 100
  %10 = trunc i16 %div.i to i8
  %conv9.i = add nuw nsw i8 %10, 27
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %for.body.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %conv9.i, %if.else.i ], [ 0, %for.body.wm_set_vol.exit_crit_edge ]
  %conv10.i = zext i8 %nvol.0.i to i32
  %11 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eeprom.i.i.i, align 4
  %13 = and i32 %12, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %13)
  %14 = icmp eq i32 %13, 842093633
  %15 = select i1 %14, i32 256, i32 4096
  %shl.i.i.i = shl i32 %i.016, 9
  %or.i.i.i = or i32 %shl.i.i.i, %conv10.i
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %15, i32 noundef %or.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl i32 %i.016, 1
  %16 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %17, i32 0, i32 3, i32 %shl.i.i
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %19 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %19, i32 0, i32 3, i32 %add.i.i
  %20 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %21 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eeprom.i.i.i, align 4
  %23 = and i32 %22, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %23)
  %24 = icmp eq i32 %23, 842093633
  %25 = select i1 %24, i32 256, i32 4096
  %or.i.i = or i32 %or.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %25, i32 noundef %or.i.i, i32 noundef 16) #11
  %inc = add nuw i32 %i.016, 1
  %26 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_total_dacs, align 4
  %cmp2 = icmp ult i32 %inc, %27
  br i1 %cmp2, label %wm_set_vol.exit.for.body_crit_edge, label %wm_set_vol.exit.cleanup_crit_edge

wm_set_vol.exit.cleanup_crit_edge:                ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

wm_set_vol.exit.for.body_crit_edge:               ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %wm_set_vol.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aureon_spi_write(ptr noundef %ice, i32 noundef %cs, i32 noundef %data, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %1(ptr noundef %ice) #11
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %if.else [
    i32 842093633, label %entry.if.then_crit_edge
    i32 909202497, label %entry.if.then_crit_edge60
  ]

entry.if.then_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge60
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %5 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mask.i, align 4
  tail call void %6(ptr noundef %ice, i32 noundef -1793) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %set_mask.i50 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %7 = ptrtoint ptr %set_mask.i50 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_mask.i50, align 4
  tail call void %8(ptr noundef %ice, i32 noundef -5115905) #11
  %or = or i32 %call.i, 131072
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %call.i, %if.then ], [ %or, %if.else ]
  %mosi.0 = phi i32 [ 1024, %if.then ], [ 262144, %if.else ]
  %clk.0 = phi i32 [ 512, %if.then ], [ 524288, %if.else ]
  %neg = xor i32 %cs, -1
  %and = and i32 %tmp.0, %neg
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %9 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_data.i, align 4
  tail call void %10(ptr noundef %ice, i32 noundef %and) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #11
  %i.056 = add i32 %bits, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.056)
  %cmp457 = icmp sgt i32 %i.056, -1
  %neg5 = xor i32 %clk.0, -1
  br i1 %cmp457, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %neg11 = xor i32 %mosi.0, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ %i.056, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %tmp.158 = phi i32 [ %and, %for.body.lr.ph ], [ %or14, %for.body.for.body_crit_edge ]
  %and6 = and i32 %tmp.158, %neg5
  %12 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_data.i, align 4
  tail call void %13(ptr noundef %ice, i32 noundef %and6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #11
  %shl = shl nuw i32 1, %i.059
  %and7 = and i32 %shl, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %or9 = or i32 %and6, %mosi.0
  %and12 = and i32 %and6, %neg11
  %tmp.2 = select i1 %tobool.not, i32 %and12, i32 %or9
  %15 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_data.i, align 4
  tail call void %16(ptr noundef %ice, i32 noundef %tmp.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #11
  %or14 = or i32 %tmp.2, %clk.0
  %18 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_data.i, align 4
  tail call void %19(ptr noundef %ice, i32 noundef %or14) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #11
  %i.0 = add nsw i32 %i.059, -1
  %cmp4 = icmp sgt i32 %i.059, 0
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %tmp.1.lcssa = phi i32 [ %and, %if.end.for.end_crit_edge ], [ %or14, %for.body.for.end_crit_edge ]
  %and16 = and i32 %tmp.1.lcssa, %neg5
  %or17 = or i32 %and16, %cs
  %21 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef %or17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #11
  %or18 = or i32 %or17, %clk.0
  %24 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_data.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef %or18) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aureon_pca9554_write(ptr noundef %ice, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %1(ptr noundef %ice) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mask.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef -5115905) #11
  %or1 = and i32 %call.i, -5115905
  %and = or i32 %or1, 4329472
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %4 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_data.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef %and) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #11
  %or3 = or i32 %or1, 4853760
  %7 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_data.i, align 4
  tail call void %8(ptr noundef %ice, i32 noundef %or3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #11
  %or4 = or i32 %call.i, 5115904
  %10 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %or4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #11
  %and5 = and i32 %or4, -262145
  %13 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i, align 4
  tail call void %14(ptr noundef %ice, i32 noundef %and5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #11
  %and6 = and i32 %or4, -786433
  %16 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i, align 4
  tail call void %17(ptr noundef %ice, i32 noundef %and6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #11
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %val.097 = phi i8 [ 0, %entry ], [ %val.1, %for.end.for.body_crit_edge ]
  %j.096 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %tmp.095 = phi i32 [ %and6, %entry ], [ %tmp.2, %for.end.for.body_crit_edge ]
  %19 = zext i32 %j.096 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %j.096, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb, %for.body.sw.epilog_crit_edge
  %val.1 = phi i8 [ %val.097, %for.body.sw.epilog_crit_edge ], [ %data, %sw.bb8 ], [ %reg, %sw.bb7 ], [ 64, %sw.bb ]
  %conv = zext i8 %val.1 to i32
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %sw.epilog
  %i.094 = phi i32 [ 7, %sw.epilog ], [ %dec, %for.body11.for.body11_crit_edge ]
  %tmp.193 = phi i32 [ %tmp.095, %sw.epilog ], [ %or16, %for.body11.for.body11_crit_edge ]
  %and12 = and i32 %tmp.193, -524289
  %20 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %and12) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 8589920) #11
  %shl = shl nuw i32 1, %i.094
  %and13 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %or14 = or i32 %and12, 262144
  %and15 = and i32 %tmp.193, -786433
  %tmp.2 = select i1 %tobool.not, i32 %and15, i32 %or14
  %23 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_data.i, align 4
  tail call void %24(ptr noundef %ice, i32 noundef %tmp.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 8589920) #11
  %or16 = or i32 %tmp.2, 524288
  %26 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_data.i, align 4
  tail call void %27(ptr noundef %ice, i32 noundef %or16) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 8589920) #11
  %dec = add nsw i32 %i.094, -1
  %cmp10.not = icmp eq i32 %i.094, 0
  br i1 %cmp10.not, label %for.end, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.end:                                          ; preds = %for.body11
  %29 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_data.i, align 4
  tail call void %30(ptr noundef %ice, i32 noundef %tmp.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 8589920) #11
  %32 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_data.i, align 4
  tail call void %33(ptr noundef %ice, i32 noundef %or16) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 8589920) #11
  %35 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_data.i, align 4
  tail call void %36(ptr noundef %ice, i32 noundef %tmp.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 8589920) #11
  %inc = add nuw nsw i32 %j.096, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end21, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_data.i, align 4
  tail call void %39(ptr noundef %ice, i32 noundef %tmp.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 8589920) #11
  %and23 = and i32 %tmp.2, -786433
  %41 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_data.i, align 4
  tail call void %42(ptr noundef %ice, i32 noundef %and23) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 8589920) #11
  %or24 = or i32 %and23, 524288
  %44 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_data.i, align 4
  tail call void %45(ptr noundef %ice, i32 noundef %or24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 10737400) #11
  %or25 = or i32 %tmp.2, 786432
  %47 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_data.i, align 4
  tail call void %48(ptr noundef %ice, i32 noundef %or25) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aureon_ac97_write(ptr noundef %ice, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ice) #11
  %and = and i32 %call.i, -256
  %4 = and i16 %reg, 127
  %and2 = zext i16 %4 to i32
  %or = or i32 %and, %and2
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %5 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_data.i, align 4
  tail call void %6(ptr noundef %ice, i32 noundef %or) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #11
  %or3 = or i32 %or, 1024
  %8 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i, align 4
  tail call void %9(ptr noundef %ice, i32 noundef %or3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #11
  %and4 = and i32 %or, -1153
  %11 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data.i, align 4
  tail call void %12(ptr noundef %ice, i32 noundef %and4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #11
  %and5 = and i32 %call.i, -1280
  %conv6 = zext i16 %val to i32
  %and7 = and i32 %conv6, 255
  %or8 = or i32 %and5, %and7
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %or8) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #11
  %or9 = or i32 %or8, 512
  %17 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %or9) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #11
  %and10 = and i32 %or8, -1537
  %20 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %and10) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #11
  %and11 = and i32 %call.i, -1792
  %23 = lshr i32 %conv6, 8
  %or14 = or i32 %and11, %23
  %24 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_data.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef %or14) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #11
  %or15 = or i32 %or14, 256
  %27 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef %or15) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #11
  %and16 = and i32 %or14, -1793
  %30 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_data.i, align 4
  tail call void %31(ptr noundef %ice, i32 noundef %and16) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #11
  %or17 = or i32 %and16, 2048
  %33 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i, align 4
  tail call void %34(ptr noundef %ice, i32 noundef %or17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #11
  %and18 = and i32 %or14, -3841
  %36 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_data.i, align 4
  tail call void %37(ptr noundef %ice, i32 noundef %and18) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #11
  %39 = lshr i32 %and2, 1
  %arrayidx = getelementptr [64 x i16], ptr %1, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %val, ptr %arrayidx, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_master_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %master = getelementptr inbounds %struct.aureon_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %master, align 4
  %6 = xor i16 %5, -1
  %7 = lshr i16 %6, 15
  %.not = zext i16 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.not, ptr %value, align 8
  %arrayidx4 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 1
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
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %eeprom.i.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %arrayidx = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %and8 = and i16 %11, 32767
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %and8, ptr %arrayidx, align 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  %cond13 = select i1 %tobool12.not, i16 -32768, i16 0
  %or = or i16 %cond13, %and8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or, ptr %arrayidx, align 2
  %21 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1956.not = icmp eq i32 %22, 0
  br i1 %cmp1956.not, label %if.then.if.end_crit_edge, label %if.then.for.body21_crit_edge

if.then.for.body21_crit_edge:                     ; preds = %if.then
  br label %for.body21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body21:                                       ; preds = %wm_set_vol.exit.for.body21_crit_edge, %if.then.for.body21_crit_edge
  %dac.057 = phi i32 [ %add27, %wm_set_vol.exit.for.body21_crit_edge ], [ 0, %if.then.for.body21_crit_edge ]
  %arrayidx24 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %dac.057
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx24, align 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %27 = or i16 %26, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %28 = icmp sgt i16 %27, -1
  br i1 %28, label %if.else.i, label %for.body21.wm_set_vol.exit_crit_edge

for.body21.wm_set_vol.exit_crit_edge:             ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i16 %24, 101
  %rem6.i = urem i16 %26, 101
  %mul.i = mul nuw nsw i16 %rem6.i, %rem.i
  %div.i = udiv i16 %mul.i, 100
  %29 = trunc i16 %div.i to i8
  %conv9.i = add nuw nsw i8 %29, 27
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %for.body21.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %conv9.i, %if.else.i ], [ 0, %for.body21.wm_set_vol.exit_crit_edge ]
  %conv10.i = zext i8 %nvol.0.i to i32
  %30 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eeprom.i.i.i, align 4
  %32 = and i32 %31, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %32)
  %33 = icmp eq i32 %32, 842093633
  %34 = select i1 %33, i32 256, i32 4096
  %shl.i.i.i = shl i32 %dac.057, 9
  %or.i.i.i = or i32 %shl.i.i.i, %conv10.i
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %34, i32 noundef %or.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl i32 %dac.057, 1
  %35 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %36, i32 0, i32 3, i32 %shl.i.i
  %37 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %38 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %38, i32 0, i32 3, i32 %add.i.i
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %40 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eeprom.i.i.i, align 4
  %42 = and i32 %41, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %42)
  %43 = icmp eq i32 %42, 842093633
  %44 = select i1 %43, i32 256, i32 4096
  %or.i.i = or i32 %or.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %44, i32 noundef %or.i.i, i32 noundef 16) #11
  %add27 = add i32 %dac.057, 2
  %45 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_total_dacs, align 4
  %cmp19 = icmp ult i32 %add27, %46
  br i1 %cmp19, label %wm_set_vol.exit.for.body21_crit_edge, label %wm_set_vol.exit.if.end_crit_edge

wm_set_vol.exit.if.end_crit_edge:                 ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

wm_set_vol.exit.for.body21_crit_edge:             ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

if.end:                                           ; preds = %wm_set_vol.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %change.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %wm_set_vol.exit.if.end_crit_edge ]
  %arrayidx.1 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.1, align 2
  %49 = xor i16 %48, -1
  %50 = lshr i16 %49, 15
  %51 = zext i16 %50 to i32
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp3.not.1 = icmp eq i32 %53, %51
  br i1 %cmp3.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  %and8.1 = and i16 %48, 32767
  %54 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %and8.1, ptr %arrayidx.1, align 2
  %55 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool12.not.1 = icmp eq i32 %56, 0
  %cond13.1 = select i1 %tobool12.not.1, i16 -32768, i16 0
  %or.1 = or i16 %cond13.1, %and8.1
  %57 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or.1, ptr %arrayidx.1, align 2
  %58 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1956.not.1 = icmp eq i32 %59, 0
  br i1 %cmp1956.not.1, label %if.then.1.if.end.1_crit_edge, label %if.then.1.for.body21.1_crit_edge

if.then.1.for.body21.1_crit_edge:                 ; preds = %if.then.1
  br label %for.body21.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

for.body21.1:                                     ; preds = %wm_set_vol.exit.1.for.body21.1_crit_edge, %if.then.1.for.body21.1_crit_edge
  %dac.057.1 = phi i32 [ %add27.1, %wm_set_vol.exit.1.for.body21.1_crit_edge ], [ 0, %if.then.1.for.body21.1_crit_edge ]
  %add22.1 = or i32 %dac.057.1, 1
  %arrayidx24.1 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add22.1
  %60 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx24.1, align 2
  %62 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.1, align 2
  %64 = or i16 %63, %61
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %65 = icmp sgt i16 %64, -1
  br i1 %65, label %if.else.i.1, label %for.body21.1.wm_set_vol.exit.1_crit_edge

for.body21.1.wm_set_vol.exit.1_crit_edge:         ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit.1

if.else.i.1:                                      ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.1 = urem i16 %61, 101
  %rem6.i.1 = urem i16 %63, 101
  %mul.i.1 = mul nuw nsw i16 %rem6.i.1, %rem.i.1
  %div.i.1 = udiv i16 %mul.i.1, 100
  %66 = trunc i16 %div.i.1 to i8
  %conv9.i.1 = add nuw nsw i8 %66, 27
  br label %wm_set_vol.exit.1

wm_set_vol.exit.1:                                ; preds = %if.else.i.1, %for.body21.1.wm_set_vol.exit.1_crit_edge
  %nvol.0.i.1 = phi i8 [ %conv9.i.1, %if.else.i.1 ], [ 0, %for.body21.1.wm_set_vol.exit.1_crit_edge ]
  %conv10.i.1 = zext i8 %nvol.0.i.1 to i32
  %67 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eeprom.i.i.i, align 4
  %69 = and i32 %68, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %69)
  %70 = icmp eq i32 %69, 842093633
  %71 = select i1 %70, i32 256, i32 4096
  %shl.i.i.i.1 = shl i32 %add22.1, 9
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %conv10.i.1
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %71, i32 noundef %or.i.i.i.1, i32 noundef 16) #11
  %shl.i.i.1 = shl i32 %add22.1, 1
  %72 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %73, i32 0, i32 3, i32 %shl.i.i.1
  %74 = ptrtoint ptr %arrayidx2.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx2.i.i.1, align 1
  %75 = load ptr, ptr %akm.i.i, align 4
  %add.i.i.1 = or i32 %shl.i.i.1, 1
  %arrayidx7.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %75, i32 0, i32 3, i32 %add.i.i.1
  %76 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %nvol.0.i.1, ptr %arrayidx7.i.i.1, align 1
  %77 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %eeprom.i.i.i, align 4
  %79 = and i32 %78, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %79)
  %80 = icmp eq i32 %79, 842093633
  %81 = select i1 %80, i32 256, i32 4096
  %or.i.i.1 = or i32 %or.i.i.i.1, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %81, i32 noundef %or.i.i.1, i32 noundef 16) #11
  %add27.1 = add i32 %dac.057.1, 2
  %82 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_total_dacs, align 4
  %cmp19.1 = icmp ult i32 %add27.1, %83
  br i1 %cmp19.1, label %wm_set_vol.exit.1.for.body21.1_crit_edge, label %wm_set_vol.exit.1.if.end.1_crit_edge

wm_set_vol.exit.1.if.end.1_crit_edge:             ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

wm_set_vol.exit.1.for.body21.1_crit_edge:         ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21.1

if.end.1:                                         ; preds = %wm_set_vol.exit.1.if.end.1_crit_edge, %if.then.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %change.1.1 = phi i32 [ %change.1, %if.end.if.end.1_crit_edge ], [ 1, %if.then.1.if.end.1_crit_edge ], [ 1, %wm_set_vol.exit.1.if.end.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %84 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_dir.i, align 4
  %86 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %saved.i, align 4
  tail call void %85(ptr noundef %1, i32 noundef %87) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %88 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_mask.i, align 4
  %90 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx5.i, align 4
  tail call void %89(ptr noundef %1, i32 noundef %91) #11
  %92 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %saved.i, align 4
  %94 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %gpio.i, align 4
  %95 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx5.i, align 4
  %97 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_master_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  store i32 100, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_master_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %arrayidx = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, 32767
  %and = zext i16 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 1
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
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %eeprom.i.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 100)
  %arrayidx3 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx3, align 2
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 32768
  %or = or i32 %and, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp7.not = icmp eq i32 %or, %conv
  br i1 %cmp7.not, label %entry.if.end24_crit_edge, label %if.then9

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9:                                         ; preds = %entry
  %conv10 = trunc i32 %or to i16
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10, ptr %arrayidx3, align 2
  %16 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1454.not = icmp eq i32 %17, 0
  br i1 %cmp1454.not, label %if.then9.if.end24_crit_edge, label %if.then9.for.body16_crit_edge

if.then9.for.body16_crit_edge:                    ; preds = %if.then9
  br label %for.body16

if.then9.if.end24_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body16:                                       ; preds = %wm_set_vol.exit.for.body16_crit_edge, %if.then9.for.body16_crit_edge
  %dac.055 = phi i32 [ %add23, %wm_set_vol.exit.for.body16_crit_edge ], [ 0, %if.then9.for.body16_crit_edge ]
  %arrayidx20 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %dac.055
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx20, align 2
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx3, align 2
  %22 = or i16 %21, %19
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %23 = icmp sgt i16 %22, -1
  br i1 %23, label %if.else.i, label %for.body16.wm_set_vol.exit_crit_edge

for.body16.wm_set_vol.exit_crit_edge:             ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i16 %19, 101
  %rem6.i = urem i16 %21, 101
  %mul.i = mul nuw nsw i16 %rem6.i, %rem.i
  %div.i = udiv i16 %mul.i, 100
  %24 = trunc i16 %div.i to i8
  %conv9.i = add nuw nsw i8 %24, 27
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %for.body16.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %conv9.i, %if.else.i ], [ 0, %for.body16.wm_set_vol.exit_crit_edge ]
  %conv10.i = zext i8 %nvol.0.i to i32
  %25 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eeprom.i.i.i, align 4
  %27 = and i32 %26, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %27)
  %28 = icmp eq i32 %27, 842093633
  %29 = select i1 %28, i32 256, i32 4096
  %shl.i.i.i = shl i32 %dac.055, 9
  %or.i.i.i = or i32 %shl.i.i.i, %conv10.i
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %29, i32 noundef %or.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl i32 %dac.055, 1
  %30 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %31, i32 0, i32 3, i32 %shl.i.i
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %33 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %33, i32 0, i32 3, i32 %add.i.i
  %34 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %35 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eeprom.i.i.i, align 4
  %37 = and i32 %36, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %37)
  %38 = icmp eq i32 %37, 842093633
  %39 = select i1 %38, i32 256, i32 4096
  %or.i.i = or i32 %or.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %39, i32 noundef %or.i.i, i32 noundef 16) #11
  %add23 = add i32 %dac.055, 2
  %40 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_total_dacs, align 4
  %cmp14 = icmp ult i32 %add23, %41
  br i1 %cmp14, label %wm_set_vol.exit.for.body16_crit_edge, label %wm_set_vol.exit.if.end24_crit_edge

wm_set_vol.exit.if.end24_crit_edge:               ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

wm_set_vol.exit.for.body16_crit_edge:             ; preds = %wm_set_vol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16

if.end24:                                         ; preds = %wm_set_vol.exit.if.end24_crit_edge, %if.then9.if.end24_crit_edge, %entry.if.end24_crit_edge
  %change.1 = phi i32 [ 0, %entry.if.end24_crit_edge ], [ 1, %if.then9.if.end24_crit_edge ], [ 1, %wm_set_vol.exit.if.end24_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 100)
  %arrayidx3.1 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx3.1, align 2
  %conv.1 = zext i16 %46 to i32
  %and.1 = and i32 %conv.1, 32768
  %or.1 = or i32 %and.1, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1, i32 %conv.1)
  %cmp7.not.1 = icmp eq i32 %or.1, %conv.1
  br i1 %cmp7.not.1, label %if.end24.if.end24.1_crit_edge, label %if.then9.1

if.end24.if.end24.1_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.1

if.then9.1:                                       ; preds = %if.end24
  %conv10.1 = trunc i32 %or.1 to i16
  %47 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv10.1, ptr %arrayidx3.1, align 2
  %48 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1454.not.1 = icmp eq i32 %49, 0
  br i1 %cmp1454.not.1, label %if.then9.1.if.end24.1_crit_edge, label %if.then9.1.for.body16.1_crit_edge

if.then9.1.for.body16.1_crit_edge:                ; preds = %if.then9.1
  br label %for.body16.1

if.then9.1.if.end24.1_crit_edge:                  ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.1

for.body16.1:                                     ; preds = %wm_set_vol.exit.1.for.body16.1_crit_edge, %if.then9.1.for.body16.1_crit_edge
  %dac.055.1 = phi i32 [ %add23.1, %wm_set_vol.exit.1.for.body16.1_crit_edge ], [ 0, %if.then9.1.for.body16.1_crit_edge ]
  %add17.1 = or i32 %dac.055.1, 1
  %arrayidx20.1 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add17.1
  %50 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx20.1, align 2
  %52 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx3.1, align 2
  %54 = or i16 %53, %51
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %54)
  %55 = icmp sgt i16 %54, -1
  br i1 %55, label %if.else.i.1, label %for.body16.1.wm_set_vol.exit.1_crit_edge

for.body16.1.wm_set_vol.exit.1_crit_edge:         ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit.1

if.else.i.1:                                      ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.1 = urem i16 %51, 101
  %rem6.i.1 = urem i16 %53, 101
  %mul.i.1 = mul nuw nsw i16 %rem6.i.1, %rem.i.1
  %div.i.1 = udiv i16 %mul.i.1, 100
  %56 = trunc i16 %div.i.1 to i8
  %conv9.i.1 = add nuw nsw i8 %56, 27
  br label %wm_set_vol.exit.1

wm_set_vol.exit.1:                                ; preds = %if.else.i.1, %for.body16.1.wm_set_vol.exit.1_crit_edge
  %nvol.0.i.1 = phi i8 [ %conv9.i.1, %if.else.i.1 ], [ 0, %for.body16.1.wm_set_vol.exit.1_crit_edge ]
  %conv10.i.1 = zext i8 %nvol.0.i.1 to i32
  %57 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eeprom.i.i.i, align 4
  %59 = and i32 %58, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %59)
  %60 = icmp eq i32 %59, 842093633
  %61 = select i1 %60, i32 256, i32 4096
  %shl.i.i.i.1 = shl i32 %add17.1, 9
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %conv10.i.1
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %61, i32 noundef %or.i.i.i.1, i32 noundef 16) #11
  %shl.i.i.1 = shl i32 %add17.1, 1
  %62 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %63, i32 0, i32 3, i32 %shl.i.i.1
  %64 = ptrtoint ptr %arrayidx2.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx2.i.i.1, align 1
  %65 = load ptr, ptr %akm.i.i, align 4
  %add.i.i.1 = or i32 %shl.i.i.1, 1
  %arrayidx7.i.i.1 = getelementptr %struct.snd_akm4xxx, ptr %65, i32 0, i32 3, i32 %add.i.i.1
  %66 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %nvol.0.i.1, ptr %arrayidx7.i.i.1, align 1
  %67 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eeprom.i.i.i, align 4
  %69 = and i32 %68, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %69)
  %70 = icmp eq i32 %69, 842093633
  %71 = select i1 %70, i32 256, i32 4096
  %or.i.i.1 = or i32 %or.i.i.i.1, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %71, i32 noundef %or.i.i.1, i32 noundef 16) #11
  %add23.1 = add i32 %dac.055.1, 2
  %72 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_total_dacs, align 4
  %cmp14.1 = icmp ult i32 %add23.1, %73
  br i1 %cmp14.1, label %wm_set_vol.exit.1.for.body16.1_crit_edge, label %wm_set_vol.exit.1.if.end24.1_crit_edge

wm_set_vol.exit.1.if.end24.1_crit_edge:           ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.1

wm_set_vol.exit.1.for.body16.1_crit_edge:         ; preds = %wm_set_vol.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.1

if.end24.1:                                       ; preds = %wm_set_vol.exit.1.if.end24.1_crit_edge, %if.then9.1.if.end24.1_crit_edge, %if.end24.if.end24.1_crit_edge
  %change.1.1 = phi i32 [ %change.1, %if.end24.if.end24.1_crit_edge ], [ 1, %if.then9.1.if.end24.1_crit_edge ], [ 1, %wm_set_vol.exit.1.if.end24.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %74 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_dir.i, align 4
  %76 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %saved.i, align 4
  tail call void %75(ptr noundef %1, i32 noundef %77) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %78 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_mask.i, align 4
  %80 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx5.i, align 4
  tail call void %79(ptr noundef %1, i32 noundef %81) #11
  %82 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %saved.i, align 4
  %84 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %gpio.i, align 4
  %85 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx5.i, align 4
  %87 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_mute_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @wm_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.011, %and
  %arrayidx = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eeprom.i.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %change.056 = phi i32 [ 0, %for.body.lr.ph ], [ %change.1, %if.end.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.057, %and
  %arrayidx = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add
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
  call void @__sanitizer_cov_trace_pc() #13
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
  %arrayidx26 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 %i.057
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx26, align 2
  %25 = or i16 %24, %cond16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %26 = icmp sgt i16 %25, -1
  br i1 %26, label %if.else.i, label %if.then.wm_set_vol.exit_crit_edge

if.then.wm_set_vol.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i16 %or, 101
  %rem6.i = urem i16 %24, 101
  %mul.i = mul nuw nsw i16 %rem.i, %rem6.i
  %div.i = udiv i16 %mul.i, 100
  %27 = trunc i16 %div.i to i8
  %conv9.i = add nuw nsw i8 %27, 27
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %if.then.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %conv9.i, %if.else.i ], [ 0, %if.then.wm_set_vol.exit_crit_edge ]
  %conv10.i = zext i8 %nvol.0.i to i32
  %28 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eeprom.i.i.i, align 4
  %30 = and i32 %29, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %30)
  %31 = icmp eq i32 %30, 842093633
  %32 = select i1 %31, i32 256, i32 4096
  %shl.i.i.i = shl i32 %add, 9
  %or.i.i.i = or i32 %shl.i.i.i, %conv10.i
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %32, i32 noundef %or.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl nuw i32 %add, 1
  %33 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %34, i32 0, i32 3, i32 %shl.i.i
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %36 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %36, i32 0, i32 3, i32 %add.i.i
  %37 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %38 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eeprom.i.i.i, align 4
  %40 = and i32 %39, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %40)
  %41 = icmp eq i32 %40, 842093633
  %42 = select i1 %41, i32 256, i32 4096
  %or.i.i = or i32 %or.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %42, i32 noundef %or.i.i, i32 noundef 16) #11
  br label %if.end

if.end:                                           ; preds = %wm_set_vol.exit, %for.body.if.end_crit_edge
  %change.1 = phi i32 [ 1, %wm_set_vol.exit ], [ %change.056, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %change.1, %if.end.for.end_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %43 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_dir.i, align 4
  %45 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %saved.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef %46) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %47 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_mask.i, align 4
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef %50) #11
  %51 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %saved.i, align 4
  %53 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %gpio.i, align 4
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.i, align 4
  %56 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  store i32 100, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.011, %and
  %arrayidx = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %cmp54.not = icmp ult i32 %5, 256
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %5, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eeprom.i.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %akm.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %change.057 = phi i32 [ 0, %for.body.lr.ph ], [ %change.1, %if.end24.for.body_crit_edge ]
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.055
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 100)
  %add = add nuw nsw i32 %i.055, %and
  %arrayidx5 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 3, i32 %add
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %16 to i32
  %and6 = and i32 %conv, 32768
  %or = or i32 %and6, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp11.not = icmp eq i32 %or, %conv
  br i1 %cmp11.not, label %for.body.if.end24_crit_edge, label %if.then13

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then13:                                        ; preds = %for.body
  %conv14 = trunc i32 %or to i16
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv14, ptr %arrayidx5, align 2
  %arrayidx23 = getelementptr %struct.aureon_spec, ptr %3, i32 0, i32 2, i32 %i.055
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx23, align 2
  %20 = or i16 %19, %conv14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %21 = icmp sgt i16 %20, -1
  br i1 %21, label %if.else.i, label %if.then13.wm_set_vol.exit_crit_edge

if.then13.wm_set_vol.exit_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %wm_set_vol.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i16 %conv14, 101
  %rem6.i = urem i16 %19, 101
  %mul.i = mul nuw nsw i16 %rem6.i, %rem.i
  %div.i = udiv i16 %mul.i, 100
  %22 = trunc i16 %div.i to i8
  %conv9.i = add nuw nsw i8 %22, 27
  br label %wm_set_vol.exit

wm_set_vol.exit:                                  ; preds = %if.else.i, %if.then13.wm_set_vol.exit_crit_edge
  %nvol.0.i = phi i8 [ %conv9.i, %if.else.i ], [ 0, %if.then13.wm_set_vol.exit_crit_edge ]
  %conv10.i = zext i8 %nvol.0.i to i32
  %23 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eeprom.i.i.i, align 4
  %25 = and i32 %24, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %25)
  %26 = icmp eq i32 %25, 842093633
  %27 = select i1 %26, i32 256, i32 4096
  %shl.i.i.i = shl i32 %add, 9
  %or.i.i.i = or i32 %shl.i.i.i, %conv10.i
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %27, i32 noundef %or.i.i.i, i32 noundef 16) #11
  %shl.i.i = shl nuw i32 %add, 1
  %28 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %akm.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_akm4xxx, ptr %29, i32 0, i32 3, i32 %shl.i.i
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %31 = load ptr, ptr %akm.i.i, align 4
  %add.i.i = or i32 %shl.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.snd_akm4xxx, ptr %31, i32 0, i32 3, i32 %add.i.i
  %32 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %nvol.0.i, ptr %arrayidx7.i.i, align 1
  %33 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eeprom.i.i.i, align 4
  %35 = and i32 %34, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %35)
  %36 = icmp eq i32 %35, 842093633
  %37 = select i1 %36, i32 256, i32 4096
  %or.i.i = or i32 %or.i.i.i, 384
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %37, i32 noundef %or.i.i, i32 noundef 16) #11
  br label %if.end24

if.end24:                                         ; preds = %wm_set_vol.exit, %for.body.if.end24_crit_edge
  %change.1 = phi i32 [ 1, %wm_set_vol.exit ], [ %change.057, %for.body.if.end24_crit_edge ]
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %change.1, %if.end24.for.end_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %38 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_dir.i, align 4
  %40 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saved.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef %41) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %42 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_mask.i, align 4
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.i, align 4
  tail call void %43(ptr noundef %1, i32 noundef %45) #11
  %46 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saved.i, align 4
  %48 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %gpio.i, align 4
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5.i, align 4
  %51 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %or)
  %cmp = icmp ne i16 %or.i, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom.i.i, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %21 = and i16 %or, 511
  %22 = or i16 %21, 10240
  %or.i.i = zext i16 %22 to i32
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %20, i32 noundef %or.i.i, i32 noundef 16) #11
  %23 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 40
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %11, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %or to i8
  %26 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i13 = getelementptr %struct.snd_akm4xxx, ptr %26, i32 0, i32 3, i32 41
  %27 = ptrtoint ptr %arrayidx7.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %arrayidx7.i13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %28 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_dir.i, align 4
  %30 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef %31) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %32 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mask.i, align 4
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef %35) #11
  %36 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saved.i, align 4
  %38 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %gpio.i, align 4
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i, align 4
  %41 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_pcm_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom.i.i, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %21 = or i16 %cond, 8704
  %or.i.i = zext i16 %21 to i32
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %20, i32 noundef %or.i.i, i32 noundef 16) #11
  %22 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %23, i32 0, i32 3, i32 34
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %cond to i8
  %25 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i30 = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 35
  %26 = ptrtoint ptr %arrayidx7.i30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i, ptr %arrayidx7.i30, align 1
  %27 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eeprom.i.i, align 4
  %29 = and i32 %28, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %29)
  %30 = icmp eq i32 %29, 842093633
  %31 = select i1 %30, i32 256, i32 4096
  %32 = or i16 %cond, 8960
  %or.i31 = zext i16 %32 to i32
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %31, i32 noundef %or.i31, i32 noundef 16) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %change.0 = phi i32 [ 1, %if.then13 ], [ 0, %if.end.if.end16_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %33 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_dir.i, align 4
  %35 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saved.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef %36) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %37 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_mask.i, align 4
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef %40) #11
  %41 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saved.i, align 4
  %43 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %gpio.i, align 4
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.i, align 4
  %46 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %change.0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 51
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  %8 = xor i8 %7, 1
  %and = zext i8 %8 to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %value, align 4
  %10 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %10, i32 0, i32 3, i32 53
  %11 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7.i.1, align 1
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %and.1 = zext i8 %15 to i32
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.1, ptr %arrayidx.1, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 50
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 51
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i32
  %or.i = or i32 %shl3.i, %conv8.i
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  %neg = xor i32 %15, -1
  %shl = shl i32 %neg, 5
  %and = and i32 %shl, 32
  %and1 = and i32 %or.i, 65503
  %or = or i32 %and, %and1
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or.i)
  %cmp5.not = icmp eq i32 %or, %or.i
  br i1 %cmp5.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom.i.i, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %21 = and i32 %or, 511
  %or.i.i = or i32 %21, 12800
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %20, i32 noundef %or.i.i, i32 noundef 16) #11
  %22 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %23, i32 0, i32 3, i32 50
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %11, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %or to i8
  %25 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i20 = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 51
  %26 = ptrtoint ptr %arrayidx7.i20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i, ptr %arrayidx7.i20, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %27 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %akm.i, align 4
  %arrayidx1.i.1 = getelementptr %struct.snd_akm4xxx, ptr %28, i32 0, i32 3, i32 52
  %29 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i.1, align 1
  %conv2.i.1 = zext i8 %30 to i32
  %shl3.i.1 = shl nuw nsw i32 %conv2.i.1, 8
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %28, i32 0, i32 3, i32 53
  %31 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %32 to i32
  %or.i.1 = or i32 %shl3.i.1, %conv8.i.1
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1, align 4
  %neg.1 = xor i32 %34, -1
  %shl.1 = shl i32 %neg.1, 5
  %and.1 = and i32 %shl.1, 32
  %and1.1 = and i32 %or.i.1, 65503
  %or.1 = or i32 %and.1, %and1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1, i32 %or.i.1)
  %cmp5.not.1 = icmp eq i32 %or.1, %or.i.1
  br i1 %cmp5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eeprom.i.i, align 4
  %37 = and i32 %36, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %37)
  %38 = icmp eq i32 %37, 842093633
  %39 = select i1 %38, i32 256, i32 4096
  %40 = and i32 %or.1, 511
  %or.i.i.1 = or i32 %40, 13312
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %39, i32 noundef %or.i.i.1, i32 noundef 16) #11
  %41 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_akm4xxx, ptr %42, i32 0, i32 3, i32 52
  %43 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %30, ptr %arrayidx2.i.1, align 1
  %conv3.i.1 = trunc i32 %or.1 to i8
  %44 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i20.1 = getelementptr %struct.snd_akm4xxx, ptr %44, i32 0, i32 3, i32 53
  %45 = ptrtoint ptr %arrayidx7.i20.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv3.i.1, ptr %arrayidx7.i20.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %46 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_dir.i, align 4
  %48 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved.i, align 4
  tail call void %47(ptr noundef %1, i32 noundef %49) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %50 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_mask.i, align 4
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef %53) #11
  %54 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saved.i, align 4
  %56 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %gpio.i, align 4
  %57 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i, align 4
  %59 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm_adc_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 51
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = and i8 %5, 31
  %conv2 = zext i8 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %value, align 4
  %8 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %8, i32 0, i32 3, i32 53
  %9 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i.1, align 1
  %11 = and i8 %10, 31
  %conv2.1 = zext i8 %11 to i32
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2.1, ptr %arrayidx.1, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %conv = and i32 %9, 31
  %10 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %11, i32 0, i32 3, i32 51
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i32
  %and2 = and i32 %conv8.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %conv)
  %cmp4.not = icmp eq i32 %and2, %conv
  br i1 %cmp4.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %11, i32 0, i32 3, i32 50
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %15 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %conv8.i.masked = and i32 %conv8.i, 224
  %and8 = or i32 %shl3.i, %conv8.i.masked
  %or = or i32 %and8, %conv
  %16 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom.i.i, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %21 = and i32 %or, 511
  %or.i.i = or i32 %21, 12800
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %20, i32 noundef %or.i.i, i32 noundef 16) #11
  %22 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %23, i32 0, i32 3, i32 50
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %15, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %or to i8
  %25 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i22 = getelementptr %struct.snd_akm4xxx, ptr %25, i32 0, i32 3, i32 51
  %26 = ptrtoint ptr %arrayidx7.i22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i, ptr %arrayidx7.i22, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = and i32 %28, 31
  %29 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i.1 = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 53
  %31 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.i.1, align 1
  %conv8.i.1 = zext i8 %32 to i32
  %and2.1 = and i32 %conv8.i.1, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.1, i32 %conv.1)
  %cmp4.not.1 = icmp eq i32 %and2.1, %conv.1
  br i1 %cmp4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.1 = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 52
  %33 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx1.i.1, align 1
  %conv2.i.1 = zext i8 %34 to i32
  %shl3.i.1 = shl nuw nsw i32 %conv2.i.1, 8
  %conv8.i.masked.1 = and i32 %conv8.i.1, 224
  %and8.1 = or i32 %shl3.i.1, %conv8.i.masked.1
  %or.1 = or i32 %and8.1, %conv.1
  %35 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eeprom.i.i, align 4
  %37 = and i32 %36, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %37)
  %38 = icmp eq i32 %37, 842093633
  %39 = select i1 %38, i32 256, i32 4096
  %40 = and i32 %or.1, 511
  %or.i.i.1 = or i32 %40, 13312
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %39, i32 noundef %or.i.i.1, i32 noundef 16) #11
  %41 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_akm4xxx, ptr %42, i32 0, i32 3, i32 52
  %43 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %34, ptr %arrayidx2.i.1, align 1
  %conv3.i.1 = trunc i32 %or.1 to i8
  %44 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i22.1 = getelementptr %struct.snd_akm4xxx, ptr %44, i32 0, i32 3, i32 53
  %45 = ptrtoint ptr %arrayidx7.i22.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv3.i.1, ptr %arrayidx7.i22.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %46 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_dir.i, align 4
  %48 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved.i, align 4
  tail call void %47(ptr noundef %1, i32 noundef %49) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %50 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_mask.i, align 4
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef %53) #11
  %54 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saved.i, align 4
  %56 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %gpio.i, align 4
  %57 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i, align 4
  %59 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %change.1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991253265, i32 %3)
  %cmp = icmp eq i32 %3, 991253265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 2, i32 noundef 8, ptr noundef nonnull @wm_adc_mux_info.universe_texts) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 2, i32 noundef 5, ptr noundef nonnull @wm_adc_mux_info.texts) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 55
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  %and = and i32 %conv8.i, 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %value, align 8
  %7 = lshr i32 %conv8.i, 4
  %and2 = and i32 %7, 7
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and2, ptr %arrayidx4, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm_adc_mux_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 54
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 55
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %and = and i16 %or.i, -120
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 7
  %conv4 = or i16 %17, %and
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  %.tr = trunc i32 %19 to i16
  %20 = shl i16 %.tr, 4
  %21 = and i16 %20, 112
  %conv10 = or i16 %conv4, %21
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %conv10)
  %cmp = icmp ne i16 %or.i, %conv10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eeprom.i.i, align 4
  %24 = and i32 %23, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %24)
  %25 = icmp eq i32 %24, 842093633
  %26 = select i1 %25, i32 256, i32 4096
  %27 = and i16 %conv10, 511
  %28 = or i16 %27, 13824
  %or.i.i = zext i16 %28 to i32
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %26, i32 noundef %or.i.i, i32 noundef 16) #11
  %29 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %30, i32 0, i32 3, i32 54
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %11, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %conv10 to i8
  %32 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i24 = getelementptr %struct.snd_akm4xxx, ptr %32, i32 0, i32 3, i32 55
  %33 = ptrtoint ptr %arrayidx7.i24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i, ptr %arrayidx7.i24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv13 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %34 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_dir.i, align 4
  %36 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saved.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef %37) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %38 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_mask.i, align 4
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef %41) #11
  %42 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saved.i, align 4
  %44 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %gpio.i, align 4
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i, align 4
  %47 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_hpamp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %1) #11
  %and.i = lshr i32 %call.i.i, 14
  %and.lobit.i = and i32 %and.i, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_hpamp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %eeprom7.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %eeprom7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eeprom7.i, align 4
  br i1 %tobool.not.i, label %if.else6.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %7, label %if.then4.i [
    i32 842093633, label %if.then.i.if.else.i_crit_edge
    i32 909202497, label %if.then.i.if.else.i_crit_edge1
  ]

if.then.i.if.else.i_crit_edge1:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %call.i.i, 16384
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge1
  %or5.i = or i32 %call.i.i, 32
  br label %if.end18.i

if.else6.i:                                       ; preds = %entry
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %7, label %if.then14.i [
    i32 842093633, label %if.else6.i.if.else15.i_crit_edge
    i32 909202497, label %if.else6.i.if.else15.i_crit_edge2
  ]

if.else6.i.if.else15.i_crit_edge2:                ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15.i

if.else6.i.if.else15.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15.i

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %call.i.i, -16385
  br label %if.end18.i

if.else15.i:                                      ; preds = %if.else6.i.if.else15.i_crit_edge, %if.else6.i.if.else15.i_crit_edge2
  %and16.i = and i32 %call.i.i, -33
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else15.i, %if.then14.i, %if.else.i, %if.then4.i
  %tmp.0.i = phi i32 [ %or.i, %if.then4.i ], [ %or5.i, %if.else.i ], [ %and.i, %if.then14.i ], [ %and16.i, %if.else15.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.0.i, i32 %call.i.i)
  %cmp19.not.i = icmp eq i32 %tmp.0.i, %call.i.i
  br i1 %cmp19.not.i, label %if.end18.i.aureon_set_headphone_amp.exit_crit_edge, label %if.then20.i

if.end18.i.aureon_set_headphone_amp.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aureon_set_headphone_amp.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %tmp.0.i) #11
  br label %aureon_set_headphone_amp.exit

aureon_set_headphone_amp.exit:                    ; preds = %if.then20.i, %if.end18.i.aureon_set_headphone_amp.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then20.i ], [ 0, %if.end18.i.aureon_set_headphone_amp.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aureon_deemp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @aureon_deemp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eeprom.i.i, align 4
  %12 = and i32 %11, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %12)
  %13 = icmp eq i32 %12, 842093633
  %14 = select i1 %13, i32 256, i32 4096
  %15 = and i32 %temp.0, 511
  %or.i.i = or i32 %15, 10752
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %14, i32 noundef %or.i.i, i32 noundef 16) #11
  %16 = lshr i32 %temp.0, 8
  %conv1.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 42
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %temp.0 to i8
  %20 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i12 = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 43
  %21 = ptrtoint ptr %arrayidx7.i12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.i, ptr %arrayidx7.i12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_oversampling_info(ptr nocapture noundef readnone %k, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @aureon_oversampling_info.texts) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aureon_oversampling_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @aureon_oversampling_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eeprom.i.i, align 4
  %12 = and i32 %11, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %12)
  %13 = icmp eq i32 %12, 842093633
  %14 = select i1 %13, i32 256, i32 4096
  %15 = and i32 %temp.0, 511
  %or.i.i = or i32 %15, 11776
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %14, i32 noundef %or.i.i, i32 noundef 16) #11
  %16 = lshr i32 %temp.0, 8
  %conv1.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %18, i32 0, i32 3, i32 46
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i32 %temp.0 to i8
  %20 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i12 = getelementptr %struct.snd_akm4xxx, ptr %20, i32 0, i32 3, i32 47
  %21 = ptrtoint ptr %arrayidx7.i12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.i, ptr %arrayidx7.i12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_mmute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %akm.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %3, i32 0, i32 3, i32 57
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %and = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_mmute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %arrayidx1.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 56
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i16
  %shl3.i = shl nuw i16 %conv2.i, 8
  %arrayidx7.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 57
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i16
  %or.i = or i16 %shl3.i, %conv8.i
  %and = and i16 %or.i, -3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool.not, i16 0, i16 2
  %or = or i16 %and, %cond
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %or)
  %cmp = icmp ne i16 %or.i, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom.i.i, align 4
  %18 = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093633, i32 %18)
  %19 = icmp eq i32 %18, 842093633
  %20 = select i1 %19, i32 256, i32 4096
  %21 = and i16 %or, 511
  %22 = or i16 %21, 14336
  %or.i.i = zext i16 %22 to i32
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef %20, i32 noundef %or.i.i, i32 noundef 16) #11
  %23 = ptrtoint ptr %akm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %akm.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_akm4xxx, ptr %24, i32 0, i32 3, i32 56
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %11, ptr %arrayidx2.i, align 1
  %conv3.i = trunc i16 %or to i8
  %26 = load ptr, ptr %akm.i, align 4
  %arrayidx7.i13 = getelementptr %struct.snd_akm4xxx, ptr %26, i32 0, i32 3, i32 57
  %27 = ptrtoint ptr %arrayidx7.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %arrayidx7.i13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %28 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_dir.i, align 4
  %30 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef %31) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %32 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mask.i, align 4
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef %35) #11
  %36 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saved.i, align 4
  %38 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %gpio.i, align 4
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i, align 4
  %41 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aureon_ac97_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %1 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private_value, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1.i, align 4
  %conv = lshr i32 %3, 1
  %6 = and i32 %conv, 63
  %arrayidx.i = getelementptr [64 x i16], ptr %5, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %conv1 = zext i16 %8 to i32
  %and2 = and i32 %conv1, 31
  %sub = xor i32 %and2, 31
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %value, align 8
  %10 = load i32, ptr %private_value, align 4
  %and4 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = lshr i32 %conv1, 8
  %and6 = and i32 %11, 31
  %sub7 = xor i32 %and6, 31
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub7, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = trunc i32 %9 to i16
  %conv = and i16 %10, 127
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %11 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec1.i, align 4
  %13 = lshr i16 %conv, 1
  %14 = zext i16 %13 to i32
  %arrayidx.i = getelementptr [64 x i16], ptr %12, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 8
  %19 = trunc i32 %18 to i16
  %20 = sub i16 31, %19
  %conv2 = and i16 %20, 31
  %and4 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6, align 4
  %23 = trunc i32 %22 to i16
  %24 = mul i16 %23, 7936
  %25 = add i16 %24, 7936
  %26 = and i16 %25, 7936
  %conv10 = or i16 %26, %conv2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nvol.0 = phi i16 [ %conv10, %if.then ], [ %conv2, %entry.if.end_crit_edge ]
  %and12 = and i16 %16, -7968
  %or14 = or i16 %nvol.0, %and12
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %or14)
  %cmp = icmp ne i16 %16, %or14
  br i1 %cmp, label %if.then20, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aureon_ac97_write(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %or14)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end.if.end24_crit_edge
  %conv18 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %27 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_dir.i, align 4
  %29 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saved.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef %30) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %31 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_mask.i, align 4
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef %34) #11
  %35 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saved.i, align 4
  %37 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gpio.i, align 4
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i, align 4
  %40 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1.i, align 4
  %conv = lshr i32 %3, 1
  %6 = and i32 %conv, 63
  %arrayidx.i = getelementptr [64 x i16], ptr %5, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %9 = xor i16 %8, -1
  %10 = lshr i16 %9, 15
  %.not = zext i16 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.not, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = trunc i32 %9 to i16
  %conv = and i16 %10, 127
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %11 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec1.i, align 4
  %13 = lshr i16 %conv, 1
  %14 = zext i16 %13 to i32
  %arrayidx.i = getelementptr [64 x i16], ptr %12, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool.not, i16 -32768, i16 0
  %and2 = and i16 %16, 32767
  %or = or i16 %cond, %and2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %or)
  %cmp = icmp ne i16 %16, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aureon_ac97_write(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %or)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv6 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %19 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_dir.i, align 4
  %21 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef %22) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %23 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mask.i, align 4
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef %26) #11
  %27 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved.i, align 4
  %29 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %gpio.i, align 4
  %30 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.i, align 4
  %32 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_micboost_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #11
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %arrayidx.i = getelementptr [64 x i16], ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %6 = lshr i16 %5, 5
  %.lobit = and i16 %6, 1
  %7 = xor i16 %.lobit, 1
  %8 = zext i16 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_ac97_micboost_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 4
  %arrayidx.i = getelementptr [64 x i16], ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, i16 32, i16 0
  %and = and i16 %11, -33
  %or = or i16 %cond, %and
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %or)
  %cmp = icmp ne i16 %11, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aureon_ac97_write(ptr noundef %1, i16 noundef zeroext 14, i16 noundef zeroext %or)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %14 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_dir.i, align 4
  %16 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %17) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %18 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_mask.i, align 4
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef %21) #11
  %22 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved.i, align 4
  %24 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gpio.i, align 4
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.i, align 4
  %27 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_universe_inmux_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @aureon_universe_inmux_info.texts) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aureon_universe_inmux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %pca9554_out = getelementptr inbounds %struct.aureon_spec, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pca9554_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pca9554_out, align 4
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_universe_inmux_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv = trunc i32 %3 to i8
  %conv2 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2)
  %cmp = icmp ugt i32 %conv2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %pca9554_out = getelementptr inbounds %struct.aureon_spec, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %pca9554_out to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pca9554_out, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %conv)
  %cmp6 = icmp ne i8 %13, %conv
  %conv7 = zext i1 %cmp6 to i32
  br i1 %cmp6, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aureon_pca9554_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv)
  %14 = ptrtoint ptr %pca9554_out to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %pca9554_out, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %15 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_dir.i, align 4
  %17 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saved.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef %18) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %19 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_mask.i, align 4
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef %22) #11
  %23 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saved.i, align 4
  %25 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %gpio.i, align 4
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i, align 4
  %28 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv7, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aureon_spi_read(ptr noundef %ice, ptr nocapture noundef writeonly %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %1(ptr noundef %ice) #11
  %and = and i32 %call.i, -4722689
  %or1 = or i32 %and, 4198400
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %2 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_data.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef %or1) #11
  %and2 = or i32 %and, 4096
  %4 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_data.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef %and2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #11
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp914 = icmp sgt i32 %size, 0
  br i1 %cmp914, label %for.cond8.preheader.for.cond11.preheader_crit_edge, label %for.cond8.preheader.for.end28_crit_edge

for.cond8.preheader.for.end28_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.cond8.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond8.preheader
  br label %for.cond11.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tmp.011 = phi i32 [ %and2, %entry ], [ %and7, %for.body.for.body_crit_edge ]
  %i.010 = phi i32 [ 7, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.010
  %and3 = and i32 %shl, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %and5 = and i32 %tmp.011, -262145
  %masksel = select i1 %tobool.not, i32 0, i32 262144
  %tmp.1 = or i32 %masksel, %and5
  %7 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_data.i, align 4
  tail call void %8(ptr noundef %ice, i32 noundef %tmp.1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #11
  %or6 = or i32 %tmp.1, 524288
  %10 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %or6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #11
  %and7 = and i32 %tmp.1, -524289
  %13 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i, align 4
  tail call void %14(ptr noundef %ice, i32 noundef %and7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #11
  %dec = add nsw i32 %i.010, -1
  %cmp.not = icmp eq i32 %i.010, 0
  br i1 %cmp.not, label %for.cond8.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond11.preheader:                             ; preds = %for.end26.for.cond11.preheader_crit_edge, %for.cond8.preheader.for.cond11.preheader_crit_edge
  %j.015 = phi i32 [ %inc, %for.end26.for.cond11.preheader_crit_edge ], [ 0, %for.cond8.preheader.for.cond11.preheader_crit_edge ]
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond11.preheader
  %outdata.013 = phi i8 [ 0, %for.cond11.preheader ], [ %conv21, %for.body13.for.body13_crit_edge ]
  %i.112 = phi i32 [ 7, %for.cond11.preheader ], [ %dec25, %for.body13.for.body13_crit_edge ]
  %16 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_data.i, align 4
  %call.i6 = tail call i32 %17(ptr noundef %ice) #11
  %shl15 = shl i8 %outdata.013, 1
  %and17 = lshr i32 %call.i6, 21
  %18 = trunc i32 %and17 to i8
  %19 = and i8 %18, 1
  %conv21 = or i8 %19, %shl15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #11
  %or22 = or i32 %call.i6, 524288
  %21 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef %or22) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #11
  %and23 = and i32 %call.i6, -524289
  %24 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_data.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef %and23) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #11
  %dec25 = add nsw i32 %i.112, -1
  %cmp12.not = icmp eq i32 %i.112, 0
  br i1 %cmp12.not, label %for.end26, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.end26:                                        ; preds = %for.body13
  %arrayidx = getelementptr i8, ptr %buffer, i32 %j.015
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv21, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %j.015, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.end26.for.end28_crit_edge, label %for.end26.for.cond11.preheader_crit_edge

for.end26.for.cond11.preheader_crit_edge:         ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond11.preheader

for.end26.for.end28_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.end28:                                        ; preds = %for.end26.for.end28_crit_edge, %for.cond8.preheader.for.end28_crit_edge
  %tmp.2.lcssa = phi i32 [ %and7, %for.cond8.preheader.for.end28_crit_edge ], [ %and23, %for.end26.for.end28_crit_edge ]
  %or29 = or i32 %tmp.2.lcssa, 4194304
  %28 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_data.i, align 4
  tail call void %29(ptr noundef %ice, i32 noundef %or29) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #11
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8193, i32 noundef 16) #11
  call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #11
  %11 = lshr i8 %10, 5
  %.lobit = and i8 %11, 1
  %12 = xor i8 %.lobit, 1
  %13 = zext i8 %12 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 8
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %15 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_dir.i, align 4
  %17 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saved.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef %18) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %19 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_mask.i, align 4
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef %22) #11
  %23 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saved.i, align 4
  %25 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %gpio.i, align 4
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i, align 4
  %28 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #11
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8193, i32 noundef 16) #11
  call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %13 = and i8 %10, -33
  %masksel = select i1 %tobool.not, i8 32, i8 0
  %nval.0 = or i8 %masksel, %13
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %nval.0)
  %cmp = icmp ne i8 %10, %nval.0
  br i1 %cmp, label %if.then8, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %nval.0 to i32
  %or1.i = or i32 %conv.i, 2097408
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef %or1.i, i32 noundef 24) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry.if.end9_crit_edge
  %conv6 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %14 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_dir.i, align 4
  %16 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %17) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %18 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_mask.i, align 4
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef %21) #11
  %22 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved.i, align 4
  %24 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gpio.i, align 4
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.i, align 4
  %27 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_mux_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 860443461, i32 %3)
  %cmp = icmp eq i32 %3, 860443461
  %aureon_cs8415_mux_info.prodigy_texts.aureon_cs8415_mux_info.aureon_texts = select i1 %cmp, ptr @aureon_cs8415_mux_info.prodigy_texts, ptr @aureon_cs8415_mux_info.aureon_texts
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %aureon_cs8415_mux_info.prodigy_texts.aureon_cs8415_mux_info.aureon_texts) #11
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aureon_cs8415_mux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %cs8415_mux = getelementptr inbounds %struct.aureon_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cs8415_mux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs8415_mux, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_mux_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #11
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8194, i32 noundef 16) #11
  call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #11
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #11
  %conv2 = zext i8 %12 to i32
  %13 = and i8 %12, -8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %and4 = and i32 %15, 7
  %conv5 = zext i8 %13 to i32
  %or = or i32 %and4, %conv5
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv2)
  %cmp = icmp ne i32 %or, %conv2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or1.i = or i32 %or, 2097664
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef %or1.i, i32 noundef 24) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv9 = zext i1 %cmp to i32
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %16 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_dir.i, align 4
  %18 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saved.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef %19) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mask.i, align 4
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef %23) #11
  %24 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved.i, align 4
  %26 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gpio.i, align 4
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  %29 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 8
  %cs8415_mux = getelementptr inbounds %struct.aureon_spec, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %cs8415_mux to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cs8415_mux, align 4
  ret i32 %conv9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aureon_cs8415_qsub_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_qsub_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8212, i32 noundef 16) #11
  tail call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef %value, i32 noundef 10) #11
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %8 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_dir.i, align 4
  %10 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saved.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %11) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %12 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mask.i, align 4
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef %15) #11
  %16 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved.i, align 4
  %18 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio.i, align 4
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i, align 4
  %21 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aureon_cs8415_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aureon_cs8415_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #11
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8224, i32 noundef 16) #11
  tail call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef %value, i32 noundef 24) #11
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %8 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_dir.i, align 4
  %10 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saved.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %11) #11
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %12 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mask.i, align 4
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef %15) #11
  %16 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved.i, align 4
  %18 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio.i, align 4
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i, align 4
  %21 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aureon_cs8415_rate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  store i32 192000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aureon_cs8415_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  tail call fastcc void @aureon_spi_write(ptr noundef %1, i32 noundef 4194304, i32 noundef 8222, i32 noundef 16) #11
  call fastcc void @aureon_spi_read(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #11
  %conv = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %conv, 750
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/aureon.c", i32 2208, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/aureon.c", i32 2209, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/aureon.c", i32 2214, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/aureon.c", i32 2218, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/aureon.c", i32 2219, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/aureon.c", i32 2224, i32 13}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/aureon.c", i32 2228, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/aureon.c", i32 2229, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/aureon.c", i32 2234, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/aureon.c", i32 2238, i32 11}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/aureon.c", i32 2239, i32 12}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/aureon.c", i32 2244, i32 13}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/aureon.c", i32 2248, i32 11}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/aureon.c", i32 2249, i32 12}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/aureon.c", i32 2254, i32 13}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/aureon.c", i32 2258, i32 11}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/aureon.c", i32 2259, i32 12}
!34 = !{ptr @snd_vt1724_aureon_cards, !35, !"snd_vt1724_aureon_cards", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/aureon.c", i32 2205, i32 30}
!36 = !{ptr @aureon_reset.wm_inits_aureon, !37, !"wm_inits_aureon", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/aureon.c", i32 1923, i32 30}
!38 = !{ptr @aureon_reset.wm_inits_prodigy, !39, !"wm_inits_prodigy", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/aureon.c", i32 1959, i32 30}
!40 = distinct !{null, !41, !"cs_inits", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/aureon.c", i32 2001, i32 30}
!42 = !{ptr @aureon_ac97_init.ac97_defaults, !43, !"ac97_defaults", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/aureon.c", i32 296, i32 30}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/aureon.c", i32 1896, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aureon_add_controls._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @aureon_add_controls._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/aureon.c", i32 1899, i32 4}
!54 = !{ptr @aureon_add_controls._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @aureon_add_controls._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/aureon.c", i32 1395, i32 11}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/aureon.c", i32 1404, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/aureon.c", i32 1412, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/aureon.c", i32 1422, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/aureon.c", i32 1431, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ice1712/aureon.c", i32 1441, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/aureon.c", i32 1450, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ice1712/aureon.c", i32 1460, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ice1712/aureon.c", i32 1469, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ice1712/aureon.c", i32 1479, i32 11}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ice1712/aureon.c", i32 1488, i32 11}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ice1712/aureon.c", i32 1498, i32 11}
!80 = !{ptr @aureon_dac_controls, !81, !"aureon_dac_controls", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/aureon.c", i32 1392, i32 38}
!82 = !{ptr @db_scale_wm_dac, !83, !"db_scale_wm_dac", i1 false, i1 false}
!83 = !{!"../sound/pci/ice1712/aureon.c", i32 672, i32 14}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ice1712/aureon.c", i32 1510, i32 11}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/aureon.c", i32 1519, i32 11}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ice1712/aureon.c", i32 1527, i32 11}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ice1712/aureon.c", i32 1536, i32 11}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/aureon.c", i32 1544, i32 11}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/aureon.c", i32 1552, i32 11}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/aureon.c", i32 1559, i32 11}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/aureon.c", i32 1566, i32 11}
!100 = !{ptr @wm_controls, !101, !"wm_controls", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/aureon.c", i32 1507, i32 38}
!102 = !{ptr @db_scale_wm_pcm, !103, !"db_scale_wm_pcm", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/aureon.c", i32 673, i32 14}
!104 = !{ptr @db_scale_wm_adc, !105, !"db_scale_wm_adc", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/aureon.c", i32 674, i32 14}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/aureon.c", i32 1071, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/aureon.c", i32 1072, i32 3}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/aureon.c", i32 1073, i32 3}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/aureon.c", i32 1074, i32 3}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ice1712/aureon.c", i32 1075, i32 3}
!116 = !{ptr @wm_adc_mux_info.texts, !117, !"texts", i1 false, i1 false}
!117 = !{!"../sound/pci/ice1712/aureon.c", i32 1070, i32 28}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ice1712/aureon.c", i32 1078, i32 3}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/aureon.c", i32 1080, i32 3}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ice1712/aureon.c", i32 1082, i32 3}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ice1712/aureon.c", i32 1084, i32 3}
!126 = !{ptr @wm_adc_mux_info.universe_texts, !127, !"universe_texts", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/aureon.c", i32 1077, i32 28}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ice1712/aureon.c", i32 1357, i32 41}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ice1712/aureon.c", i32 1357, i32 49}
!132 = !{ptr @aureon_oversampling_info.texts, !133, !"texts", i1 false, i1 false}
!133 = !{!"../sound/pci/ice1712/aureon.c", i32 1357, i32 28}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ice1712/aureon.c", i32 1681, i32 11}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ice1712/aureon.c", i32 1691, i32 11}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ice1712/aureon.c", i32 1700, i32 11}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/ice1712/aureon.c", i32 1710, i32 11}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ice1712/aureon.c", i32 1719, i32 11}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ice1712/aureon.c", i32 1729, i32 11}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/ice1712/aureon.c", i32 1738, i32 11}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ice1712/aureon.c", i32 1748, i32 11}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/ice1712/aureon.c", i32 1757, i32 11}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/ice1712/aureon.c", i32 1767, i32 11}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ice1712/aureon.c", i32 1776, i32 11}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ice1712/aureon.c", i32 1783, i32 11}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/ice1712/aureon.c", i32 1793, i32 11}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/ice1712/aureon.c", i32 1802, i32 11}
!162 = !{ptr @universe_ac97_controls, !163, !"universe_ac97_controls", i1 false, i1 false}
!163 = !{!"../sound/pci/ice1712/aureon.c", i32 1678, i32 38}
!164 = !{ptr @db_scale_ac97_master, !165, !"db_scale_ac97_master", i1 false, i1 false}
!165 = !{!"../sound/pci/ice1712/aureon.c", i32 675, i32 14}
!166 = !{ptr @db_scale_ac97_gain, !167, !"db_scale_ac97_gain", i1 false, i1 false}
!167 = !{!"../sound/pci/ice1712/aureon.c", i32 676, i32 14}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/ice1712/aureon.c", i32 192, i32 4}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/ice1712/aureon.c", i32 192, i32 20}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/ice1712/aureon.c", i32 192, i32 33}
!174 = !{ptr @aureon_universe_inmux_info.texts, !175, !"texts", i1 false, i1 false}
!175 = !{!"../sound/pci/ice1712/aureon.c", i32 191, i32 28}
!176 = !{ptr @ac97_controls, !177, !"ac97_controls", i1 false, i1 false}
!177 = !{!"../sound/pci/ice1712/aureon.c", i32 1573, i32 38}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/ice1712/aureon.c", i32 1813, i32 11}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/ice1712/aureon.c", i32 1820, i32 11}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/ice1712/aureon.c", i32 1827, i32 11}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/ice1712/aureon.c", i32 1834, i32 11}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/ice1712/aureon.c", i32 1841, i32 11}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/ice1712/aureon.c", i32 1848, i32 11}
!190 = !{ptr @cs8415_controls, !191, !"cs8415_controls", i1 false, i1 false}
!191 = !{!"../sound/pci/ice1712/aureon.c", i32 1810, i32 38}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/ice1712/aureon.c", i32 1134, i32 3}
!194 = !{ptr @aureon_cs8415_mux_info.aureon_texts, !195, !"aureon_texts", i1 false, i1 false}
!195 = !{!"../sound/pci/ice1712/aureon.c", i32 1132, i32 28}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/ice1712/aureon.c", i32 1138, i32 3}
!198 = !{ptr @aureon_cs8415_mux_info.prodigy_texts, !199, !"prodigy_texts", i1 false, i1 false}
!199 = !{!"../sound/pci/ice1712/aureon.c", i32 1136, i32 28}
!200 = !{ptr @aureon51_eeprom, !201, !"aureon51_eeprom", i1 false, i1 false}
!201 = !{!"../sound/pci/ice1712/aureon.c", i32 2136, i32 28}
!202 = !{ptr @aureon71_eeprom, !203, !"aureon71_eeprom", i1 false, i1 false}
!203 = !{!"../sound/pci/ice1712/aureon.c", i32 2152, i32 28}
!204 = !{ptr @aureon71_universe_eeprom, !205, !"aureon71_universe_eeprom", i1 false, i1 false}
!205 = !{!"../sound/pci/ice1712/aureon.c", i32 2169, i32 28}
!206 = !{ptr @prodigy71lt_eeprom, !207, !"prodigy71lt_eeprom", i1 false, i1 false}
!207 = !{!"../sound/pci/ice1712/aureon.c", i32 2187, i32 28}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"auto-init"}
