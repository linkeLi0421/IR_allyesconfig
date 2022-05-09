; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_wm87x6.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_wm87x6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
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
%union.anon.84 = type { [64 x i32] }
%struct.xonar_generic = type { i32, i16, i8, i8, i8, i8 }
%struct.xonar_wm87x6 = type { %struct.xonar_generic, [23 x i16], [16 x i16], ptr, ptr, [13 x ptr], ptr, %struct.xonar_hdmi }
%struct.xonar_hdmi = type { [5 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@model_xonar_ds = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str.2, ptr @.str.3, ptr @xonar_ds_init, ptr null, ptr @xonar_ds_mixer_init, ptr @xonar_ds_cleanup, ptr @xonar_ds_suspend, ptr @xonar_ds_resume, ptr @wm8776_adc_hardware_filter, ptr @set_wm87x6_dac_params, ptr @set_wm8776_adc_params, ptr @update_wm87x6_volume, ptr @update_wm87x6_mute, ptr @update_wm8766_center_lfe_mix, ptr null, ptr @xonar_ds_gpio_changed, ptr null, ptr null, ptr @dump_wm87x6_registers, ptr @wm87x6_dac_db_scale, i32 164, i32 149, i8 8, i8 8, i8 -121, i8 -1, i8 0, i8 0, i8 5, i8 5, i16 8, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar DS\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Xonar DSX\00", [22 x i8] zeroinitializer }, align 32
@model_xonar_hdav_slim = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr @.str.102, ptr @.str.103, ptr @.str.3, ptr @xonar_hdav_slim_init, ptr null, ptr @xonar_hdav_slim_mixer_init, ptr @xonar_hdav_slim_cleanup, ptr @xonar_hdav_slim_suspend, ptr @xonar_hdav_slim_resume, ptr @xonar_hdav_slim_hardware_filter, ptr @set_hdav_slim_dac_params, ptr @set_wm8776_adc_params, ptr @update_wm8776_volume, ptr @update_wm8776_mute, ptr null, ptr null, ptr null, ptr @xonar_hdmi_uart_input, ptr null, ptr @dump_wm8776_registers, ptr @wm87x6_dac_db_scale, i32 164, i32 149, i8 8, i8 2, i8 -121, i8 -1, i8 0, i8 64, i8 5, i8 5, i16 8, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Asus Virtuoso 66\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AV200\00", [26 x i8] zeroinitializer }, align 32
@wm87x6_dac_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6000, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8776\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8766\00", [25 x i8] zeroinitializer }, align 32
@ds_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @wm8776_hp_vol_info, ptr @wm8776_hp_vol_get, ptr @wm8776_hp_vol_put, %union.anon.85 { ptr @wm8776_hp_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 17629192 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @wm8776_input_vol_info, ptr @wm8776_input_vol_get, ptr @wm8776_input_vol_put, %union.anon.85 { ptr @wm8776_adc_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_input_mux_get, ptr @wm8776_input_mux_put, %union.anon.85 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_input_mux_get, ptr @wm8776_input_mux_put, %union.anon.85 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 1376260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 1376264 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @hpf_info, ptr @hpf_get, ptr @hpf_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @wm8776_level_control_info, ptr @wm8776_level_control_get, ptr @wm8776_level_control_put, %union.anon.85 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@wm8776_hp_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6000, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@wm8776_adc_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Front Mic Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Filter Capture Enum\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Level Control Capture Enum\00", [37 x i8] zeroinitializer }, align 32
@hpf_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High-pass Filter\00", [47 x i8] zeroinitializer }, align 32
@wm8776_level_control_info.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.19], [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Peak Limiter\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Automatic Level Control\00", [40 x i8] zeroinitializer }, align 32
@lc_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_lct_db_scale }, i32 1343221771 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 1376755714 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 1380950019 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 1413967874 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_maxatten_lim_db_scale }, i32 1410319110 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_lct_db_scale }, i32 806350859 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 839884802 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 844079107 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_maxgain_db_scale }, i32 809988359 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_maxatten_alc_db_scale }, i32 873462282 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 259, i32 0, ptr @wm8776_field_enum_info, ptr @wm8776_field_enum_get, ptr @wm8776_field_enum_put, %union.anon.85 zeroinitializer, i32 823128064 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 538116097 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 275, i32 0, ptr @wm8776_field_volume_info, ptr @wm8776_field_volume_get, ptr @wm8776_field_volume_put, %union.anon.85 { ptr @wm8776_ngth_db_scale }, i32 858222592 }], [144 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Limiter Threshold Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@wm8776_lct_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1600, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Limiter Attack Time Capture Enum\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Limiter Decay Time Capture Enum\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter Transient Window Capture Enum\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Limiter Maximum Attenuation Capture Volume\00", [53 x i8] zeroinitializer }, align 32
@wm8776_maxatten_lim_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ALC Target Level Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ALC Attack Time Capture Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ALC Decay Time Capture Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ALC Maximum Gain Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@wm8776_maxgain_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 400], [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ALC Maximum Attenuation Capture Volume\00", [57 x i8] zeroinitializer }, align 32
@wm8776_maxatten_alc_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 400], [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Hold Time Capture Enum\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Noise Gate Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Noise Gate Threshold Capture Volume\00", [60 x i8] zeroinitializer }, align 32
@wm8776_ngth_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7800, i32 600], [16 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.hld = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.67 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.33 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.6 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"21.3 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"42.7 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"85.3 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"171 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"341 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"683 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.37 s\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.73 s\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.46 s\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10.9 s\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"21.8 s\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"43.7 s\00", [25 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.atk_lim = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.25 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.5 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"128 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"256 ms\00", [25 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.atk_alc = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.40 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"16.8 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"33.6 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"67.2 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"134 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"269 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"538 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.08 s\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.15 s\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.3 s\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8.6 s\00", [26 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.dcy_lim = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.2 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.4 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.8 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.6 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"19.2 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"38.4 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"76.8 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"154 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"307 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"614 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.23 s\00", [25 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.dcy_alc = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.64, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"33.5 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"67.0 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"268 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"536 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.07 s\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.14 s\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.29 s\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.58 s\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"17.2 s\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"34.3 s\00", [25 x i8] zeroinitializer }, align 32
@wm8776_field_enum_info.tranwin = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.51, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 us\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"62.5 us\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"125 us\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"250 us\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"500 us\00", [25 x i8] zeroinitializer }, align 32
@update_wm87x6_volume.wm8766_regs = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\04\05\06\07", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0AWM8766:\0A00:\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %03x\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0AWM8776:\0A00:\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A10:\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Xonar HDAV1.3 Slim\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asus Virtuoso 200\00", [46 x i8] zeroinitializer }, align 32
@hdav_slim_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @xonar_gpio_bit_switch_get, ptr @xonar_gpio_bit_switch_put, %union.anon.85 zeroinitializer, i32 65537 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @wm8776_hp_vol_info, ptr @wm8776_hp_vol_get, ptr @wm8776_hp_vol_put, %union.anon.85 { ptr @wm8776_hp_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 17629192 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @wm8776_input_vol_info, ptr @wm8776_input_vol_get, ptr @wm8776_input_vol_put, %union.anon.85 { ptr @wm8776_adc_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 1376257 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8776_bit_switch_get, ptr @wm8776_bit_switch_put, %union.anon.85 zeroinitializer, i32 1376258 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @hpf_info, ptr @hpf_get, ptr @hpf_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @wm8776_level_control_info, ptr @wm8776_level_control_get, ptr @wm8776_level_control_put, %union.anon.85 zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 33630, i64 33678, i64 34082]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 17, i64 18, i64 20]
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"model_xonar_ds\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1248, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1320, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1324, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"model_xonar_hdav_slim\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1281, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1249, i32 14 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1250, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"wm87x6_dac_db_scale\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1003, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 279, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 283, i32 32 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 284, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"ds_controls\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1012, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1191, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1193, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1015, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"wm8776_hp_db_scale\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1005, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1021, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1025, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"wm8776_adc_db_scale\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1004, i32 14 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1047, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1049, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1053, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1060, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 935, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 936, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 936, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 849, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 850, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 850, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"lc_controls\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1114, i32 38 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1115, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"wm8776_lct_db_scale\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1006, i32 14 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1118, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1121, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1124, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1127, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [29 x i8] c"wm8776_maxatten_lim_db_scale\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1009, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1131, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1134, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1137, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1140, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [24 x i8] c"wm8776_maxgain_db_scale\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1007, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1143, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"wm8776_maxatten_alc_db_scale\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1010, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1146, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1149, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1152, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"wm8776_ngth_db_scale\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1008, i32 14 }
@___asan_gen_.248 = private unnamed_addr constant [4 x i8] c"hld\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 538, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 22 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 540, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 540, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 540, i32 25 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 540, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 541, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 541, i32 13 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 541, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 541, i32 33 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 542, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 542, i32 13 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 542, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 542, i32 33 }
@___asan_gen_.299 = private unnamed_addr constant [8 x i8] c"atk_lim\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 544, i32 27 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 24 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 32 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 546, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 546, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 546, i32 19 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 546, i32 28 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 547, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 547, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 547, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant [8 x i8] c"atk_alc\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 549, i32 27 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 550, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 550, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 550, i32 25 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 550, i32 36 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 551, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 551, i32 13 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 551, i32 23 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 551, i32 33 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 552, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 552, i32 13 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 552, i32 22 }
@___asan_gen_.371 = private unnamed_addr constant [8 x i8] c"dcy_lim\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 554, i32 27 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 555, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 555, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 555, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 555, i32 33 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 556, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 556, i32 14 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 556, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 556, i32 36 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 557, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 557, i32 13 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 557, i32 23 }
@___asan_gen_.407 = private unnamed_addr constant [8 x i8] c"dcy_alc\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 559, i32 27 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 560, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 560, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 560, i32 35 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 561, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 561, i32 13 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 561, i32 23 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 561, i32 33 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 562, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 562, i32 13 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 562, i32 23 }
@___asan_gen_.440 = private unnamed_addr constant [8 x i8] c"tranwin\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 564, i32 27 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 565, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 565, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 565, i32 22 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 565, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 566, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [12 x i8] c"wm8766_regs\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 422, i32 18 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1242, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1244, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1245, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1226, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1229, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1282, i32 15 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1283, i32 14 }
@___asan_gen_.482 = private unnamed_addr constant [19 x i8] c"hdav_slim_controls\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1067, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [35 x i8] c"../sound/pci/oxygen/xonar_wm87x6.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1070, i32 11 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @model_xonar_ds, ptr @.str, ptr @.str.1, ptr @model_xonar_hdav_slim, ptr @.str.2, ptr @.str.3, ptr @wm87x6_dac_db_scale, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ds_controls, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @wm8776_hp_db_scale, ptr @.str.10, ptr @.str.11, ptr @wm8776_adc_db_scale, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @hpf_info.names, ptr @.str.16, ptr @.str.17, ptr @wm8776_level_control_info.names, ptr @.str.18, ptr @.str.19, ptr @lc_controls, ptr @.str.20, ptr @wm8776_lct_db_scale, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @wm8776_maxatten_lim_db_scale, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @wm8776_maxgain_db_scale, ptr @.str.29, ptr @wm8776_maxatten_alc_db_scale, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @wm8776_ngth_db_scale, ptr @wm8776_field_enum_info.hld, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @wm8776_field_enum_info.atk_lim, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @wm8776_field_enum_info.atk_alc, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @wm8776_field_enum_info.dcy_lim, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @wm8776_field_enum_info.dcy_alc, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @wm8776_field_enum_info.tranwin, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @update_wm87x6_volume.wm8766_regs, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @hdav_slim_controls, ptr @.str.104], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_ds to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_hdav_slim to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm87x6_dac_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_hp_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_adc_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_level_control_info.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lc_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_lct_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxatten_lim_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxgain_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxatten_alc_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_ngth_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.hld to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.atk_lim to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.atk_alc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.dcy_lim to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.dcy_alc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_field_enum_info.tranwin to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_wm87x6_volume.wm8766_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdav_slim_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_xonar_wm87x6_model(ptr nocapture noundef writeonly %chip, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdevice, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 33678, label %sw.bb
    i32 34082, label %sw.bb2
    i32 33630, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %model = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %3 = call ptr @memcpy(ptr %model, ptr @model_xonar_ds, i32 104)
  %4 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %model, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %model3 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %5 = call ptr @memcpy(ptr %model3, ptr @model_xonar_ds, i32 104)
  %6 = ptrtoint ptr %model3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %model3, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %model7 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %7 = call ptr @memcpy(ptr %model7, ptr @model_xonar_hdav_slim, i32 104)
  br label %return

return:                                           ; preds = %sw.bb6, %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ds_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 300, ptr %1, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 256, ptr %output_enable_bit, align 4
  %4 = load ptr, ptr %model_data, align 4
  %wm8776_regs.i = getelementptr inbounds %struct.xonar_wm87x6, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wm8776_regs.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 189, ptr %wm8776_regs.i, align 4
  %arrayidx2.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 189, ptr %arrayidx2.i, align 2
  %arrayidx4.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 11
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 97, ptr %arrayidx4.i, align 2
  %arrayidx6.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 34, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 13
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 14
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 421, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 15
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 421, ptr %arrayidx12.i, align 2
  %arrayidx14.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 21
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %arrayidx14.i, align 2
  tail call fastcc void @wm8776_registers_init(ptr noundef %chip) #8
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %14, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 288, ptr %arrayidx.i, align 2
  tail call fastcc void @wm8766_registers_init(ptr noundef %chip) #8
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 192, i16 noundef zeroext 192) #8
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 0, i16 noundef zeroext 16) #8
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 64, i16 noundef zeroext 64) #8
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 170, i16 noundef zeroext 16, i16 noundef zeroext 16) #8
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 8
  %16 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interrupt_mask, align 4
  %or = or i32 %17, 2048
  store i32 %or, ptr %interrupt_mask, align 4
  tail call void @xonar_enable_output(ptr noundef %chip) #8
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %hp_jack = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 6
  %call = tail call i32 @snd_jack_new(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef %hp_jack, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call fastcc void @xonar_ds_handle_hp_jack(ptr noundef %chip)
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call3 = tail call i32 @snd_component_add(ptr noundef %21, ptr noundef nonnull @.str.5) #8
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call5 = tail call i32 @snd_component_add(ptr noundef %23, ptr noundef nonnull @.str.6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_ds_mixer_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %mic_adcmux_control = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 4
  %line_adcmux_control = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.snd_kcontrol_new], ptr @ds_controls, i32 0, i32 %i.042
  %call = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %chip) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 4
  %call5 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.for.inc.sink.split_crit_edge, label %if.else

