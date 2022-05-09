; ModuleID = '/llk/IR_all_yes/sound/usb/mixer_scarlett.c_pt.bc'
source_filename = "../sound/usb/mixer_scarlett.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scarlett_device_info = type { i32, i32, i32, i32, %struct.scarlett_mixer_elem_enum_info, %struct.scarlett_mixer_elem_enum_info, [18 x i32], i32, [10 x %struct.scarlett_mixer_control] }
%struct.scarlett_mixer_elem_enum_info = type { i32, i32, [5 x i32], ptr }
%struct.scarlett_mixer_control = type { i8, i8, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }

@snd_scarlett_controls_create.sample_rate_buffer = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\80\BB\00\00", [28 x i8] zeroinitializer }, align 32
@s6i6_info = internal constant { %struct.scarlett_device_info, [52 x i8] } { %struct.scarlett_device_info { i32 18, i32 8, i32 6, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 27, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 19, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, [18 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11], i32 9, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 1, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 3, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 3, ptr null }, %struct.scarlett_mixer_control zeroinitializer] }, [52 x i8] zeroinitializer }, align 32
@s8i6_info = internal constant { %struct.scarlett_device_info, [52 x i8] } { %struct.scarlett_device_info { i32 18, i32 6, i32 8, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 25, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 19, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, [18 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11], i32 7, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 2, ptr null }, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer] }, [52 x i8] zeroinitializer }, align 32
@s18i6_info = internal constant { %struct.scarlett_device_info, [52 x i8] } { %struct.scarlett_device_info { i32 18, i32 6, i32 18, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 31, [5 x i32] [i32 0, i32 6, i32 14, i32 16, i32 24], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 25, [5 x i32] [i32 0, i32 6, i32 14, i32 16, i32 24], ptr null }, [18 x i32] [i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 0, i32 1], i32 5, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer] }, [52 x i8] zeroinitializer }, align 32
@s18i8_info = internal constant { %struct.scarlett_device_info, [52 x i8] } { %struct.scarlett_device_info { i32 18, i32 8, i32 18, i32 8, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 35, [5 x i32] [i32 0, i32 8, i32 16, i32 18, i32 26], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 27, [5 x i32] [i32 0, i32 8, i32 16, i32 18, i32 26], ptr null }, [18 x i32] [i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 0, i32 1], i32 10, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.8 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.9 }, %struct.scarlett_mixer_control { i8 3, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 1, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 2, ptr null }] }, [52 x i8] zeroinitializer }, align 32
@s18i20_info = internal constant { %struct.scarlett_device_info, [52 x i8] } { %struct.scarlett_device_info { i32 18, i32 8, i32 18, i32 20, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 47, [5 x i32] [i32 0, i32 20, i32 28, i32 30, i32 38], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 39, [5 x i32] [i32 0, i32 20, i32 28, i32 30, i32 38], ptr null }, [18 x i32] [i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 0, i32 1], i32 10, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.10 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.11 }, %struct.scarlett_mixer_control { i8 3, i8 0, ptr @.str.12 }, %struct.scarlett_mixer_control { i8 4, i8 0, ptr @.str.13 }, %struct.scarlett_mixer_control { i8 5, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 6, i8 0, ptr @.str.14 }, %struct.scarlett_mixer_control { i8 7, i8 0, ptr @.str.15 }, %struct.scarlett_mixer_control { i8 8, i8 0, ptr @.str.16 }, %struct.scarlett_mixer_control { i8 9, i8 0, ptr @.str.17 }] }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Matrix %02d Input Playback Route\00", [63 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl_dynamic_enum = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_enum_dynamic_info, ptr @scarlett_ctl_enum_get, ptr @scarlett_ctl_enum_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Matrix %02d Mix %c Playback Volume\00", [61 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @scarlett_ctl_info, ptr @scarlett_ctl_get, ptr @scarlett_ctl_put, %union.anon.79 { ptr @db_scale_scarlett_gain }, i32 6 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Input Source %02d Capture Route\00", [32 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl_enum = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_enum_info, ptr @scarlett_ctl_enum_get, ptr @scarlett_ctl_enum_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sample Clock Source\00", [44 x i8] zeroinitializer }, align 32
@opt_clock = internal constant { %struct.scarlett_mixer_elem_enum_info, [32 x i8] } { %struct.scarlett_mixer_elem_enum_info { i32 1, i32 3, [5 x i32] zeroinitializer, ptr @.compoundliteral.44 }, [32 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl_sync = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 5, i32 0, ptr @scarlett_ctl_enum_info, ptr @scarlett_ctl_meter_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sample Clock Sync Status\00", [39 x i8] zeroinitializer }, align 32
@opt_sync = internal constant { %struct.scarlett_mixer_elem_enum_info, [32 x i8] } { %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.47 }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Monitor\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone 1\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone 2\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line 3/4\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line 5/6\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line 7/8\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line 9/10\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT 1/2\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT 3/4\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT 5/6\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT 7/8\00", [23 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_switch_info, ptr @scarlett_ctl_switch_get, ptr @scarlett_ctl_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@usb_scarlett_ctl_master = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @scarlett_ctl_info, ptr @scarlett_ctl_get, ptr @scarlett_ctl_put, %union.anon.79 { ptr @db_scale_scarlett_gain }, i32 6 }, [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Input %d Impedance Switch\00", [38 x i8] zeroinitializer }, align 32
@opt_impedance = internal constant { %struct.scarlett_mixer_elem_enum_info, [32 x i8] } { %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Input %d Pad Switch\00", [44 x i8] zeroinitializer }, align 32
@opt_pad = internal constant { %struct.scarlett_mixer_elem_enum_info, [32 x i8] } { %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.32 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input %d Gain Switch\00", [43 x i8] zeroinitializer }, align 32
@opt_gain = internal constant { %struct.scarlett_mixer_elem_enum_info, [32 x i8] } { %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.35 }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@db_scale_scarlett_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12800, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Master %d (%s) Playback Switch\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Master %d (%s) Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Master %dL (%s) Source Playback Enum\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Master %dR (%s) Source Playback Enum\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hi-Z\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0dB\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-10dB\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Lo\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Hi\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mix %c\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADAT %d\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPDIF %d\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Analog %d\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCM %d\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.42, ptr @.str.7, ptr @.str.43], [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No Lock\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Locked\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@switch.table.snd_scarlett_controls_create = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @s8i6_info, ptr @s18i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s18i20_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s18i8_info], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"sample_rate_buffer\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 920, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"s6i6_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 636, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"s8i6_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 678, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"s18i6_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 717, i32 42 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"s18i8_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 754, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"s18i20_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 796, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 953, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"usb_scarlett_ctl_dynamic_enum\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 520, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 963, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"usb_scarlett_ctl\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 488, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 976, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"usb_scarlett_ctl_enum\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 512, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 989, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"opt_clock\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 214, i32 51 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"usb_scarlett_ctl_sync\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 528, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 996, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"opt_sync\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 223, i32 51 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 658, i32 49 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 659, i32 49 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 660, i32 49 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 777, i32 49 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 778, i32 49 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 819, i32 49 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 820, i32 49 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 821, i32 49 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 822, i32 49 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 824, i32 49 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 825, i32 49 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 826, i32 49 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 827, i32 49 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"usb_scarlett_ctl_switch\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 478, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 856, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"usb_scarlett_ctl_master\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 500, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 863, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 879, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"opt_impedance\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 205, i32 51 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 888, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant [8 x i8] c"opt_pad\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 187, i32 51 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 897, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"opt_gain\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 196, i32 51 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 480, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"db_scale_scarlett_gain\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 486, i32 14 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 593, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 602, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 611, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 621, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 210, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 210, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 192, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 192, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 201, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 201, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 363, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 366, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 368, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 370, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 372, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 219, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 219, i32 24 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 228, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [30 x i8] c"../sound/usb/mixer_scarlett.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 228, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [42 x i8] c"switch.table.snd_scarlett_controls_create\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @snd_scarlett_controls_create.sample_rate_buffer, ptr @s6i6_info, ptr @s8i6_info, ptr @s18i6_info, ptr @s18i8_info, ptr @s18i20_info, ptr @.str, ptr @usb_scarlett_ctl_dynamic_enum, ptr @.str.1, ptr @usb_scarlett_ctl, ptr @.str.2, ptr @usb_scarlett_ctl_enum, ptr @.str.3, ptr @opt_clock, ptr @usb_scarlett_ctl_sync, ptr @.str.4, ptr @opt_sync, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @usb_scarlett_ctl_switch, ptr @.str.18, ptr @usb_scarlett_ctl_master, ptr @.str.19, ptr @.str.20, ptr @opt_impedance, ptr @.str.21, ptr @opt_pad, ptr @.str.22, ptr @opt_gain, ptr @.str.23, ptr @db_scale_scarlett_gain, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @switch.table.snd_scarlett_controls_create], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_scarlett_controls_create.sample_rate_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6i6_info to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8i6_info to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i6_info to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i8_info to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i20_info to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl_dynamic_enum to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl_enum to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_clock to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl_sync to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_sync to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_scarlett_ctl_master to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_impedance to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_pad to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_gain to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_scarlett_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_scarlett_controls_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_scarlett_controls_create(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  %mx.i.i = alloca [44 x i8], align 1
  %mx.i = alloca [44 x i8], align 1
  %mx = alloca [44 x i8], align 1
  %elem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mx) #8
  %0 = call ptr @memset(ptr %mx, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elem) #8
  %1 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %elem, align 4, !annotation !133
  %protocol = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mixer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_id, align 4
  %8 = add i32 %7, -305496066
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %9 to i16
  %switch.shifted = lshr i16 803, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.snd_scarlett_controls_create, i32 0, i32 %9
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mx.i) #8
  %13 = call ptr @memset(ptr %mx.i, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %switch.lookup.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i.i

switch.lookup.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i.i:                                       ; preds = %switch.lookup
  %15 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mixer, ptr %call7.i.i.i.i, align 8
  %resume3.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %resume3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @scarlett_ctl_resume, ptr %resume3.i.i, align 8
  %control.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %control.i.i, align 4
  %idx_off.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %idx_off.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idx_off.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 10, ptr %id.i.i, align 4
  %val_type5.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %val_type5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %val_type5.i.i, align 4
  %channels6.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %channels6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %channels6.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %private_data.i.i, align 4
  %call7.i.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_switch, ptr noundef nonnull %call7.i.i.i.i) #8
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %scarlett_controls_create_generic.exit.thread

