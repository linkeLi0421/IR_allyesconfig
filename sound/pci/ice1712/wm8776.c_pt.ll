; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/wm8776.c_pt.bc'
source_filename = "../sound/pci/ice1712/wm8776.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_wm8776_ctl = type { ptr, i32, [16 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.snd_wm8776 = type { ptr, [32 x %struct.snd_wm8776_ctl], i32, %struct.snd_wm8776_ops, [23 x i16] }
%struct.snd_wm8776_ops = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.53, i32 }
%union.anon.53 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.52, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%union.anon.52 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.47, [128 x i8] }
%union.anon.47 = type { %union.anon.49 }
%union.anon.49 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.43, [64 x i8] }
%union.anon.43 = type { %struct.anon.46, [40 x i8] }
%struct.anon.46 = type { i32, i32, [64 x i8], i64, i32 }

@snd_wm8776_init.default_values = internal constant { [23 x i16], [50 x i8] } { [23 x i16] [i16 0, i16 256, i16 0, i16 0, i16 256, i16 0, i16 0, i16 144, i16 0, i16 0, i16 34, i16 34, i16 34, i16 8, i16 207, i16 207, i16 123, i16 0, i16 50, i16 0, i16 166, i16 1, i16 1], [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@wm8776_dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Master Zero Cross Detect Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@wm8776_hp_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Headphone Zero Cross Detect Playback Switch\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AUX Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bypass Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Infinite Zero Detect Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Phase Invert Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Deemphasis Playback Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@wm8776_adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN1 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN2 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN3 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN4 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIN5 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AGC Select Capture Enum\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Limiter\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Stereo\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Limiter Threshold Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@wm8776_lct_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1600, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Limiter Attack Time Capture Enum\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.25 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.5 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"128 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"256 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Limiter Decay Time Capture Enum\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.2 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.4 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.8 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.6 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"19.2 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"38.4 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"76.8 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"154 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"307 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"614 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.23 s\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter Transient Window Capture Enum\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 us\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"62.5 us\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"125 us\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"250 us\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"500 us\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Limiter Maximum Attenuation Capture Volume\00", [53 x i8] zeroinitializer }, align 32
@wm8776_maxatten_lim_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ALC Target Level Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ALC Attack Time Capture Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.40 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"16.8 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"33.6 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"67.2 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"134 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"269 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"538 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.08 s\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.15 s\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.3 s\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8.6 s\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ALC Decay Time Capture Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"33.5 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"67.0 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"268 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"536 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.07 s\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.14 s\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.29 s\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.58 s\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"17.2 s\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"34.3 s\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ALC Maximum Gain Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@wm8776_maxgain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 400], [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ALC Maximum Attenuation Capture Volume\00", [57 x i8] zeroinitializer }, align 32
@wm8776_maxatten_alc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 400], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Hold Time Capture Enum\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.67 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.33 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.6 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"21.3 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"42.7 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"85.3 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"171 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"341 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"683 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.37 s\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.73 s\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.46 s\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10.9 s\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"21.8 s\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"43.7 s\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Noise Gate Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Noise Gate Threshold Capture Volume\00", [60 x i8] zeroinitializer }, align 32
@wm8776_ngth_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7800, i32 600], [16 x i8] zeroinitializer }, align 32
@snd_wm8776_default_ctl = internal constant { <{ %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, { ptr, i32, <{ ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, { ptr, i32, <{ [8 x ptr], [8 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl }>, [800 x i8] } { <{ %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, { ptr, i32, <{ ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, { ptr, i32, <{ [8 x ptr], [8 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl, %struct.snd_wm8776_ctl }> <{ %struct.snd_wm8776_ctl { ptr @.str, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_dac_tlv, i16 3, i16 4, i16 511, i16 511, i16 0, i16 255, i16 3, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.1, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 7, i16 7, i16 16, i16 128, i16 0, i16 0, i16 1, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.2, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 7, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.3, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_hp_tlv, i16 0, i16 1, i16 383, i16 383, i16 47, i16 127, i16 3, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.4, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 13, i16 0, i16 8, i16 0, i16 0, i16 0, i16 4, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.5, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 0, i16 1, i16 128, i16 128, i16 0, i16 0, i16 1, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.6, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 22, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.7, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 22, i16 0, i16 4, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.8, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 7, i16 0, i16 4, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.9, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 6, i16 6, i16 1, i16 2, i16 0, i16 0, i16 1, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.10, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.11, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_adc_tlv, i16 14, i16 15, i16 255, i16 255, i16 0, i16 255, i16 3, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.12, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 21, i16 128, i16 64, i16 0, i16 0, i16 5, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.13, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.14, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.15, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 0, i16 4, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.16, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.17, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 21, i16 0, i16 16, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, { ptr, i32, <{ ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr } { ptr @.str.18, i32 3, <{ ptr, ptr, ptr, ptr, ptr, [11 x ptr] }> <{ ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, [11 x ptr] zeroinitializer }>, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 5, i16 0, ptr @snd_wm8776_set_agc, ptr @snd_wm8776_get_agc }, %struct.snd_wm8776_ctl { ptr @.str.24, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_lct_tlv, i16 16, i16 0, i16 15, i16 0, i16 0, i16 15, i16 8, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.25, i32 3, [16 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, i16 18, i16 0, i16 15, i16 0, i16 0, i16 11, i16 8, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.37, i32 3, [16 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, i16 18, i16 0, i16 240, i16 0, i16 0, i16 11, i16 8, ptr null, ptr null }, { ptr, i32, <{ [8 x ptr], [8 x ptr] }>, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr } { ptr @.str.49, i32 3, <{ [8 x ptr], [8 x ptr] }> <{ [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.28, ptr @.str.29, ptr @.str.30], [8 x ptr] zeroinitializer }>, ptr null, i16 20, i16 0, i16 112, i16 0, i16 0, i16 8, i16 8, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.55, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_maxatten_lim_tlv, i16 20, i16 0, i16 15, i16 0, i16 3, i16 12, i16 12, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.56, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_lct_tlv, i16 16, i16 0, i16 15, i16 0, i16 0, i16 15, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.57, i32 3, [16 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, i16 18, i16 0, i16 15, i16 0, i16 0, i16 11, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.69, i32 3, [16 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.62, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, i16 18, i16 0, i16 240, i16 0, i16 0, i16 11, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.80, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_maxgain_tlv, i16 16, i16 0, i16 112, i16 0, i16 1, i16 7, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.81, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_maxatten_alc_tlv, i16 20, i16 0, i16 15, i16 0, i16 10, i16 15, i16 20, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.82, i32 3, [16 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], ptr null, i16 17, i16 0, i16 15, i16 0, i16 0, i16 16, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.99, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 19, i16 0, i16 1, i16 0, i16 0, i16 0, i16 16, ptr null, ptr null }, %struct.snd_wm8776_ctl { ptr @.str.100, i32 2, [16 x ptr] zeroinitializer, ptr @wm8776_ngth_tlv, i16 19, i16 0, i16 28, i16 0, i16 0, i16 7, i16 16, ptr null, ptr null } }>, [800 x i8] zeroinitializer }, align 32
@switch.table.snd_wm8776_set_agc = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 8, i32 16, i32 16, i32 16], [44 x i8] zeroinitializer }, align 32
@switch.table.snd_wm8776_set_agc.102 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 24, i32 16, i32 8, i32 8, i32 8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"default_values\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 415, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 134, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"wm8776_dac_tlv\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 124, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 145, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 154, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 160, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"wm8776_hp_tlv\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 123, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 172, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 179, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 188, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 194, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 200, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 206, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 215, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 221, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"wm8776_adc_tlv\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 125, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 232, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 241, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 247, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 253, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 259, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 265, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 271, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 273, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 273, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 273, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 273, i32 50 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 274, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 280, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"wm8776_lct_tlv\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 126, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 289, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 291, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 291, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 291, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 291, i32 48 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 291, i32 56 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 39 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 292, i32 49 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 299, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 301, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 301, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 301, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 301, i32 49 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 47 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 303, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 303, i32 14 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 310, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 312, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 312, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 312, i32 38 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 312, i32 48 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 312, i32 58 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 320, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant [24 x i8] c"wm8776_maxatten_lim_tlv\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 129, i32 14 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 330, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 339, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 341, i32 19 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 341, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 341, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 341, i32 52 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 342, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 342, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 342, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 342, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 342, i32 44 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 343, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 343, i32 13 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 350, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 352, i32 19 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 352, i32 30 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 352, i32 51 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 353, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 353, i32 14 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 353, i32 24 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 353, i32 34 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 353, i32 44 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 354, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 354, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 361, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant [19 x i8] c"wm8776_maxgain_tlv\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 127, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 371, i32 11 }
@___asan_gen_.371 = private unnamed_addr constant [24 x i8] c"wm8776_maxatten_alc_tlv\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 130, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 381, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 383, i32 19 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 383, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 383, i32 38 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 383, i32 49 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 384, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 384, i32 15 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 384, i32 26 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 384, i32 37 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 384, i32 47 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 385, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 385, i32 14 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 385, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 385, i32 34 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 385, i32 44 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 386, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 386, i32 14 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 393, i32 11 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 400, i32 11 }
@___asan_gen_.431 = private unnamed_addr constant [16 x i8] c"wm8776_ngth_tlv\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 128, i32 14 }
@___asan_gen_.434 = private unnamed_addr constant [23 x i8] c"snd_wm8776_default_ctl\00", align 1
@___asan_gen_.435 = private constant [30 x i8] c"../sound/pci/ice1712/wm8776.c\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 132, i32 36 }
@___asan_gen_.437 = private unnamed_addr constant [32 x i8] c"switch.table.snd_wm8776_set_agc\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [36 x i8] c"switch.table.snd_wm8776_set_agc.102\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @snd_wm8776_init.default_values, ptr @.str, ptr @wm8776_dac_tlv, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wm8776_hp_tlv, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @wm8776_adc_tlv, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @wm8776_lct_tlv, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @wm8776_maxatten_lim_tlv, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @wm8776_maxgain_tlv, ptr @.str.81, ptr @wm8776_maxatten_alc_tlv, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @wm8776_ngth_tlv, ptr @snd_wm8776_default_ctl, ptr @switch.table.snd_wm8776_set_agc, ptr @switch.table.snd_wm8776_set_agc.102], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_wm8776_init.default_values to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_hp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_lct_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxatten_lim_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxgain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_maxatten_alc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_ngth_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_wm8776_default_ctl to i32), i32 3200, i32 4000, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_wm8776_set_agc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_wm8776_set_agc.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8776_init(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %ctl, ptr @snd_wm8776_default_ctl, i32 3200)
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 3
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  tail call void %2(ptr noundef %wm, i8 noundef zeroext 46, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.07 to i16
  %arrayidx = getelementptr [23 x i16], ptr @snd_wm8776_init.default_values, i32 0, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %arrayidx.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 %i.07
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx.i, align 2
  %conv4.i = trunc i16 %5 to i8
  %shl.i = shl nuw nsw i16 %conv, 1
  %7 = lshr i16 %5, 8
  %or.i = or i16 %7, %shl.i
  %conv2.i = trunc i16 %or.i to i8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  tail call void %9(ptr noundef %wm, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8776_resume(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.05 to i16
  %arrayidx = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv4.i = trunc i16 %1 to i8
  %shl.i = shl i16 %conv, 1
  %2 = lshr i16 %1, 8
  %or.i = or i16 %2, %shl.i
  %conv2.i = trunc i16 %or.i to i8
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  tail call void %4(ptr noundef %wm, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8776_set_power(ptr noundef %wm, i16 noundef zeroext %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %power, ptr %arrayidx.i, align 2
  %conv4.i = trunc i16 %power to i8
  %1 = lshr i16 %power, 8
  %2 = trunc i16 %1 to i8
  %conv2.i = or i8 %2, 26
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  tail call void %4(ptr noundef %wm, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8776_volume_restore(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %2 = or i16 %1, 256
  store i16 %2, ptr %arrayidx, align 2
  %conv4.i = trunc i16 %1 to i8
  %3 = lshr i16 %2, 8
  %4 = trunc i16 %3 to i8
  %conv2.i = or i8 %4, 8
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  tail call void %6(ptr noundef %wm, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_wm8776_build_controls(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  %cont.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %cont.i, i32 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 11
  %name2.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 3
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 5
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 10
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 8
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 9
  %info34.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.012
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cont.i) #6
  %3 = call ptr @memset(ptr %0, i32 0, i32 28)
  %4 = ptrtoint ptr %cont.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %cont.i, align 4
  %5 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.012, ptr %private_value.i, align 4
  %6 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %name2.i, align 4
  %flags.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.012, i32 10
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 4
  %9 = and i16 %8, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  %spec.store.select.i = select i1 %10, i32 3, i32 259
  %11 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i, ptr %access.i, align 4
  %12 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tlv.i, align 4
  %13 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_wm8776_ctl_get, ptr %get.i, align 4
  %14 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_wm8776_ctl_put, ptr %put.i, align 4
  %type.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.012, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.then.snd_wm8776_add_control.exit.thread_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb20.i
    i32 3, label %sw.bb33.i
  ]

if.then.snd_wm8776_add_control.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_add_control.exit.thread

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_wm8776_volume_info, ptr %info34.i, align 4
  %or15.i = or i32 %spec.store.select.i, 16
  %19 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or15.i, ptr %access.i, align 4
  %tlv18.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.012, i32 3
  %20 = ptrtoint ptr %tlv18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tlv18.i, align 4
  %22 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tlv.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.then
  %max.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.012, i32 9
  %23 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %max.i, align 2
  %24 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool28.not.i = icmp eq i16 %24, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @snd_ctl_boolean_stereo_info, ptr %info34.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_ctl_boolean_mono_info, ptr %info34.i, align 4
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @snd_wm8776_enum_info, ptr %info34.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb33.i, %if.else.i, %if.then29.i, %sw.bb.i
  %call.i = call ptr @snd_ctl_new1(ptr noundef nonnull %cont.i, ptr noundef %wm) #6
  %tobool35.not.i = icmp eq ptr %call.i, null
  br i1 %tobool35.not.i, label %sw.epilog.i.snd_wm8776_add_control.exit.thread_crit_edge, label %snd_wm8776_add_control.exit

sw.epilog.i.snd_wm8776_add_control.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_add_control.exit.thread

snd_wm8776_add_control.exit.thread:               ; preds = %sw.epilog.i.snd_wm8776_add_control.exit.thread_crit_edge, %if.then.snd_wm8776_add_control.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %sw.epilog.i.snd_wm8776_add_control.exit.thread_crit_edge ], [ -22, %if.then.snd_wm8776_add_control.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont.i) #6
  br label %cleanup

snd_wm8776_add_control.exit:                      ; preds = %sw.epilog.i
  %28 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wm, align 4
  %call38.i = call i32 @snd_ctl_add(ptr noundef %29, ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp1 = icmp slt i32 %call38.i, 0
  br i1 %cmp1, label %snd_wm8776_add_control.exit.cleanup_crit_edge, label %snd_wm8776_add_control.exit.for.inc_crit_edge

snd_wm8776_add_control.exit.for.inc_crit_edge:    ; preds = %snd_wm8776_add_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

snd_wm8776_add_control.exit.cleanup_crit_edge:    ; preds = %snd_wm8776_add_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %snd_wm8776_add_control.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %snd_wm8776_add_control.exit.cleanup_crit_edge, %snd_wm8776_add_control.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %snd_wm8776_add_control.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ], [ %call38.i, %snd_wm8776_add_control.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_wm8776_set_agc(ptr noundef %wm, i16 noundef zeroext %agc, i16 noundef zeroext %nothing) #0 align 64 {
entry:
  %elem_id.i27.i = alloca %struct.snd_ctl_elem_id, align 4
  %elem_id.i.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %2 = and i16 %1, -16
  %arrayidx3 = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 4, i32 17
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 2
  %5 = and i16 %4, -257
  %6 = zext i16 %agc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %agc, label %entry.sw.epilog_crit_edge [
    i16 0, label %entry.sw.epilog.sink.split_crit_edge
    i16 1, label %sw.bb8
    i16 2, label %sw.bb12
    i16 3, label %sw.bb20
    i16 4, label %sw.bb28
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = or i16 %4, 256
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = or i16 %2, 128
  %9 = or i16 %4, 256
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i16 %2, 256
  %11 = or i16 %4, 256
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = or i16 %2, 384
  %13 = or i16 %4, 256
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb28, %sw.bb20, %sw.bb12, %sw.bb8, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb28 ], [ 3, %sw.bb20 ], [ 2, %sw.bb12 ], [ 1, %sw.bb8 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %alc1.0.ph = phi i16 [ %12, %sw.bb28 ], [ %10, %sw.bb20 ], [ %8, %sw.bb12 ], [ %2, %sw.bb8 ], [ %2, %entry.sw.epilog.sink.split_crit_edge ]
  %alc2.0.ph = phi i16 [ %13, %sw.bb28 ], [ %11, %sw.bb20 ], [ %9, %sw.bb12 ], [ %7, %sw.bb8 ], [ %5, %entry.sw.epilog.sink.split_crit_edge ]
  %agc_mode35 = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 2
  %14 = ptrtoint ptr %agc_mode35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %agc_mode35, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %alc1.0 = phi i16 [ %2, %entry.sw.epilog_crit_edge ], [ %alc1.0.ph, %sw.epilog.sink.split ]
  %alc2.0 = phi i16 [ %5, %entry.sw.epilog_crit_edge ], [ %alc2.0.ph, %sw.epilog.sink.split ]
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %alc1.0, ptr %arrayidx, align 2
  %conv4.i = trunc i16 %alc1.0 to i8
  %16 = lshr i16 %alc1.0, 8
  %17 = trunc i16 %16 to i8
  %conv2.i = or i8 %17, 32
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  tail call void %19(ptr noundef %wm, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %alc2.0, ptr %arrayidx3, align 2
  %conv4.i53 = trunc i16 %alc2.0 to i8
  %21 = lshr i16 %alc2.0, 8
  %22 = trunc i16 %21 to i8
  %conv2.i55 = or i8 %22, 34
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  tail call void %24(ptr noundef %wm, i8 noundef zeroext %conv2.i55, i8 noundef zeroext %conv4.i53) #6
  %agc_mode.i = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 2
  %25 = ptrtoint ptr %agc_mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %27 = icmp ult i32 %26, 5
  br i1 %27, label %switch.lookup, label %sw.epilog.sw.epilog.i_crit_edge

sw.epilog.sw.epilog.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.snd_wm8776_set_agc, i32 0, i32 %26
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep58 = getelementptr inbounds [5 x i32], ptr @switch.table.snd_wm8776_set_agc.102, i32 0, i32 %26
  %29 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog.i_crit_edge
  %flags_on.0.i = phi i32 [ 0, %sw.epilog.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags_off.0.i = phi i32 [ 0, %sw.epilog.sw.epilog.i_crit_edge ], [ %switch.load59, %switch.lookup ]
  %name.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i.i, i32 0, i32 4
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i.i, i32 0, i32 1
  %name.i28.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i27.i, i32 0, i32 4
  %iface.i30.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i27.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.i
  %i.039.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i57 = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.039.i
  %flags.i = getelementptr %struct.snd_wm8776, ptr %wm, i32 0, i32 1, i32 %i.039.i, i32 10
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 4
  %conv.i = zext i16 %31 to i32
  %and.i = and i32 %flags_off.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %32 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i57, align 4
  %34 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wm, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i.i) #6
  %36 = call ptr @memset(ptr %elem_id.i.i, i32 0, i32 64)
  %call.i.i = call i32 @strscpy(ptr noundef %name.i.i, ptr noundef %33, i32 noundef 44) #6
  %37 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call ptr @snd_ctl_find_id(ptr noundef %35, ptr noundef nonnull %elem_id.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.snd_wm8776_activate_ctl.exit.i_crit_edge, label %if.end.i.i

if.then.i.snd_wm8776_activate_ctl.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_activate_ctl.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %id.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i, i32 0, i32 1
  %count.i6.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %count.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i6.i.i.i, align 4
  %40 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 %39) #6
  %access.i.i = getelementptr %struct.snd_kcontrol, ptr %call2.i.i, i32 0, i32 10, i32 0, i32 1
  %41 = ptrtoint ptr %access.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %access.i.i, align 4
  %or.sink.i.i = or i32 %42, 256
  store i32 %or.sink.i.i, ptr %access.i.i, align 4
  call void @snd_ctl_notify(ptr noundef %35, i32 noundef 2, ptr noundef %id.i.i) #6
  br label %snd_wm8776_activate_ctl.exit.i

snd_wm8776_activate_ctl.exit.i:                   ; preds = %if.end.i.i, %if.then.i.snd_wm8776_activate_ctl.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i.i) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %and9.i = and i32 %flags_on.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then11.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.else.i
  %43 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i57, align 4
  %45 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wm, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i27.i) #6
  %47 = call ptr @memset(ptr %elem_id.i27.i, i32 0, i32 64)
  %call.i29.i = call i32 @strscpy(ptr noundef %name.i28.i, ptr noundef %44, i32 noundef 44) #6
  %48 = ptrtoint ptr %iface.i30.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %iface.i30.i, align 4
  %call2.i31.i = call ptr @snd_ctl_find_id(ptr noundef %46, ptr noundef nonnull %elem_id.i27.i) #6
  %tobool.not.i32.i = icmp eq ptr %call2.i31.i, null
  br i1 %tobool.not.i32.i, label %if.then11.i.snd_wm8776_activate_ctl.exit38.i_crit_edge, label %if.end.i37.i

if.then11.i.snd_wm8776_activate_ctl.exit38.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_activate_ctl.exit38.i

if.end.i37.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %id.i33.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i31.i, i32 0, i32 1
  %count.i6.i.i34.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i31.i, i32 0, i32 2
  %49 = ptrtoint ptr %count.i6.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count.i6.i.i34.i, align 4
  %51 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 %50) #6
  %access.i35.i = getelementptr %struct.snd_kcontrol, ptr %call2.i31.i, i32 0, i32 10, i32 0, i32 1
  %52 = ptrtoint ptr %access.i35.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %access.i35.i, align 4
  %and.i36.i = and i32 %53, -257
  store i32 %and.i36.i, ptr %access.i35.i, align 4
  call void @snd_ctl_notify(ptr noundef %46, i32 noundef 2, ptr noundef %id.i33.i) #6
  br label %snd_wm8776_activate_ctl.exit38.i

snd_wm8776_activate_ctl.exit38.i:                 ; preds = %if.end.i37.i, %if.then11.i.snd_wm8776_activate_ctl.exit38.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i27.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %snd_wm8776_activate_ctl.exit38.i, %if.else.i.for.inc.i_crit_edge, %snd_wm8776_activate_ctl.exit.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %snd_wm8776_update_agc_ctl.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_wm8776_update_agc_ctl.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_wm8776_get_agc(ptr nocapture noundef readonly %wm, ptr nocapture noundef writeonly %mode, ptr nocapture noundef readnone %nothing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %agc_mode = getelementptr inbounds %struct.snd_wm8776, ptr %wm, i32 0, i32 2
  %0 = ptrtoint ptr %agc_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %agc_mode, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %mode, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8776_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val1 = alloca i16, align 2
  %val2 = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val1) #6
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val1, align 2, !annotation !231
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val2) #6
  %5 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val2, align 2, !annotation !231
  %get = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 12
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void %7(ptr noundef %1, ptr noundef nonnull %val1, ptr noundef nonnull %val2) #6
  br label %if.end53

if.else:                                          ; preds = %entry
  %reg1 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 4
  %8 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg1, align 4
  %idxprom = zext i16 %9 to i32
  %arrayidx6 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6, align 2
  %mask1 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %12 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mask1, align 4
  %and141 = and i16 %13, %11
  %conv14 = zext i16 %13 to i32
  %14 = tail call i32 @llvm.cttz.i32(i32 %conv14, i1 false) #6, !range !232
  %conv15 = zext i16 %and141 to i32
  %shr = lshr i32 %conv15, %14
  %conv16 = trunc i32 %shr to i16
  %15 = ptrtoint ptr %val1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16, ptr %val1, align 2
  %flags = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 4
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool21.not = icmp eq i16 %18, 0
  br i1 %tobool21.not, label %if.else.if.end53_crit_edge, label %if.then22

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then22:                                        ; preds = %if.else
  %reg2 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %19 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg2, align 2
  %idxprom26 = zext i16 %20 to i32
  %arrayidx27 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 4, i32 %idxprom26
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx27, align 2
  %mask2 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 7
  %23 = ptrtoint ptr %mask2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask2, align 2
  %and32142 = and i16 %24, %22
  %conv37 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.cttz.i32(i32 %conv37, i1 false) #6, !range !232
  %conv39 = zext i16 %and32142 to i32
  %shr40 = lshr i32 %conv39, %25
  %conv41 = trunc i32 %shr40 to i16
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv41, ptr %val2, align 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 4
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool47.not = icmp eq i16 %29, 0
  br i1 %tobool47.not, label %if.then22.if.end53_crit_edge, label %if.then48

if.then22.if.end53_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then48:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %conv51 = and i16 %conv41, -257
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv51, ptr %val2, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then22.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then
  %flags56 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %31 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags56, align 4
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool59.not = icmp eq i16 %33, 0
  br i1 %tobool59.not, label %if.end53.if.end90_crit_edge, label %if.then60

if.end53.if.end90_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then60:                                        ; preds = %if.end53
  %max = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max, align 2
  %36 = ptrtoint ptr %val1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %val1, align 2
  %min = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %38 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min, align 4
  %sub.neg = sub i16 %35, %37
  %sub68 = add i16 %sub.neg, %39
  store i16 %sub68, ptr %val1, align 2
  %40 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags56, align 4
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool75.not = icmp eq i16 %42, 0
  br i1 %tobool75.not, label %if.then60.if.end90_crit_edge, label %if.then76

if.then60.if.end90_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then76:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max, align 2
  %45 = ptrtoint ptr %val2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val2, align 2
  %47 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %min, align 4
  %sub86.neg = sub i16 %44, %46
  %sub87 = add i16 %sub86.neg, %48
  store i16 %sub87, ptr %val2, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.then76, %if.then60.if.end90_crit_edge, %if.end53.if.end90_crit_edge
  %49 = ptrtoint ptr %val1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %val1, align 2
  %conv91 = zext i16 %50 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv91, ptr %value, align 8
  %52 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags56, align 4
  %54 = and i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool98.not = icmp eq i16 %54, 0
  br i1 %tobool98.not, label %if.end90.if.end103_crit_edge, label %if.then99

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val2, align 2
  %conv100 = zext i16 %56 to i32
  %arrayidx102 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv100, ptr %arrayidx102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end90.if.end103_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8776_ctl_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %conv = trunc i32 %5 to i16
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %7 to i16
  %flags = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max, align 2
  %min = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %13 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min, align 4
  %15 = sub i16 %12, %conv
  %conv14 = add i16 %15, %14
  %16 = sub i16 %12, %conv3
  %conv26 = add i16 %16, %14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regval1.0 = phi i16 [ %conv14, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %regval2.0 = phi i16 [ %conv26, %if.then ], [ %conv3, %entry.if.end_crit_edge ]
  %set = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 11
  %17 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %18(ptr noundef %1, i16 noundef zeroext %regval1.0, i16 noundef zeroext %regval2.0) #6
  br label %if.end143

if.else:                                          ; preds = %if.end
  %reg1 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 4
  %19 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg1, align 4
  %idxprom = zext i16 %20 to i32
  %arrayidx36 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 4, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx36, align 2
  %mask1 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %23 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask1, align 4
  %conv40 = zext i16 %24 to i32
  %neg = xor i16 %24, -1
  %and41 = and i16 %22, %neg
  %conv43 = zext i16 %regval1.0 to i32
  %25 = tail call i32 @llvm.cttz.i32(i32 %conv40, i1 false) #6, !range !232
  %shl = shl i32 %conv43, %25
  %26 = trunc i32 %shl to i16
  %conv49 = or i16 %and41, %26
  %27 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool55.not = icmp eq i16 %27, 0
  br i1 %tobool55.not, label %if.else.if.end82_crit_edge, label %land.lhs.true

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true:                                    ; preds = %if.else
  %reg2 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %28 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %29)
  %cmp = icmp eq i16 %20, %29
  br i1 %cmp, label %if.then64, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mask2 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 7
  %30 = ptrtoint ptr %mask2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mask2, align 2
  %conv67 = zext i16 %31 to i32
  %neg68 = xor i16 %31, -1
  %and70 = and i16 %conv49, %neg68
  %conv72 = zext i16 %regval2.0 to i32
  %32 = tail call i32 @llvm.cttz.i32(i32 %conv67, i1 false) #6, !range !232
  %shl78 = shl i32 %conv72, %32
  %33 = trunc i32 %shl78 to i16
  %conv81 = or i16 %and70, %33
  br label %if.end82

if.end82:                                         ; preds = %if.then64, %land.lhs.true.if.end82_crit_edge, %if.else.if.end82_crit_edge
  %val.0 = phi i16 [ %conv81, %if.then64 ], [ %conv49, %land.lhs.true.if.end82_crit_edge ], [ %conv49, %if.else.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %20)
  %cmp.i = icmp ult i16 %20, 23
  br i1 %cmp.i, label %if.then.i, label %if.end82.snd_wm8776_write.exit_crit_edge

if.end82.snd_wm8776_write.exit_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_write.exit

if.then.i:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %val.0, ptr %arrayidx36, align 2
  br label %snd_wm8776_write.exit

snd_wm8776_write.exit:                            ; preds = %if.then.i, %if.end82.snd_wm8776_write.exit_crit_edge
  %conv4.i = trunc i16 %val.0 to i8
  %shl.i = shl i16 %20, 1
  %35 = lshr i16 %val.0, 8
  %or.i = or i16 %35, %shl.i
  %conv2.i = trunc i16 %or.i to i8
  %ops.i = getelementptr inbounds %struct.snd_wm8776, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  tail call void %37(ptr noundef %1, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i) #6
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 4
  %40 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool91.not = icmp eq i16 %40, 0
  br i1 %tobool91.not, label %snd_wm8776_write.exit.if.end143_crit_edge, label %land.lhs.true92

snd_wm8776_write.exit.if.end143_crit_edge:        ; preds = %snd_wm8776_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

land.lhs.true92:                                  ; preds = %snd_wm8776_write.exit
  %41 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %reg1, align 4
  %reg299 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %43 = ptrtoint ptr %reg299 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %reg299, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp101.not = icmp eq i16 %42, %44
  br i1 %cmp101.not, label %land.lhs.true92.if.end143_crit_edge, label %if.then103

land.lhs.true92.if.end143_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then103:                                       ; preds = %land.lhs.true92
  %conv100 = zext i16 %44 to i32
  %arrayidx109 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 4, i32 %conv100
  %45 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx109, align 2
  %mask2113 = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 7
  %47 = ptrtoint ptr %mask2113 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mask2113, align 2
  %conv114 = zext i16 %48 to i32
  %neg115 = xor i16 %48, -1
  %and116 = and i16 %46, %neg115
  %conv118 = zext i16 %regval2.0 to i32
  %49 = tail call i32 @llvm.cttz.i32(i32 %conv114, i1 false) #6, !range !232
  %shl124 = shl i32 %conv118, %49
  %50 = trunc i32 %shl124 to i16
  %conv127 = or i16 %and116, %50
  %51 = shl i16 %39, 7
  %52 = and i16 %51, 256
  %53 = or i16 %conv127, %52
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %44)
  %cmp.i208 = icmp ult i16 %44, 23
  br i1 %cmp.i208, label %if.then.i211, label %if.then103.snd_wm8776_write.exit217_crit_edge

if.then103.snd_wm8776_write.exit217_crit_edge:    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_wm8776_write.exit217

if.then.i211:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx109, align 2
  br label %snd_wm8776_write.exit217

snd_wm8776_write.exit217:                         ; preds = %if.then.i211, %if.then103.snd_wm8776_write.exit217_crit_edge
  %conv4.i212 = trunc i16 %conv127 to i8
  %shl.i213 = shl i16 %44, 1
  %55 = lshr i16 %53, 8
  %or.i214 = or i16 %55, %shl.i213
  %conv2.i215 = trunc i16 %or.i214 to i8
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  tail call void %57(ptr noundef %1, i8 noundef zeroext %conv2.i215, i8 noundef zeroext %conv4.i212) #6
  br label %if.end143

if.end143:                                        ; preds = %snd_wm8776_write.exit217, %land.lhs.true92.if.end143_crit_edge, %snd_wm8776_write.exit.if.end143_crit_edge, %if.then30
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_wm8776_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %flags = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %count, align 8
  %min = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %9 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %min, align 4
  %conv3 = zext i16 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %value, align 8
  %max = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max, align 2
  %conv7 = zext i16 %13 to i32
  %max9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %max9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %max9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8776_enum_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
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
  %max = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max, align 2
  %conv = zext i16 %5 to i32
  %enum_names = getelementptr %struct.snd_wm8776, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %conv, ptr noundef %enum_names) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @snd_wm8776_init.default_values, !1, !"default_values", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/wm8776.c", i32 415, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/wm8776.c", i32 134, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/wm8776.c", i32 145, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/wm8776.c", i32 154, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/wm8776.c", i32 160, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/wm8776.c", i32 172, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/wm8776.c", i32 179, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/wm8776.c", i32 188, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/wm8776.c", i32 194, i32 11}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/wm8776.c", i32 200, i32 11}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/wm8776.c", i32 206, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/wm8776.c", i32 215, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/wm8776.c", i32 221, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/wm8776.c", i32 232, i32 11}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/wm8776.c", i32 241, i32 11}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/wm8776.c", i32 247, i32 11}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/wm8776.c", i32 253, i32 11}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/wm8776.c", i32 259, i32 11}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/wm8776.c", i32 265, i32 11}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/wm8776.c", i32 271, i32 11}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/wm8776.c", i32 273, i32 19}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/wm8776.c", i32 273, i32 26}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/wm8776.c", i32 273, i32 37}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/wm8776.c", i32 273, i32 50}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/wm8776.c", i32 274, i32 5}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/wm8776.c", i32 280, i32 11}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/wm8776.c", i32 289, i32 11}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/wm8776.c", i32 291, i32 19}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/wm8776.c", i32 291, i32 30}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/wm8776.c", i32 291, i32 40}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/wm8776.c", i32 291, i32 48}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/wm8776.c", i32 291, i32 56}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 12}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 21}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 30}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 39}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ice1712/wm8776.c", i32 292, i32 49}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ice1712/wm8776.c", i32 299, i32 11}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ice1712/wm8776.c", i32 301, i32 19}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/wm8776.c", i32 301, i32 29}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ice1712/wm8776.c", i32 301, i32 39}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ice1712/wm8776.c", i32 301, i32 49}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/wm8776.c", i32 302, i32 4}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ice1712/wm8776.c", i32 302, i32 15}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ice1712/wm8776.c", i32 302, i32 26}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/wm8776.c", i32 302, i32 37}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/wm8776.c", i32 302, i32 47}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/wm8776.c", i32 303, i32 4}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/wm8776.c", i32 303, i32 14}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/wm8776.c", i32 310, i32 11}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/wm8776.c", i32 312, i32 19}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/wm8776.c", i32 312, i32 27}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/wm8776.c", i32 312, i32 38}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/wm8776.c", i32 312, i32 48}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/wm8776.c", i32 312, i32 58}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/wm8776.c", i32 320, i32 11}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ice1712/wm8776.c", i32 330, i32 11}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ice1712/wm8776.c", i32 339, i32 11}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ice1712/wm8776.c", i32 341, i32 19}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/wm8776.c", i32 341, i32 30}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ice1712/wm8776.c", i32 341, i32 41}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ice1712/wm8776.c", i32 341, i32 52}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/wm8776.c", i32 342, i32 4}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ice1712/wm8776.c", i32 342, i32 14}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ice1712/wm8776.c", i32 342, i32 24}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/ice1712/wm8776.c", i32 342, i32 34}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ice1712/wm8776.c", i32 342, i32 44}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ice1712/wm8776.c", i32 343, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ice1712/wm8776.c", i32 343, i32 13}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/ice1712/wm8776.c", i32 350, i32 11}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ice1712/wm8776.c", i32 352, i32 19}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ice1712/wm8776.c", i32 352, i32 30}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/ice1712/wm8776.c", i32 352, i32 51}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ice1712/wm8776.c", i32 353, i32 4}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/ice1712/wm8776.c", i32 353, i32 14}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/ice1712/wm8776.c", i32 353, i32 24}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ice1712/wm8776.c", i32 353, i32 34}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ice1712/wm8776.c", i32 353, i32 44}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/ice1712/wm8776.c", i32 354, i32 4}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/ice1712/wm8776.c", i32 354, i32 14}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/ice1712/wm8776.c", i32 361, i32 11}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/ice1712/wm8776.c", i32 371, i32 11}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/ice1712/wm8776.c", i32 381, i32 11}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/ice1712/wm8776.c", i32 383, i32 19}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/ice1712/wm8776.c", i32 383, i32 27}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/ice1712/wm8776.c", i32 383, i32 38}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/ice1712/wm8776.c", i32 383, i32 49}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/ice1712/wm8776.c", i32 384, i32 4}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/ice1712/wm8776.c", i32 384, i32 15}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/ice1712/wm8776.c", i32 384, i32 26}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/ice1712/wm8776.c", i32 384, i32 37}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/ice1712/wm8776.c", i32 384, i32 47}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/ice1712/wm8776.c", i32 385, i32 4}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/ice1712/wm8776.c", i32 385, i32 14}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/ice1712/wm8776.c", i32 385, i32 24}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/ice1712/wm8776.c", i32 385, i32 34}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/ice1712/wm8776.c", i32 385, i32 44}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/ice1712/wm8776.c", i32 386, i32 4}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/ice1712/wm8776.c", i32 386, i32 14}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/ice1712/wm8776.c", i32 393, i32 11}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/ice1712/wm8776.c", i32 400, i32 11}