if.end4.for.inc.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end4
  %call11 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(19) @.str.8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.end4.for.inc.sink.split_crit_edge
  %line_adcmux_control.sink = phi ptr [ %line_adcmux_control, %if.end4.for.inc.sink.split_crit_edge ], [ %mic_adcmux_control, %if.else.for.inc.sink.split_crit_edge ]
  %4 = ptrtoint ptr %line_adcmux_control.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %line_adcmux_control.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %5 = ptrtoint ptr %line_adcmux_control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %line_adcmux_control, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %7 = ptrtoint ptr %mic_adcmux_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mic_adcmux_control, align 4
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.end21
  %i.017.i = phi i32 [ 0, %if.end21 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [13 x %struct.snd_kcontrol_new], ptr @lc_controls, i32 0, i32 %i.017.i
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef %chip) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %12, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr %struct.xonar_wm87x6, ptr %10, i32 0, i32 5, i32 %i.017.i
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %for.end.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ds_cleanup(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #8
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %0 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_flags.i, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp eq i8 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 11776) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ds_suspend(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #8
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %0 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_flags.i.i, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i.i = icmp eq i8 %2, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 11776) #8
  br label %xonar_ds_cleanup.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  br label %xonar_ds_cleanup.exit

xonar_ds_cleanup.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ds_resume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wm8776_registers_init(ptr noundef %chip)
  tail call fastcc void @wm8766_registers_init(ptr noundef %chip)
  tail call void @xonar_enable_output(ptr noundef %chip) #8
  tail call fastcc void @xonar_ds_handle_hp_jack(ptr noundef %chip)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wm8776_adc_hardware_filter(i32 noundef %channel, ptr nocapture noundef writeonly %hardware) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rates = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 2
  %0 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2016, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 4
  %1 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 96000, ptr %rate_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_wm87x6_dac_params(ptr nocapture noundef %chip, ptr nocapture noundef %params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_wm8776_adc_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %1)
  %cmp = icmp ugt i32 %1, 48000
  %spec.select = select i1 %cmp, i32 42, i32 34
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %spec.select, %conv.i
  br i1 %cmp1.not.i, label %entry.wm8776_write_cached.exit_crit_edge, label %if.then.i

entry.wm8776_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit

if.then.i:                                        ; preds = %entry
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %6 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %function_flags.i.i, align 1
  %8 = and i8 %7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i = or i32 %spec.select, 6144
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i.i) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i = trunc i32 %spec.select to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 24, i8 noundef zeroext %conv1.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %conv10.i.i = trunc i32 %spec.select to i16
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10.i.i, ptr %arrayidx.i, align 2
  br label %wm8776_write_cached.exit

wm8776_write_cached.exit:                         ; preds = %if.end.i.i, %entry.wm8776_write_cached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_wm87x6_volume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @update_wm8776_volume(ptr noundef %chip)
  %arrayidx = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp = icmp eq i8 %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx9 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp11 = icmp eq i8 %3, %7
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %arrayidx18 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 5
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %9)
  %cmp20 = icmp eq i8 %3, %9
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true22:                                  ; preds = %land.lhs.true13
  %arrayidx27 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 6
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %11)
  %cmp29 = icmp eq i8 %3, %11
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true22.if.else_crit_edge

land.lhs.true22.if.else_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true22
  %arrayidx36 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 7
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %13)
  %cmp38 = icmp eq i8 %3, %13
  br i1 %cmp38, label %for.cond.preheader, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true31
  %14 = zext i8 %3 to i16
  %arrayidx46 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 0
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx46, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %14)
  %cmp48.not = icmp eq i16 %16, %14
  %arrayidx46.1 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx46.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %14)
  %cmp48.not.1 = icmp eq i16 %18, %14
  %arrayidx46.2 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx46.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %14)
  %cmp48.not.2 = icmp eq i16 %20, %14
  %arrayidx46.3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx46.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %14)
  %cmp48.not.3 = icmp eq i16 %22, %14
  %arrayidx46.4 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx46.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %14)
  %cmp48.not.4 = icmp eq i16 %24, %14
  %arrayidx46.5 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %arrayidx46.5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx46.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %14)
  %cmp48.not.5 = icmp eq i16 %26, %14
  %27 = select i1 %cmp48.not.5, i1 %cmp48.not.4, i1 false
  %28 = select i1 %27, i1 %cmp48.not.3, i1 false
  %29 = select i1 %28, i1 %cmp48.not.2, i1 false
  %30 = select i1 %29, i1 %cmp48.not.1, i1 false
  %narrow = select i1 %30, i1 %cmp48.not, i1 false
  br i1 %narrow, label %for.cond.preheader.if.end113_crit_edge, label %if.then51

for.cond.preheader.if.end113_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then51:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %conv54 = zext i8 %3 to i32
  %31 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %model_data, align 4
  %or.i = or i32 %conv54, 4352
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i) #8
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %32, i32 0, i32 2, i32 8
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %14, ptr %arrayidx.i, align 2
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 2
  %conv61 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv61, ptr %arrayidx46, align 2
  %37 = load i8, ptr %arrayidx, align 2
  %conv61.1 = zext i8 %37 to i16
  %38 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv61.1, ptr %arrayidx46.1, align 2
  %39 = load i8, ptr %arrayidx, align 2
  %conv61.2 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv61.2, ptr %arrayidx46.2, align 2
  %41 = load i8, ptr %arrayidx, align 2
  %conv61.3 = zext i8 %41 to i16
  %42 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv61.3, ptr %arrayidx46.3, align 2
  %43 = load i8, ptr %arrayidx, align 2
  %conv61.4 = zext i8 %43 to i16
  %44 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv61.4, ptr %arrayidx46.4, align 2
  %45 = load i8, ptr %arrayidx, align 2
  %conv61.5 = zext i8 %45 to i16
  %46 = ptrtoint ptr %arrayidx46.5 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv61.5, ptr %arrayidx46.5, align 2
  br label %if.end113

if.else:                                          ; preds = %land.lhs.true31.if.else_crit_edge, %land.lhs.true22.if.else_crit_edge, %land.lhs.true13.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %arrayidx80 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 0
  %49 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx80, align 2
  %51 = zext i8 %48 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %51)
  %cmp82 = icmp ne i16 %50, %51
  %conv83 = zext i1 %cmp82 to i32
  %52 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx2, align 1
  %arrayidx80.1 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx80.1, align 2
  %56 = zext i8 %53 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %56)
  %cmp82.1.not = icmp eq i16 %55, %56
  %shl.1 = select i1 %cmp82.1.not, i32 0, i32 2
  %phi.cast.1 = or i32 %shl.1, %conv83
  %arrayidx75.2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 4
  %57 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx75.2, align 1
  %arrayidx80.2 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 4
  %59 = ptrtoint ptr %arrayidx80.2 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx80.2, align 2
  %61 = zext i8 %58 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %61)
  %cmp82.2.not = icmp eq i16 %60, %61
  %shl.2 = select i1 %cmp82.2.not, i32 0, i32 4
  %phi.cast.2 = or i32 %shl.2, %phi.cast.1
  %arrayidx75.3 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 5
  %62 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx75.3, align 1
  %arrayidx80.3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 5
  %64 = ptrtoint ptr %arrayidx80.3 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx80.3, align 2
  %66 = zext i8 %63 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %66)
  %cmp82.3.not = icmp eq i16 %65, %66
  %shl.3 = select i1 %cmp82.3.not, i32 0, i32 8
  %phi.cast.3 = or i32 %shl.3, %phi.cast.2
  %arrayidx75.4 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 6
  %67 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx75.4, align 1
  %arrayidx80.4 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 6
  %69 = ptrtoint ptr %arrayidx80.4 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx80.4, align 2
  %71 = zext i8 %68 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %71)
  %cmp82.4.not = icmp eq i16 %70, %71
  %shl.4 = select i1 %cmp82.4.not, i32 0, i32 16
  %phi.cast.4 = or i32 %shl.4, %phi.cast.3
  %arrayidx75.5 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 7
  %72 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx75.5, align 1
  %arrayidx80.5 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 7
  %74 = ptrtoint ptr %arrayidx80.5 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx80.5, align 2
  %76 = zext i8 %73 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %76)
  %cmp82.5.not = icmp eq i16 %75, %76
  %shl.5 = select i1 %cmp82.5.not, i32 0, i32 32
  %phi.cast.5 = or i32 %shl.5, %phi.cast.4
  br label %for.body93

for.body93:                                       ; preds = %for.inc110.for.body93_crit_edge, %if.else
  %i.3162 = phi i32 [ 0, %if.else ], [ %inc111, %for.inc110.for.body93_crit_edge ]
  %shl95 = shl nuw nsw i32 1, %i.3162
  %and = and i32 %shl95, %phi.cast.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  br i1 %tobool96.not, label %for.body93.for.inc110_crit_edge, label %if.then97

for.body93.for.inc110_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

if.then97:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98 = getelementptr [6 x i8], ptr @update_wm87x6_volume.wm8766_regs, i32 0, i32 %i.3162
  %77 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %78 to i32
  %add101 = add nuw nsw i32 %i.3162, 2
  %arrayidx102 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %add101
  %79 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %80 to i32
  %shl105 = shl nuw nsw i32 62, %i.3162
  %and106 = and i32 %shl105, %phi.cast.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %cond = select i1 %tobool107.not, i32 256, i32 0
  %or108 = or i32 %cond, %conv103
  %81 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %model_data, align 4
  %shl.i = shl nuw nsw i32 %conv99, 9
  %or.i154 = or i32 %or108, %shl.i
  %call.i155 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.3162)
  %83 = icmp ult i32 %i.3162, 2
  %84 = add nsw i32 %conv99, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %85 = icmp ult i32 %84, 5
  %or.cond.i = or i1 %83, %85
  %value.addr.0.i = select i1 %or.cond.i, i32 %conv103, i32 %or108
  %conv.i157 = trunc i32 %value.addr.0.i to i16
  %arrayidx.i158 = getelementptr %struct.xonar_wm87x6, ptr %82, i32 0, i32 2, i32 %conv99
  %86 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i157, ptr %arrayidx.i158, align 2
  br label %for.inc110