if.end10.i.i:                                     ; preds = %if.end.i.i
  %private_free.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i, align 4
  %name12.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i, i32 0, i32 1, i32 4
  %call13.i.i = tail call i32 @strscpy(ptr noundef %name12.i.i, ptr noundef nonnull @.str.18, i32 noundef 44) #8
  %call15.i.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i

if.end10.i.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i:                                         ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i82.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i83.i = icmp eq ptr %call7.i.i.i82.i, null
  br i1 %tobool.not.i83.i, label %if.end.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i93.i

if.end.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i93.i:                                     ; preds = %if.end.i
  %25 = ptrtoint ptr %call7.i.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mixer, ptr %call7.i.i.i82.i, align 8
  %resume3.i84.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i82.i, i32 0, i32 6
  %26 = ptrtoint ptr %resume3.i84.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @scarlett_ctl_resume, ptr %resume3.i84.i, align 8
  %control.i85.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i82.i, i32 0, i32 1
  %27 = ptrtoint ptr %control.i85.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %control.i85.i, align 4
  %idx_off.i86.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i82.i, i32 0, i32 3
  %28 = ptrtoint ptr %idx_off.i86.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %idx_off.i86.i, align 4
  %id.i87.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i82.i, i32 0, i32 3
  %29 = ptrtoint ptr %id.i87.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %id.i87.i, align 4
  %val_type5.i88.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i82.i, i32 0, i32 7
  %30 = ptrtoint ptr %val_type5.i88.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %val_type5.i88.i, align 4
  %channels6.i89.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i82.i, i32 0, i32 6
  %31 = ptrtoint ptr %channels6.i89.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %channels6.i89.i, align 8
  %private_data.i90.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i82.i, i32 0, i32 17
  %32 = ptrtoint ptr %private_data.i90.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %private_data.i90.i, align 4
  %call7.i91.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_master, ptr noundef nonnull %call7.i.i.i82.i) #8
  %tobool8.not.i92.i = icmp eq ptr %call7.i91.i, null
  br i1 %tobool8.not.i92.i, label %if.then9.i94.i, label %if.end10.i100.i

if.then9.i94.i:                                   ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i82.i) #8
  br label %scarlett_controls_create_generic.exit.thread

if.end10.i100.i:                                  ; preds = %if.end.i93.i
  %private_free.i95.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i91.i, i32 0, i32 9
  %33 = ptrtoint ptr %private_free.i95.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i95.i, align 4
  %name12.i96.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i91.i, i32 0, i32 1, i32 4
  %call13.i97.i = tail call i32 @strscpy(ptr noundef %name12.i96.i, ptr noundef nonnull @.str.19, i32 noundef 44) #8
  %call15.i98.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i82.i, ptr noundef nonnull %call7.i91.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i98.i)
  %cmp.i99.i = icmp slt i32 %call15.i98.i, 0
  br i1 %cmp.i99.i, label %if.end10.i100.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %for.cond.preheader.i

if.end10.i100.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end10.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

for.cond.preheader.i:                             ; preds = %if.end10.i100.i
  %num_controls.i = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 7
  %34 = ptrtoint ptr %num_controls.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_controls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5191.i = icmp sgt i32 %35, 0
  br i1 %cmp5191.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.scarlett_controls_create_generic.exit_crit_edge

for.cond.preheader.i.scarlett_controls_create_generic.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %opt_master.i.i = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0192.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 8, i32 %i.0192.i
  %type.i = getelementptr %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 8, i32 %i.0192.i, i32 1
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %type.i, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %for.body.i.for.inc.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb12.i
    i8 2, label %sw.bb24.i
    i8 3, label %sw.bb37.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 4
  %conv6.i = zext i8 %40 to i32
  %name.i = getelementptr %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 8, i32 %i.0192.i, i32 2
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mx.i.i) #8
  %43 = call ptr @memset(ptr %mx.i.i, i32 255, i32 44)
  %add.i.i = add nuw nsw i32 %conv6.i, 1
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx.i.i, i32 noundef 44, ptr noundef nonnull @.str.24, i32 noundef %add.i.i, ptr noundef %42) #8
  %mul.i.i = shl nuw nsw i32 %conv6.i, 1
  %add1.i.i = or i32 %mul.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end.i.i.i

sw.bb.i.add_output_ctls.exit.thread.i_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %45 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mixer, ptr %call7.i.i.i.i.i, align 8
  %resume3.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %resume3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @scarlett_ctl_resume, ptr %resume3.i.i.i, align 8
  %control.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %control.i.i.i, align 4
  %idx_off.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %idx_off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add1.i.i, ptr %idx_off.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10, ptr %id.i.i.i, align 4
  %val_type5.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %val_type5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %val_type5.i.i.i, align 4
  %channels6.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %channels6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %channels6.i.i.i, align 8
  %private_data.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 17
  %52 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %private_data.i.i.i, align 4
  %call7.i.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_switch, ptr noundef nonnull %call7.i.i.i.i.i) #8
  %tobool8.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, label %if.end10.i.i.i