!204 = !{ptr @snd_wm8776_default_ctl, !205, !"snd_wm8776_default_ctl", i1 false, i1 false}
!205 = !{!"../sound/pci/ice1712/wm8776.c", i32 132, i32 36}
!206 = !{ptr @wm8776_dac_tlv, !207, !"wm8776_dac_tlv", i1 false, i1 false}
!207 = !{!"../sound/pci/ice1712/wm8776.c", i32 124, i32 14}
!208 = !{ptr @wm8776_hp_tlv, !209, !"wm8776_hp_tlv", i1 false, i1 false}
!209 = !{!"../sound/pci/ice1712/wm8776.c", i32 123, i32 14}
!210 = !{ptr @wm8776_adc_tlv, !211, !"wm8776_adc_tlv", i1 false, i1 false}
!211 = !{!"../sound/pci/ice1712/wm8776.c", i32 125, i32 14}
!212 = !{ptr @wm8776_lct_tlv, !213, !"wm8776_lct_tlv", i1 false, i1 false}
!213 = !{!"../sound/pci/ice1712/wm8776.c", i32 126, i32 14}
!214 = !{ptr @wm8776_maxatten_lim_tlv, !215, !"wm8776_maxatten_lim_tlv", i1 false, i1 false}
!215 = !{!"../sound/pci/ice1712/wm8776.c", i32 129, i32 14}
!216 = !{ptr @wm8776_maxgain_tlv, !217, !"wm8776_maxgain_tlv", i1 false, i1 false}
!217 = !{!"../sound/pci/ice1712/wm8776.c", i32 127, i32 14}
!218 = !{ptr @wm8776_maxatten_alc_tlv, !219, !"wm8776_maxatten_alc_tlv", i1 false, i1 false}
!219 = !{!"../sound/pci/ice1712/wm8776.c", i32 130, i32 14}
!220 = !{ptr @wm8776_ngth_tlv, !221, !"wm8776_ngth_tlv", i1 false, i1 false}
!221 = !{!"../sound/pci/ice1712/wm8776.c", i32 128, i32 14}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"auto-init"}
!232 = !{i32 0, i32 33}