for.inc110:                                       ; preds = %if.then97, %for.body93.for.inc110_crit_edge
  %inc111 = add nuw nsw i32 %i.3162, 1
  %exitcond.not = icmp eq i32 %inc111, 6
  br i1 %exitcond.not, label %for.inc110.if.end113_crit_edge, label %for.inc110.for.body93_crit_edge

for.inc110.for.body93_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body93

for.inc110.if.end113_crit_edge:                   ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end113:                                        ; preds = %for.inc110.if.end113_crit_edge, %if.then51, %for.cond.preheader.if.end113_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_wm87x6_mute(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_mute.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %dac_mute.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_mute.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %model_data.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %6 = zext i1 %tobool.not.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %6)
  %cmp1.not.i.i = icmp eq i16 %5, %6
  br i1 %cmp1.not.i.i, label %entry.update_wm8776_mute.exit_crit_edge, label %if.then.i.i

entry.update_wm8776_mute.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_wm8776_mute.exit

if.then.i.i:                                      ; preds = %entry
  %function_flags.i.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %7 = ptrtoint ptr %function_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %function_flags.i.i.i, align 1
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i.i = icmp eq i8 %9, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i.i = or i32 %cond.i, 4096
  %call.i.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i.i.i) #8
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i.i = zext i1 %tobool.not.i to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext %conv1.i.i.i.i) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %6, ptr %arrayidx.i.i, align 2
  br label %update_wm8776_mute.exit

update_wm8776_mute.exit:                          ; preds = %if.end.i.i.i, %entry.update_wm8776_mute.exit_crit_edge
  %11 = ptrtoint ptr %dac_mute.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dac_mute.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %or = select i1 %tobool.not, i32 1, i32 57
  %13 = ptrtoint ptr %model_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %14, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %or, %conv.i
  br i1 %cmp1.not.i, label %update_wm8776_mute.exit.wm8766_write_cached.exit_crit_edge, label %if.then.i

update_wm8776_mute.exit.wm8766_write_cached.exit_crit_edge: ; preds = %update_wm8776_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_write_cached.exit

if.then.i:                                        ; preds = %update_wm8776_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %or, 4608
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i.i) #8
  %conv.i.i = trunc i32 %or to i16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %arrayidx.i, align 2
  br label %wm8766_write_cached.exit

wm8766_write_cached.exit:                         ; preds = %if.then.i, %update_wm8776_mute.exit.wm8766_write_cached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_wm8766_center_lfe_mix(ptr noundef %chip, i1 noundef zeroext %mixed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, -481
  %and = zext i16 %4 to i32
  %reg.0.v = select i1 %mixed, i32 480, i32 288
  %reg.0 = or i32 %reg.0.v, %and
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %reg.0, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %reg.0, %conv.i
  br i1 %cmp1.not.i, label %entry.wm8766_write_cached.exit_crit_edge, label %if.then.i

entry.wm8766_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %reg.0, 1024
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i.i) #8
  %conv.i.i = trunc i32 %reg.0 to i16
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i.i, ptr %arrayidx, align 2
  br label %wm8766_write_cached.exit

wm8766_write_cached.exit:                         ; preds = %if.then.i, %entry.wm8766_write_cached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ds_gpio_changed(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xonar_ds_handle_hp_jack(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_wm87x6_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @dump_wm8776_registers(ptr noundef %chip, ptr noundef %buffer)
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.97) #8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.98, i32 noundef %conv) #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %arrayidx.1 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.98, i32 noundef %conv.1) #8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %arrayidx.2 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.98, i32 noundef %conv.2) #8
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx.3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.98, i32 noundef %conv.3) #8
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx.4 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.98, i32 noundef %conv.4) #8
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx.5 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.98, i32 noundef %conv.5) #8
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %arrayidx.6 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.98, i32 noundef %conv.6) #8
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx.7 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.98, i32 noundef %conv.7) #8
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx.8 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 8
  %38 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.98, i32 noundef %conv.8) #8
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %arrayidx.9 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 9
  %42 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.98, i32 noundef %conv.9) #8
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %arrayidx.10 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 10
  %46 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.98, i32 noundef %conv.10) #8
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %arrayidx.11 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 11
  %50 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.98, i32 noundef %conv.11) #8
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %arrayidx.12 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 12
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.98, i32 noundef %conv.12) #8
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %arrayidx.13 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 13
  %58 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.98, i32 noundef %conv.13) #8
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %arrayidx.14 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 14
  %62 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.98, i32 noundef %conv.14) #8
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %arrayidx.15 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 15
  %66 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.98, i32 noundef %conv.15) #8
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.99) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_enable_output(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xonar_ds_handle_hp_jack(ptr noundef %chip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 166) #8
  %2 = and i16 %call, 16
  %3 = shl nuw nsw i16 %2, 3
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %3, i16 noundef zeroext 128) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, -2
  %.lobit20 = lshr exact i16 %2, 4
  %7 = or i16 %6, %.lobit20
  %spec.select21 = xor i16 %7, 1
  %8 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %9, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %spec.select21)
  %cmp1.not.i = icmp eq i16 %11, %spec.select21
  br i1 %cmp1.not.i, label %entry.wm8766_write_cached.exit_crit_edge, label %if.then.i

entry.wm8766_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8766_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = or i16 %spec.select21, 1024
  %or.i.i = zext i16 %12 to i32
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i.i) #8
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %spec.select21, ptr %arrayidx.i, align 2
  br label %wm8766_write_cached.exit

wm8766_write_cached.exit:                         ; preds = %if.then.i, %entry.wm8766_write_cached.exit_crit_edge
  %hp_jack = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %hp_jack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hp_jack, align 4
  %16 = xor i16 %.lobit20, 1
  %17 = zext i16 %16 to i32
  tail call void @snd_jack_report(ptr noundef %15, i32 noundef %17) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8776_registers_init(ptr noundef %chip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %2 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function_flags.i, align 1
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 11776) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  %5 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %model_data, align 4
  %7 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %function_flags.i, align 1
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i56 = icmp eq i8 %9, 0
  br i1 %cmp.i56, label %if.then.i58, label %if.else.i59

if.then.i58:                                      ; preds = %wm8776_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i57 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 3075) #8
  br label %wm8776_write.exit60

if.else.i59:                                      ; preds = %wm8776_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 12, i8 noundef zeroext 3) #8
  br label %wm8776_write.exit60

wm8776_write.exit60:                              ; preds = %if.else.i59, %if.then.i58
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %6, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %arrayidx.i, align 2
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %13 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %function_flags.i, align 1
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i63 = icmp eq i8 %15, 0
  br i1 %cmp.i63, label %if.then.i65, label %if.else.i66

if.then.i65:                                      ; preds = %wm8776_write.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i64 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 3729) #8
  br label %wm8776_write.exit68

if.else.i66:                                      ; preds = %wm8776_write.exit60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 14, i8 noundef zeroext -111) #8
  br label %wm8776_write.exit68

wm8776_write.exit68:                              ; preds = %if.else.i66, %if.then.i65
  %arrayidx.i67 = getelementptr %struct.xonar_wm87x6, ptr %12, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 145, ptr %arrayidx.i67, align 2
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %17 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp ne i8 %18, 0
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %21 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %function_flags.i, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i71 = icmp eq i8 %23, 0
  br i1 %cmp.i71, label %if.then.i73, label %if.else.i74

if.then.i73:                                      ; preds = %wm8776_write.exit68
  call void @__sanitizer_cov_trace_pc() #10
  %cond = zext i1 %tobool.not to i32
  %or.i.i = or i32 %cond, 4096
  %call.i.i72 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %wm8776_write.exit76

if.else.i74:                                      ; preds = %wm8776_write.exit68
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = zext i1 %tobool.not to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext %conv1.i.i) #8
  br label %wm8776_write.exit76

wm8776_write.exit76:                              ; preds = %if.else.i74, %if.then.i73
  %conv10.i = zext i1 %tobool.not to i16
  %arrayidx.i75 = getelementptr %struct.xonar_wm87x6, ptr %20, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv10.i, ptr %arrayidx.i75, align 2
  %25 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %model_data, align 4
  %27 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %function_flags.i, align 1
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i79 = icmp eq i8 %29, 0
  br i1 %cmp.i79, label %if.then.i81, label %if.else.i82

if.then.i81:                                      ; preds = %wm8776_write.exit76
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i80 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 5153) #8
  br label %wm8776_write.exit84

if.else.i82:                                      ; preds = %wm8776_write.exit76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 20, i8 noundef zeroext 33) #8
  br label %wm8776_write.exit84

wm8776_write.exit84:                              ; preds = %if.else.i82, %if.then.i81
  %arrayidx.i83 = getelementptr %struct.xonar_wm87x6, ptr %26, i32 0, i32 1, i32 10
  %30 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 33, ptr %arrayidx.i83, align 2
  %wm8776_regs = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %33 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %model_data, align 4
  %35 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %function_flags.i, align 1
  %37 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i87 = icmp eq i8 %37, 0
  br i1 %cmp.i87, label %if.then.i90, label %if.else.i95

if.then.i90:                                      ; preds = %wm8776_write.exit84
  call void @__sanitizer_cov_trace_pc() #10
  %38 = or i16 %32, 5632
  %or.i.i88 = zext i16 %38 to i32
  %call.i.i89 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i88) #8
  br label %wm8776_write.exit98

if.else.i95:                                      ; preds = %wm8776_write.exit84
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i91 = lshr i16 %32, 8
  %39 = trunc i16 %shr.i.i91 to i8
  %conv.i.i93 = or i8 %39, 22
  %conv1.i.i94 = trunc i16 %32 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i93, i8 noundef zeroext %conv1.i.i94) #8
  br label %wm8776_write.exit98

wm8776_write.exit98:                              ; preds = %if.else.i95, %if.then.i90
  %arrayidx.i97 = getelementptr %struct.xonar_wm87x6, ptr %34, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %32, ptr %arrayidx.i97, align 2
  %arrayidx3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx3, align 4
  %43 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %model_data, align 4
  %45 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %function_flags.i, align 1
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i101 = icmp eq i8 %47, 0
  br i1 %cmp.i101, label %if.then.i104, label %if.else.i109

if.then.i104:                                     ; preds = %wm8776_write.exit98
  call void @__sanitizer_cov_trace_pc() #10
  %48 = or i16 %42, 6144
  %or.i.i102 = zext i16 %48 to i32
  %call.i.i103 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i102) #8
  br label %wm8776_write.exit112

if.else.i109:                                     ; preds = %wm8776_write.exit98
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i105 = lshr i16 %42, 8
  %49 = trunc i16 %shr.i.i105 to i8
  %conv.i.i107 = or i8 %49, 24
  %conv1.i.i108 = trunc i16 %42 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i107, i8 noundef zeroext %conv1.i.i108) #8
  br label %wm8776_write.exit112

wm8776_write.exit112:                             ; preds = %if.else.i109, %if.then.i104
  %arrayidx.i111 = getelementptr %struct.xonar_wm87x6, ptr %44, i32 0, i32 1, i32 12
  %50 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %42, ptr %arrayidx.i111, align 2
  %arrayidx6 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 13
  %51 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx6, align 2
  %53 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %model_data, align 4
  %55 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %function_flags.i, align 1
  %57 = and i8 %56, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp.i115 = icmp eq i8 %57, 0
  br i1 %cmp.i115, label %if.then.i118, label %if.else.i123

if.then.i118:                                     ; preds = %wm8776_write.exit112
  call void @__sanitizer_cov_trace_pc() #10
  %58 = or i16 %52, 6656
  %or.i.i116 = zext i16 %58 to i32
  %call.i.i117 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i116) #8
  br label %wm8776_write.exit126

if.else.i123:                                     ; preds = %wm8776_write.exit112
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i119 = lshr i16 %52, 8
  %59 = trunc i16 %shr.i.i119 to i8
  %conv.i.i121 = or i8 %59, 26
  %conv1.i.i122 = trunc i16 %52 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i121, i8 noundef zeroext %conv1.i.i122) #8
  br label %wm8776_write.exit126