if.end.i.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.sink.split.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %private_free.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i.i, i32 0, i32 9
  %53 = ptrtoint ptr %private_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i.i, align 4
  %name12.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %call13.i.i.i = call i32 @strscpy(ptr noundef %name12.i.i.i, ptr noundef nonnull %mx.i.i, i32 noundef 44) #8
  %call15.i.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call15.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.i.i.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end.i104.i

if.end10.i.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end.i104.i:                                    ; preds = %if.end10.i.i.i
  %call6.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx.i.i, i32 noundef 44, ptr noundef nonnull @.str.25, i32 noundef %add.i.i, ptr noundef %42) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i57.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i58.i.i = icmp eq ptr %call7.i.i.i57.i.i, null
  br i1 %tobool.not.i58.i.i, label %if.end.i104.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end.i68.i.i

if.end.i104.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end.i68.i.i:                                   ; preds = %if.end.i104.i
  %55 = ptrtoint ptr %call7.i.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %mixer, ptr %call7.i.i.i57.i.i, align 8
  %resume3.i59.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i57.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %resume3.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @scarlett_ctl_resume, ptr %resume3.i59.i.i, align 8
  %control.i60.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i57.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %control.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %control.i60.i.i, align 4
  %idx_off.i61.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i57.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %idx_off.i61.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add1.i.i, ptr %idx_off.i61.i.i, align 4
  %id.i62.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i57.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %id.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %id.i62.i.i, align 4
  %val_type5.i63.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i57.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %val_type5.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %val_type5.i63.i.i, align 4
  %channels6.i64.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i57.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %channels6.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %channels6.i64.i.i, align 8
  %private_data.i65.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i57.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %private_data.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %private_data.i65.i.i, align 4
  %call7.i66.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_master, ptr noundef nonnull %call7.i.i.i57.i.i) #8
  %tobool8.not.i67.i.i = icmp eq ptr %call7.i66.i.i, null
  br i1 %tobool8.not.i67.i.i, label %if.end.i68.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, label %if.end10.i75.i.i

if.end.i68.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.sink.split.i

if.end10.i75.i.i:                                 ; preds = %if.end.i68.i.i
  %private_free.i70.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i66.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %private_free.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i70.i.i, align 4
  %name12.i71.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i66.i.i, i32 0, i32 1, i32 4
  %call13.i72.i.i = call i32 @strscpy(ptr noundef %name12.i71.i.i, ptr noundef nonnull %mx.i.i, i32 noundef 44) #8
  %call15.i73.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i57.i.i, ptr noundef nonnull %call7.i66.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i73.i.i)
  %cmp.i74.i.i = icmp slt i32 %call15.i73.i.i, 0
  br i1 %cmp.i74.i.i, label %if.end10.i75.i.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end13.i.i

if.end10.i75.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end10.i75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end10.i75.i.i
  %call16.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx.i.i, i32 noundef 44, ptr noundef nonnull @.str.26, i32 noundef %add.i.i, ptr noundef %42) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i79.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i80.i.i = icmp eq ptr %call7.i.i.i79.i.i, null
  br i1 %tobool.not.i80.i.i, label %if.end13.i.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end.i90.i.i

if.end13.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end.i90.i.i:                                   ; preds = %if.end13.i.i
  %65 = ptrtoint ptr %call7.i.i.i79.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mixer, ptr %call7.i.i.i79.i.i, align 8
  %resume3.i81.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i79.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %resume3.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i81.i.i, align 8
  %control.i82.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i79.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %control.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %control.i82.i.i, align 4
  %idx_off.i83.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i79.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %idx_off.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i.i, ptr %idx_off.i83.i.i, align 4
  %id.i84.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i79.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %id.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 51, ptr %id.i84.i.i, align 4
  %val_type5.i85.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i79.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %val_type5.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %val_type5.i85.i.i, align 4
  %channels6.i86.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i79.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %channels6.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %channels6.i86.i.i, align 8
  %private_data.i87.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i79.i.i, i32 0, i32 17
  %72 = ptrtoint ptr %private_data.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %opt_master.i.i, ptr %private_data.i87.i.i, align 4
  %call7.i88.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %call7.i.i.i79.i.i) #8
  %tobool8.not.i89.i.i = icmp eq ptr %call7.i88.i.i, null
  br i1 %tobool8.not.i89.i.i, label %if.end.i90.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, label %if.end10.i97.i.i

if.end.i90.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.sink.split.i

if.end10.i97.i.i:                                 ; preds = %if.end.i90.i.i
  %private_free.i92.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i88.i.i, i32 0, i32 9
  %73 = ptrtoint ptr %private_free.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i92.i.i, align 4
  %name12.i93.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i88.i.i, i32 0, i32 1, i32 4
  %call13.i94.i.i = call i32 @strscpy(ptr noundef %name12.i93.i.i, ptr noundef nonnull %mx.i.i, i32 noundef 44) #8
  %call15.i95.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i79.i.i, ptr noundef nonnull %call7.i88.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i95.i.i)
  %cmp.i96.i.i = icmp slt i32 %call15.i95.i.i, 0
  br i1 %cmp.i96.i.i, label %if.end10.i97.i.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end22.i.i

if.end10.i97.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end10.i97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end22.i.i:                                     ; preds = %if.end10.i97.i.i
  %call25.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx.i.i, i32 noundef 44, ptr noundef nonnull @.str.27, i32 noundef %add.i.i, ptr noundef %42) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i101.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i102.i.i = icmp eq ptr %call7.i.i.i101.i.i, null
  br i1 %tobool.not.i102.i.i, label %if.end22.i.i.add_output_ctls.exit.thread.i_crit_edge, label %if.end.i112.i.i

if.end22.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

if.end.i112.i.i:                                  ; preds = %if.end22.i.i
  %75 = ptrtoint ptr %call7.i.i.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %mixer, ptr %call7.i.i.i101.i.i, align 8
  %resume3.i103.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i101.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %resume3.i103.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i103.i.i, align 8
  %control.i104.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i101.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %control.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %control.i104.i.i, align 4
  %idx_off.i105.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i101.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %idx_off.i105.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add1.i.i, ptr %idx_off.i105.i.i, align 4
  %id.i106.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i101.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %id.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 51, ptr %id.i106.i.i, align 4
  %val_type5.i107.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i101.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %val_type5.i107.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %val_type5.i107.i.i, align 4
  %channels6.i108.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i101.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %channels6.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %channels6.i108.i.i, align 8
  %private_data.i109.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i101.i.i, i32 0, i32 17
  %82 = ptrtoint ptr %private_data.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %opt_master.i.i, ptr %private_data.i109.i.i, align 4
  %call7.i110.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %call7.i.i.i101.i.i) #8
  %tobool8.not.i111.i.i = icmp eq ptr %call7.i110.i.i, null
  br i1 %tobool8.not.i111.i.i, label %if.end.i112.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, label %if.end10.i119.i.i

if.end.i112.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.sink.split.i

if.end10.i119.i.i:                                ; preds = %if.end.i112.i.i
  %private_free.i114.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i110.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %private_free.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i114.i.i, align 4
  %name12.i115.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i110.i.i, i32 0, i32 1, i32 4
  %call13.i116.i.i = call i32 @strscpy(ptr noundef %name12.i115.i.i, ptr noundef nonnull %mx.i.i, i32 noundef 44) #8
  %call15.i117.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i101.i.i, ptr noundef nonnull %call7.i110.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i117.i.i)
  %cmp.i118.i.i = icmp slt i32 %call15.i117.i.i, 0
  br i1 %cmp.i118.i.i, label %if.end10.i119.i.i.add_output_ctls.exit.thread.i_crit_edge, label %add_output_ctls.exit.i

if.end10.i119.i.i.add_output_ctls.exit.thread.i_crit_edge: ; preds = %if.end10.i119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_output_ctls.exit.thread.i

