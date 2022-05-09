; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_pcm179x.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_pcm179x.c"
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.xonar_pcm179x = type { %struct.xonar_generic, i32, [4 x [5 x i8]], i32, i8, i8, i8, i8, [31 x i8], i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.xonar_hdav = type { %struct.xonar_pcm179x, %struct.xonar_hdmi }
%struct.xonar_hdmi = type { [5 x i8] }

@model_xonar_d2 = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str.11, ptr @.str.12, ptr @xonar_d2_init, ptr @xonar_d2_control_filter, ptr @xonar_d2_mixer_init, ptr @xonar_d2_cleanup, ptr @xonar_d2_suspend, ptr @xonar_d2_resume, ptr null, ptr @set_pcm1796_params, ptr @xonar_set_cs53x1_params, ptr @update_pcm1796_volume, ptr @update_pcm1796_mute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dump_pcm1796_registers, ptr @pcm1796_db_scale, i32 76, i32 14501, i8 8, i8 8, i8 -121, i8 -1, i8 64, i8 -128, i8 2, i8 1, i16 0, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar D2\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Xonar D2X\00", [22 x i8] zeroinitializer }, align 32
@model_xonar_hdav = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str.11, ptr @.str.12, ptr @xonar_hdav_init, ptr null, ptr @xonar_hdav_mixer_init, ptr @xonar_hdav_cleanup, ptr @xonar_hdav_suspend, ptr @xonar_hdav_resume, ptr @xonar_hdmi_pcm_hardware_filter, ptr @set_hdav_params, ptr @xonar_set_cs53x1_params, ptr @update_pcm1796_volume, ptr @update_pcm1796_mute, ptr null, ptr null, ptr null, ptr @xonar_hdmi_uart_input, ptr @xonar_line_mic_ac97_switch, ptr @dump_pcm1796_registers, ptr @pcm1796_db_scale, i32 84, i32 165, i8 8, i8 2, i8 -121, i8 -1, i8 64, i8 64, i8 2, i8 1, i16 0, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Xonar HDAV1.3\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Xonar HDAV1.3+H6\00", [47 x i8] zeroinitializer }, align 32
@model_xonar_st = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str.25, ptr @.str.12, ptr @xonar_st_init, ptr null, ptr @xonar_st_mixer_init, ptr @xonar_st_cleanup, ptr @xonar_st_suspend, ptr @xonar_st_resume, ptr null, ptr @set_st_params, ptr @xonar_set_cs53x1_params, ptr @update_pcm1796_volume, ptr @update_pcm1796_mute, ptr null, ptr null, ptr null, ptr null, ptr @xonar_line_mic_ac97_switch, ptr @dump_st_registers, ptr @pcm1796_db_scale, i32 76, i32 16549, i8 2, i8 2, i8 -121, i8 -1, i8 0, i8 64, i8 2, i8 1, i16 0, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar ST\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Xonar ST+H6\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Xonar STX\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Xonar STX II\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Xonar STX II+H6\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Xonar Xense\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AV100\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asus Virtuoso 200\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AV200\00", [26 x i8] zeroinitializer }, align 32
@pcm1796_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6000, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM1796\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS5381\00", [25 x i8] zeroinitializer }, align 32
@pcm1796_write_spi.codec_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\04", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CD Capture \00", [20 x i8] zeroinitializer }, align 32
@alt_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @xonar_gpio_bit_switch_get, ptr @xonar_gpio_bit_switch_put, %union.anon.85 zeroinitializer, i32 128 }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Loopback Switch\00", [41 x i8] zeroinitializer }, align 32
@rolloff_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @rolloff_info, ptr @rolloff_get, ptr @rolloff_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@deemph_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @deemph_get, ptr @deemph_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC Filter Playback Enum\00", [39 x i8] zeroinitializer }, align 32
@rolloff_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sharp Roll-off\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Slow Roll-off\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"De-emphasis Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0APCM1796 %u:\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hdav_hdmi_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @xonar_gpio_bit_switch_get, ptr @xonar_gpio_bit_switch_put, %union.anon.85 zeroinitializer, i32 65537 }, [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asus Virtuoso 100\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS2000\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCM1792A\00", [23 x i8] zeroinitializer }, align 32
@st_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @st_output_switch_info, ptr @st_output_switch_get, ptr @st_output_switch_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @st_hp_volume_offset_info, ptr @st_hp_volume_offset_get, ptr @st_hp_volume_offset_put, %union.anon.85 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Analog Output\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Headphones Impedance Playback Enum\00", [61 x i8] zeroinitializer }, align 32
@st_output_switch_info.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Headphones\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FP Headphones\00", [18 x i8] zeroinitializer }, align 32
@st_hp_volume_offset_info.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"< 32 ohms\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"32-64 ohms\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"64-300 ohms\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"300-600 ohms\00", [19 x i8] zeroinitializer }, align 32
@st_hp_volume_offset_put.offsets = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DC\E8\F4\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0ACS2000:\0A00:   \00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A10:\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Master Playback \00", [47 x i8] zeroinitializer }, align 32
@xense_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @st_output_switch_info, ptr @xense_output_switch_get, ptr @xense_output_switch_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @st_hp_volume_offset_info, ptr @st_hp_volume_offset_get, ptr @st_hp_volume_offset_put, %union.anon.85 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 33385, i64 33463, i64 33556, i64 33628, i64 33629, i64 33832, i64 34292]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 176400]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"model_xonar_d2\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1173, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1281, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1285, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"model_xonar_hdav\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1209, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1293, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1296, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"model_xonar_st\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1243, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1307, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1310, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1321, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1331, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1334, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1346, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1347, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1174, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1175, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"pcm1796_db_scale\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1038, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 352, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 353, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [10 x i8] c"codec_map\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 236, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1042, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"alt_switch\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 725, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 727, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"rolloff_control\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 781, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"deemph_control\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 824, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 783, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 737, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 738, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 738, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 826, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1141, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1143, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1146, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"hdav_hdmi_control\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 832, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 834, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1244, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 479, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 428, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"st_controls\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 948, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 951, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 958, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 844, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 845, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 845, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 845, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 899, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 900, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 900, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 900, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 900, i32 45 }
@___asan_gen_.194 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 929, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1156, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1159, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1050, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"xense_controls\00", align 1
@___asan_gen_.207 = private constant [36 x i8] c"../sound/pci/oxygen/xonar_pcm179x.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1009, i32 38 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @model_xonar_d2, ptr @.str, ptr @.str.1, ptr @model_xonar_hdav, ptr @.str.2, ptr @.str.3, ptr @model_xonar_st, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @pcm1796_db_scale, ptr @.str.13, ptr @.str.14, ptr @pcm1796_write_spi.codec_map, ptr @.str.15, ptr @alt_switch, ptr @.str.16, ptr @rolloff_control, ptr @deemph_control, ptr @.str.17, ptr @rolloff_info.names, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @hdav_hdmi_control, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @st_controls, ptr @.str.28, ptr @.str.29, ptr @st_output_switch_info.names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @st_hp_volume_offset_info.names, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @st_hp_volume_offset_put.offsets, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @xense_controls], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_d2 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_hdav to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_st to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1796_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1796_write_spi.codec_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deemph_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdav_hdmi_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_output_switch_info.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_hp_volume_offset_info.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_hp_volume_offset_put.offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xense_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_xonar_pcm179x_model(ptr noundef %chip, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdevice, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 33385, label %sw.bb
    i32 33463, label %sw.bb2
    i32 33556, label %sw.bb7
    i32 33629, label %sw.bb16
    i32 33628, label %sw.bb35
    i32 34292, label %sw.bb43
    i32 33832, label %sw.bb67
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %model = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %3 = call ptr @memcpy(ptr %model, ptr @model_xonar_d2, i32 104)
  %4 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %model, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %model3 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %5 = call ptr @memcpy(ptr %model3, ptr @model_xonar_d2, i32 104)
  %6 = ptrtoint ptr %model3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %model3, align 4
  %init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xonar_d2x_init, ptr %init, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %model8 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %8 = call ptr @memcpy(ptr %model8, ptr @model_xonar_hdav, i32 104)
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 0, i16 noundef zeroext 48) #6
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 166) #6
  %9 = and i16 %call, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cond79 = icmp eq i16 %9, 0
  br i1 %cond79, label %sw.bb11, label %sw.default

sw.default:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %model8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.2, ptr %model8, align 4
  br label %return

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %model8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.3, ptr %model8, align 4
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %12 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %dac_channels_mixer, align 1
  %dac_mclks = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 29
  %13 = ptrtoint ptr %dac_mclks to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dac_mclks, align 2
  br label %return

sw.bb16:                                          ; preds = %entry
  %model17 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %14 = call ptr @memcpy(ptr %model17, ptr @model_xonar_st, i32 104)
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 0, i16 noundef zeroext 48) #6
  %call18 = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 166) #6
  %15 = and i16 %call18, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cond78 = icmp eq i16 %15, 0
  br i1 %cond78, label %sw.bb24, label %sw.default21

sw.default21:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %model17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.4, ptr %model17, align 4
  br label %return