wm8776_write.exit126:                             ; preds = %if.else.i123, %if.then.i118
  %arrayidx.i125 = getelementptr %struct.xonar_wm87x6, ptr %54, i32 0, i32 1, i32 13
  %60 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %52, ptr %arrayidx.i125, align 2
  %61 = ptrtoint ptr %wm8776_regs to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %wm8776_regs, align 4
  %63 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %model_data, align 4
  %65 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %function_flags.i, align 1
  %67 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp.i129 = icmp eq i8 %67, 0
  br i1 %cmp.i129, label %if.then.i131, label %if.else.i135

if.then.i131:                                     ; preds = %wm8776_write.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = zext i16 %62 to i32
  %call.i.i130 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %conv10) #8
  br label %wm8776_write.exit139

if.else.i135:                                     ; preds = %wm8776_write.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i132 = lshr i16 %62, 8
  %conv.i.i133 = trunc i16 %shr.i.i132 to i8
  %conv1.i.i134 = trunc i16 %62 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i133, i8 noundef zeroext %conv1.i.i134) #8
  br label %wm8776_write.exit139

wm8776_write.exit139:                             ; preds = %if.else.i135, %if.then.i131
  %and8.i136 = and i16 %62, -257
  %arrayidx.i138 = getelementptr %struct.xonar_wm87x6, ptr %64, i32 0, i32 1, i32 0
  %68 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %and8.i136, ptr %arrayidx.i138, align 2
  %arrayidx12 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx12, align 2
  %71 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %model_data, align 4
  %73 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %function_flags.i, align 1
  %75 = and i8 %74, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp.i142 = icmp eq i8 %75, 0
  br i1 %cmp.i142, label %if.then.i145, label %if.else.i150

if.then.i145:                                     ; preds = %wm8776_write.exit139
  call void @__sanitizer_cov_trace_pc() #10
  %76 = or i16 %70, 768
  %or.i.i143 = zext i16 %76 to i32
  %call.i.i144 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i143) #8
  br label %wm8776_write.exit154

if.else.i150:                                     ; preds = %wm8776_write.exit139
  call void @__sanitizer_cov_trace_pc() #10
  %77 = lshr i16 %70, 8
  %78 = trunc i16 %77 to i8
  %conv.i.i148 = or i8 %78, 3
  %conv1.i.i149 = trunc i16 %70 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i148, i8 noundef zeroext %conv1.i.i149) #8
  br label %wm8776_write.exit154

wm8776_write.exit154:                             ; preds = %if.else.i150, %if.then.i145
  %and8.i151 = and i16 %70, -257
  %arrayidx.i153 = getelementptr %struct.xonar_wm87x6, ptr %72, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %and8.i151, ptr %arrayidx.i153, align 2
  %arrayidx15 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 14
  %80 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx15, align 4
  %82 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %model_data, align 4
  %84 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %function_flags.i, align 1
  %86 = and i8 %85, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp.i157 = icmp eq i8 %86, 0
  br i1 %cmp.i157, label %if.then.i160, label %if.else.i165

if.then.i160:                                     ; preds = %wm8776_write.exit154
  call void @__sanitizer_cov_trace_pc() #10
  %87 = or i16 %81, 7168
  %or.i.i158 = zext i16 %87 to i32
  %call.i.i159 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i158) #8
  br label %wm8776_write.exit168

if.else.i165:                                     ; preds = %wm8776_write.exit154
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i161 = lshr i16 %81, 8
  %88 = trunc i16 %shr.i.i161 to i8
  %conv.i.i163 = or i8 %88, 28
  %conv1.i.i164 = trunc i16 %81 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i163, i8 noundef zeroext %conv1.i.i164) #8
  br label %wm8776_write.exit168

wm8776_write.exit168:                             ; preds = %if.else.i165, %if.then.i160
  %arrayidx.i167 = getelementptr %struct.xonar_wm87x6, ptr %83, i32 0, i32 1, i32 14
  %89 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %81, ptr %arrayidx.i167, align 2
  %arrayidx18 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 15
  %90 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx18, align 2
  %92 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %model_data, align 4
  %94 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %function_flags.i, align 1
  %96 = and i8 %95, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp.i171 = icmp eq i8 %96, 0
  br i1 %cmp.i171, label %if.then.i174, label %if.else.i179

if.then.i174:                                     ; preds = %wm8776_write.exit168
  call void @__sanitizer_cov_trace_pc() #10
  %97 = or i16 %91, 7680
  %or.i.i172 = zext i16 %97 to i32
  %call.i.i173 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i172) #8
  br label %wm8776_write.exit182

if.else.i179:                                     ; preds = %wm8776_write.exit168
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i175 = lshr i16 %91, 8
  %98 = trunc i16 %shr.i.i175 to i8
  %conv.i.i177 = or i8 %98, 30
  %conv1.i.i178 = trunc i16 %91 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i177, i8 noundef zeroext %conv1.i.i178) #8
  br label %wm8776_write.exit182

wm8776_write.exit182:                             ; preds = %if.else.i179, %if.then.i174
  %arrayidx.i181 = getelementptr %struct.xonar_wm87x6, ptr %93, i32 0, i32 1, i32 15
  %99 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %91, ptr %arrayidx.i181, align 2
  %arrayidx21 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 21
  %100 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx21, align 2
  %102 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %model_data, align 4
  %104 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %function_flags.i, align 1
  %106 = and i8 %105, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp.i185 = icmp eq i8 %106, 0
  br i1 %cmp.i185, label %if.then.i188, label %if.else.i193

if.then.i188:                                     ; preds = %wm8776_write.exit182
  call void @__sanitizer_cov_trace_pc() #10
  %107 = or i16 %101, 10752
  %or.i.i186 = zext i16 %107 to i32
  %call.i.i187 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i186) #8
  br label %wm8776_write.exit196

if.else.i193:                                     ; preds = %wm8776_write.exit182
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i189 = lshr i16 %101, 8
  %108 = trunc i16 %shr.i.i189 to i8
  %conv.i.i191 = or i8 %108, 42
  %conv1.i.i192 = trunc i16 %101 to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i191, i8 noundef zeroext %conv1.i.i192) #8
  br label %wm8776_write.exit196

wm8776_write.exit196:                             ; preds = %if.else.i193, %if.then.i188
  %arrayidx.i195 = getelementptr %struct.xonar_wm87x6, ptr %103, i32 0, i32 1, i32 21
  %109 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %101, ptr %arrayidx.i195, align 2
  %dac_volume = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 9
  %110 = ptrtoint ptr %dac_volume to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dac_volume, align 4
  %112 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %model_data, align 4
  %114 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %function_flags.i, align 1
  %116 = and i8 %115, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp.i199 = icmp eq i8 %116, 0
  br i1 %cmp.i199, label %if.then.i202, label %if.else.i206

if.then.i202:                                     ; preds = %wm8776_write.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = zext i8 %111 to i32
  %or.i.i200 = or i32 %conv24, 1536
  %call.i.i201 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i200) #8
  br label %wm8776_write.exit210

if.else.i206:                                     ; preds = %wm8776_write.exit196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 6, i8 noundef zeroext %111) #8
  br label %wm8776_write.exit210

wm8776_write.exit210:                             ; preds = %if.else.i206, %if.then.i202
  %conv10.i208 = zext i8 %111 to i16
  %arrayidx.i209 = getelementptr %struct.xonar_wm87x6, ptr %113, i32 0, i32 1, i32 3
  %117 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv10.i208, ptr %arrayidx.i209, align 2
  %arrayidx26 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 1
  %118 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx26, align 1
  %120 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %model_data, align 4
  %122 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %function_flags.i, align 1
  %124 = and i8 %123, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp.i213 = icmp eq i8 %124, 0
  br i1 %cmp.i213, label %if.then.i216, label %if.else.i221

if.then.i216:                                     ; preds = %wm8776_write.exit210
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = zext i8 %119 to i32
  %or.i.i214 = or i32 %conv27, 2304
  %call.i.i215 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i214) #8
  br label %wm8776_write.exit225

if.else.i221:                                     ; preds = %wm8776_write.exit210
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext %119) #8
  br label %wm8776_write.exit225

wm8776_write.exit225:                             ; preds = %if.else.i221, %if.then.i216
  %conv10.i223 = zext i8 %119 to i16
  %arrayidx.i224 = getelementptr %struct.xonar_wm87x6, ptr %121, i32 0, i32 1, i32 4
  %125 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv10.i223, ptr %arrayidx.i224, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_write_spi(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8766_registers_init(ptr noundef %chip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef 15872) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data, align 4
  %6 = or i16 %3, 1024
  %or.i = zext i16 %6 to i32
  %call.i38 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i) #8
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %5, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %3, ptr %arrayidx.i, align 2
  %8 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model_data, align 4
  %call.i40 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef 1569) #8
  %arrayidx.i41 = getelementptr %struct.xonar_wm87x6, ptr %9, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 33, ptr %arrayidx.i41, align 2
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %11 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %or = select i1 %tobool.not, i32 1, i32 57
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %or.i43 = or i32 %or, 4608
  %call.i44 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i43) #8
  %conv.i = trunc i32 %or to i16
  %arrayidx.i45 = getelementptr %struct.xonar_wm87x6, ptr %14, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayidx.i45, align 2
  %arrayidx2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2, align 2
  %conv3 = zext i8 %17 to i32
  %18 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %model_data, align 4
  %call.i47 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %conv3) #8
  %conv.i49 = zext i8 %17 to i16
  %arrayidx.i50 = getelementptr %struct.xonar_wm87x6, ptr %19, i32 0, i32 2, i32 0
  %20 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i49, ptr %arrayidx.i50, align 2
  %arrayidx5 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %22 to i32
  %23 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %model_data, align 4
  %or.i52 = or i32 %conv6, 512
  %call.i53 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i52) #8
  %conv.i55 = zext i8 %22 to i16
  %arrayidx.i56 = getelementptr %struct.xonar_wm87x6, ptr %24, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i55, ptr %arrayidx.i56, align 2
  %arrayidx8 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8, align 4
  %conv9 = zext i8 %27 to i32
  %28 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model_data, align 4
  %or.i58 = or i32 %conv9, 2048
  %call.i59 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i58) #8
  %conv.i61 = zext i8 %27 to i16
  %arrayidx.i62 = getelementptr %struct.xonar_wm87x6, ptr %29, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i61, ptr %arrayidx.i62, align 2
  %arrayidx11 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 5
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %32 to i32
  %33 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %model_data, align 4
  %or.i64 = or i32 %conv12, 2560
  %call.i65 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i64) #8
  %conv.i67 = zext i8 %32 to i16
  %arrayidx.i68 = getelementptr %struct.xonar_wm87x6, ptr %34, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i67, ptr %arrayidx.i68, align 2
  %arrayidx14 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 6
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14, align 2
  %conv15 = zext i8 %37 to i32
  %38 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %model_data, align 4
  %or.i70 = or i32 %conv15, 3072
  %call.i71 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i70) #8
  %conv.i73 = zext i8 %37 to i16
  %arrayidx.i74 = getelementptr %struct.xonar_wm87x6, ptr %39, i32 0, i32 2, i32 6
  %40 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i73, ptr %arrayidx.i74, align 2
  %arrayidx17 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 7
  %41 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %42 to i32
  %43 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %model_data, align 4
  %or.i76 = or i32 %conv18, 3840
  %call.i77 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef %or.i76) #8
  %conv.i79 = zext i8 %42 to i16
  %arrayidx.i80 = getelementptr %struct.xonar_wm87x6, ptr %44, i32 0, i32 2, i32 7
  %45 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i79, ptr %arrayidx.i80, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8776_hp_vol_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #2 align 64 {
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
  store i32 61, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_hp_vol_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %wm8776_regs = getelementptr inbounds %struct.xonar_wm87x6, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wm8776_regs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wm8776_regs, align 4
  %6 = and i16 %5, 127
  %and = zext i16 %6 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value1, align 8
  %arrayidx4 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4, align 2
  %10 = and i16 %9, 127
  %and6 = zext i16 %10 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and6, ptr %arrayidx8, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_hp_vol_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %wm8776_regs = getelementptr inbounds %struct.xonar_wm87x6, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %wm8776_regs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wm8776_regs, align 4
  %8 = and i16 %7, 127
  %and = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp = icmp ne i32 %5, %and
  %arrayidx6 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx8, align 2
  %13 = and i16 %12, 127
  %and10 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and10)
  %cmp11.not = icmp eq i32 %10, %and10
  %shl13 = select i1 %cmp11.not, i8 0, i8 2
  %conv14 = zext i1 %cmp to i8
  %or = or i8 %shl13, %conv14
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %10)
  %cmp20 = icmp eq i32 %5, %10
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or)
  %tobool.not = icmp eq i8 %or, 0
  br i1 %tobool.not, label %if.then.if.end60_crit_edge, label %if.then22

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then22:                                        ; preds = %if.then
  %or26 = or i32 %5, 384
  %14 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %model_data, align 4
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %16 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %function_flags.i, align 1
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %5, 1408
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %or26, 8
  %19 = trunc i32 %shr.i.i to i8
  %conv.i.i = or i8 %19, 4
  %conv1.i.i = trunc i32 %or26 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  %20 = trunc i32 %or26 to i16
  %conv10.i = and i16 %20, -257
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %15, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv10.i, ptr %arrayidx.i, align 2
  %22 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value1, align 8
  %24 = trunc i32 %23 to i16
  %conv30 = or i16 %24, 128
  %25 = ptrtoint ptr %wm8776_regs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv30, ptr %wm8776_regs, align 4
  %26 = load i32, ptr %value1, align 8
  %27 = trunc i32 %26 to i16
  %conv36 = or i16 %27, 128
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv36, ptr %arrayidx8, align 2
  br label %if.end60