add_output_ctls.exit.thread.sink.split.i:         ; preds = %if.end.i112.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, %if.end.i90.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, %if.end.i68.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge, %if.end.i.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge
  %call7.i.i.i.i.lcssa210.sink.i = phi ptr [ %call7.i.i.i.i.i, %if.end.i.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge ], [ %call7.i.i.i57.i.i, %if.end.i68.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge ], [ %call7.i.i.i79.i.i, %if.end.i90.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge ], [ %call7.i.i.i101.i.i, %if.end.i112.i.i.add_output_ctls.exit.thread.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.lcssa210.sink.i) #8
  br label %add_output_ctls.exit.thread.i

add_output_ctls.exit.thread.i:                    ; preds = %add_output_ctls.exit.thread.sink.split.i, %if.end10.i119.i.i.add_output_ctls.exit.thread.i_crit_edge, %if.end22.i.i.add_output_ctls.exit.thread.i_crit_edge, %if.end10.i97.i.i.add_output_ctls.exit.thread.i_crit_edge, %if.end13.i.i.add_output_ctls.exit.thread.i_crit_edge, %if.end10.i75.i.i.add_output_ctls.exit.thread.i_crit_edge, %if.end.i104.i.add_output_ctls.exit.thread.i_crit_edge, %if.end10.i.i.i.add_output_ctls.exit.thread.i_crit_edge, %sw.bb.i.add_output_ctls.exit.thread.i_crit_edge
  %retval.0.i105.ph.i = phi i32 [ -12, %add_output_ctls.exit.thread.sink.split.i ], [ -12, %if.end13.i.i.add_output_ctls.exit.thread.i_crit_edge ], [ %call15.i95.i.i, %if.end10.i97.i.i.add_output_ctls.exit.thread.i_crit_edge ], [ -12, %if.end.i104.i.add_output_ctls.exit.thread.i_crit_edge ], [ %call15.i73.i.i, %if.end10.i75.i.i.add_output_ctls.exit.thread.i_crit_edge ], [ -12, %sw.bb.i.add_output_ctls.exit.thread.i_crit_edge ], [ %call15.i.i.i, %if.end10.i.i.i.add_output_ctls.exit.thread.i_crit_edge ], [ %call15.i117.i.i, %if.end10.i119.i.i.add_output_ctls.exit.thread.i_crit_edge ], [ -12, %if.end22.i.i.add_output_ctls.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mx.i.i) #8
  br label %scarlett_controls_create_generic.exit.thread

add_output_ctls.exit.i:                           ; preds = %if.end10.i119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mx.i.i) #8
  br label %for.inc.i

sw.bb12.i:                                        ; preds = %for.body.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i, align 4
  %conv14.i = zext i8 %85 to i32
  %call15.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mx.i, ptr noundef nonnull @.str.20, i32 noundef %conv14.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i106.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i107.i = icmp eq ptr %call7.i.i.i106.i, null
  br i1 %tobool.not.i107.i, label %sw.bb12.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i117.i

sw.bb12.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i117.i:                                    ; preds = %sw.bb12.i
  %87 = ptrtoint ptr %call7.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %mixer, ptr %call7.i.i.i106.i, align 8
  %resume3.i108.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i106.i, i32 0, i32 6
  %88 = ptrtoint ptr %resume3.i108.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i108.i, align 8
  %control.i109.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i106.i, i32 0, i32 1
  %89 = ptrtoint ptr %control.i109.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 9, ptr %control.i109.i, align 4
  %idx_off.i110.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i106.i, i32 0, i32 3
  %90 = ptrtoint ptr %idx_off.i110.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv14.i, ptr %idx_off.i110.i, align 4
  %id.i111.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i106.i, i32 0, i32 3
  %91 = ptrtoint ptr %id.i111.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %id.i111.i, align 4
  %val_type5.i112.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i106.i, i32 0, i32 7
  %92 = ptrtoint ptr %val_type5.i112.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %val_type5.i112.i, align 4
  %channels6.i113.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i106.i, i32 0, i32 6
  %93 = ptrtoint ptr %channels6.i113.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %channels6.i113.i, align 8
  %private_data.i114.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i106.i, i32 0, i32 17
  %94 = ptrtoint ptr %private_data.i114.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @opt_impedance, ptr %private_data.i114.i, align 4
  %call7.i115.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %call7.i.i.i106.i) #8
  %tobool8.not.i116.i = icmp eq ptr %call7.i115.i, null
  br i1 %tobool8.not.i116.i, label %if.then9.i118.i, label %if.end10.i124.i

if.then9.i118.i:                                  ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i106.i) #8
  br label %scarlett_controls_create_generic.exit.thread

if.end10.i124.i:                                  ; preds = %if.end.i117.i
  %private_free.i119.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i115.i, i32 0, i32 9
  %95 = ptrtoint ptr %private_free.i119.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i119.i, align 4
  %name12.i120.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i115.i, i32 0, i32 1, i32 4
  %call13.i121.i = call i32 @strscpy(ptr noundef %name12.i120.i, ptr noundef nonnull %mx.i, i32 noundef 44) #8
  %call15.i122.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i106.i, ptr noundef nonnull %call7.i115.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i122.i)
  %cmp.i123.i = icmp slt i32 %call15.i122.i, 0
  br i1 %cmp.i123.i, label %if.end10.i124.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end10.i124.i.for.inc.i_crit_edge

if.end10.i124.i.for.inc.i_crit_edge:              ; preds = %if.end10.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end10.i124.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end10.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

sw.bb24.i:                                        ; preds = %for.body.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i, align 4
  %conv27.i = zext i8 %97 to i32
  %call28.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mx.i, ptr noundef nonnull @.str.21, i32 noundef %conv27.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i128.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i129.i = icmp eq ptr %call7.i.i.i128.i, null
  br i1 %tobool.not.i129.i, label %sw.bb24.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i139.i

sw.bb24.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i139.i:                                    ; preds = %sw.bb24.i
  %99 = ptrtoint ptr %call7.i.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %mixer, ptr %call7.i.i.i128.i, align 8
  %resume3.i130.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i128.i, i32 0, i32 6
  %100 = ptrtoint ptr %resume3.i130.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i130.i, align 8
  %control.i131.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i128.i, i32 0, i32 1
  %101 = ptrtoint ptr %control.i131.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 11, ptr %control.i131.i, align 4
  %idx_off.i132.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i128.i, i32 0, i32 3
  %102 = ptrtoint ptr %idx_off.i132.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv27.i, ptr %idx_off.i132.i, align 4
  %id.i133.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i128.i, i32 0, i32 3
  %103 = ptrtoint ptr %id.i133.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %id.i133.i, align 4
  %val_type5.i134.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i128.i, i32 0, i32 7
  %104 = ptrtoint ptr %val_type5.i134.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %val_type5.i134.i, align 4
  %channels6.i135.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i128.i, i32 0, i32 6
  %105 = ptrtoint ptr %channels6.i135.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %channels6.i135.i, align 8
  %private_data.i136.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i128.i, i32 0, i32 17
  %106 = ptrtoint ptr %private_data.i136.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @opt_pad, ptr %private_data.i136.i, align 4
  %call7.i137.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %call7.i.i.i128.i) #8
  %tobool8.not.i138.i = icmp eq ptr %call7.i137.i, null
  br i1 %tobool8.not.i138.i, label %if.then9.i140.i, label %if.end10.i146.i

if.then9.i140.i:                                  ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i128.i) #8
  br label %scarlett_controls_create_generic.exit.thread

if.end10.i146.i:                                  ; preds = %if.end.i139.i
  %private_free.i141.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i137.i, i32 0, i32 9
  %107 = ptrtoint ptr %private_free.i141.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i141.i, align 4
  %name12.i142.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i137.i, i32 0, i32 1, i32 4
  %call13.i143.i = call i32 @strscpy(ptr noundef %name12.i142.i, ptr noundef nonnull %mx.i, i32 noundef 44) #8
  %call15.i144.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i128.i, ptr noundef nonnull %call7.i137.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i144.i)
  %cmp.i145.i = icmp slt i32 %call15.i144.i, 0
  br i1 %cmp.i145.i, label %if.end10.i146.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end10.i146.i.for.inc.i_crit_edge