sw.bb24:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %model17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.5, ptr %model17, align 4
  %control_filter = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 4
  %18 = ptrtoint ptr %control_filter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xonar_st_h6_control_filter, ptr %control_filter, align 4
  %dac_channels_pcm = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %19 = ptrtoint ptr %dac_channels_pcm to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %dac_channels_pcm, align 4
  %dac_channels_mixer30 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %20 = ptrtoint ptr %dac_channels_mixer30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %dac_channels_mixer30, align 1
  %dac_volume_min = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 25
  %21 = ptrtoint ptr %dac_volume_min to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dac_volume_min, align 2
  %dac_mclks33 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 29
  %22 = ptrtoint ptr %dac_mclks33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dac_mclks33, align 2
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %model36 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %23 = call ptr @memcpy(ptr %model36, ptr @model_xonar_st, i32 104)
  %24 = ptrtoint ptr %model36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.6, ptr %model36, align 4
  %init40 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %25 = ptrtoint ptr %init40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xonar_stx_init, ptr %init40, align 4
  %resume = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %26 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xonar_stx_resume, ptr %resume, align 4
  %set_dac_params = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 10
  %27 = ptrtoint ptr %set_dac_params to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @set_pcm1796_params, ptr %set_dac_params, align 4
  br label %return

sw.bb43:                                          ; preds = %entry
  %model44 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %28 = call ptr @memcpy(ptr %model44, ptr @model_xonar_st, i32 104)
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 0, i16 noundef zeroext 48) #6
  %call45 = tail call zeroext i16 @oxygen_read16(ptr noundef %chip, i32 noundef 166) #6
  %29 = and i16 %call45, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cond = icmp eq i16 %29, 0
  br i1 %cond, label %sw.bb51, label %sw.default48

sw.default48:                                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %model44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.7, ptr %model44, align 4
  br label %sw.epilog60

sw.bb51:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %model44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.8, ptr %model44, align 4
  %dac_channels_pcm55 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %32 = ptrtoint ptr %dac_channels_pcm55 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %dac_channels_pcm55, align 4
  %dac_channels_mixer57 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %33 = ptrtoint ptr %dac_channels_mixer57 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %dac_channels_mixer57, align 1
  %dac_mclks59 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 29
  %34 = ptrtoint ptr %dac_mclks59 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %dac_mclks59, align 2
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.bb51, %sw.default48
  %init62 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %35 = ptrtoint ptr %init62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xonar_stx_init, ptr %init62, align 4
  %resume64 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %36 = ptrtoint ptr %resume64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xonar_stx_resume, ptr %resume64, align 4
  %set_dac_params66 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 10
  %37 = ptrtoint ptr %set_dac_params66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @set_pcm1796_params, ptr %set_dac_params66, align 4
  br label %return

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %model68 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %38 = call ptr @memcpy(ptr %model68, ptr @model_xonar_st, i32 104)
  %39 = ptrtoint ptr %model68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.9, ptr %model68, align 4
  %chip72 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 2
  %40 = ptrtoint ptr %chip72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.10, ptr %chip72, align 4
  %init74 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %41 = ptrtoint ptr %init74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xonar_xense_init, ptr %init74, align 4
  %mixer_init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %42 = ptrtoint ptr %mixer_init to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xonar_xense_mixer_init, ptr %mixer_init, align 4
  br label %return

return:                                           ; preds = %sw.bb67, %sw.epilog60, %sw.bb35, %sw.bb24, %sw.default21, %sw.bb11, %sw.default, %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.default21 ], [ 0, %sw.bb24 ], [ 0, %sw.default ], [ 0, %sw.bb11 ], [ 0, %sw.bb67 ], [ 0, %sw.epilog60 ], [ 0, %sw.bb35 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d2x_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -90, ptr %ext_power_reg, align 2
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -86, ptr %ext_power_int_reg, align 1
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %ext_power_bit, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 0, i16 noundef zeroext 32) #6
  tail call void @xonar_init_ext_power(ptr noundef %chip) #6
  tail call void @xonar_d2_init(ptr noundef %chip)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xonar_st_h6_control_filter(ptr nocapture noundef readonly %template) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(17) @.str.39, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_stx_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 148, i16 noundef zeroext 64) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 800, ptr %1, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -92, ptr %ext_power_reg, align 2
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -91, ptr %ext_power_int_reg, align 1
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ext_power_bit, align 4
  tail call void @xonar_init_ext_power(ptr noundef %chip) #6
  tail call fastcc void @xonar_st_init_common(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_stx_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip)
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_pcm1796_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @msleep(i32 noundef 1) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %current_rate = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %current_rate, align 4
  %5 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %model_data, align 4
  %current_rate.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %8)
  %cmp.i = icmp ult i32 %8, 48001
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %reg.0.i = phi i8 [ 0, %if.else.i ], [ 2, %land.lhs.true.i.if.end.i_crit_edge ]
  %dacs.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %dacs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dacs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not.i = icmp eq i32 %12, 0
  br i1 %cmp17.not.i, label %if.end.i.update_pcm1796_oversampling.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.update_pcm1796_oversampling.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_pcm1796_oversampling.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %function_flags.i.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %conv5.i.i.i.i = zext i8 %reg.0.i to i32
  %or6.i.i.i.i = or i32 %conv5.i.i.i.i, 5120
  br label %for.body.i

for.body.i:                                       ; preds = %pcm1796_write_cached.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %pcm1796_write_cached.exit.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %arrayidx2.i.i = getelementptr %struct.xonar_pcm179x, ptr %14, i32 0, i32 2, i32 %i.08.i, i32 4
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %reg.0.i)
  %cmp.not.i.i = icmp eq i8 %16, %reg.0.i
  br i1 %cmp.not.i.i, label %for.body.i.pcm1796_write_cached.exit.i_crit_edge, label %if.then.i.i

for.body.i.pcm1796_write_cached.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %17 = ptrtoint ptr %function_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %function_flags.i.i.i, align 1
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i.i.i = icmp eq i8 %19, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.08.i
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shl.i.i.i.i = shl i8 %21, 4
  %or1.i.i.i.i = or i8 %shl.i.i.i.i, -127
  %call.i.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i.i.i, i32 noundef %or6.i.i.i.i) #6
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i.i.i = trunc i32 %i.08.i to i8
  %22 = shl i8 %codec.tr.i.i.i.i, 1
  %conv.i.i.i.i = add i8 %22, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext 20, i8 noundef zeroext %reg.0.i) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %reg.0.i, ptr %arrayidx2.i.i, align 1
  br label %pcm1796_write_cached.exit.i

pcm1796_write_cached.exit.i:                      ; preds = %if.end.i.i.i, %for.body.i.pcm1796_write_cached.exit.i_crit_edge
  %inc.i = add nuw i32 %i.08.i, 1
  %24 = ptrtoint ptr %dacs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dacs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %25
  br i1 %cmp1.i, label %pcm1796_write_cached.exit.i.for.body.i_crit_edge, label %pcm1796_write_cached.exit.i.update_pcm1796_oversampling.exit_crit_edge

pcm1796_write_cached.exit.i.update_pcm1796_oversampling.exit_crit_edge: ; preds = %pcm1796_write_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_pcm1796_oversampling.exit

pcm1796_write_cached.exit.i.for.body.i_crit_edge: ; preds = %pcm1796_write_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

update_pcm1796_oversampling.exit:                 ; preds = %pcm1796_write_cached.exit.i.update_pcm1796_oversampling.exit_crit_edge, %if.end.i.update_pcm1796_oversampling.exit_crit_edge
  %26 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.xonar_pcm179x, ptr %27, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 2
  %30 = and i8 %29, -13
  %current_rate.i4 = getelementptr inbounds %struct.xonar_pcm179x, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %current_rate.i4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_rate.i4, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %32, label %update_pcm1796_oversampling.exit.if.end22.i_crit_edge [
    i32 48000, label %if.then.i
    i32 44100, label %if.then9.i
    i32 32000, label %if.then17.i
  ]

update_pcm1796_oversampling.exit.if.end22.i_crit_edge: ; preds = %update_pcm1796_oversampling.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then.i:                                        ; preds = %update_pcm1796_oversampling.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i8 %30, 4
  br label %if.end22.i

if.then9.i:                                       ; preds = %update_pcm1796_oversampling.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = or i8 %30, 8
  br label %if.end22.i

if.then17.i:                                      ; preds = %update_pcm1796_oversampling.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = or i8 %29, 12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.then9.i, %if.then.i, %update_pcm1796_oversampling.exit.if.end22.i_crit_edge
  %reg.0.i5 = phi i8 [ %34, %if.then.i ], [ %35, %if.then9.i ], [ %36, %if.then17.i ], [ %30, %update_pcm1796_oversampling.exit.if.end22.i_crit_edge ]
  %dacs.i6 = getelementptr inbounds %struct.xonar_pcm179x, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %dacs.i6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dacs.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp2335.not.i = icmp eq i32 %38, 0
  br i1 %cmp2335.not.i, label %if.end22.i.update_pcm1796_deemph.exit_crit_edge, label %for.body.lr.ph.i10

if.end22.i.update_pcm1796_deemph.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_pcm1796_deemph.exit

for.body.lr.ph.i10:                               ; preds = %if.end22.i
  %function_flags.i.i.i7 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %conv5.i.i.i.i8 = zext i8 %reg.0.i5 to i32
  %or6.i.i.i.i9 = or i32 %conv5.i.i.i.i8, 4608
  br label %for.body.i13