if.else:                                          ; preds = %entry
  %conv39 = zext i8 %or to i32
  %and40 = and i32 %conv39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else.if.end50_crit_edge, label %if.then42

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then42:                                        ; preds = %if.else
  %and47 = shl nuw nsw i32 %conv39, 7
  %29 = and i32 %and47, 256
  %30 = xor i32 %29, 256
  %or45 = or i32 %30, %5
  %or49 = or i32 %or45, 128
  %31 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %model_data, align 4
  %function_flags.i87 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %33 = ptrtoint ptr %function_flags.i87 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %function_flags.i87, align 1
  %35 = and i8 %34, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i88 = icmp eq i8 %35, 0
  br i1 %cmp.i88, label %if.then.i90, label %if.else.i94

if.then.i90:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i89 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or49) #8
  br label %wm8776_write.exit98

if.else.i94:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i91 = lshr i32 %or45, 8
  %conv.i.i92 = trunc i32 %shr.i.i91 to i8
  %conv1.i.i93 = trunc i32 %or49 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i92, i8 noundef zeroext %conv1.i.i93) #8
  br label %wm8776_write.exit98

wm8776_write.exit98:                              ; preds = %if.else.i94, %if.then.i90
  %36 = trunc i32 %or49 to i16
  %conv10.i96 = and i16 %36, -257
  %arrayidx.i97 = getelementptr %struct.xonar_wm87x6, ptr %32, i32 0, i32 1, i32 0
  %37 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv10.i96, ptr %arrayidx.i97, align 2
  br label %if.end50

if.end50:                                         ; preds = %wm8776_write.exit98, %if.else.if.end50_crit_edge
  %and52 = and i32 %conv39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end60_crit_edge, label %if.then54

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then54:                                        ; preds = %if.end50
  %38 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6, align 4
  %or58 = or i32 %39, 384
  %40 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %model_data, align 4
  %function_flags.i100 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %42 = ptrtoint ptr %function_flags.i100 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %function_flags.i100, align 1
  %44 = and i8 %43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.i101 = icmp eq i8 %44, 0
  br i1 %cmp.i101, label %if.then.i104, label %if.else.i109

if.then.i104:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i102 = or i32 %39, 896
  %call.i.i103 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i102) #8
  br label %wm8776_write.exit113

if.else.i109:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i105 = lshr i32 %or58, 8
  %45 = trunc i32 %shr.i.i105 to i8
  %conv.i.i107 = or i8 %45, 2
  %conv1.i.i108 = trunc i32 %or58 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i107, i8 noundef zeroext %conv1.i.i108) #8
  br label %wm8776_write.exit113

wm8776_write.exit113:                             ; preds = %if.else.i109, %if.then.i104
  %46 = trunc i32 %or58 to i16
  %conv10.i111 = and i16 %46, -257
  %arrayidx.i112 = getelementptr %struct.xonar_wm87x6, ptr %41, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv10.i111, ptr %arrayidx.i112, align 2
  br label %if.end60

if.end60:                                         ; preds = %wm8776_write.exit113, %if.end50.if.end60_crit_edge, %wm8776_write.exit, %if.then.if.end60_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or)
  %cmp63 = icmp ne i8 %or, 0
  %conv64 = zext i1 %cmp63 to i32
  ret i32 %conv64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_bit_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 16
  %and2 = and i32 %shr, 255
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 %and2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv6 = zext i16 %7 to i32
  %and8 = and i32 %5, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp ne i32 %and8, 0
  %conv9 = zext i1 %cmp to i32
  %8 = lshr i32 %5, 24
  %.lobit = and i32 %8, 1
  %xor = xor i32 %.lobit, %conv9
  %value12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor, ptr %value12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_bit_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 16
  %and2 = and i32 %shr, 255
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 %and2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = trunc i32 %5 to i16
  %9 = xor i16 %8, -1
  %conv9 = and i16 %7, %9
  %value10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %10 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value10, align 8
  %12 = lshr i32 %5, 24
  %.lobit = and i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.lobit)
  %tobool14.not = icmp eq i32 %11, %.lobit
  %conv17 = or i16 %7, %8
  %reg_value.0 = select i1 %tobool14.not, i16 %conv9, i16 %conv17
  call void @__sanitizer_cov_trace_cmp2(i16 %reg_value.0, i16 %7)
  %cmp = icmp ne i16 %reg_value.0, %7
  br i1 %cmp, label %if.then24, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %entry
  %conv18 = zext i16 %reg_value.0 to i32
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %15 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %function_flags.i, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i = shl nuw nsw i32 %and2, 9
  %or.i.i = or i32 %shl.i.i, %conv18
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i22.i = shl nuw nsw i32 %shr, 1
  %shr.i.i = lshr i32 %conv18, 8
  %or.i23.i = or i32 %shr.i.i, %shl.i22.i
  %conv.i.i = trunc i32 %or.i23.i to i8
  %conv1.i.i = trunc i16 %reg_value.0 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %and2)
  %cmp2.i = icmp ult i32 %and2, 23
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.if.end26_crit_edge

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and2)
  %cmp5.i = icmp ult i32 %and2, 6
  %and8.i = and i16 %reg_value.0, -257
  %spec.select.i = select i1 %cmp5.i, i16 %and8.i, i16 %reg_value.0
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %14, i32 0, i32 1, i32 %and2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %spec.select.i, ptr %arrayidx.i, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then4.i, %if.end.i.if.end26_crit_edge, %entry.if.end26_crit_edge
  %conv22 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8776_input_vol_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #2 align 64 {
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
  store i32 165, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_input_vol_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = and i16 %5, 255
  %and = zext i16 %6 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value1, align 8
  %arrayidx4 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 15
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4, align 2
  %10 = and i16 %9, 255
  %and6 = zext i16 %10 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and6, ptr %arrayidx8, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_input_vol_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %arrayidx2 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 14
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 4
  %8 = and i16 %7, 255
  %and = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp.not = icmp eq i32 %5, %and
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 15
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx7, align 2
  %13 = and i16 %12, 255
  %and9 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and9)
  %cmp10 = icmp ne i32 %10, %and9
  %phi.cast = zext i1 %cmp10 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %14 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %or = or i32 %5, 256
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %16, i32 0, i32 1, i32 14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %or, %conv.i
  br i1 %cmp1.not.i, label %lor.end.wm8776_write_cached.exit_crit_edge, label %if.then.i

lor.end.wm8776_write_cached.exit_crit_edge:       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit

if.then.i:                                        ; preds = %lor.end
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %19 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %function_flags.i.i, align 1
  %21 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i = or i32 %5, 7424
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i = lshr i32 %or, 8
  %22 = trunc i32 %shr.i.i.i to i8
  %conv.i.i.i = or i8 %22, 28
  %conv1.i.i.i = trunc i32 %5 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv1.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %conv10.i.i = trunc i32 %or to i16
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv10.i.i, ptr %arrayidx.i, align 2
  br label %wm8776_write_cached.exit

wm8776_write_cached.exit:                         ; preds = %if.end.i.i, %lor.end.wm8776_write_cached.exit_crit_edge
  %arrayidx15 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15, align 4
  %or16 = or i32 %25, 256
  %26 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %model_data, align 4
  %arrayidx.i27 = getelementptr %struct.xonar_wm87x6, ptr %27, i32 0, i32 1, i32 15
  %28 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i27, align 2
  %conv.i28 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or16, i32 %conv.i28)
  %cmp1.not.i29 = icmp eq i32 %or16, %conv.i28
  br i1 %cmp1.not.i29, label %wm8776_write_cached.exit.wm8776_write_cached.exit46_crit_edge, label %if.then.i33

wm8776_write_cached.exit.wm8776_write_cached.exit46_crit_edge: ; preds = %wm8776_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit46

if.then.i33:                                      ; preds = %wm8776_write_cached.exit
  %function_flags.i.i31 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %30 = ptrtoint ptr %function_flags.i.i31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %function_flags.i.i31, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i.i32 = icmp eq i8 %32, 0
  br i1 %cmp.i.i32, label %if.then.i.i36, label %if.else.i.i41

if.then.i.i36:                                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i34 = or i32 %25, 7936
  %call.i.i.i35 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i34) #8
  br label %if.end.i.i42

if.else.i.i41:                                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i37 = lshr i32 %or16, 8
  %33 = trunc i32 %shr.i.i.i37 to i8
  %conv.i.i.i39 = or i8 %33, 30
  %conv1.i.i.i40 = trunc i32 %25 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i39, i8 noundef zeroext %conv1.i.i.i40) #8
  br label %if.end.i.i42

if.end.i.i42:                                     ; preds = %if.else.i.i41, %if.then.i.i36
  %conv10.i.i44 = trunc i32 %or16 to i16
  %34 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv10.i.i44, ptr %arrayidx.i27, align 2
  br label %wm8776_write_cached.exit46

wm8776_write_cached.exit46:                       ; preds = %if.end.i.i42, %wm8776_write_cached.exit.wm8776_write_cached.exit46_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_input_mux_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_input_mux_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %10 = trunc i32 %5 to i16
  br i1 %tobool.not, label %if.else13, label %if.then

if.then:                                          ; preds = %entry
  %conv3 = or i16 %7, %10
  %xor = xor i32 %5, 3
  %conv4 = zext i16 %conv3 to i32
  %and = and i32 %xor, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end18_crit_edge, label %if.then6

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = xor i16 %10, -4
  %conv9 = and i16 %conv3, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %xor)
  %cmp = icmp eq i32 %xor, 1
  %line_adcmux_control = getelementptr inbounds %struct.xonar_wm87x6, ptr %3, i32 0, i32 3
  %mic_adcmux_control = getelementptr inbounds %struct.xonar_wm87x6, ptr %3, i32 0, i32 4
  %other_ctl.0.in = select i1 %cmp, ptr %line_adcmux_control, ptr %mic_adcmux_control
  %12 = ptrtoint ptr %other_ctl.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %other_ctl.0 = load ptr, ptr %other_ctl.0.in, align 4
  %card = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %other_ctl.0, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %14, i32 noundef 1, ptr noundef %id) #8
  br label %if.end18

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = xor i16 %10, -1
  %conv17 = and i16 %7, %15
  br label %if.end18