if.end10.i146.i.for.inc.i_crit_edge:              ; preds = %if.end10.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end10.i146.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end10.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

sw.bb37.i:                                        ; preds = %for.body.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i, align 4
  %conv40.i = zext i8 %109 to i32
  %call41.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mx.i, ptr noundef nonnull @.str.22, i32 noundef %conv40.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i150.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i151.i = icmp eq ptr %call7.i.i.i150.i, null
  br i1 %tobool.not.i151.i, label %sw.bb37.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end.i161.i

sw.bb37.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

if.end.i161.i:                                    ; preds = %sw.bb37.i
  %111 = ptrtoint ptr %call7.i.i.i150.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %mixer, ptr %call7.i.i.i150.i, align 8
  %resume3.i152.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i150.i, i32 0, i32 6
  %112 = ptrtoint ptr %resume3.i152.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i152.i, align 8
  %control.i153.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i150.i, i32 0, i32 1
  %113 = ptrtoint ptr %control.i153.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %control.i153.i, align 4
  %idx_off.i154.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i150.i, i32 0, i32 3
  %114 = ptrtoint ptr %idx_off.i154.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv40.i, ptr %idx_off.i154.i, align 4
  %id.i155.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i150.i, i32 0, i32 3
  %115 = ptrtoint ptr %id.i155.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %id.i155.i, align 4
  %val_type5.i156.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i150.i, i32 0, i32 7
  %116 = ptrtoint ptr %val_type5.i156.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %val_type5.i156.i, align 4
  %channels6.i157.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i150.i, i32 0, i32 6
  %117 = ptrtoint ptr %channels6.i157.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %channels6.i157.i, align 8
  %private_data.i158.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i150.i, i32 0, i32 17
  %118 = ptrtoint ptr %private_data.i158.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @opt_gain, ptr %private_data.i158.i, align 4
  %call7.i159.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %call7.i.i.i150.i) #8
  %tobool8.not.i160.i = icmp eq ptr %call7.i159.i, null
  br i1 %tobool8.not.i160.i, label %if.then9.i162.i, label %if.end10.i168.i

if.then9.i162.i:                                  ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i150.i) #8
  br label %scarlett_controls_create_generic.exit.thread

if.end10.i168.i:                                  ; preds = %if.end.i161.i
  %private_free.i163.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i159.i, i32 0, i32 9
  %119 = ptrtoint ptr %private_free.i163.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i163.i, align 4
  %name12.i164.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i159.i, i32 0, i32 1, i32 4
  %call13.i165.i = call i32 @strscpy(ptr noundef %name12.i164.i, ptr noundef nonnull %mx.i, i32 noundef 44) #8
  %call15.i166.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i150.i, ptr noundef nonnull %call7.i159.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i166.i)
  %cmp.i167.i = icmp slt i32 %call15.i166.i, 0
  br i1 %cmp.i167.i, label %if.end10.i168.i.scarlett_controls_create_generic.exit.thread_crit_edge, label %if.end10.i168.i.for.inc.i_crit_edge

if.end10.i168.i.for.inc.i_crit_edge:              ; preds = %if.end10.i168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end10.i168.i.scarlett_controls_create_generic.exit.thread_crit_edge: ; preds = %if.end10.i168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit.thread

for.inc.i:                                        ; preds = %if.end10.i168.i.for.inc.i_crit_edge, %if.end10.i146.i.for.inc.i_crit_edge, %if.end10.i124.i.for.inc.i_crit_edge, %add_output_ctls.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0192.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not, label %for.inc.i.scarlett_controls_create_generic.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.scarlett_controls_create_generic.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scarlett_controls_create_generic.exit

scarlett_controls_create_generic.exit.thread:     ; preds = %if.end10.i168.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.then9.i162.i, %sw.bb37.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.end10.i146.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.then9.i140.i, %sw.bb24.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.end10.i124.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.then9.i118.i, %sw.bb12.i.scarlett_controls_create_generic.exit.thread_crit_edge, %add_output_ctls.exit.thread.i, %if.end10.i100.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.then9.i94.i, %if.end.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.end10.i.i.scarlett_controls_create_generic.exit.thread_crit_edge, %if.then9.i.i, %switch.lookup.scarlett_controls_create_generic.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then9.i162.i ], [ -12, %if.then9.i140.i ], [ -12, %if.then9.i118.i ], [ -12, %if.then9.i94.i ], [ -12, %if.end.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %call15.i98.i, %if.end10.i100.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ -12, %if.then9.i.i ], [ -12, %switch.lookup.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %call15.i.i, %if.end10.i.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %retval.0.i105.ph.i, %add_output_ctls.exit.thread.i ], [ -12, %sw.bb12.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %call15.i122.i, %if.end10.i124.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ -12, %sw.bb24.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %call15.i144.i, %if.end10.i146.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ -12, %sw.bb37.i.scarlett_controls_create_generic.exit.thread_crit_edge ], [ %call15.i166.i, %if.end10.i168.i.scarlett_controls_create_generic.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mx.i) #8
  br label %cleanup

scarlett_controls_create_generic.exit:            ; preds = %for.inc.i.scarlett_controls_create_generic.exit_crit_edge, %for.cond.preheader.i.scarlett_controls_create_generic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mx.i) #8
  %120 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %switch.load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp7177 = icmp sgt i32 %121, 0
  br i1 %cmp7177, label %for.body.lr.ph, label %scarlett_controls_create_generic.exit.for.cond30.preheader_crit_edge

scarlett_controls_create_generic.exit.for.cond30.preheader_crit_edge: ; preds = %scarlett_controls_create_generic.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond30.preheader

for.body.lr.ph:                                   ; preds = %scarlett_controls_create_generic.exit
  %opt_matrix = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 5
  %matrix_out = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %add_new_ctl.exit.for.cond.loopexit_crit_edge
  %exitcond194.not = icmp eq i32 %add, %121
  br i1 %exitcond194.not, label %for.cond.loopexit.for.cond30.preheader_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.loopexit.for.cond30.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond.loopexit.for.cond30.preheader_crit_edge, %scarlett_controls_create_generic.exit.for.cond30.preheader_crit_edge
  %input_len = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 2
  %122 = ptrtoint ptr %input_len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %input_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp31179 = icmp sgt i32 %123, 0
  br i1 %cmp31179, label %for.body32.lr.ph, label %for.cond30.preheader.for.end43_crit_edge

for.cond30.preheader.for.end43_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.body32.lr.ph:                                 ; preds = %for.cond30.preheader
  %opt_master = getelementptr inbounds %struct.scarlett_device_info, ptr %switch.load, i32 0, i32 4
  br label %for.body32

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.loopexit.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0178, 1
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx, i32 noundef 44, ptr noundef nonnull @.str, i32 noundef %add)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %124 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i110 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i110, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i111

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i111:                                      ; preds = %for.body
  %125 = ptrtoint ptr %call7.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %mixer, ptr %call7.i.i.i110, align 8
  %resume3.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i110, i32 0, i32 6
  %126 = ptrtoint ptr %resume3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i, align 8
  %control.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i110, i32 0, i32 1
  %127 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 6, ptr %control.i, align 4
  %idx_off.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i110, i32 0, i32 3
  %128 = ptrtoint ptr %idx_off.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %i.0178, ptr %idx_off.i, align 4
  %id.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i110, i32 0, i32 3
  %129 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 50, ptr %id.i, align 4
  %val_type5.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i110, i32 0, i32 7
  %130 = ptrtoint ptr %val_type5.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4, ptr %val_type5.i, align 4
  %channels6.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i110, i32 0, i32 6
  %131 = ptrtoint ptr %channels6.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %channels6.i, align 8
  %private_data.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i110, i32 0, i32 17
  %132 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %opt_matrix, ptr %private_data.i, align 4
  %call7.i = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %call7.i.i.i110) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i110) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i111
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %133 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %name12.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 1, i32 4
  %call13.i = call i32 @strscpy(ptr noundef %name12.i, ptr noundef nonnull %mx, i32 noundef 44) #8
  %call15.i112 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i110, ptr noundef nonnull %call7.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i112)
  %cmp.i = icmp slt i32 %call15.i112, 0
  br i1 %cmp.i, label %if.end10.i.cleanup_crit_edge, label %add_new_ctl.exit

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