for.body.i13:                                     ; preds = %pcm1796_write_cached.exit.i26.for.body.i13_crit_edge, %for.body.lr.ph.i10
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %inc.i25, %pcm1796_write_cached.exit.i26.for.body.i13_crit_edge ]
  %39 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %model_data, align 4
  %arrayidx2.i.i11 = getelementptr %struct.xonar_pcm179x, ptr %40, i32 0, i32 2, i32 %i.036.i, i32 2
  %41 = ptrtoint ptr %arrayidx2.i.i11 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.i.i11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %reg.0.i5)
  %cmp.not.i.i12 = icmp eq i8 %42, %reg.0.i5
  br i1 %cmp.not.i.i12, label %for.body.i13.pcm1796_write_cached.exit.i26_crit_edge, label %if.then.i.i15

for.body.i13.pcm1796_write_cached.exit.i26_crit_edge: ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit.i26

if.then.i.i15:                                    ; preds = %for.body.i13
  %43 = ptrtoint ptr %function_flags.i.i.i7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %function_flags.i.i.i7, align 1
  %45 = and i8 %44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i.i.i14 = icmp eq i8 %45, 0
  br i1 %cmp.i.i.i14, label %if.then.i.i.i20, label %if.else.i.i.i23

if.then.i.i.i20:                                  ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i.i16 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.036.i
  %46 = ptrtoint ptr %arrayidx.i.i.i.i16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i.i.i16, align 1
  %shl.i.i.i.i17 = shl i8 %47, 4
  %or1.i.i.i.i18 = or i8 %shl.i.i.i.i17, -127
  %call.i.i.i.i19 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i.i.i18, i32 noundef %or6.i.i.i.i9) #6
  br label %if.end.i.i.i24

if.else.i.i.i23:                                  ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i.i.i21 = trunc i32 %i.036.i to i8
  %48 = shl i8 %codec.tr.i.i.i.i21, 1
  %conv.i.i.i.i22 = add i8 %48, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i.i.i22, i8 noundef zeroext 18, i8 noundef zeroext %reg.0.i5) #6
  br label %if.end.i.i.i24

if.end.i.i.i24:                                   ; preds = %if.else.i.i.i23, %if.then.i.i.i20
  %49 = ptrtoint ptr %arrayidx2.i.i11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %reg.0.i5, ptr %arrayidx2.i.i11, align 1
  br label %pcm1796_write_cached.exit.i26

pcm1796_write_cached.exit.i26:                    ; preds = %if.end.i.i.i24, %for.body.i13.pcm1796_write_cached.exit.i26_crit_edge
  %inc.i25 = add nuw i32 %i.036.i, 1
  %50 = ptrtoint ptr %dacs.i6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dacs.i6, align 4
  %cmp23.i = icmp ult i32 %inc.i25, %51
  br i1 %cmp23.i, label %pcm1796_write_cached.exit.i26.for.body.i13_crit_edge, label %pcm1796_write_cached.exit.i26.update_pcm1796_deemph.exit_crit_edge

pcm1796_write_cached.exit.i26.update_pcm1796_deemph.exit_crit_edge: ; preds = %pcm1796_write_cached.exit.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_pcm1796_deemph.exit

pcm1796_write_cached.exit.i26.for.body.i13_crit_edge: ; preds = %pcm1796_write_cached.exit.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i13

update_pcm1796_deemph.exit:                       ; preds = %pcm1796_write_cached.exit.i26.update_pcm1796_deemph.exit_crit_edge, %if.end22.i.update_pcm1796_deemph.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_xense_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -92, ptr %ext_power_reg, align 2
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -91, ptr %ext_power_int_reg, align 1
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ext_power_bit, align 4
  tail call void @xonar_init_ext_power(ptr noundef %chip) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %1, align 4
  %has_cs2000 = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %has_cs2000 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %has_cs2000, align 1
  %arrayidx = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 22
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %arrayidx, align 2
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 98, i16 noundef zeroext 290) #6
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 148, i16 noundef zeroext 64) #6
  tail call fastcc void @cs2000_registers_init(ptr noundef %chip)
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 49, ptr %output_enable_bit, align 4
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dacs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dacs, align 4
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -36, ptr %hp_gain_offset, align 2
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.xonar_pcm179x, ptr %12, i32 0, i32 2, i32 0, i32 2
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -47, i8 -48
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select.i, ptr %arrayidx1.i, align 2
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %12, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx8.i, align 1
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not.i = icmp eq i8 %18, 0
  %conv11.i = select i1 %tobool9.not.i, i8 2, i8 0
  %arrayidx14.i = getelementptr %struct.xonar_pcm179x, ptr %12, i32 0, i32 2, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11.i, ptr %arrayidx14.i, align 4
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip) #6
  %current_rate.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %12, i32 0, i32 3
  %20 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48000, ptr %current_rate.i, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 450, i16 noundef zeroext 450) #6
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 386) #6
  tail call void @xonar_init_cs53x1(ptr noundef %chip) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %22, ptr noundef nonnull @.str.13) #6
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call6 = tail call i32 @snd_component_add(ptr noundef %24, ptr noundef nonnull @.str.14) #6
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %call8 = tail call i32 @snd_component_add(ptr noundef %26, ptr noundef nonnull @.str.26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_xense_mixer_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @xense_controls, ptr noundef %chip) #6
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
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @xense_controls, i32 0, i32 1), ptr noundef %chip) #6
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %4 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data.i, align 4
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %for.cond.1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i._crit_edge, label %if.end.i

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call4.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @deemph_control, ptr noundef %chip) #6
  %call5.i = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i._crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

12:                                               ; preds = %if.end.i._crit_edge, %if.then.i._crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end.i._crit_edge ], [ %call1.i, %if.then.i._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %12, %if.end.i.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %12 ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d2_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dacs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %dacs, align 4
  %5 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.xonar_pcm179x, ptr %5, i32 0, i32 2, i32 0, i32 2
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -47, i8 -48
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.store.select.i, ptr %arrayidx1.i, align 2
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %5, i32 0, i32 2, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx8.i, align 1
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not.i = icmp eq i8 %11, 0
  %conv11.i = select i1 %tobool9.not.i, i8 2, i8 0
  %arrayidx14.i = getelementptr %struct.xonar_pcm179x, ptr %5, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11.i, ptr %arrayidx14.i, align 4
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip) #6
  %current_rate.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 48000, ptr %current_rate.i, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 128) #6
  tail call void @oxygen_write_ac97_masked(ptr noundef %chip, i32 noundef 0, i32 noundef 98, i16 noundef zeroext 128, i16 noundef zeroext 128) #6
  tail call void @xonar_init_cs53x1(ptr noundef %chip) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %15, ptr noundef nonnull @.str.13) #6
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call3 = tail call i32 @snd_component_add(ptr noundef %17, ptr noundef nonnull @.str.14) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xonar_d2_control_filter(ptr nocapture noundef %template) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.15, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 11
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %xor = xor i32 %3, 6
  store i32 %xor, ptr %private_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_d2_mixer_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @alt_switch, ptr noundef %chip) #6
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i._crit_edge, label %if.end.i

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %10

if.end.i:                                         ; preds = %if.then.i
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call4.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @deemph_control, ptr noundef %chip) #6
  %call5.i = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i._crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %10

10:                                               ; preds = %if.end.i._crit_edge, %if.then.i._crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end.i._crit_edge ], [ %call1.i, %if.then.i._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %10, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %10 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d2_cleanup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d2_suspend(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d2_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip)
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_set_cs53x1_params(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_pcm1796_volume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %hp_active = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hp_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_active, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hp_gain_offset, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp44.not = icmp eq i32 %7, 0
  br i1 %cmp44.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %arrayidx.peel = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 0
  %8 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.peel, align 1
  %add.peel = add i8 %9, %cond
  %10 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model_data, align 4
  %arrayidx2.i.peel = getelementptr %struct.xonar_pcm179x, ptr %11, i32 0, i32 2, i32 0, i32 0
  %12 = ptrtoint ptr %arrayidx2.i.peel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i.peel, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %add.peel)
  %cmp.not.i.peel = icmp eq i8 %13, %add.peel
  br i1 %cmp.not.i.peel, label %for.body.lr.ph.pcm1796_write_cached.exit.peel_crit_edge, label %if.then.i.peel

for.body.lr.ph.pcm1796_write_cached.exit.peel_crit_edge: ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit.peel

if.then.i.peel:                                   ; preds = %for.body.lr.ph
  %14 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %function_flags.i.i, align 1
  %16 = and i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i.i.peel = icmp eq i8 %16, 0
  br i1 %cmp.i.i.peel, label %if.then.i.i.peel, label %if.else.i.i.peel

if.else.i.i.peel:                                 ; preds = %if.then.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -104, i8 noundef zeroext 16, i8 noundef zeroext %add.peel) #6
  br label %if.end.i.i.peel

if.then.i.i.peel:                                 ; preds = %if.then.i.peel
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i.i.peel = zext i8 %add.peel to i32
  %or6.i.i.i.peel = or i32 %conv5.i.i.i.peel, 4096
  %call.i.i.i.peel = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -127, i32 noundef %or6.i.i.i.peel) #6
  br label %if.end.i.i.peel

if.end.i.i.peel:                                  ; preds = %if.then.i.i.peel, %if.else.i.i.peel
  %17 = ptrtoint ptr %arrayidx2.i.peel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add.peel, ptr %arrayidx2.i.peel, align 1
  br label %pcm1796_write_cached.exit.peel