if.end18:                                         ; preds = %if.else13, %if.then6, %if.then.if.end18_crit_edge
  %reg.0 = phi i16 [ %conv9, %if.then6 ], [ %conv3, %if.then.if.end18_crit_edge ], [ %conv17, %if.else13 ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %reg.0, i16 %17)
  %cmp23 = icmp ne i16 %reg.0, %17
  br i1 %cmp23, label %if.then26, label %if.end18.if.end32_crit_edge

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then26:                                        ; preds = %if.end18
  %and28 = shl i16 %reg.0, 6
  %18 = and i16 %and28, 64
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %18, i16 noundef zeroext 64) #8
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %21 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %function_flags.i, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i = icmp eq i8 %23, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i16 %reg.0, 10752
  %or.i.i = zext i16 %24 to i32
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i16 %reg.0, 8
  %25 = trunc i16 %shr.i.i to i8
  %conv.i.i = or i8 %25, 42
  %conv1.i.i = trunc i16 %reg.0 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %20, i32 0, i32 1, i32 21
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %reg.0, ptr %arrayidx.i, align 2
  br label %if.end32

if.end32:                                         ; preds = %wm8776_write.exit, %if.end18.if.end32_crit_edge
  %conv24 = zext i1 %cmp23 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @hpf_info.names) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hpf_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = lshr i16 %5, 8
  %.lobit = and i16 %6, 1
  %7 = xor i16 %.lobit, 1
  %8 = zext i16 %7 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, -257
  %and = zext i16 %6 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or = or i32 %and, 256
  %spec.select = select i1 %tobool.not, i32 %or, i32 %and
  %conv5 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv5)
  %cmp = icmp ne i32 %spec.select, %conv5
  br i1 %cmp, label %if.then8, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %entry
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %11 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %function_flags.i, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %spec.select, 5632
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %spec.select, 8
  %14 = trunc i32 %shr.i.i to i8
  %conv.i.i = or i8 %14, 22
  %conv1.i.i = trunc i32 %spec.select to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  %conv10.i = trunc i32 %spec.select to i16
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %10, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10.i, ptr %arrayidx.i, align 2
  br label %if.end9

if.end9:                                          ; preds = %wm8776_write.exit, %entry.if.end9_crit_edge
  %conv6 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_level_control_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @wm8776_level_control_info.names) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_level_control_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %value1, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %arrayidx4 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4, align 4
  %10 = and i16 %9, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br i1 %cmp, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %value9, align 8
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %value9, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_level_control_put(ptr nocapture noundef %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp ne i32 %7, %9
  %conv = zext i1 %cmp4 to i32
  br i1 %cmp4, label %if.then5, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %private_value, align 4
  %arrayidx9 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 17
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11, align 2
  %15 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value1, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

sw.default:                                       ; preds = %if.then5
  %18 = and i16 %14, -257
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %20, i32 0, i32 1, i32 17
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %18)
  %cmp1.not.i = icmp eq i16 %22, %18
  br i1 %cmp1.not.i, label %sw.default.sw.epilog_crit_edge, label %if.then.i

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.default
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %23 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %function_flags.i.i, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.i = icmp eq i8 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = or i16 %18, 8704
  %or.i.i.i = zext i16 %26 to i32
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i = lshr i16 %18, 8
  %27 = trunc i16 %shr.i.i.i to i8
  %conv.i.i.i = or i8 %27, 34
  %conv1.i.i.i = trunc i16 %14 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv1.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %18, ptr %arrayidx.i, align 2
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then5
  %29 = and i16 %12, -385
  %30 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %model_data, align 4
  %arrayidx.i58 = getelementptr %struct.xonar_wm87x6, ptr %31, i32 0, i32 1, i32 16
  %32 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i58, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %29)
  %cmp1.not.i60 = icmp eq i16 %33, %29
  br i1 %cmp1.not.i60, label %sw.bb.wm8776_write_cached.exit76_crit_edge, label %if.then.i64

sw.bb.wm8776_write_cached.exit76_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit76

if.then.i64:                                      ; preds = %sw.bb
  %function_flags.i.i62 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %34 = ptrtoint ptr %function_flags.i.i62 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %function_flags.i.i62, align 1
  %36 = and i8 %35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i.i63 = icmp eq i8 %36, 0
  br i1 %cmp.i.i63, label %if.then.i.i67, label %if.else.i.i72

if.then.i.i67:                                    ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #10
  %37 = or i16 %29, 8192
  %or.i.i.i65 = zext i16 %37 to i32
  %call.i.i.i66 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i65) #8
  br label %if.end.i.i73

if.else.i.i72:                                    ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i68 = lshr i16 %29, 8
  %38 = trunc i16 %shr.i.i.i68 to i8
  %conv.i.i.i70 = or i8 %38, 32
  %conv1.i.i.i71 = trunc i16 %29 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i70, i8 noundef zeroext %conv1.i.i.i71) #8
  br label %if.end.i.i73

if.end.i.i73:                                     ; preds = %if.else.i.i72, %if.then.i.i67
  %39 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %29, ptr %arrayidx.i58, align 2
  br label %wm8776_write_cached.exit76

wm8776_write_cached.exit76:                       ; preds = %if.end.i.i73, %sw.bb.wm8776_write_cached.exit76_crit_edge
  %40 = or i16 %14, 256
  %41 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %model_data, align 4
  %arrayidx.i78 = getelementptr %struct.xonar_wm87x6, ptr %42, i32 0, i32 1, i32 17
  %43 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %40)
  %cmp1.not.i80 = icmp eq i16 %44, %40
  br i1 %cmp1.not.i80, label %wm8776_write_cached.exit76.sw.epilog_crit_edge, label %if.then.i84

wm8776_write_cached.exit76.sw.epilog_crit_edge:   ; preds = %wm8776_write_cached.exit76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i84:                                      ; preds = %wm8776_write_cached.exit76
  %function_flags.i.i82 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %45 = ptrtoint ptr %function_flags.i.i82 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %function_flags.i.i82, align 1
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i.i83 = icmp eq i8 %47, 0
  br i1 %cmp.i.i83, label %if.then.i.i87, label %if.else.i.i92

if.then.i.i87:                                    ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #10
  %48 = or i16 %14, 8960
  %or.i.i.i85 = zext i16 %48 to i32
  %call.i.i.i86 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i85) #8
  br label %if.end.i.i93

if.else.i.i92:                                    ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i88 = lshr i16 %40, 8
  %49 = trunc i16 %shr.i.i.i88 to i8
  %conv.i.i.i90 = or i8 %49, 34
  %conv1.i.i.i91 = trunc i16 %14 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i90, i8 noundef zeroext %conv1.i.i.i91) #8
  br label %if.end.i.i93

if.end.i.i93:                                     ; preds = %if.else.i.i92, %if.then.i.i87
  %50 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %40, ptr %arrayidx.i78, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then5
  %51 = or i16 %12, 384
  %52 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %model_data, align 4
  %arrayidx.i98 = getelementptr %struct.xonar_wm87x6, ptr %53, i32 0, i32 1, i32 16
  %54 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i98, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %51)
  %cmp1.not.i100 = icmp eq i16 %55, %51
  br i1 %cmp1.not.i100, label %sw.bb19.wm8776_write_cached.exit116_crit_edge, label %if.then.i104

sw.bb19.wm8776_write_cached.exit116_crit_edge:    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit116

if.then.i104:                                     ; preds = %sw.bb19
  %function_flags.i.i102 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %56 = ptrtoint ptr %function_flags.i.i102 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %function_flags.i.i102, align 1
  %58 = and i8 %57, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i.i103 = icmp eq i8 %58, 0
  br i1 %cmp.i.i103, label %if.then.i.i107, label %if.else.i.i112

if.then.i.i107:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  %59 = or i16 %12, 8576
  %or.i.i.i105 = zext i16 %59 to i32
  %call.i.i.i106 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i105) #8
  br label %if.end.i.i113

if.else.i.i112:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i108 = lshr i16 %51, 8
  %60 = trunc i16 %shr.i.i.i108 to i8
  %conv.i.i.i110 = or i8 %60, 32
  %conv1.i.i.i111 = trunc i16 %51 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i110, i8 noundef zeroext %conv1.i.i.i111) #8
  br label %if.end.i.i113

if.end.i.i113:                                    ; preds = %if.else.i.i112, %if.then.i.i107
  %61 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %51, ptr %arrayidx.i98, align 2
  br label %wm8776_write_cached.exit116

wm8776_write_cached.exit116:                      ; preds = %if.end.i.i113, %sw.bb19.wm8776_write_cached.exit116_crit_edge
  %62 = or i16 %14, 256
  %63 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %model_data, align 4
  %arrayidx.i118 = getelementptr %struct.xonar_wm87x6, ptr %64, i32 0, i32 1, i32 17
  %65 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i118, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %62)
  %cmp1.not.i120 = icmp eq i16 %66, %62
  br i1 %cmp1.not.i120, label %wm8776_write_cached.exit116.sw.epilog_crit_edge, label %if.then.i124

wm8776_write_cached.exit116.sw.epilog_crit_edge:  ; preds = %wm8776_write_cached.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i124:                                     ; preds = %wm8776_write_cached.exit116
  %function_flags.i.i122 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %67 = ptrtoint ptr %function_flags.i.i122 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %function_flags.i.i122, align 1
  %69 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i.i123 = icmp eq i8 %69, 0
  br i1 %cmp.i.i123, label %if.then.i.i127, label %if.else.i.i132

if.then.i.i127:                                   ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #10
  %70 = or i16 %14, 8960
  %or.i.i.i125 = zext i16 %70 to i32
  %call.i.i.i126 = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 17, i32 noundef %or.i.i.i125) #8
  br label %if.end.i.i133

if.else.i.i132:                                   ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i128 = lshr i16 %62, 8
  %71 = trunc i16 %shr.i.i.i128 to i8
  %conv.i.i.i130 = or i8 %71, 34
  %conv1.i.i.i131 = trunc i16 %14 to i8
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i130, i8 noundef zeroext %conv1.i.i.i131) #8
  br label %if.end.i.i133

if.end.i.i133:                                    ; preds = %if.else.i.i132, %if.then.i.i127
  %72 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %62, ptr %arrayidx.i118, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i.i133, %wm8776_write_cached.exit116.sw.epilog_crit_edge, %if.end.i.i93, %wm8776_write_cached.exit76.sw.epilog_crit_edge, %if.end.i.i, %sw.default.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %sw.default.sw.epilog_crit_edge ], [ 0, %if.end.i.i ], [ 1073741824, %wm8776_write_cached.exit76.sw.epilog_crit_edge ], [ 1073741824, %if.end.i.i93 ], [ 536870912, %wm8776_write_cached.exit116.sw.epilog_crit_edge ], [ 536870912, %if.end.i.i133 ]
  %card.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %activate_control.exit.for.body_crit_edge, %sw.epilog
  %i.0137 = phi i32 [ 0, %sw.epilog ], [ %inc, %activate_control.exit.for.body_crit_edge ]
  %arrayidx27 = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 5, i32 %i.0137
  %73 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx27, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %private_value.i, align 4
  %and.i = and i32 %76, %mode.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 256, i32 0
  %access1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %74, i32 1, i32 0, i32 1
  %77 = ptrtoint ptr %access1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %access1.i, align 4
  %and2.i = and i32 %78, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %..i)
  %cmp.not.i = icmp eq i32 %and2.i, %..i
  br i1 %cmp.not.i, label %for.body.activate_control.exit_crit_edge, label %if.then3.i

for.body.activate_control.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %activate_control.exit

if.then3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i = xor i32 %78, 256
  %79 = ptrtoint ptr %access1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %xor.i, ptr %access1.i, align 4
  %80 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %74, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %81, i32 noundef 2, ptr noundef %id.i) #8
  br label %activate_control.exit

activate_control.exit:                            ; preds = %if.then3.i, %for.body.activate_control.exit_crit_edge
  %inc = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %activate_control.exit.if.end28_crit_edge, label %activate_control.exit.for.body_crit_edge

activate_control.exit.for.body_crit_edge:         ; preds = %activate_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