add_new_ctl.exit:                                 ; preds = %if.end10.i
  %134 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i.i110, ptr %elem, align 4
  %135 = ptrtoint ptr %matrix_out to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %matrix_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp15175 = icmp sgt i32 %136, 0
  br i1 %cmp15175, label %for.body16.lr.ph, label %add_new_ctl.exit.for.cond.loopexit_crit_edge

add_new_ctl.exit.for.cond.loopexit_crit_edge:     ; preds = %add_new_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body16.lr.ph:                                 ; preds = %add_new_ctl.exit
  %shl = shl i32 %i.0178, 3
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.lr.ph
  %o.0176 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %for.inc.for.body16_crit_edge ]
  %add19 = add nuw i32 %o.0176, 65
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mx, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %add19)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i114 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i115 = icmp eq ptr %call7.i.i.i114, null
  br i1 %tobool.not.i115, label %for.body16.cleanup_crit_edge, label %if.end.i125

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i125:                                      ; preds = %for.body16
  %and = and i32 %o.0176, 7
  %add21 = or i32 %and, %shl
  %138 = ptrtoint ptr %call7.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %mixer, ptr %call7.i.i.i114, align 8
  %resume3.i116 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i114, i32 0, i32 6
  %139 = ptrtoint ptr %resume3.i116 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @scarlett_ctl_resume, ptr %resume3.i116, align 8
  %control.i117 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i114, i32 0, i32 1
  %140 = ptrtoint ptr %control.i117 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %control.i117, align 4
  %idx_off.i118 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i114, i32 0, i32 3
  %141 = ptrtoint ptr %idx_off.i118 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add21, ptr %idx_off.i118, align 4
  %id.i119 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i114, i32 0, i32 3
  %142 = ptrtoint ptr %id.i119 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 60, ptr %id.i119, align 4
  %val_type5.i120 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i114, i32 0, i32 7
  %143 = ptrtoint ptr %val_type5.i120 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 4, ptr %val_type5.i120, align 4
  %channels6.i121 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i114, i32 0, i32 6
  %144 = ptrtoint ptr %channels6.i121 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %channels6.i121, align 8
  %private_data.i122 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i114, i32 0, i32 17
  %145 = ptrtoint ptr %private_data.i122 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %private_data.i122, align 4
  %call7.i123 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl, ptr noundef nonnull %call7.i.i.i114) #8
  %tobool8.not.i124 = icmp eq ptr %call7.i123, null
  br i1 %tobool8.not.i124, label %if.then9.i126, label %if.end10.i132

if.then9.i126:                                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i114) #8
  br label %cleanup

if.end10.i132:                                    ; preds = %if.end.i125
  %private_free.i127 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i123, i32 0, i32 9
  %146 = ptrtoint ptr %private_free.i127 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i127, align 4
  %name12.i128 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i123, i32 0, i32 1, i32 4
  %call13.i129 = call i32 @strscpy(ptr noundef %name12.i128, ptr noundef nonnull %mx, i32 noundef 44) #8
  %call15.i130 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i114, ptr noundef nonnull %call7.i123, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i130)
  %cmp.i131 = icmp slt i32 %call15.i130, 0
  br i1 %cmp.i131, label %if.end10.i132.cleanup_crit_edge, label %for.inc

if.end10.i132.cleanup_crit_edge:                  ; preds = %if.end10.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end10.i132
  %147 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call7.i.i.i114, ptr %elem, align 4
  %inc = add nuw nsw i32 %o.0176, 1
  %exitcond193.not = icmp eq i32 %inc, %136
  br i1 %exitcond193.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body32:                                       ; preds = %add_new_ctl.exit157.for.body32_crit_edge, %for.body32.lr.ph
  %i.1180 = phi i32 [ 0, %for.body32.lr.ph ], [ %add34, %add_new_ctl.exit157.for.body32_crit_edge ]
  %add34 = add nuw nsw i32 %i.1180, 1
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mx, i32 noundef 44, ptr noundef nonnull @.str.2, i32 noundef %add34)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %148 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i136 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %148, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not.i137 = icmp eq ptr %call7.i.i.i136, null
  br i1 %tobool.not.i137, label %for.body32.cleanup_crit_edge, label %if.end.i147

for.body32.cleanup_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i147:                                      ; preds = %for.body32
  %149 = ptrtoint ptr %call7.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %mixer, ptr %call7.i.i.i136, align 8
  %resume3.i138 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i136, i32 0, i32 6
  %150 = ptrtoint ptr %resume3.i138 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @scarlett_ctl_enum_resume, ptr %resume3.i138, align 8
  %control.i139 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i136, i32 0, i32 1
  %151 = ptrtoint ptr %control.i139 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %control.i139, align 4
  %idx_off.i140 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i136, i32 0, i32 3
  %152 = ptrtoint ptr %idx_off.i140 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %i.1180, ptr %idx_off.i140, align 4
  %id.i141 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i136, i32 0, i32 3
  %153 = ptrtoint ptr %id.i141 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 52, ptr %id.i141, align 4
  %val_type5.i142 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i136, i32 0, i32 7
  %154 = ptrtoint ptr %val_type5.i142 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 4, ptr %val_type5.i142, align 4
  %channels6.i143 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i136, i32 0, i32 6
  %155 = ptrtoint ptr %channels6.i143 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %channels6.i143, align 8
  %private_data.i144 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i136, i32 0, i32 17
  %156 = ptrtoint ptr %private_data.i144 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %opt_master, ptr %private_data.i144, align 4
  %call7.i145 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %call7.i.i.i136) #8
  %tobool8.not.i146 = icmp eq ptr %call7.i145, null
  br i1 %tobool8.not.i146, label %if.then9.i148, label %if.end10.i154

if.then9.i148:                                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i136) #8
  br label %cleanup

if.end10.i154:                                    ; preds = %if.end.i147
  %private_free.i149 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i145, i32 0, i32 9
  %157 = ptrtoint ptr %private_free.i149 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i149, align 4
  %name12.i150 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i145, i32 0, i32 1, i32 4
  %call13.i151 = call i32 @strscpy(ptr noundef %name12.i150, ptr noundef nonnull %mx, i32 noundef 44) #8
  %call15.i152 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i136, ptr noundef nonnull %call7.i145, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i152)
  %cmp.i153 = icmp slt i32 %call15.i152, 0
  br i1 %cmp.i153, label %if.end10.i154.cleanup_crit_edge, label %add_new_ctl.exit157

if.end10.i154.cleanup_crit_edge:                  ; preds = %if.end10.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

add_new_ctl.exit157:                              ; preds = %if.end10.i154
  %158 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call7.i.i.i136, ptr %elem, align 4
  %exitcond195.not = icmp eq i32 %add34, %123
  br i1 %exitcond195.not, label %add_new_ctl.exit157.for.end43_crit_edge, label %add_new_ctl.exit157.for.body32_crit_edge

add_new_ctl.exit157.for.body32_crit_edge:         ; preds = %add_new_ctl.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

add_new_ctl.exit157.for.end43_crit_edge:          ; preds = %add_new_ctl.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.end43:                                        ; preds = %add_new_ctl.exit157.for.end43_crit_edge, %for.cond30.preheader.for.end43_crit_edge
  %call44 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull @scarlett_ctl_enum_resume, i32 noundef 40, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @opt_clock, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %for.end43.cleanup_crit_edge, label %if.end47