pcm1796_write_cached.exit.peel:                   ; preds = %if.end.i.i.peel, %for.body.lr.ph.pcm1796_write_cached.exit.peel_crit_edge
  %arrayidx9.peel = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx9.peel to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9.peel, align 1
  %add12.peel = add i8 %19, %cond
  %20 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %model_data, align 4
  %arrayidx2.i27.peel = getelementptr %struct.xonar_pcm179x, ptr %21, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx2.i27.peel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i27.peel, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %add12.peel)
  %cmp.not.i28.peel = icmp eq i8 %23, %add12.peel
  br i1 %cmp.not.i28.peel, label %pcm1796_write_cached.exit.peel.pcm1796_write_cached.exit43.peel_crit_edge, label %if.then.i31.peel

pcm1796_write_cached.exit.peel.pcm1796_write_cached.exit43.peel_crit_edge: ; preds = %pcm1796_write_cached.exit.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit43.peel

if.then.i31.peel:                                 ; preds = %pcm1796_write_cached.exit.peel
  %24 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %function_flags.i.i, align 1
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i.i30.peel = icmp eq i8 %26, 0
  br i1 %cmp.i.i30.peel, label %if.then.i.i38.peel, label %if.else.i.i41.peel

if.else.i.i41.peel:                               ; preds = %if.then.i31.peel
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -104, i8 noundef zeroext 17, i8 noundef zeroext %add12.peel) #6
  br label %if.end.i.i42.peel

if.then.i.i38.peel:                               ; preds = %if.then.i31.peel
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i.i35.peel = zext i8 %add12.peel to i32
  %or6.i.i.i36.peel = or i32 %conv5.i.i.i35.peel, 4352
  %call.i.i.i37.peel = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -127, i32 noundef %or6.i.i.i36.peel) #6
  br label %if.end.i.i42.peel

if.end.i.i42.peel:                                ; preds = %if.then.i.i38.peel, %if.else.i.i41.peel
  %27 = ptrtoint ptr %arrayidx2.i27.peel to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add12.peel, ptr %arrayidx2.i27.peel, align 1
  br label %pcm1796_write_cached.exit43.peel

pcm1796_write_cached.exit43.peel:                 ; preds = %if.end.i.i42.peel, %pcm1796_write_cached.exit.peel.pcm1796_write_cached.exit43.peel_crit_edge
  %28 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.peel = icmp ugt i32 %29, 1
  br i1 %cmp.peel, label %pcm1796_write_cached.exit43.peel.for.body_crit_edge, label %pcm1796_write_cached.exit43.peel.for.end_crit_edge

pcm1796_write_cached.exit43.peel.for.end_crit_edge: ; preds = %pcm1796_write_cached.exit43.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pcm1796_write_cached.exit43.peel.for.body_crit_edge: ; preds = %pcm1796_write_cached.exit43.peel
  br label %for.body

for.body:                                         ; preds = %pcm1796_write_cached.exit43.for.body_crit_edge, %pcm1796_write_cached.exit43.peel.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %pcm1796_write_cached.exit43.for.body_crit_edge ], [ 1, %pcm1796_write_cached.exit43.peel.for.body_crit_edge ]
  %mul = shl i32 %i.045, 1
  %arrayidx = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %mul
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %model_data, align 4
  %arrayidx2.i = getelementptr %struct.xonar_pcm179x, ptr %33, i32 0, i32 2, i32 %i.045, i32 0
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %31)
  %cmp.not.i = icmp eq i8 %35, %31
  br i1 %cmp.not.i, label %for.body.pcm1796_write_cached.exit_crit_edge, label %if.then.i

for.body.pcm1796_write_cached.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit

if.then.i:                                        ; preds = %for.body
  %36 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %function_flags.i.i, align 1
  %38 = and i8 %37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.i.i = icmp eq i8 %38, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.045
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %shl.i.i.i = shl i8 %40, 4
  %or1.i.i.i = or i8 %shl.i.i.i, -127
  %conv5.i.i.i = zext i8 %31 to i32
  %or6.i.i.i = or i32 %conv5.i.i.i, 4096
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i.i, i32 noundef %or6.i.i.i) #6
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i.i = trunc i32 %i.045 to i8
  %41 = shl i8 %codec.tr.i.i.i, 1
  %conv.i.i.i = add i8 %41, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext 16, i8 noundef zeroext %31) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %31, ptr %arrayidx2.i, align 1
  br label %pcm1796_write_cached.exit

pcm1796_write_cached.exit:                        ; preds = %if.end.i.i, %for.body.pcm1796_write_cached.exit_crit_edge
  %add8 = or i32 %mul, 1
  %arrayidx9 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %add8
  %43 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9, align 1
  %45 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %model_data, align 4
  %arrayidx2.i27 = getelementptr %struct.xonar_pcm179x, ptr %46, i32 0, i32 2, i32 %i.045, i32 1
  %47 = ptrtoint ptr %arrayidx2.i27 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i27, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %44)
  %cmp.not.i28 = icmp eq i8 %48, %44
  br i1 %cmp.not.i28, label %pcm1796_write_cached.exit.pcm1796_write_cached.exit43_crit_edge, label %if.then.i31

pcm1796_write_cached.exit.pcm1796_write_cached.exit43_crit_edge: ; preds = %pcm1796_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit43

if.then.i31:                                      ; preds = %pcm1796_write_cached.exit
  %49 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %function_flags.i.i, align 1
  %51 = and i8 %50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i.i30 = icmp eq i8 %51, 0
  br i1 %cmp.i.i30, label %if.then.i.i38, label %if.else.i.i41

if.then.i.i38:                                    ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i32 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.045
  %52 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.i32, align 1
  %shl.i.i.i33 = shl i8 %53, 4
  %or1.i.i.i34 = or i8 %shl.i.i.i33, -127
  %conv5.i.i.i35 = zext i8 %44 to i32
  %or6.i.i.i36 = or i32 %conv5.i.i.i35, 4352
  %call.i.i.i37 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i.i34, i32 noundef %or6.i.i.i36) #6
  br label %if.end.i.i42

if.else.i.i41:                                    ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i.i39 = trunc i32 %i.045 to i8
  %54 = shl i8 %codec.tr.i.i.i39, 1
  %conv.i.i.i40 = add i8 %54, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i.i40, i8 noundef zeroext 17, i8 noundef zeroext %44) #6
  br label %if.end.i.i42

if.end.i.i42:                                     ; preds = %if.else.i.i41, %if.then.i.i38
  %55 = ptrtoint ptr %arrayidx2.i27 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %44, ptr %arrayidx2.i27, align 1
  br label %pcm1796_write_cached.exit43

pcm1796_write_cached.exit43:                      ; preds = %if.end.i.i42, %pcm1796_write_cached.exit.pcm1796_write_cached.exit43_crit_edge
  %inc = add nuw i32 %i.045, 1
  %56 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dacs, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %pcm1796_write_cached.exit43.for.body_crit_edge, label %pcm1796_write_cached.exit43.for.end_crit_edge, !llvm.loop !120

pcm1796_write_cached.exit43.for.end_crit_edge:    ; preds = %pcm1796_write_cached.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pcm1796_write_cached.exit43.for.body_crit_edge:   ; preds = %pcm1796_write_cached.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pcm1796_write_cached.exit43.for.end_crit_edge, %pcm1796_write_cached.exit43.peel.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_pcm1796_mute(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 2
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %4 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %6 = and i8 %3, -2
  %masksel = zext i1 %tobool.not to i8
  %value.0 = or i8 %6, %masksel
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not = icmp eq i32 %8, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %function_flags.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %conv5.i.i.i = zext i8 %value.0 to i32
  %or6.i.i.i = or i32 %conv5.i.i.i, 4608
  br label %for.body

for.body:                                         ; preds = %pcm1796_write_cached.exit.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pcm1796_write_cached.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  %arrayidx2.i = getelementptr %struct.xonar_pcm179x, ptr %10, i32 0, i32 2, i32 %i.014, i32 2
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %value.0)
  %cmp.not.i = icmp eq i8 %12, %value.0
  br i1 %cmp.not.i, label %for.body.pcm1796_write_cached.exit_crit_edge, label %if.then.i

for.body.pcm1796_write_cached.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcm1796_write_cached.exit

if.then.i:                                        ; preds = %for.body
  %13 = ptrtoint ptr %function_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %function_flags.i.i, align 1
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.i = icmp eq i8 %15, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.014
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %shl.i.i.i = shl i8 %17, 4
  %or1.i.i.i = or i8 %shl.i.i.i, -127
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i.i, i32 noundef %or6.i.i.i) #6
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i.i = trunc i32 %i.014 to i8
  %18 = shl i8 %codec.tr.i.i.i, 1
  %conv.i.i.i = add i8 %18, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext 18, i8 noundef zeroext %value.0) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %value.0, ptr %arrayidx2.i, align 1
  br label %pcm1796_write_cached.exit

pcm1796_write_cached.exit:                        ; preds = %if.end.i.i, %for.body.pcm1796_write_cached.exit_crit_edge
  %inc = add nuw i32 %i.014, 1
  %20 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dacs, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %pcm1796_write_cached.exit.for.body_crit_edge, label %pcm1796_write_cached.exit.for.end_crit_edge