activate_control.exit.if.end28_crit_edge:         ; preds = %activate_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %activate_control.exit.if.end28_crit_edge, %if.end.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_field_volume_info(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %info) #7 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %value, align 8
  %5 = load i32, ptr %private_value, align 4
  %shr2 = lshr i32 %5, 12
  %and3 = and i32 %shr2, 15
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %max, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_field_volume_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, 15
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_field_volume_put(ptr nocapture noundef %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value1, align 8
  %call = tail call fastcc i32 @wm8776_field_set(ptr noundef %ctl, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_field_enum_info(ptr nocapture noundef readonly %ctl, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 12
  %conv = and i32 %shr, 15
  %shr2 = lshr i32 %1, 24
  %and3 = and i32 %shr2, 31
  %2 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and3, label %entry.cleanup_crit_edge [
    i32 17, label %entry.sw.epilog_crit_edge
    i32 18, label %sw.bb4
    i32 20, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %3 = and i32 %1, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %and10 = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %wm8776_field_enum_info.atk_alc.wm8776_field_enum_info.atk_lim = select i1 %tobool.not, ptr @wm8776_field_enum_info.atk_alc, ptr @wm8776_field_enum_info.atk_lim
  br label %sw.epilog

if.else12:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %wm8776_field_enum_info.dcy_alc.wm8776_field_enum_info.dcy_lim = select i1 %tobool.not, ptr @wm8776_field_enum_info.dcy_alc, ptr @wm8776_field_enum_info.dcy_lim
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.else12, %if.then, %entry.sw.epilog_crit_edge
  %names.0 = phi ptr [ @wm8776_field_enum_info.tranwin, %sw.bb20 ], [ @wm8776_field_enum_info.hld, %entry.sw.epilog_crit_edge ], [ %wm8776_field_enum_info.atk_alc.wm8776_field_enum_info.atk_lim, %if.then ], [ %wm8776_field_enum_info.dcy_alc.wm8776_field_enum_info.dcy_lim, %if.else12 ]
  %add = add nuw nsw i32 %conv, 1
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef %add, ptr noundef nonnull %names.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8776_field_enum_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, 15
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8776_field_enum_put(ptr nocapture noundef %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value1, align 8
  %call = tail call fastcc i32 @wm8776_field_set(ptr noundef %ctl, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8776_field_set(ptr nocapture noundef %ctl, i32 noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 8
  %conv = and i32 %shr, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %value)
  %cmp = icmp ugt i32 %conv, %value
  %shr2 = lshr i32 %1, 12
  %conv4 = and i32 %shr2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %value)
  %cmp8 = icmp ult i32 %conv4, %value
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and11 = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %value)
  %cmp12 = icmp ne i32 %and11, %value
  %conv13 = zext i1 %cmp12 to i32
  br i1 %cmp12, label %if.then14, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.end
  %and16 = and i32 %5, -16
  %or = or i32 %and16, %value
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %private_value, align 4
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %10, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 4
  %13 = and i16 %12, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i = icmp eq i16 %13, 0
  %..i = select i1 %cmp.i, i32 1073741824, i32 536870912
  %and2.i = and i32 %..i, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then14.if.end18_crit_edge, label %if.end4.i

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end4.i:                                        ; preds = %if.then14
  %and6.i = and i32 %value, 15
  %shr15.i = lshr i32 %or, 16
  %conv17.i = and i32 %shr15.i, 15
  %shr19.i = lshr i32 %or, 20
  %conv21.i = and i32 %shr19.i, 15
  %shr23.i = lshr i32 %or, 24
  %and24.i = and i32 %shr23.i, 31
  %14 = and i32 %or, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not.i = icmp eq i32 %14, 0
  %shr11.i = lshr i32 %or, 12
  %conv13.i = and i32 %shr11.i, 15
  %shr.i = lshr i32 %or, 8
  %conv9.i = and i32 %shr.i, 15
  %sub.neg.i = sub nsw i32 %conv9.i, %and6.i
  %sub33.i = add nsw i32 %sub.neg.i, %conv13.i
  %value.0.i = select i1 %tobool28.not.i, i32 %and6.i, i32 %sub33.i
  %arrayidx36.i = getelementptr %struct.xonar_wm87x6, ptr %10, i32 0, i32 1, i32 %and24.i
  %15 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx36.i, align 2
  %shl.i = shl nuw nsw i32 %conv17.i, %conv21.i
  %17 = trunc i32 %shl.i to i16
  %18 = xor i16 %17, -1
  %conv41.i = and i16 %16, %18
  %shl43.i = shl nsw i32 %value.0.i, %conv21.i
  %19 = trunc i32 %shl43.i to i16
  %conv45.i = or i16 %conv41.i, %19
  %conv46.i = zext i16 %conv45.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %and24.i)
  %cmp.i.i = icmp ult i32 %and24.i, 23
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv45.i)
  %cmp1.not.i.i = icmp eq i16 %16, %conv45.i
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp1.not.i.i, i1 false
  br i1 %or.cond.i, label %if.end4.i.if.end18_crit_edge, label %if.then.i.i

if.end4.i.if.end18_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then.i.i:                                      ; preds = %if.end4.i
  %function_flags.i.i.i = getelementptr inbounds %struct.oxygen, ptr %8, i32 0, i32 28, i32 28
  %20 = ptrtoint ptr %function_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %function_flags.i.i.i, align 1
  %22 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i.i.i = icmp eq i8 %22, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i.i.i = shl nuw nsw i32 %and24.i, 9
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %conv46.i
  %call.i.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %8, i8 noundef zeroext 17, i32 noundef %or.i.i.i.i) #8
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i22.i.i.i = shl nuw nsw i32 %and24.i, 1
  %shr.i.i.i.i = lshr i32 %conv46.i, 8
  %or.i23.i.i.i = or i32 %shr.i.i.i.i, %shl.i22.i.i.i
  %conv.i.i.i.i = trunc i32 %or.i23.i.i.i to i8
  %conv1.i.i.i.i = trunc i16 %conv45.i to i8
  tail call void @oxygen_write_i2c(ptr noundef %8, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext %conv1.i.i.i.i) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  br i1 %cmp.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end18_crit_edge

if.end.i.i.i.if.end18_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and24.i)
  %cmp5.i.i.i = icmp ult i32 %and24.i, 6
  %and8.i.i.i = and i16 %conv45.i, -257
  %spec.select.i.i.i = select i1 %cmp5.i.i.i, i16 %and8.i.i.i, i16 %conv45.i
  %23 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %spec.select.i.i.i, ptr %arrayidx36.i, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end18_crit_edge, %if.end4.i.if.end18_crit_edge, %if.then14.if.end18_crit_edge, %if.end.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv13, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_disable_output(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_wm8776_volume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %dac_volume = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 9
  %2 = ptrtoint ptr %dac_volume to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_volume, align 4
  %conv = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp = icmp eq i8 %3, %5
  %arrayidx8 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  %8 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp10.not = icmp eq i16 %7, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then.if.then20_crit_edge

if.then.if.then20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx16 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %8)
  %cmp18.not = icmp eq i16 %10, %8
  br i1 %cmp18.not, label %lor.lhs.false.if.end74_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false.if.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then.if.then20_crit_edge
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %11 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %function_flags.i, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %conv, 2816
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 11, i8 noundef zeroext %3) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %8, ptr %arrayidx.i, align 2
  %15 = ptrtoint ptr %dac_volume to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dac_volume, align 4
  %conv26 = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv26, ptr %arrayidx8, align 2
  %18 = load i8, ptr %dac_volume, align 4
  %conv31 = zext i8 %18 to i16
  %arrayidx33 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv31, ptr %arrayidx33, align 4
  br label %if.end74

if.else:                                          ; preds = %entry
  %20 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %20)
  %cmp49.not = icmp eq i16 %7, %20
  br i1 %cmp10.not, label %if.else.if.end64_crit_edge, label %if.then56

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then56:                                        ; preds = %if.else
  %cond = select i1 %cmp49.not, i32 256, i32 0
  %function_flags.i98 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %21 = ptrtoint ptr %function_flags.i98 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %function_flags.i98, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i99 = icmp eq i8 %23, 0
  br i1 %cmp.i99, label %if.then.i102, label %if.else.i107

if.then.i102:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %or63 = or i32 %cond, %conv
  %or.i.i100 = or i32 %or63, 1536
  %call.i.i101 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i100) #8
  br label %wm8776_write.exit111

if.else.i107:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i103 = lshr exact i32 %cond, 8
  %24 = trunc i32 %shr.i.i103 to i8
  %conv.i.i105 = or i8 %24, 6
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i105, i8 noundef zeroext %3) #8
  br label %wm8776_write.exit111

wm8776_write.exit111:                             ; preds = %if.else.i107, %if.then.i102
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %8, ptr %arrayidx8, align 2
  br label %if.end64

if.end64:                                         ; preds = %wm8776_write.exit111, %if.else.if.end64_crit_edge
  br i1 %cmp49.not, label %if.end64.if.end74_crit_edge, label %if.then68

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then68:                                        ; preds = %if.end64
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2, align 1
  %28 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model_data, align 4
  %function_flags.i113 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %30 = ptrtoint ptr %function_flags.i113 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %function_flags.i113, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i114 = icmp eq i8 %32, 0
  br i1 %cmp.i114, label %if.then.i117, label %if.else.i122

if.then.i117:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %conv71 = zext i8 %27 to i32
  %or.i.i115 = or i32 %conv71, 2304
  %call.i.i116 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i115) #8
  br label %wm8776_write.exit126

if.else.i122:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext %27) #8
  br label %wm8776_write.exit126

wm8776_write.exit126:                             ; preds = %if.else.i122, %if.then.i117
  %conv10.i124 = zext i8 %27 to i16
  %arrayidx.i125 = getelementptr %struct.xonar_wm87x6, ptr %29, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv10.i124, ptr %arrayidx.i125, align 2
  br label %if.end74

if.end74:                                         ; preds = %wm8776_write.exit126, %if.end64.if.end74_crit_edge, %wm8776_write.exit, %lor.lhs.false.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_wm8776_mute(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %cond = zext i1 %tobool.not to i32
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_wm87x6, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %6 = zext i1 %tobool.not to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %6)
  %cmp1.not.i = icmp eq i16 %5, %6
  br i1 %cmp1.not.i, label %entry.wm8776_write_cached.exit_crit_edge, label %if.then.i

entry.wm8776_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_write_cached.exit

if.then.i:                                        ; preds = %entry
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %7 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %function_flags.i.i, align 1
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i = or i32 %cond, 4096
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef %or.i.i.i) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i = zext i1 %tobool.not to i8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 16, i8 noundef zeroext %conv1.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %6, ptr %arrayidx.i, align 2
  br label %wm8776_write_cached.exit