for.end43.cleanup_crit_edge:                      ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %for.end43
  %call48 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @usb_scarlett_ctl_sync, ptr noundef null, i32 noundef 60, i32 noundef 0, i32 noundef 2, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @opt_sync, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mixer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %shl.i = shl i32 %164, 8
  %or = or i32 %shl.i, -2147483648
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %160, i32 0, i32 28
  %165 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bInterfaceNumber.i, align 2
  %169 = zext i8 %168 to i16
  %conv = or i16 %169, 10496
  %call59 = call i32 @snd_usb_ctl_msg(ptr noundef %162, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %conv, ptr noundef nonnull @snd_scarlett_controls_create.sample_rate_buffer, i16 noundef zeroext 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end47.cleanup_crit_edge, %for.end43.cleanup_crit_edge, %if.end10.i154.cleanup_crit_edge, %if.then9.i148, %for.body32.cleanup_crit_edge, %if.end10.i132.cleanup_crit_edge, %if.then9.i126, %for.body16.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then9.i, %for.body.cleanup_crit_edge, %scarlett_controls_create_generic.exit.thread, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call44, %for.end43.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call59, %if.end51 ], [ %retval.0.i.ph, %scarlett_controls_create_generic.exit.thread ], [ -12, %if.then9.i ], [ -12, %if.then9.i126 ], [ -12, %if.then9.i148 ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -12, %for.body32.cleanup_crit_edge ], [ %call15.i152, %if.end10.i154.cleanup_crit_edge ], [ -12, %for.body16.cleanup_crit_edge ], [ %call15.i130, %if.end10.i132.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ %call15.i112, %if.end10.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elem) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mx) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef %ncontrol, ptr noundef %resume, i32 noundef %index, i32 noundef %offset, i32 noundef %num, i32 noundef %val_type, i32 noundef %channels, ptr noundef %name, ptr noundef %opt, ptr noundef writeonly %elem_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i, align 8
  %resume3 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %resume3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resume, ptr %resume3, align 8
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %offset, ptr %control, align 4
  %idx_off = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %idx_off to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num, ptr %idx_off, align 4
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %id, align 4
  %val_type5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %val_type5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val_type, ptr %val_type5, align 4
  %channels6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %channels, ptr %channels6, align 8
  %private_data = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opt, ptr %private_data, align 4
  %call7 = tail call ptr @snd_ctl_new1(ptr noundef %ncontrol, ptr noundef nonnull %call7.i.i) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call7, i32 0, i32 9
  %9 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free, align 4
  %name12 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7, i32 0, i32 1, i32 4
  %call13 = tail call i32 @strscpy(ptr noundef %name12, ptr noundef %name, i32 noundef 44) #8
  %call15 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %tobool18.not = icmp eq ptr %elem_ret, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %elem_ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %elem_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end10.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_resume(ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %list, i32 0, i32 13
  %0 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cache_val = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %list, i32 0, i32 14
  %2 = ptrtoint ptr %cache_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_val, align 4
  %call = tail call i32 @snd_usb_set_cur_mix_value(ptr noundef %list, i32 noundef 0, i32 noundef 0, i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_resume(ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %list, i32 0, i32 6
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %list, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cached, align 4
  %shl = shl nuw i32 1, %i.010
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.usb_mixer_elem_info, ptr %list, i32 0, i32 14, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @snd_usb_set_cur_mix_value(ptr noundef %list, i32 noundef %i.010, i32 noundef %i.010, i32 noundef %5) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett_ctl_switch_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_switch_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !133
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11 = icmp sgt i32 %4, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef %i.012, i32 noundef %i.012, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext, ptr %val, align 4
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.012, 1
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_switch_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %oval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oval) #8
  %2 = ptrtoint ptr %oval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %oval, align 4, !annotation !133
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp27 = icmp sgt i32 %4, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %changed.030 = phi i32 [ 0, %for.body.lr.ph ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef %i.028, i32 noundef %i.028, ptr noundef nonnull %oval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %7 = ptrtoint ptr %oval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lnot.ext)
  %cmp2.not = icmp eq i32 %8, %lnot.ext
  br i1 %cmp2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %1, i32 noundef %i.028, i32 noundef %i.028, i32 noundef %lnot.ext) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.030, %if.end.for.inc_crit_edge ], [ 1, %if.then3.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.028, 1
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.1, %for.inc.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_get_cur_mix_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_set_cur_mix_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett_ctl_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %7 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private_value, align 4
  %add = add i32 %8, 128
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !133
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp23 = icmp sgt i32 %4, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef %i.024, i32 noundef %i.024, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %6)
  %cmp2 = icmp sgt i32 %6, -32768
  %div = sdiv i32 %6, 256
  %cond = select i1 %cmp2, i32 %div, i32 -128
  %7 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private_value, align 4
  %9 = call i32 @llvm.smin.i32(i32 %cond, i32 %8)
  %add = add nsw i32 %9, 128
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %val, align 4
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.024
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %oval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oval) #8
  %2 = ptrtoint ptr %oval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %oval, align 4, !annotation !133
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp27 = icmp sgt i32 %4, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %changed.030 = phi i32 [ 0, %for.body.lr.ph ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef %i.028, i32 noundef %i.028, ptr noundef nonnull %oval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %sub = shl i32 %6, 8
  %mul = add i32 %sub, -32768
  %7 = ptrtoint ptr %oval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp2.not = icmp eq i32 %8, %mul
  br i1 %cmp2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %1, i32 noundef %i.028, i32 noundef %i.028, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.030, %if.end.for.inc_crit_edge ], [ 1, %if.then3.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.028, 1
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.1, %for.inc.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_dynamic_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %len = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %value, align 8
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %item, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp.not = icmp ult i32 %12, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %5, -1
  %13 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %item, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %item, align 4
  %name = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %offsets = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i = icmp slt i32 %17, %15
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = xor i32 %17, -1
  %sub2.i = add i32 %15, 65
  %add.i = add i32 %sub2.i, %18
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.36, i32 noundef %add.i) #8
  br label %scarlett_generate_name.exit

if.else.i:                                        ; preds = %if.end
  %arrayidx3.i = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %20)
  %cmp4.i = icmp sgt i32 %15, %20
  br i1 %cmp4.i, label %if.then5.i, label %if.else9.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub7.i = sub i32 %15, %20
  %call8.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.37, i32 noundef %sub7.i) #8
  br label %scarlett_generate_name.exit

if.else9.i:                                       ; preds = %if.else.i
  %arrayidx10.i = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %22)
  %cmp11.i = icmp sgt i32 %15, %22
  br i1 %cmp11.i, label %if.then12.i, label %if.else16.i

if.then12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub14.i = sub i32 %15, %22
  %call15.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.38, i32 noundef %sub14.i) #8
  br label %scarlett_generate_name.exit

if.else16.i:                                      ; preds = %if.else9.i
  %arrayidx17.i = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %24)
  %cmp18.i = icmp sgt i32 %15, %24
  br i1 %cmp18.i, label %if.then19.i, label %if.else23.i

if.then19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub21.i = sub i32 %15, %24
  %call22.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.39, i32 noundef %sub21.i) #8
  br label %scarlett_generate_name.exit

if.else23.i:                                      ; preds = %if.else16.i
  %25 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offsets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %26)
  %cmp25.i = icmp sgt i32 %15, %26
  br i1 %cmp25.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub28.i = sub i32 %15, %26
  %call29.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.40, i32 noundef %sub28.i) #8
  br label %scarlett_generate_name.exit

if.else30.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 1332110848, ptr %name, align 1
  br label %scarlett_generate_name.exit