pcm1796_write_cached.exit.for.end_crit_edge:      ; preds = %pcm1796_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pcm1796_write_cached.exit.for.body_crit_edge:     ; preds = %pcm1796_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pcm1796_write_cached.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_pcm1796_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %entry.for.end9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dac.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %add = add nuw i32 %dac.021, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %add) #6
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %arrayidx6 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 %dac.021, i32 0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %conv) #6
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %arrayidx6.1 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 %dac.021, i32 1
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.1, align 1
  %conv.1 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %conv.1) #6
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx6.2 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 %dac.021, i32 2
  %16 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.2, align 1
  %conv.2 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %conv.2) #6
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx6.3 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 %dac.021, i32 3
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.3, align 1
  %conv.3 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %conv.3) #6
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx6.4 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 %dac.021, i32 4
  %24 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.4, align 1
  %conv.4 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.22, i32 noundef %conv.4) #6
  %26 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dacs, align 4
  %cmp = icmp ult i32 %add, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end9_crit_edge

for.body.for.end9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end9:                                         ; preds = %for.body.for.end9_crit_edge, %entry.for.end9_crit_edge
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.23) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_init_cs53x1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_enable_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcm1796_registers_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @msleep(i32 noundef 1) #6
  %hp_active = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hp_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_active, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hp_gain_offset, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp118.not = icmp eq i32 %7, 0
  br i1 %cmp118.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %arrayidx3 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 0, i32 2
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 28
  %arrayidx18 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 0, i32 3
  %arrayidx21 = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 2, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %pcm1796_write.exit117.for.body_crit_edge, %for.body.lr.ph
  %gain_offset.0121 = phi i8 [ %cond, %for.body.lr.ph ], [ 0, %pcm1796_write.exit117.for.body_crit_edge ]
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pcm1796_write.exit117.for.body_crit_edge ]
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 2
  %10 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model_data, align 4
  %12 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %function_flags.i, align 1
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %16, 4
  %or1.i.i = or i8 %shl.i.i, -127
  %conv5.i.i = zext i8 %9 to i32
  %or6.i.i = or i32 %conv5.i.i, 4608
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i, i32 noundef %or6.i.i) #6
  br label %pcm1796_write.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i = trunc i32 %i.0119 to i8
  %17 = shl i8 %codec.tr.i.i, 1
  %conv.i.i = add i8 %17, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 18, i8 noundef zeroext %9) #6
  br label %pcm1796_write.exit

pcm1796_write.exit:                               ; preds = %if.else.i, %if.then.i
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %11, i32 0, i32 2, i32 %i.0119, i32 2
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %9, ptr %arrayidx8.i, align 1
  %mul = shl i32 %i.0119, 1
  %arrayidx4 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %mul
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx4, align 1
  %add = add i8 %20, %gain_offset.0121
  %21 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %model_data, align 4
  %23 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %function_flags.i, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i47 = icmp eq i8 %25, 0
  br i1 %cmp.i47, label %if.then.i54, label %if.else.i57

if.then.i54:                                      ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i48 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %26 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i48, align 1
  %shl.i.i49 = shl i8 %27, 4
  %or1.i.i50 = or i8 %shl.i.i49, -127
  %conv5.i.i51 = zext i8 %add to i32
  %or6.i.i52 = or i32 %conv5.i.i51, 4096
  %call.i.i53 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i50, i32 noundef %or6.i.i52) #6
  br label %pcm1796_write.exit59

if.else.i57:                                      ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i55 = trunc i32 %i.0119 to i8
  %28 = shl i8 %codec.tr.i.i55, 1
  %conv.i.i56 = add i8 %28, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i56, i8 noundef zeroext 16, i8 noundef zeroext %add) #6
  br label %pcm1796_write.exit59

pcm1796_write.exit59:                             ; preds = %if.else.i57, %if.then.i54
  %arrayidx8.i58 = getelementptr %struct.xonar_pcm179x, ptr %22, i32 0, i32 2, i32 %i.0119, i32 0
  %29 = ptrtoint ptr %arrayidx8.i58 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add, ptr %arrayidx8.i58, align 1
  %add10 = or i32 %mul, 1
  %arrayidx11 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %add10
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx11, align 1
  %add14 = add i8 %31, %gain_offset.0121
  %32 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %model_data, align 4
  %34 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %function_flags.i, align 1
  %36 = and i8 %35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i62 = icmp eq i8 %36, 0
  br i1 %cmp.i62, label %if.then.i69, label %if.else.i72

if.then.i69:                                      ; preds = %pcm1796_write.exit59
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i63 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %37 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i63, align 1
  %shl.i.i64 = shl i8 %38, 4
  %or1.i.i65 = or i8 %shl.i.i64, -127
  %conv5.i.i66 = zext i8 %add14 to i32
  %or6.i.i67 = or i32 %conv5.i.i66, 4352
  %call.i.i68 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i65, i32 noundef %or6.i.i67) #6
  br label %pcm1796_write.exit74

if.else.i72:                                      ; preds = %pcm1796_write.exit59
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i70 = trunc i32 %i.0119 to i8
  %39 = shl i8 %codec.tr.i.i70, 1
  %conv.i.i71 = add i8 %39, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i71, i8 noundef zeroext 17, i8 noundef zeroext %add14) #6
  br label %pcm1796_write.exit74

pcm1796_write.exit74:                             ; preds = %if.else.i72, %if.then.i69
  %arrayidx8.i73 = getelementptr %struct.xonar_pcm179x, ptr %33, i32 0, i32 2, i32 %i.0119, i32 1
  %40 = ptrtoint ptr %arrayidx8.i73 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add14, ptr %arrayidx8.i73, align 1
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx18, align 1
  %43 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %model_data, align 4
  %45 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %function_flags.i, align 1
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i77 = icmp eq i8 %47, 0
  br i1 %cmp.i77, label %if.then.i84, label %if.else.i87

if.then.i84:                                      ; preds = %pcm1796_write.exit74
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i78 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %48 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i78, align 1
  %shl.i.i79 = shl i8 %49, 4
  %or1.i.i80 = or i8 %shl.i.i79, -127
  %conv5.i.i81 = zext i8 %42 to i32
  %or6.i.i82 = or i32 %conv5.i.i81, 4864
  %call.i.i83 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i80, i32 noundef %or6.i.i82) #6
  br label %pcm1796_write.exit89

if.else.i87:                                      ; preds = %pcm1796_write.exit74
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i85 = trunc i32 %i.0119 to i8
  %50 = shl i8 %codec.tr.i.i85, 1
  %conv.i.i86 = add i8 %50, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i86, i8 noundef zeroext 19, i8 noundef zeroext %42) #6
  br label %pcm1796_write.exit89

pcm1796_write.exit89:                             ; preds = %if.else.i87, %if.then.i84
  %arrayidx8.i88 = getelementptr %struct.xonar_pcm179x, ptr %44, i32 0, i32 2, i32 %i.0119, i32 3
  %51 = ptrtoint ptr %arrayidx8.i88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %42, ptr %arrayidx8.i88, align 1
  %52 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx21, align 4
  %54 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %model_data, align 4
  %56 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %function_flags.i, align 1
  %58 = and i8 %57, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i92 = icmp eq i8 %58, 0
  br i1 %cmp.i92, label %if.then.i99, label %if.else.i102

if.then.i99:                                      ; preds = %pcm1796_write.exit89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i93 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %59 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i93, align 1
  %shl.i.i94 = shl i8 %60, 4
  %or1.i.i95 = or i8 %shl.i.i94, -127
  %conv5.i.i96 = zext i8 %53 to i32
  %or6.i.i97 = or i32 %conv5.i.i96, 5120
  %call.i.i98 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i95, i32 noundef %or6.i.i97) #6
  br label %pcm1796_write.exit104

if.else.i102:                                     ; preds = %pcm1796_write.exit89
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i100 = trunc i32 %i.0119 to i8
  %61 = shl i8 %codec.tr.i.i100, 1
  %conv.i.i101 = add i8 %61, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i101, i8 noundef zeroext 20, i8 noundef zeroext %53) #6
  br label %pcm1796_write.exit104

pcm1796_write.exit104:                            ; preds = %if.else.i102, %if.then.i99
  %arrayidx8.i103 = getelementptr %struct.xonar_pcm179x, ptr %55, i32 0, i32 2, i32 %i.0119, i32 4
  %62 = ptrtoint ptr %arrayidx8.i103 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %53, ptr %arrayidx8.i103, align 1
  %63 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %function_flags.i, align 1
  %65 = and i8 %64, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp.i107 = icmp eq i8 %65, 0
  br i1 %cmp.i107, label %if.then.i112, label %if.else.i115

if.then.i112:                                     ; preds = %pcm1796_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i108 = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.0119
  %66 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i108, align 1
  %shl.i.i109 = shl i8 %67, 4
  %or1.i.i110 = or i8 %shl.i.i109, -127
  %call.i.i111 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i110, i32 noundef 5376) #6
  br label %pcm1796_write.exit117

if.else.i115:                                     ; preds = %pcm1796_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i113 = trunc i32 %i.0119 to i8
  %68 = shl i8 %codec.tr.i.i113, 1
  %conv.i.i114 = add i8 %68, -104
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext %conv.i.i114, i8 noundef zeroext 21, i8 noundef zeroext 0) #6
  br label %pcm1796_write.exit117