wm8776_write_cached.exit:                         ; preds = %if.end.i.i, %entry.wm8776_write_cached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_wm8776_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.100) #8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.98, i32 noundef %conv) #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %arrayidx.1 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.98, i32 noundef %conv.1) #8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %arrayidx.2 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.98, i32 noundef %conv.2) #8
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx.3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.98, i32 noundef %conv.3) #8
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx.4 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.98, i32 noundef %conv.4) #8
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx.5 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.98, i32 noundef %conv.5) #8
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %arrayidx.6 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.98, i32 noundef %conv.6) #8
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx.7 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.98, i32 noundef %conv.7) #8
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx.8 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.98, i32 noundef %conv.8) #8
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %arrayidx.9 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 9
  %42 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.98, i32 noundef %conv.9) #8
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %arrayidx.10 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 10
  %46 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.98, i32 noundef %conv.10) #8
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %arrayidx.11 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 11
  %50 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.98, i32 noundef %conv.11) #8
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %arrayidx.12 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 12
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.98, i32 noundef %conv.12) #8
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %arrayidx.13 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 13
  %58 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.98, i32 noundef %conv.13) #8
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %arrayidx.14 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 14
  %62 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.98, i32 noundef %conv.14) #8
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %arrayidx.15 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 15
  %66 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.98, i32 noundef %conv.15) #8
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.101) #8
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %arrayidx10 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 16
  %72 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.98, i32 noundef %conv11) #8
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer, align 4
  %arrayidx10.1 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 17
  %76 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx10.1, align 2
  %conv11.1 = zext i16 %77 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull @.str.98, i32 noundef %conv11.1) #8
  %78 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer, align 4
  %arrayidx10.2 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 18
  %80 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx10.2, align 2
  %conv11.2 = zext i16 %81 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull @.str.98, i32 noundef %conv11.2) #8
  %82 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer, align 4
  %arrayidx10.3 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 19
  %84 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx10.3, align 2
  %conv11.3 = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %83, ptr noundef nonnull @.str.98, i32 noundef %conv11.3) #8
  %86 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer, align 4
  %arrayidx10.4 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 20
  %88 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx10.4, align 2
  %conv11.4 = zext i16 %89 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %87, ptr noundef nonnull @.str.98, i32 noundef %conv11.4) #8
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  %arrayidx10.5 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 21
  %92 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx10.5, align 2
  %conv11.5 = zext i16 %93 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull @.str.98, i32 noundef %conv11.5) #8
  %94 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buffer, align 4
  %arrayidx10.6 = getelementptr %struct.xonar_wm87x6, ptr %1, i32 0, i32 1, i32 22
  %96 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx10.6, align 2
  %conv11.6 = zext i16 %97 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull @.str.98, i32 noundef %conv11.6) #8
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull @.str.99) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_slim_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 300, ptr %1, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %output_enable_bit, align 4
  %4 = load ptr, ptr %model_data, align 4
  %wm8776_regs.i = getelementptr inbounds %struct.xonar_wm87x6, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wm8776_regs.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 189, ptr %wm8776_regs.i, align 4
  %arrayidx2.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 189, ptr %arrayidx2.i, align 2
  %arrayidx4.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 11
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 97, ptr %arrayidx4.i, align 2
  %arrayidx6.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 34, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 13
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 14
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 421, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 15
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 421, ptr %arrayidx12.i, align 2
  %arrayidx14.i = getelementptr %struct.xonar_wm87x6, ptr %4, i32 0, i32 1, i32 21
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %arrayidx14.i, align 2
  tail call fastcc void @wm8776_registers_init(ptr noundef %chip) #8
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 193, i16 noundef zeroext 193) #8
  %hdmi = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 7
  tail call void @xonar_hdmi_init(ptr noundef %chip, ptr noundef %hdmi) #8
  tail call void @xonar_enable_output(ptr noundef %chip) #8
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %14, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_hdav_slim_mixer_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hdav_slim_controls, ptr noundef %chip) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 1), ptr noundef %chip) #8
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.end.1.cleanup_crit_edge, label %for.cond.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 2), ptr noundef %chip) #8
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call1.2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef nonnull %call.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %if.end.2.cleanup_crit_edge, label %for.cond.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 3), ptr noundef %chip) #8
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call1.3 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef nonnull %call.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %if.end.3.cleanup_crit_edge, label %for.cond.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %if.end.3
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 4), ptr noundef %chip) #8
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call1.4 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef nonnull %call.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %if.end.4.cleanup_crit_edge, label %for.cond.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %if.end.4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 5), ptr noundef %chip) #8
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %for.cond.4.cleanup_crit_edge, label %if.end.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.5:                                         ; preds = %for.cond.4
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call1.5 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef nonnull %call.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %if.end.5.cleanup_crit_edge, label %for.cond.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %if.end.5
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 6), ptr noundef %chip) #8
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %if.end.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.6:                                         ; preds = %for.cond.5
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call1.6 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef nonnull %call.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %cmp2.6 = icmp slt i32 %call1.6, 0
  br i1 %cmp2.6, label %if.end.6.cleanup_crit_edge, label %for.cond.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %if.end.6
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([8 x %struct.snd_kcontrol_new], ptr @hdav_slim_controls, i32 0, i32 7), ptr noundef %chip) #8
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %if.end.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.7:                                         ; preds = %for.cond.6
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call1.7 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef nonnull %call.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %cmp2.7 = icmp slt i32 %call1.7, 0
  br i1 %cmp2.7, label %if.end.7.cleanup_crit_edge, label %for.cond.7

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %if.end.7
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %model_data.i, align 4
  br label %for.body.i

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.cond.7
  %i.017.i = phi i32 [ 0, %for.cond.7 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [13 x %struct.snd_kcontrol_new], ptr @lc_controls, i32 0, i32 %i.017.i
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef %chip) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr %struct.xonar_wm87x6, ptr %15, i32 0, i32 5, i32 %i.017.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ %call1.1, %if.end.1.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ %call1.2, %if.end.2.cleanup_crit_edge ], [ -12, %for.cond.2.cleanup_crit_edge ], [ %call1.3, %if.end.3.cleanup_crit_edge ], [ -12, %for.cond.3.cleanup_crit_edge ], [ %call1.4, %if.end.4.cleanup_crit_edge ], [ -12, %for.cond.4.cleanup_crit_edge ], [ %call1.5, %if.end.5.cleanup_crit_edge ], [ -12, %for.cond.5.cleanup_crit_edge ], [ %call1.6, %if.end.6.cleanup_crit_edge ], [ -12, %for.cond.6.cleanup_crit_edge ], [ %call1.7, %if.end.7.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_slim_cleanup(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_hdmi_cleanup(ptr noundef %chip) #8
  tail call void @xonar_disable_output(ptr noundef %chip) #8
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %0 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_flags.i, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp eq i8 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 11776) #8
  br label %wm8776_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  br label %wm8776_write.exit

wm8776_write.exit:                                ; preds = %if.else.i, %if.then.i
  tail call void @msleep(i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_slim_suspend(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_hdmi_cleanup(ptr noundef %chip) #8
  tail call void @xonar_disable_output(ptr noundef %chip) #8
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %0 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_flags.i.i, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i.i = icmp eq i8 %2, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 17, i32 noundef 11776) #8
  br label %xonar_hdav_slim_cleanup.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  br label %xonar_hdav_slim_cleanup.exit

xonar_hdav_slim_cleanup.exit:                     ; preds = %if.else.i.i, %if.then.i.i
  tail call void @msleep(i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_slim_resume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call fastcc void @wm8776_registers_init(ptr noundef %chip)
  %hdmi = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 7
  tail call void @xonar_hdmi_resume(ptr noundef %chip, ptr noundef %hdmi) #8
  tail call void @xonar_enable_output(ptr noundef %chip) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_slim_hardware_filter(i32 noundef %channel, ptr noundef %hardware) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  br i1 %cmp.i, label %if.then.i, label %entry.wm8776_adc_hardware_filter.exit_crit_edge

entry.wm8776_adc_hardware_filter.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8776_adc_hardware_filter.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rates.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 2
  %0 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2016, ptr %rates.i, align 8
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 4
  %1 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 96000, ptr %rate_max.i, align 8
  br label %wm8776_adc_hardware_filter.exit

wm8776_adc_hardware_filter.exit:                  ; preds = %if.then.i, %entry.wm8776_adc_hardware_filter.exit_crit_edge
  tail call void @xonar_hdmi_pcm_hardware_filter(i32 noundef %channel, ptr noundef %hardware) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_hdav_slim_dac_params(ptr noundef %chip, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %hdmi = getelementptr inbounds %struct.xonar_wm87x6, ptr %1, i32 0, i32 7
  tail call void @xonar_set_hdmi_params(ptr noundef %chip, ptr noundef %hdmi, ptr noundef %params) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_uart_input(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_put(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_resume(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_pcm_hardware_filter(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_set_hdmi_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1320, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1324, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1249, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1250, i32 10}
!8 = !{ptr @model_xonar_ds, !9, !"model_xonar_ds", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1248, i32 34}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 279, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 283, i32 32}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 284, i32 32}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1191, i32 29}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1193, i32 34}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1015, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1021, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1025, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1047, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1049, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1053, i32 11}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1060, i32 11}
!34 = !{ptr @ds_controls, !35, !"ds_controls", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1012, i32 38}
!36 = !{ptr @wm8776_hp_db_scale, !37, !"wm8776_hp_db_scale", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1005, i32 14}
!38 = !{ptr @wm8776_adc_db_scale, !39, !"wm8776_adc_db_scale", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1004, i32 14}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 936, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 936, i32 11}
!44 = !{ptr @hpf_info.names, !45, !"names", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 935, i32 27}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 850, i32 11}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 850, i32 27}
!50 = !{ptr @wm8776_level_control_info.names, !51, !"names", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 849, i32 27}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1115, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1118, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1121, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1124, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1127, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1131, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1134, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1137, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1140, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1143, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1146, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1149, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1152, i32 2}
!78 = !{ptr @lc_controls, !79, !"lc_controls", i1 false, i1 false}
!79 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1114, i32 38}
!80 = !{ptr @wm8776_lct_db_scale, !81, !"wm8776_lct_db_scale", i1 false, i1 false}
!81 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1006, i32 14}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 539, i32 3}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 539, i32 11}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 539, i32 22}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 539, i32 33}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 540, i32 3}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 540, i32 14}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 540, i32 25}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 540, i32 36}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 541, i32 3}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 541, i32 13}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 541, i32 23}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 541, i32 33}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 542, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 542, i32 13}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 542, i32 23}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 542, i32 33}
!114 = !{ptr @wm8776_field_enum_info.hld, !115, !"hld", i1 false, i1 false}
!115 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 538, i32 27}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 545, i32 3}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 545, i32 14}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 545, i32 24}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 545, i32 32}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 546, i32 3}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 546, i32 11}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 546, i32 19}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 546, i32 28}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 547, i32 3}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 547, i32 12}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 547, i32 22}
!138 = !{ptr @wm8776_field_enum_info.atk_lim, !139, !"atk_lim", i1 false, i1 false}
!139 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 544, i32 27}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 550, i32 3}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 550, i32 14}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 550, i32 25}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 550, i32 36}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 551, i32 3}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 551, i32 13}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 551, i32 23}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 551, i32 33}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 552, i32 3}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 552, i32 13}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 552, i32 22}
!162 = !{ptr @wm8776_field_enum_info.atk_alc, !163, !"atk_alc", i1 false, i1 false}
!163 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 549, i32 27}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 555, i32 3}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 555, i32 13}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 555, i32 23}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 555, i32 33}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 556, i32 3}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 556, i32 14}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 556, i32 25}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 556, i32 36}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 557, i32 3}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 557, i32 13}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 557, i32 23}
!186 = !{ptr @wm8776_field_enum_info.dcy_lim, !187, !"dcy_lim", i1 false, i1 false}
!187 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 554, i32 27}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 560, i32 3}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 560, i32 14}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 560, i32 35}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 561, i32 3}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 561, i32 13}
!198 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 561, i32 23}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 561, i32 33}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 562, i32 3}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 562, i32 13}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 562, i32 23}
!208 = !{ptr @wm8776_field_enum_info.dcy_alc, !209, !"dcy_alc", i1 false, i1 false}
!209 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 559, i32 27}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 565, i32 3}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 565, i32 11}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 565, i32 22}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 565, i32 32}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 566, i32 3}
!220 = !{ptr @wm8776_field_enum_info.tranwin, !221, !"tranwin", i1 false, i1 false}
!221 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 564, i32 27}
!222 = !{ptr @wm8776_maxatten_lim_db_scale, !223, !"wm8776_maxatten_lim_db_scale", i1 false, i1 false}
!223 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1009, i32 14}
!224 = !{ptr @wm8776_maxgain_db_scale, !225, !"wm8776_maxgain_db_scale", i1 false, i1 false}
!225 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1007, i32 14}
!226 = !{ptr @wm8776_maxatten_alc_db_scale, !227, !"wm8776_maxatten_alc_db_scale", i1 false, i1 false}
!227 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1010, i32 14}
!228 = !{ptr @wm8776_ngth_db_scale, !229, !"wm8776_ngth_db_scale", i1 false, i1 false}
!229 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1008, i32 14}
!230 = !{ptr @update_wm87x6_volume.wm8766_regs, !231, !"wm8766_regs", i1 false, i1 false}
!231 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 422, i32 18}
!232 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1242, i32 2}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1244, i32 3}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1245, i32 2}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1226, i32 2}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1229, i32 2}
!242 = !{ptr @wm87x6_dac_db_scale, !243, !"wm87x6_dac_db_scale", i1 false, i1 false}
!243 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1003, i32 14}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1282, i32 15}
!246 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1283, i32 14}
!248 = !{ptr @model_xonar_hdav_slim, !249, !"model_xonar_hdav_slim", i1 false, i1 false}
!249 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1281, i32 34}
!250 = !{ptr @.str.104, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1070, i32 11}
!252 = !{ptr @hdav_slim_controls, !253, !"hdav_slim_controls", i1 false, i1 false}
!253 = !{!"../sound/pci/oxygen/xonar_wm87x6.c", i32 1067, i32 38}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