scarlett_generate_name.exit:                      ; preds = %if.else30.i, %if.then26.i, %if.then19.i, %if.then12.i, %if.then5.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !133
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %sub = sub i32 %6, %8
  %9 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %len = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub3 = add i32 %11, -1
  %12 = call i32 @llvm.smin.i32(i32 %9, i32 %sub3)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %oval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oval) #8
  %4 = ptrtoint ptr %oval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %oval, align 4, !annotation !133
  %call = call i32 @snd_usb_get_cur_mix_value(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %oval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %add = add i32 %8, %6
  %9 = ptrtoint ptr %oval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp2.not = icmp eq i32 %add, %10
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_info(ptr nocapture noundef readonly %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 4
  %len = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %names = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %names, align 4
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef %5, i32 noundef %7, ptr noundef %9) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_meter_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %6 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %control, align 4
  %shl = shl i32 %8, 8
  %idx_off = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %idx_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx_off, align 4
  %or = or i32 %shl, %10
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 28
  %11 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %14 to i32
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %shl3 = shl i32 %16, 8
  %or4 = or i32 %shl3, %conv.i
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i = shl i32 %20, 8
  %or8 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %or to i16
  %conv9 = trunc i32 %or4 to i16
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels, align 4
  %conv10 = trunc i32 %22 to i16
  %call11 = call i32 @snd_usb_ctl_msg(ptr noundef %18, i32 noundef %or8, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext %conv, i16 noundef zeroext %conv9, ptr noundef nonnull %buf, i16 noundef zeroext %conv10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp14.not = icmp ne i8 %24, 0
  %cond22 = zext i1 %cmp14.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond22, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @snd_scarlett_controls_create.sample_rate_buffer, !1, !"sample_rate_buffer", i1 false, i1 false}
!1 = !{!"../sound/usb/mixer_scarlett.c", i32 920, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/mixer_scarlett.c", i32 953, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/usb/mixer_scarlett.c", i32 963, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/mixer_scarlett.c", i32 976, i32 28}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/mixer_scarlett.c", i32 989, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/mixer_scarlett.c", i32 996, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/mixer_scarlett.c", i32 658, i32 49}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/mixer_scarlett.c", i32 659, i32 49}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/mixer_scarlett.c", i32 660, i32 49}
!18 = !{ptr @s6i6_info, !19, !"s6i6_info", i1 false, i1 false}
!19 = !{!"../sound/usb/mixer_scarlett.c", i32 636, i32 42}
!20 = !{ptr @s8i6_info, !21, !"s8i6_info", i1 false, i1 false}
!21 = !{!"../sound/usb/mixer_scarlett.c", i32 678, i32 42}
!22 = !{ptr @s18i6_info, !23, !"s18i6_info", i1 false, i1 false}
!23 = !{!"../sound/usb/mixer_scarlett.c", i32 717, i32 42}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/mixer_scarlett.c", i32 777, i32 49}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/mixer_scarlett.c", i32 778, i32 49}
!28 = !{ptr @s18i8_info, !29, !"s18i8_info", i1 false, i1 false}
!29 = !{!"../sound/usb/mixer_scarlett.c", i32 754, i32 42}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/mixer_scarlett.c", i32 819, i32 49}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/mixer_scarlett.c", i32 820, i32 49}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/mixer_scarlett.c", i32 821, i32 49}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/mixer_scarlett.c", i32 822, i32 49}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/mixer_scarlett.c", i32 824, i32 49}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/mixer_scarlett.c", i32 825, i32 49}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/mixer_scarlett.c", i32 826, i32 49}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/usb/mixer_scarlett.c", i32 827, i32 49}
!46 = !{ptr @s18i20_info, !47, !"s18i20_info", i1 false, i1 false}
!47 = !{!"../sound/usb/mixer_scarlett.c", i32 796, i32 42}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/mixer_scarlett.c", i32 856, i32 24}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/mixer_scarlett.c", i32 863, i32 24}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/usb/mixer_scarlett.c", i32 879, i32 16}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/usb/mixer_scarlett.c", i32 888, i32 16}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/mixer_scarlett.c", i32 897, i32 16}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/usb/mixer_scarlett.c", i32 480, i32 10}
!60 = !{ptr @usb_scarlett_ctl_switch, !61, !"usb_scarlett_ctl_switch", i1 false, i1 false}
!61 = !{!"../sound/usb/mixer_scarlett.c", i32 478, i32 38}
!62 = !{ptr @usb_scarlett_ctl_master, !63, !"usb_scarlett_ctl_master", i1 false, i1 false}
!63 = !{!"../sound/usb/mixer_scarlett.c", i32 500, i32 38}
!64 = !{ptr @db_scale_scarlett_gain, !65, !"db_scale_scarlett_gain", i1 false, i1 false}
!65 = !{!"../sound/usb/mixer_scarlett.c", i32 486, i32 14}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/usb/mixer_scarlett.c", i32 593, i32 27}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/usb/mixer_scarlett.c", i32 602, i32 27}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/mixer_scarlett.c", i32 611, i32 27}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/mixer_scarlett.c", i32 621, i32 27}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/mixer_scarlett.c", i32 210, i32 3}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/usb/mixer_scarlett.c", i32 210, i32 11}
!78 = !{ptr @opt_impedance, !79, !"opt_impedance", i1 false, i1 false}
!79 = !{!"../sound/usb/mixer_scarlett.c", i32 205, i32 51}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/mixer_scarlett.c", i32 192, i32 3}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/mixer_scarlett.c", i32 192, i32 10}
!84 = !{ptr @opt_pad, !85, !"opt_pad", i1 false, i1 false}
!85 = !{!"../sound/usb/mixer_scarlett.c", i32 187, i32 51}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/mixer_scarlett.c", i32 201, i32 3}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/mixer_scarlett.c", i32 201, i32 9}
!90 = !{ptr @opt_gain, !91, !"opt_gain", i1 false, i1 false}
!91 = !{!"../sound/usb/mixer_scarlett.c", i32 196, i32 51}
!92 = !{ptr @usb_scarlett_ctl_dynamic_enum, !93, !"usb_scarlett_ctl_dynamic_enum", i1 false, i1 false}
!93 = !{!"../sound/usb/mixer_scarlett.c", i32 520, i32 38}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/mixer_scarlett.c", i32 363, i32 16}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/usb/mixer_scarlett.c", i32 366, i32 16}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/mixer_scarlett.c", i32 368, i32 16}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/usb/mixer_scarlett.c", i32 370, i32 16}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/mixer_scarlett.c", i32 372, i32 16}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/mixer_scarlett.c", i32 374, i32 16}
!106 = !{ptr @usb_scarlett_ctl, !107, !"usb_scarlett_ctl", i1 false, i1 false}
!107 = !{!"../sound/usb/mixer_scarlett.c", i32 488, i32 38}
!108 = !{ptr @usb_scarlett_ctl_enum, !109, !"usb_scarlett_ctl_enum", i1 false, i1 false}
!109 = !{!"../sound/usb/mixer_scarlett.c", i32 512, i32 38}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/mixer_scarlett.c", i32 219, i32 3}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/mixer_scarlett.c", i32 219, i32 24}
!114 = !{ptr @opt_clock, !115, !"opt_clock", i1 false, i1 false}
!115 = !{!"../sound/usb/mixer_scarlett.c", i32 214, i32 51}
!116 = !{ptr @usb_scarlett_ctl_sync, !117, !"usb_scarlett_ctl_sync", i1 false, i1 false}
!117 = !{!"../sound/usb/mixer_scarlett.c", i32 528, i32 38}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/mixer_scarlett.c", i32 228, i32 3}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/mixer_scarlett.c", i32 228, i32 14}
!122 = !{ptr @opt_sync, !123, !"opt_sync", i1 false, i1 false}
!123 = !{!"../sound/usb/mixer_scarlett.c", i32 223, i32 51}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