pcm1796_write.exit117:                            ; preds = %if.else.i115, %if.then.i112
  %inc = add nuw i32 %i.0119, 1
  %69 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dacs, align 4
  %cmp = icmp ult i32 %inc, %70
  br i1 %cmp, label %pcm1796_write.exit117.for.body_crit_edge, label %pcm1796_write.exit117.for.end_crit_edge

pcm1796_write.exit117.for.end_crit_edge:          ; preds = %pcm1796_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pcm1796_write.exit117.for.body_crit_edge:         ; preds = %pcm1796_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pcm1796_write.exit117.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_write_spi(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_ac97_masked(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_put(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @rolloff_info.names) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rolloff_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.xonar_pcm179x, ptr %3, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %arrayidx1 = getelementptr %struct.xonar_pcm179x, ptr %3, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = and i8 %5, -3
  %masksel = select i1 %tobool.not, i8 0, i8 2
  %reg.0 = or i8 %masksel, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.0, i8 %5)
  %cmp = icmp ne i8 %reg.0, %5
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.cond.preheader:                               ; preds = %entry
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1834.not = icmp eq i32 %10, 0
  br i1 %cmp1834.not, label %for.cond.preheader.if.end20_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end20_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %conv5.i.i = zext i8 %reg.0 to i32
  %or6.i.i = or i32 %conv5.i.i, 4864
  br label %for.body

for.body:                                         ; preds = %pcm1796_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pcm1796_write.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %13 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %function_flags.i, align 1
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.035
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %17, 4
  %or1.i.i = or i8 %shl.i.i, -127
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext %or1.i.i, i32 noundef %or6.i.i) #6
  br label %pcm1796_write.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i = trunc i32 %i.035 to i8
  %18 = shl i8 %codec.tr.i.i, 1
  %conv.i.i = add i8 %18, -104
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 19, i8 noundef zeroext %reg.0) #6
  br label %pcm1796_write.exit

pcm1796_write.exit:                               ; preds = %if.else.i, %if.then.i
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %12, i32 0, i32 2, i32 %i.035, i32 3
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %reg.0, ptr %arrayidx8.i, align 1
  %inc = add nuw i32 %i.035, 1
  %20 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dacs, align 4
  %cmp18 = icmp ult i32 %inc, %21
  br i1 %cmp18, label %pcm1796_write.exit.for.body_crit_edge, label %pcm1796_write.exit.if.end20_crit_edge

pcm1796_write.exit.if.end20_crit_edge:            ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

pcm1796_write.exit.for.body_crit_edge:            ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end20:                                         ; preds = %pcm1796_write.exit.if.end20_crit_edge, %for.cond.preheader.if.end20_crit_edge, %entry.if.end20_crit_edge
  %conv15 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deemph_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.xonar_pcm179x, ptr %3, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 2
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deemph_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %arrayidx1 = getelementptr %struct.xonar_pcm179x, ptr %3, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 2
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = and i8 %5, -3
  %masksel = select i1 %tobool.not, i8 0, i8 2
  %reg.0 = or i8 %masksel, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.0, i8 %5)
  %cmp = icmp ne i8 %reg.0, %5
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.cond.preheader:                               ; preds = %entry
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1530.not = icmp eq i32 %10, 0
  br i1 %cmp1530.not, label %for.cond.preheader.if.end17_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 28
  %conv5.i.i = zext i8 %reg.0 to i32
  %or6.i.i = or i32 %conv5.i.i, 4608
  br label %for.body

for.body:                                         ; preds = %pcm1796_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pcm1796_write.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %13 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %function_flags.i, align 1
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [4 x i8], ptr @pcm1796_write_spi.codec_map, i32 0, i32 %i.031
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %17, 4
  %or1.i.i = or i8 %shl.i.i, -127
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext %or1.i.i, i32 noundef %or6.i.i) #6
  br label %pcm1796_write.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %codec.tr.i.i = trunc i32 %i.031 to i8
  %18 = shl i8 %codec.tr.i.i, 1
  %conv.i.i = add i8 %18, -104
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 18, i8 noundef zeroext %reg.0) #6
  br label %pcm1796_write.exit

pcm1796_write.exit:                               ; preds = %if.else.i, %if.then.i
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %12, i32 0, i32 2, i32 %i.031, i32 2
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %reg.0, ptr %arrayidx8.i, align 1
  %inc = add nuw i32 %i.031, 1
  %20 = ptrtoint ptr %dacs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dacs, align 4
  %cmp15 = icmp ult i32 %inc, %21
  br i1 %cmp15, label %pcm1796_write.exit.for.body_crit_edge, label %pcm1796_write.exit.if.end17_crit_edge

pcm1796_write.exit.if.end17_crit_edge:            ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

pcm1796_write.exit.for.body_crit_edge:            ; preds = %pcm1796_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end17:                                         ; preds = %pcm1796_write.exit.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %entry.if.end17_crit_edge
  %conv12 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %conv12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_disable_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_init_ext_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 148, i16 noundef zeroext 64) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %1, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %output_enable_bit, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -92, ptr %ext_power_reg, align 2
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -91, ptr %ext_power_int_reg, align 1
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ext_power_bit, align 4
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %7 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dac_channels_mixer, align 1
  %9 = lshr i8 %8, 1
  %div = zext i8 %9 to i32
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dacs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %dacs, align 4
  %11 = load i8, ptr %dac_channels_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp = icmp ugt i8 %11, 2
  %h6 = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %12 = ptrtoint ptr %h6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %h6, align 4
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.xonar_pcm179x, ptr %14, i32 0, i32 2, i32 0, i32 2
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -47, i8 -48
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.store.select.i, ptr %arrayidx1.i, align 2
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %14, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx8.i, align 1
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not.i = icmp eq i8 %20, 0
  %conv11.i = select i1 %tobool9.not.i, i8 2, i8 0
  %arrayidx14.i = getelementptr %struct.xonar_pcm179x, ptr %14, i32 0, i32 2, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11.i, ptr %arrayidx14.i, align 4
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip) #6
  %current_rate.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %14, i32 0, i32 3
  %22 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 48000, ptr %current_rate.i, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 448, i16 noundef zeroext 448) #6
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 256) #6
  tail call void @xonar_init_cs53x1(ptr noundef %chip) #6
  tail call void @xonar_init_ext_power(ptr noundef %chip) #6
  %hdmi = getelementptr inbounds %struct.xonar_hdav, ptr %1, i32 0, i32 1
  tail call void @xonar_hdmi_init(ptr noundef %chip, ptr noundef %hdmi) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %24, ptr noundef nonnull @.str.13) #6
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %call16 = tail call i32 @snd_component_add(ptr noundef %26, ptr noundef nonnull @.str.14) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_hdav_mixer_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hdav_hdmi_control, ptr noundef %chip) #6
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i._crit_edge, label %if.end.i

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %10

if.end.i:                                         ; preds = %if.then.i
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call4.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @deemph_control, ptr noundef %chip) #6
  %call5.i = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i._crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %10

10:                                               ; preds = %if.end.i._crit_edge, %if.then.i._crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end.i._crit_edge ], [ %call1.i, %if.then.i._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %10, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %10 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_cleanup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_hdmi_cleanup(ptr noundef %chip) #6
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  tail call void @msleep(i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_suspend(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_hdmi_cleanup(ptr noundef %chip) #6
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  tail call void @msleep(i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_hdav_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip)
  %hdmi = getelementptr inbounds %struct.xonar_hdav, ptr %1, i32 0, i32 1
  tail call void @xonar_hdmi_resume(ptr noundef %chip, ptr noundef %hdmi) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_pcm_hardware_filter(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_hdav_params(ptr noundef %chip, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @set_pcm1796_params(ptr noundef %chip, ptr noundef %params)
  %hdmi = getelementptr inbounds %struct.xonar_hdav, ptr %1, i32 0, i32 1
  tail call void @xonar_set_hdmi_params(ptr noundef %chip, ptr noundef %hdmi, ptr noundef %params) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_uart_input(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_line_mic_ac97_switch(ptr noundef %chip, i32 noundef %reg, i32 noundef %mute) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %cmp = icmp eq i32 %reg, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv = select i1 %tobool.not, i16 0, i16 256
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %conv, i16 noundef zeroext 256) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_hdmi_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_set_hdmi_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_st_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %1, align 4
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %3 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac_channels_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  %h6 = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %5 = ptrtoint ptr %h6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %h6, align 4
  %has_cs2000 = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %has_cs2000 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %has_cs2000, align 1
  %arrayidx = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 22
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %arrayidx, align 2
  %broken_i2c = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %broken_i2c to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %broken_i2c, align 1
  %conv7 = select i1 %cmp, i16 274, i16 290
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 98, i16 noundef zeroext %conv7) #6
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 148, i16 noundef zeroext 64) #6
  tail call fastcc void @cs2000_registers_init(ptr noundef %chip)
  tail call fastcc void @xonar_st_init_common(ptr noundef %chip)
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %10, ptr noundef nonnull @.str.26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_st_mixer_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @st_controls, ptr noundef %chip) #6
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
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @st_controls, i32 0, i32 1), ptr noundef %chip) #6
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %4 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data.i, align 4
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %for.cond.1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i._crit_edge, label %if.end.i

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call4.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @deemph_control, ptr noundef %chip) #6
  %call5.i = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i._crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

12:                                               ; preds = %if.end.i._crit_edge, %if.then.i._crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end.i._crit_edge ], [ %call1.i, %if.then.i._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %12, %if.end.i.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %12 ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_st_cleanup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_st_suspend(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_st_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cs2000_registers_init(ptr noundef %chip)
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_st_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %sw.bb2.i [
    i32 32000, label %entry.land.lhs.true.i_crit_edge
    i32 64000, label %entry.land.lhs.true.i_crit_edge4
    i32 44100, label %entry.sw.epilog.i_crit_edge
    i32 88200, label %entry.sw.epilog.i_crit_edge5
    i32 176400, label %entry.sw.epilog.i_crit_edge6
  ]

entry.sw.epilog.i_crit_edge6:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge5:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

entry.land.lhs.true.i_crit_edge4:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge5, %entry.sw.epilog.i_crit_edge6
  %rate_mclk.0.i = phi i8 [ 2, %sw.bb2.i ], [ 1, %entry.sw.epilog.i_crit_edge ], [ 1, %entry.sw.epilog.i_crit_edge5 ], [ 1, %entry.sw.epilog.i_crit_edge6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %1)
  %cmp.i = icmp ult i32 %1, 96001
  br i1 %cmp.i, label %sw.epilog.i.land.lhs.true.i_crit_edge, label %sw.epilog.i.if.else.i_crit_edge

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge4
  %rate_mclk.018.i = phi i8 [ %rate_mclk.0.i, %sw.epilog.i.land.lhs.true.i_crit_edge ], [ 0, %entry.land.lhs.true.i_crit_edge ], [ 0, %entry.land.lhs.true.i_crit_edge4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %1)
  %cmp3.i = icmp ugt i32 %1, 48000
  br i1 %cmp3.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %conv4.i = or i8 %rate_mclk.018.i, 16
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i.if.else.i_crit_edge, %sw.epilog.i.if.else.i_crit_edge
  %rate_mclk.017.i = phi i8 [ %rate_mclk.018.i, %lor.lhs.false.i.if.else.i_crit_edge ], [ %rate_mclk.0.i, %sw.epilog.i.if.else.i_crit_edge ]
  %conv7.i = or i8 %rate_mclk.017.i, 32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %rate_mclk.1.i = phi i8 [ %conv4.i, %if.then.i ], [ %conv7.i, %if.else.i ]
  %reg.0.i = phi i8 [ 16, %if.then.i ], [ 8, %if.else.i ]
  %conv8.i = zext i8 %rate_mclk.1.i to i16
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 98, i16 noundef zeroext %conv8.i, i16 noundef zeroext 55) #6
  %7 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.i3 = getelementptr %struct.xonar_pcm179x, ptr %8, i32 0, i32 8, i32 22
  %9 = ptrtoint ptr %arrayidx.i.i3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %reg.0.i)
  %cmp.not.i.i = icmp eq i8 %10, %reg.0.i
  br i1 %cmp.not.i.i, label %if.end.i.update_cs2000_rate.exit_crit_edge, label %if.then.i.i

if.end.i.update_cs2000_rate.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_cs2000_rate.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 22, i8 noundef zeroext %reg.0.i) #6
  %11 = ptrtoint ptr %arrayidx.i.i3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg.0.i, ptr %arrayidx.i.i3, align 1
  br label %update_cs2000_rate.exit

update_cs2000_rate.exit:                          ; preds = %if.then.i.i, %if.end.i.update_cs2000_rate.exit_crit_edge
  tail call void @msleep(i32 noundef 3) #6
  tail call void @set_pcm1796_params(ptr noundef %chip, ptr noundef %params)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_st_registers(ptr nocapture noundef readonly %chip, ptr noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dump_pcm1796_registers(ptr noundef %chip, ptr noundef %buffer)
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %has_cs2000.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %has_cs2000.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_cs2000.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.dump_cs2000_registers.exit_crit_edge, label %if.then.i

entry.dump_cs2000_registers.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_cs2000_registers.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.37) #6
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %conv.i) #6
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %arrayidx.1.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %conv.1.i) #6
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx.2.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %conv.2.i) #6
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx.3.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 4
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %conv.3.i) #6
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx.4.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.22, i32 noundef %conv.4.i) #6
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %arrayidx.5.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.22, i32 noundef %conv.5.i) #6
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %arrayidx.6.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 7
  %32 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef %conv.6.i) #6
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  %arrayidx.7.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 8
  %36 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.22, i32 noundef %conv.7.i) #6
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %arrayidx.8.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 9
  %40 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.8.i, align 1
  %conv.8.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %conv.8.i) #6
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %arrayidx.9.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 10
  %44 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.9.i, align 1
  %conv.9.i = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.22, i32 noundef %conv.9.i) #6
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %arrayidx.10.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 11
  %48 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.10.i, align 1
  %conv.10.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.22, i32 noundef %conv.10.i) #6
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  %arrayidx.11.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 12
  %52 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.11.i, align 1
  %conv.11.i = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %conv.11.i) #6
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  %arrayidx.12.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 13
  %56 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.12.i, align 1
  %conv.12.i = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.22, i32 noundef %conv.12.i) #6
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  %arrayidx.13.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 14
  %60 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.13.i, align 1
  %conv.13.i = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.22, i32 noundef %conv.13.i) #6
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  %arrayidx.14.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 15
  %64 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.14.i, align 1
  %conv.14.i = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.22, i32 noundef %conv.14.i) #6
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull @.str.38) #6
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %arrayidx10.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 16
  %70 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.22, i32 noundef %conv11.i) #6
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer, align 4
  %arrayidx10.1.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 17
  %74 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx10.1.i, align 1
  %conv11.1.i = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %73, ptr noundef nonnull @.str.22, i32 noundef %conv11.1.i) #6
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  %arrayidx10.2.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 18
  %78 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10.2.i, align 1
  %conv11.2.i = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.22, i32 noundef %conv11.2.i) #6
  %80 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer, align 4
  %arrayidx10.3.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 19
  %82 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx10.3.i, align 1
  %conv11.3.i = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %81, ptr noundef nonnull @.str.22, i32 noundef %conv11.3.i) #6
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  %arrayidx10.4.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 20
  %86 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx10.4.i, align 1
  %conv11.4.i = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.22, i32 noundef %conv11.4.i) #6
  %88 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buffer, align 4
  %arrayidx10.5.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 21
  %90 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx10.5.i, align 1
  %conv11.5.i = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef nonnull @.str.22, i32 noundef %conv11.5.i) #6
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buffer, align 4
  %arrayidx10.6.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 22
  %94 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx10.6.i, align 1
  %conv11.6.i = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef nonnull @.str.22, i32 noundef %conv11.6.i) #6
  %96 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer, align 4
  %arrayidx10.7.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 23
  %98 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx10.7.i, align 1
  %conv11.7.i = zext i8 %99 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %97, ptr noundef nonnull @.str.22, i32 noundef %conv11.7.i) #6
  %100 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buffer, align 4
  %arrayidx10.8.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 24
  %102 = ptrtoint ptr %arrayidx10.8.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx10.8.i, align 1
  %conv11.8.i = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %101, ptr noundef nonnull @.str.22, i32 noundef %conv11.8.i) #6
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %arrayidx10.9.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 25
  %106 = ptrtoint ptr %arrayidx10.9.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx10.9.i, align 1
  %conv11.9.i = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %105, ptr noundef nonnull @.str.22, i32 noundef %conv11.9.i) #6
  %108 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer, align 4
  %arrayidx10.10.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 26
  %110 = ptrtoint ptr %arrayidx10.10.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx10.10.i, align 1
  %conv11.10.i = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %109, ptr noundef nonnull @.str.22, i32 noundef %conv11.10.i) #6
  %112 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buffer, align 4
  %arrayidx10.11.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 27
  %114 = ptrtoint ptr %arrayidx10.11.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx10.11.i, align 1
  %conv11.11.i = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %113, ptr noundef nonnull @.str.22, i32 noundef %conv11.11.i) #6
  %116 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buffer, align 4
  %arrayidx10.12.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 28
  %118 = ptrtoint ptr %arrayidx10.12.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx10.12.i, align 1
  %conv11.12.i = zext i8 %119 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %117, ptr noundef nonnull @.str.22, i32 noundef %conv11.12.i) #6
  %120 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %buffer, align 4
  %arrayidx10.13.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 29
  %122 = ptrtoint ptr %arrayidx10.13.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx10.13.i, align 1
  %conv11.13.i = zext i8 %123 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %121, ptr noundef nonnull @.str.22, i32 noundef %conv11.13.i) #6
  %124 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buffer, align 4
  %arrayidx10.14.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 30
  %126 = ptrtoint ptr %arrayidx10.14.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx10.14.i, align 1
  %conv11.14.i = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %125, ptr noundef nonnull @.str.22, i32 noundef %conv11.14.i) #6
  %128 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %129, ptr noundef nonnull @.str.23) #6
  br label %dump_cs2000_registers.exit

dump_cs2000_registers.exit:                       ; preds = %if.then.i, %entry.dump_cs2000_registers.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs2000_registers_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 5, i8 noundef zeroext 8) #6
  %arrayidx.i = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %arrayidx.i, align 1
  %3 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %arrayidx.i13 = getelementptr %struct.xonar_pcm179x, ptr %4, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i13, align 1
  %6 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 3, i8 noundef zeroext 1) #6
  %arrayidx.i15 = getelementptr %struct.xonar_pcm179x, ptr %7, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx.i15, align 1
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 4, i8 noundef zeroext 0) #6
  %arrayidx.i17 = getelementptr %struct.xonar_pcm179x, ptr %10, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i17, align 1
  %12 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 6, i8 noundef zeroext 0) #6
  %arrayidx.i19 = getelementptr %struct.xonar_pcm179x, ptr %13, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i19, align 1
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 7, i8 noundef zeroext 16) #6
  %arrayidx.i21 = getelementptr %struct.xonar_pcm179x, ptr %16, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %arrayidx.i21, align 1
  %18 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  %arrayidx.i23 = getelementptr %struct.xonar_pcm179x, ptr %19, i32 0, i32 8, i32 8
  %20 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.i23, align 1
  %21 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 9, i8 noundef zeroext 0) #6
  %arrayidx.i25 = getelementptr %struct.xonar_pcm179x, ptr %22, i32 0, i32 8, i32 9
  %23 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i25, align 1
  %arrayidx = getelementptr %struct.xonar_pcm179x, ptr %1, i32 0, i32 8, i32 22
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 2
  %26 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 22, i8 noundef zeroext %25) #6
  %arrayidx.i27 = getelementptr %struct.xonar_pcm179x, ptr %27, i32 0, i32 8, i32 22
  %28 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx.i27, align 1
  %29 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 23, i8 noundef zeroext 0) #6
  %arrayidx.i29 = getelementptr %struct.xonar_pcm179x, ptr %30, i32 0, i32 8, i32 23
  %31 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx.i29, align 1
  %32 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -100, i8 noundef zeroext 5, i8 noundef zeroext 1) #6
  %arrayidx.i31 = getelementptr %struct.xonar_pcm179x, ptr %33, i32 0, i32 8, i32 5
  %34 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx.i31, align 1
  tail call void @msleep(i32 noundef 3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xonar_st_init_common(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %output_enable_bit, align 4
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %3 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac_channels_mixer, align 1
  %5 = lshr i8 %4, 1
  %div = zext i8 %5 to i32
  %dacs = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dacs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %dacs, align 4
  %7 = load i8, ptr %dac_channels_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ugt i8 %7, 2
  %h6 = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %8 = ptrtoint ptr %h6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %h6, align 4
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -36, ptr %hp_gain_offset, align 2
  %10 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.xonar_pcm179x, ptr %11, i32 0, i32 2, i32 0, i32 2
  %broken_i2c.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %broken_i2c.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %broken_i2c.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -47, i8 -48
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select.i, ptr %arrayidx1.i, align 2
  %arrayidx8.i = getelementptr %struct.xonar_pcm179x, ptr %11, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8.i, align 1
  %h6.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %h6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %h6.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not.i = icmp eq i8 %17, 0
  %conv11.i = select i1 %tobool9.not.i, i8 2, i8 0
  %arrayidx14.i = getelementptr %struct.xonar_pcm179x, ptr %11, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11.i, ptr %arrayidx14.i, align 4
  tail call fastcc void @pcm1796_registers_init(ptr noundef %chip) #6
  %current_rate.i = getelementptr inbounds %struct.xonar_pcm179x, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48000, ptr %current_rate.i, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 450, i16 noundef zeroext 450) #6
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 386) #6
  tail call void @xonar_init_cs53x1(ptr noundef %chip) #6
  tail call void @xonar_enable_output(ptr noundef %chip) #6
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %21, ptr noundef nonnull @.str.27) #6
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call6 = tail call i32 @snd_component_add(ptr noundef %23, ptr noundef nonnull @.str.14) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_output_switch_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @st_output_switch_info.names) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_output_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #6
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value1, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %value9, align 8
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %value9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then5, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_output_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #6
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = and i16 %call, -131
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = or i16 %call, 130
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = and i16 %call, -131
  %10 = or i16 %9, 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %gpio.0 = phi i16 [ %call, %entry.sw.epilog_crit_edge ], [ %10, %sw.bb6 ], [ %8, %sw.bb3 ], [ %7, %sw.bb ]
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %gpio.0) #6
  %hp_active = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 5
  %11 = trunc i16 %gpio.0 to i8
  %12 = lshr i8 %11, 7
  %13 = ptrtoint ptr %hp_active to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hp_active, align 1
  tail call void @update_pcm1796_volume(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %gpio.0, i16 %call)
  %cmp = icmp ne i16 %gpio.0, %call
  %conv16 = zext i1 %cmp to i32
  ret i32 %conv16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_hp_volume_offset_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @st_hp_volume_offset_info.names) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_hp_volume_offset_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hp_gain_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %5)
  %cmp = icmp slt i8 %5, -24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value2, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -12, i8 %5)
  %cmp5 = icmp slt i8 %5, -12
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %value8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %value8, align 8
  br label %if.end22

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp13 = icmp slt i8 %5, 0
  %value16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br i1 %cmp13, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %value16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %value16, align 8
  br label %if.end22

if.else18:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %value16, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then15, %if.then7, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_hp_volume_offset_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data, align 4
  %arrayidx4 = getelementptr [4 x i8], ptr @st_hp_volume_offset_put.offsets, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %hp_gain_offset = getelementptr inbounds %struct.xonar_pcm179x, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hp_gain_offset, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp6 = icmp ne i8 %7, %9
  %conv7 = zext i1 %cmp6 to i32
  br i1 %cmp6, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hp_gain_offset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %hp_gain_offset, align 2
  tail call void @update_pcm1796_volume(ptr noundef %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv7, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xense_output_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #6
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value1, align 8
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %value12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %value12, align 8
  br label %if.end14

if.else11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %value12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xense_output_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #6
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = or i16 %call, 130
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = and i16 %call, -131
  %9 = or i16 %8, 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = and i16 %call, -131
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %gpio.0 = phi i16 [ %call, %entry.sw.epilog_crit_edge ], [ %10, %sw.bb7 ], [ %9, %sw.bb3 ], [ %7, %sw.bb ]
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %gpio.0) #6
  %hp_active = getelementptr inbounds %struct.xonar_pcm179x, ptr %3, i32 0, i32 5
  %11 = trunc i16 %gpio.0 to i8
  %12 = xor i8 %11, -1
  %13 = lshr i8 %12, 7
  %14 = ptrtoint ptr %hp_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %hp_active, align 1
  tail call void @update_pcm1796_volume(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %gpio.0, i16 %call)
  %cmp = icmp ne i16 %gpio.0, %call
  %conv16 = zext i1 %cmp to i32
  ret i32 %conv16
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1281, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1285, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1293, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1296, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1307, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1310, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1321, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1331, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1334, i32 28}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1346, i32 27}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1347, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1174, i32 14}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1175, i32 10}
!26 = !{ptr @model_xonar_d2, !27, !"model_xonar_d2", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1173, i32 34}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 352, i32 32}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 353, i32 32}
!32 = !{ptr @pcm1796_write_spi.codec_map, !33, !"codec_map", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 236, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1042, i32 31}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 727, i32 10}
!38 = !{ptr @alt_switch, !39, !"alt_switch", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 725, i32 38}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 783, i32 10}
!42 = !{ptr @rolloff_control, !43, !"rolloff_control", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 781, i32 38}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 738, i32 3}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 738, i32 21}
!48 = !{ptr @rolloff_info.names, !49, !"names", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 737, i32 27}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 826, i32 10}
!52 = !{ptr @deemph_control, !53, !"deemph_control", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 824, i32 38}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1141, i32 3}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1143, i32 4}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1146, i32 2}
!60 = !{ptr @pcm1796_db_scale, !61, !"pcm1796_db_scale", i1 false, i1 false}
!61 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1038, i32 14}
!62 = !{ptr @model_xonar_hdav, !63, !"model_xonar_hdav", i1 false, i1 false}
!63 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1209, i32 34}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 834, i32 10}
!66 = !{ptr @hdav_hdmi_control, !67, !"hdav_hdmi_control", i1 false, i1 false}
!67 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 832, i32 38}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1244, i32 14}
!70 = !{ptr @model_xonar_st, !71, !"model_xonar_st", i1 false, i1 false}
!71 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1243, i32 34}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 479, i32 32}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 428, i32 32}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 951, i32 11}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 958, i32 11}
!80 = !{ptr @st_controls, !81, !"st_controls", i1 false, i1 false}
!81 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 948, i32 38}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 845, i32 3}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 845, i32 15}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 845, i32 29}
!88 = !{ptr @st_output_switch_info.names, !89, !"names", i1 false, i1 false}
!89 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 844, i32 27}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 900, i32 3}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 900, i32 16}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 900, i32 30}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 900, i32 45}
!98 = !{ptr @st_hp_volume_offset_info.names, !99, !"names", i1 false, i1 false}
!99 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 899, i32 27}
!100 = !{ptr @st_hp_volume_offset_put.offsets, !101, !"offsets", i1 false, i1 false}
!101 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 929, i32 18}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1156, i32 3}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1159, i32 3}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1050, i32 31}
!108 = !{ptr @xense_controls, !109, !"xense_controls", i1 false, i1 false}
!109 = !{!"../sound/pci/oxygen/xonar_pcm179x.c", i32 1009, i32 38}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
