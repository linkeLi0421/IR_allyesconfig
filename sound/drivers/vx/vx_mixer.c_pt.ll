; ModuleID = '/llk/IR_all_yes/sound/drivers/vx/vx_mixer.c_pt.bc'
source_filename = "../sound/drivers/vx/vx_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_vx_hardware = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vx_audio_level = type { i8, i32, i32, i16, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@vx_control_output_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @vx_output_level_info, ptr @vx_output_level_get, ptr @vx_output_level_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_audio_gain = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @vx_audio_gain_info, ptr @vx_audio_gain_get, ptr @vx_audio_gain_put, %union.anon.82 { ptr @db_scale_audio_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@vx_control_output_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @vx_audio_sw_get, ptr @vx_audio_sw_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_monitor_gain = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @vx_audio_gain_info, ptr @vx_audio_monitor_get, ptr @vx_audio_monitor_put, %union.anon.82 { ptr @db_scale_audio_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_monitor_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @vx_monitor_sw_get, ptr @vx_monitor_sw_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@vx_control_audio_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @vx_audio_src_info, ptr @vx_audio_src_get, ptr @vx_audio_src_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_clock_mode = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @vx_clock_mode_info, ptr @vx_clock_mode_get, ptr @vx_clock_mode_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_iec958_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.20, i32 0, i32 1, i32 0, ptr @vx_iec958_info, ptr @vx_iec958_mask_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_iec958 = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @vx_iec958_info, ptr @vx_iec958_get, ptr @vx_iec958_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Output\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Input\00", [26 x i8] zeroinitializer }, align 32
@vx_control_saturation = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @vx_saturation_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s VU Meter\00", [20 x i8] zeroinitializer }, align 32
@vx_control_vu_meter = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 5, i32 0, ptr @vx_vu_meter_info, ptr @vx_vu_meter_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s Peak Meter\00", [18 x i8] zeroinitializer }, align 32
@vx_control_peak_meter = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 5, i32 0, ptr @vx_vu_meter_info, ptr @vx_peak_meter_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/drivers/vx/vx_mixer.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_audio_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10975, i32 25], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Monitoring Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Monitoring Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@vx_audio_src_info.texts_mic = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@vx_audio_src_info.texts_vx2 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Clock Mode\00", [21 x i8] zeroinitializer }, align 32
@vx_clock_mode_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Auto\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"External\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Input Saturation\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"vx_control_output_level\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 445, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"vx_control_audio_gain\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 707, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 923, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"vx_control_output_switch\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 717, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"vx_control_monitor_gain\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 724, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"vx_control_monitor_switch\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 734, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 950, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"vx_control_audio_src\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 504, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"vx_control_clock_mode\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 548, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"vx_control_iec958_mask\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 795, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"vx_control_iec958\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 803, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 974, i32 40 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 974, i32 50 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"vx_control_saturation\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 884, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 985, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"vx_control_vu_meter\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 868, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 993, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"vx_control_peak_meter\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 876, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 22, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 449, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"db_scale_audio_gain\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 705, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 719, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 726, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 736, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 506, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"texts_mic\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 461, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 462, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 462, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 462, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"texts_vx2\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 464, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 465, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 550, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 517, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 518, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 518, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 518, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 798, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 805, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [31 x i8] c"../sound/drivers/vx/vx_mixer.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 886, i32 11 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @vx_control_output_level, ptr @vx_control_audio_gain, ptr @.str, ptr @vx_control_output_switch, ptr @vx_control_monitor_gain, ptr @vx_control_monitor_switch, ptr @.str.1, ptr @vx_control_audio_src, ptr @vx_control_clock_mode, ptr @vx_control_iec958_mask, ptr @vx_control_iec958, ptr @.str.2, ptr @.str.3, ptr @vx_control_saturation, ptr @.str.4, ptr @vx_control_vu_meter, ptr @.str.5, ptr @vx_control_peak_meter, ptr @.str.6, ptr @.str.7, ptr @db_scale_audio_gain, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vx_audio_src_info.texts_mic, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @vx_audio_src_info.texts_vx2, ptr @.str.15, ptr @.str.16, ptr @vx_clock_mode_info.texts, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_output_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_audio_gain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_output_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_monitor_gain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_monitor_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_audio_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_clock_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_iec958_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_iec958 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_saturation to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_vu_meter to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_peak_meter to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_audio_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_audio_src_info.texts_mic to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_audio_src_info.texts_vx2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_clock_mode_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_toggle_dac_mute(ptr noundef %chip, i32 noundef %mute) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %num_codecs11 = getelementptr inbounds %struct.snd_vx_hardware, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_codecs11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_codecs11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool3.not = icmp eq i32 %mute, 0
  %data.sroa.5.0.insert.insert.i = select i1 %tobool3.not, i32 2097672, i32 2097720
  %chip_status.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %lock.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %akm_write = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %akm_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %akm_write, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %chip, i32 noundef 2, i32 noundef %mute) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %write_codec.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %write_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_codec.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !89

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

if.end23.critedge.i.i:                            ; preds = %if.else
  %10 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end23.critedge.i.i.for.inc_crit_edge

if.end23.critedge.i.i.for.inc_crit_edge:          ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26.i.i:                                     ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_codec28.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %write_codec28.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_codec28.i.i, align 4
  tail call void %15(ptr noundef %chip, i32 noundef %i.013, i32 noundef %data.sroa.5.0.insert.insert.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end26.i.i, %if.end23.critedge.i.i.for.inc_crit_edge, %do.end.i.i, %if.then
  %inc = add nuw i32 %i.013, 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %num_codecs = getelementptr inbounds %struct.snd_vx_hardware, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_reset_codec(ptr noundef %chip, i32 noundef %cold_reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  %ops = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %reset_codec = getelementptr inbounds %struct.snd_vx_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %reset_codec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_codec, align 4
  tail call void %5(ptr noundef %chip) #7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %akm_write = getelementptr inbounds %struct.snd_vx_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %akm_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm_write, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %num_codecs73 = getelementptr inbounds %struct.snd_vx_hardware, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num_codecs73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_codecs73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp274.not = icmp eq i32 %13, 0
  br i1 %cmp274.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chip_status.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %lock.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  %data.sroa.5.0.insert.insert.i = select i1 %cmp, i32 2098549, i32 2098533
  br label %for.body

for.body:                                         ; preds = %vx_set_codec_reg.exit72.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vx_set_codec_reg.exit72.for.body_crit_edge ]
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %write_codec.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %write_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_codec.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !89

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %vx_set_codec_reg.exit

if.end23.critedge.i.i:                            ; preds = %for.body
  %18 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge

if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_set_codec_reg.exit

if.end26.i.i:                                     ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %write_codec28.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %write_codec28.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_codec28.i.i, align 4
  tail call void %23(ptr noundef %chip, i32 noundef %i.075, i32 noundef 2097720) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_set_codec_reg.exit

vx_set_codec_reg.exit:                            ; preds = %if.end26.i.i, %if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge, %do.end.i.i
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %write_codec.i.i38 = getelementptr inbounds %struct.snd_vx_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %write_codec.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_codec.i.i38, align 4
  %tobool.not.i.i39 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i39, label %do.end.i.i40, label %if.end23.critedge.i.i44, !prof !89

do.end.i.i40:                                     ; preds = %vx_set_codec_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %vx_set_codec_reg.exit48

if.end23.critedge.i.i44:                          ; preds = %vx_set_codec_reg.exit
  %28 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i42 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool24.not.i.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool24.not.i.i43, label %if.end26.i.i47, label %if.end23.critedge.i.i44.vx_set_codec_reg.exit48_crit_edge

if.end23.critedge.i.i44.vx_set_codec_reg.exit48_crit_edge: ; preds = %if.end23.critedge.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_set_codec_reg.exit48

if.end26.i.i47:                                   ; preds = %if.end23.critedge.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %write_codec28.i.i46 = getelementptr inbounds %struct.snd_vx_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %write_codec28.i.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_codec28.i.i46, align 4
  tail call void %33(ptr noundef %chip, i32 noundef %i.075, i32 noundef 2097408) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_set_codec_reg.exit48

vx_set_codec_reg.exit48:                          ; preds = %if.end26.i.i47, %if.end23.critedge.i.i44.vx_set_codec_reg.exit48_crit_edge, %do.end.i.i40
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %write_codec.i.i50 = getelementptr inbounds %struct.snd_vx_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %write_codec.i.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_codec.i.i50, align 4
  %tobool.not.i.i51 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i51, label %do.end.i.i52, label %if.end23.critedge.i.i56, !prof !89

do.end.i.i52:                                     ; preds = %vx_set_codec_reg.exit48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %vx_set_codec_reg.exit60

if.end23.critedge.i.i56:                          ; preds = %vx_set_codec_reg.exit48
  %38 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i54 = and i32 %39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool24.not.i.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool24.not.i.i55, label %if.end26.i.i59, label %if.end23.critedge.i.i56.vx_set_codec_reg.exit60_crit_edge

if.end23.critedge.i.i56.vx_set_codec_reg.exit60_crit_edge: ; preds = %if.end23.critedge.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_set_codec_reg.exit60

if.end26.i.i59:                                   ; preds = %if.end23.critedge.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %write_codec28.i.i58 = getelementptr inbounds %struct.snd_vx_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %write_codec28.i.i58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_codec28.i.i58, align 4
  tail call void %43(ptr noundef %chip, i32 noundef %i.075, i32 noundef %data.sroa.5.0.insert.insert.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_set_codec_reg.exit60

vx_set_codec_reg.exit60:                          ; preds = %if.end26.i.i59, %if.end23.critedge.i.i56.vx_set_codec_reg.exit60_crit_edge, %do.end.i.i52
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %write_codec.i.i62 = getelementptr inbounds %struct.snd_vx_ops, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %write_codec.i.i62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_codec.i.i62, align 4
  %tobool.not.i.i63 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i63, label %do.end.i.i64, label %if.end23.critedge.i.i68, !prof !89

do.end.i.i64:                                     ; preds = %vx_set_codec_reg.exit60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %vx_set_codec_reg.exit72

if.end23.critedge.i.i68:                          ; preds = %vx_set_codec_reg.exit60
  %48 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i66 = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool24.not.i.i67 = icmp eq i32 %and.i.i66, 0
  br i1 %tobool24.not.i.i67, label %if.end26.i.i71, label %if.end23.critedge.i.i68.vx_set_codec_reg.exit72_crit_edge

if.end23.critedge.i.i68.vx_set_codec_reg.exit72_crit_edge: ; preds = %if.end23.critedge.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_set_codec_reg.exit72

if.end26.i.i71:                                   ; preds = %if.end23.critedge.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %write_codec28.i.i70 = getelementptr inbounds %struct.snd_vx_ops, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %write_codec28.i.i70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_codec28.i.i70, align 4
  tail call void %53(ptr noundef %chip, i32 noundef %i.075, i32 noundef 2098944) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_set_codec_reg.exit72

vx_set_codec_reg.exit72:                          ; preds = %if.end26.i.i71, %if.end23.critedge.i.i68.vx_set_codec_reg.exit72_crit_edge, %do.end.i.i64
  %inc = add nuw i32 %i.075, 1
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %num_codecs = getelementptr inbounds %struct.snd_vx_hardware, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_codecs, align 4
  %cmp2 = icmp ult i32 %inc, %57
  br i1 %cmp2, label %vx_set_codec_reg.exit72.for.body_crit_edge, label %vx_set_codec_reg.exit72.if.end_crit_edge

vx_set_codec_reg.exit72.if.end_crit_edge:         ; preds = %vx_set_codec_reg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

vx_set_codec_reg.exit72.for.body_crit_edge:       ; preds = %vx_set_codec_reg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %vx_set_codec_reg.exit72.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %hw4 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %58 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw4, align 4
  %num_codecs577 = getelementptr inbounds %struct.snd_vx_hardware, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %num_codecs577 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_codecs577, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp678.not = icmp eq i32 %61, 0
  br i1 %cmp678.not, label %if.end.for.end14_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %i.179 = phi i32 [ %inc13, %for.body7.for.body7_crit_edge ], [ 0, %if.end.for.body7_crit_edge ]
  %arrayidx = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 26, i32 %i.179
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 26, i32 %i.179, i32 1
  %63 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx11, align 4
  tail call fastcc void @vx_set_analog_output_level(ptr noundef %chip, i32 noundef %i.179, i32 noundef 0, i32 noundef 0)
  %inc13 = add nuw i32 %i.179, 1
  %64 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw4, align 4
  %num_codecs5 = getelementptr inbounds %struct.snd_vx_hardware, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %num_codecs5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_codecs5, align 4
  %cmp6 = icmp ult i32 %inc13, %67
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end14_crit_edge

for.body7.for.end14_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end14:                                        ; preds = %for.body7.for.end14_crit_edge, %if.end.for.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vx_set_analog_output_level(ptr noundef %chip, i32 noundef %codec, i32 noundef %left, i32 noundef %right) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %output_level_max = getelementptr inbounds %struct.snd_vx_hardware, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %output_level_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_level_max, align 4
  %sub = sub i32 %3, %left
  %sub3 = sub i32 %3, %right
  %ops = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %akm_write = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %akm_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %akm_write, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %chip, i32 noundef 3, i32 noundef %sub) #7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %akm_write7 = getelementptr inbounds %struct.snd_vx_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %akm_write7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %akm_write7, align 4
  tail call void %11(ptr noundef %chip, i32 noundef 4, i32 noundef %sub3) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %data.sroa.7.0.insert.ext.i = and i32 %sub, 255
  %data.sroa.5.0.insert.insert.i = or i32 %data.sroa.7.0.insert.ext.i, 2097920
  %write_codec.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %write_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_codec.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !89

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %vx_set_codec_reg.exit

if.end23.critedge.i.i:                            ; preds = %if.else
  %chip_status.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge

if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_set_codec_reg.exit

if.end26.i.i:                                     ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %write_codec28.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %write_codec28.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_codec28.i.i, align 4
  tail call void %19(ptr noundef %chip, i32 noundef %codec, i32 noundef %data.sroa.5.0.insert.insert.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_set_codec_reg.exit

vx_set_codec_reg.exit:                            ; preds = %if.end26.i.i, %if.end23.critedge.i.i.vx_set_codec_reg.exit_crit_edge, %do.end.i.i
  %data.sroa.7.0.insert.ext.i21 = and i32 %sub3, 255
  %data.sroa.5.0.insert.insert.i23 = or i32 %data.sroa.7.0.insert.ext.i21, 2098176
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %write_codec.i.i25 = getelementptr inbounds %struct.snd_vx_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %write_codec.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_codec.i.i25, align 4
  %tobool.not.i.i26 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i26, label %do.end.i.i27, label %if.end23.critedge.i.i31, !prof !89

do.end.i.i27:                                     ; preds = %vx_set_codec_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 22, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end23.critedge.i.i31:                          ; preds = %vx_set_codec_reg.exit
  %chip_status.i.i28 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %24 = ptrtoint ptr %chip_status.i.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip_status.i.i28, align 4
  %and.i.i29 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29)
  %tobool24.not.i.i30 = icmp eq i32 %and.i.i29, 0
  br i1 %tobool24.not.i.i30, label %if.end26.i.i34, label %if.end23.critedge.i.i31.if.end_crit_edge

if.end23.critedge.i.i31.if.end_crit_edge:         ; preds = %if.end23.critedge.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end26.i.i34:                                   ; preds = %if.end23.critedge.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i32 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i32, i32 noundef 0) #7
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %write_codec28.i.i33 = getelementptr inbounds %struct.snd_vx_ops, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %write_codec28.i.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_codec28.i.i33, align 4
  tail call void %29(ptr noundef %chip, i32 noundef %codec, i32 noundef %data.sroa.5.0.insert.insert.i23) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i32) #7
  br label %if.end

if.end:                                           ; preds = %if.end26.i.i34, %if.end23.critedge.i.i31.if.end_crit_edge, %do.end.i.i27, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vx_sync_audio_source(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_source_target = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 18
  %0 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_source_target, align 4
  %audio_source = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 17
  %2 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pcm_running = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 8
  %4 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %chip_status.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %6 = ptrtoint ptr %chip_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_status.i, align 4
  %and.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.vx_change_audio_source.exit_crit_edge

if.end.vx_change_audio_source.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_change_audio_source.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %ops.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %change_audio_source.i = getelementptr inbounds %struct.snd_vx_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %change_audio_source.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %change_audio_source.i, align 4
  tail call void %11(ptr noundef %chip, i32 noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %vx_change_audio_source.exit

vx_change_audio_source.exit:                      ; preds = %if.end.i, %if.end.vx_change_audio_source.exit_crit_edge
  %12 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audio_source_target, align 4
  %14 = ptrtoint ptr %audio_source to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %audio_source, align 4
  br label %return

return:                                           ; preds = %vx_change_audio_source.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %vx_change_audio_source.exit ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vx_set_monitor_level(ptr noundef %chip, i32 noundef %audio, i32 noundef %level, i32 noundef %active) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 0, i32 16)
  %conv = trunc i32 %level to i16
  %monitor_level = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 4
  %1 = ptrtoint ptr %monitor_level to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %monitor_level, align 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %monitor_mute = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %monitor_mute to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lnot.ext, ptr %monitor_mute, align 4
  %arrayidx = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 29, i32 %audio
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %level, ptr %arrayidx, align 4
  %conv4 = trunc i32 %active to i8
  %arrayidx5 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 30, i32 %audio
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %arrayidx5, align 1
  %call = call fastcc i32 @vx_adjust_audio_level(ptr noundef %chip, i32 noundef %audio, i32 noundef 0, ptr noundef nonnull %info)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vx_adjust_audio_level(ptr noundef %chip, i32 noundef %audio, i32 noundef %capture, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh) #7
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 136)
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %1 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_status, align 4
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @vx_init_rmh(ptr noundef nonnull %rmh, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool1.not = icmp eq i32 %capture, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %Cmd = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %3 = ptrtoint ptr %Cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Cmd, align 4
  %or = or i32 %4, 2048
  store i32 %or, ptr %Cmd, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %shl = shl nuw i32 1, %audio
  %Cmd4 = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx7, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end3.if.end16_crit_edge, label %if.then9

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %Cmd4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Cmd4, align 4
  %or12 = or i32 %9, 1
  store i32 %or12, ptr %Cmd4, align 4
  %level = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %level, align 4
  %conv = sext i16 %11 to i32
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %arrayidx7, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end3.if.end16_crit_edge
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %if.end16.if.end30_crit_edge, label %if.then21

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %Cmd4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Cmd4, align 4
  %or24 = or i32 %15, 2
  store i32 %or24, ptr %Cmd4, align 4
  %monitor_level = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %monitor_level to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %monitor_level, align 2
  %conv25 = sext i16 %17 to i32
  %shl26 = shl nsw i32 %conv25, 10
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7, align 4
  %or29 = or i32 %shl26, %19
  store i32 %or29, ptr %arrayidx7, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end16.if.end30_crit_edge
  %20 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp eq i8 %20, 0
  br i1 %tobool35.not, label %if.end30.if.end46_crit_edge, label %if.then36

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then36:                                        ; preds = %if.end30
  %21 = ptrtoint ptr %Cmd4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %Cmd4, align 4
  %or39 = or i32 %22, 4
  store i32 %or39, ptr %Cmd4, align 4
  %mute = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.then36.if.end46_crit_edge, label %if.then41

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7, align 4
  %or44 = or i32 %26, 4194304
  store i32 %or44, ptr %arrayidx7, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.then36.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %27 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  br i1 %tobool51.not, label %if.end46.if.end62_crit_edge, label %if.then52

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then52:                                        ; preds = %if.end46
  %28 = ptrtoint ptr %Cmd4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Cmd4, align 4
  %or55 = or i32 %29, 24
  store i32 %or55, ptr %Cmd4, align 4
  %monitor_mute = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %monitor_mute to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %monitor_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool56.not = icmp eq i32 %31, 0
  br i1 %tobool56.not, label %if.then52.if.end62_crit_edge, label %if.then57

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7, align 4
  %or60 = or i32 %33, 2097152
  store i32 %or60, ptr %arrayidx7, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.then52.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %call = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end62 ], [ -16, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_vx_mixer_new(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.snd_kcontrol_new, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %temp) #7
  %0 = call ptr @memset(ptr %temp, i32 255, i32 48)
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %mixername = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 6
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %3 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call = tail call ptr @strcpy(ptr noundef %mixername, ptr noundef %driver) #10
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %num_outs239 = getelementptr inbounds %struct.snd_vx_hardware, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_outs239 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_outs239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp240.not = icmp eq i32 %7, 0
  br i1 %cmp240.not, label %entry.for.cond7.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0241, 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %num_outs = getelementptr inbounds %struct.snd_vx_hardware, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_outs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_outs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond7.preheader_crit_edge

for.cond.for.cond7.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond7.preheader:                              ; preds = %for.cond.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %num_outs9242 = getelementptr inbounds %struct.snd_vx_hardware, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_outs9242 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_outs9242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10243.not = icmp eq i32 %15, 0
  br i1 %cmp10243.not, label %for.cond7.preheader.for.cond43.preheader_crit_edge, label %for.body11.lr.ph

for.cond7.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond43.preheader

for.body11.lr.ph:                                 ; preds = %for.cond7.preheader
  %index12 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 4
  %name13 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 3
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 11
  br label %for.body11

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %16 = phi ptr [ %5, %for.body.lr.ph ], [ %9, %for.cond.for.body_crit_edge ]
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = call ptr @memcpy(ptr %temp, ptr @vx_control_output_level, i32 48)
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0241, ptr %index, align 4
  %output_level_db_scale = getelementptr inbounds %struct.snd_vx_hardware, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %output_level_db_scale to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %output_level_db_scale, align 4
  %21 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %tlv, align 4
  %call4 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call5 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.body.cleanup132_crit_edge, label %for.cond

for.body.cleanup132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.cond7:                                        ; preds = %cleanup
  %inc41 = add nuw i32 %i.1245, 1
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %num_outs9 = getelementptr inbounds %struct.snd_vx_hardware, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_outs9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_outs9, align 4
  %cmp10 = icmp ult i32 %inc41, %25
  br i1 %cmp10, label %for.cond7.for.body11_crit_edge, label %for.cond7.for.cond43.preheader_crit_edge

for.cond7.for.cond43.preheader_crit_edge:         ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond43.preheader

for.cond7.for.body11_crit_edge:                   ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.cond43.preheader:                             ; preds = %for.cond7.for.cond43.preheader_crit_edge, %for.cond7.preheader.for.cond43.preheader_crit_edge
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %num_outs45246 = getelementptr inbounds %struct.snd_vx_hardware, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %num_outs45246 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_outs45246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp46247.not = icmp eq i32 %29, 0
  br i1 %cmp46247.not, label %for.cond43.preheader.for.end59_crit_edge, label %for.body47.lr.ph

for.cond43.preheader.for.end59_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.body47.lr.ph:                                 ; preds = %for.cond43.preheader
  %index48 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 4
  %name49 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 3
  %private_value51 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 11
  br label %for.body47

for.body11:                                       ; preds = %for.cond7.for.body11_crit_edge, %for.body11.lr.ph
  %i.1245 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc41, %for.cond7.for.body11_crit_edge ]
  %mul = shl i32 %i.1245, 1
  %30 = call ptr @memcpy(ptr %temp, ptr @vx_control_audio_gain, i32 44)
  %31 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.1245, ptr %index12, align 4
  %32 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str, ptr %name13, align 4
  %33 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul, ptr %private_value, align 4
  %call14 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call15 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.body11.cleanup132_crit_edge, label %if.end18

for.body11.cleanup132_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end18:                                         ; preds = %for.body11
  %34 = call ptr @memcpy(ptr %temp, ptr @vx_control_output_switch, i32 44)
  %35 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.1245, ptr %index12, align 4
  %36 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %private_value, align 4
  %call21 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call22 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end18.cleanup132_crit_edge, label %if.end25

if.end18.cleanup132_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end25:                                         ; preds = %if.end18
  %37 = call ptr @memcpy(ptr %temp, ptr @vx_control_monitor_gain, i32 44)
  %38 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.1245, ptr %index12, align 4
  %39 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %private_value, align 4
  %call28 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call29 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end25.cleanup132_crit_edge, label %cleanup

if.end25.cleanup132_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

cleanup:                                          ; preds = %if.end25
  %40 = call ptr @memcpy(ptr %temp, ptr @vx_control_monitor_switch, i32 44)
  %41 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1245, ptr %index12, align 4
  %42 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %private_value, align 4
  %call35 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call36 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %cleanup.cleanup132_crit_edge, label %for.cond7

cleanup.cleanup132_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.cond43:                                       ; preds = %for.body47
  %inc58 = add nuw i32 %i.2248, 1
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %num_outs45 = getelementptr inbounds %struct.snd_vx_hardware, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %num_outs45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_outs45, align 4
  %cmp46 = icmp ult i32 %inc58, %46
  br i1 %cmp46, label %for.cond43.for.body47_crit_edge, label %for.cond43.for.end59_crit_edge

for.cond43.for.end59_crit_edge:                   ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.cond43.for.body47_crit_edge:                  ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.body47:                                       ; preds = %for.cond43.for.body47_crit_edge, %for.body47.lr.ph
  %i.2248 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc58, %for.cond43.for.body47_crit_edge ]
  %47 = call ptr @memcpy(ptr %temp, ptr @vx_control_audio_gain, i32 44)
  %48 = ptrtoint ptr %index48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.2248, ptr %index48, align 4
  %49 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.1, ptr %name49, align 4
  %mul50 = shl i32 %i.2248, 1
  %or = or i32 %mul50, 256
  %50 = ptrtoint ptr %private_value51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or, ptr %private_value51, align 4
  %call52 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call53 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %for.body47.cleanup132_crit_edge, label %for.cond43

for.body47.cleanup132_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.end59:                                        ; preds = %for.cond43.for.end59_crit_edge, %for.cond43.preheader.for.end59_crit_edge
  %call60 = call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_audio_src, ptr noundef %chip) #7
  %call61 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %for.end59.cleanup132_crit_edge, label %if.end64

for.end59.cleanup132_crit_edge:                   ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end64:                                         ; preds = %for.end59
  %call65 = call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_clock_mode, ptr noundef %chip) #7
  %call66 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end64.cleanup132_crit_edge, label %if.end69

if.end64.cleanup132_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end69:                                         ; preds = %if.end64
  %call70 = call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_iec958_mask, ptr noundef %chip) #7
  %call71 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.cleanup132_crit_edge, label %if.end74

if.end69.cleanup132_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end74:                                         ; preds = %if.end69
  %call75 = call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_iec958, ptr noundef %chip) #7
  %call76 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end74.cleanup132_crit_edge, label %for.cond80.preheader

if.end74.cleanup132_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.cond80.preheader:                             ; preds = %if.end74
  %index92 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 4
  %private_value93 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 11
  %name104 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 3
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %num_ins249 = getelementptr inbounds %struct.snd_vx_hardware, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %num_ins249 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_ins249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp85250.not = icmp eq i32 %54, 0
  br i1 %cmp85250.not, label %for.cond80.preheader.for.inc129_crit_edge, label %for.cond80.preheader.if.end99_crit_edge

for.cond80.preheader.if.end99_crit_edge:          ; preds = %for.cond80.preheader
  br label %if.end99

for.cond80.preheader.for.inc129_crit_edge:        ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129

for.cond83:                                       ; preds = %cleanup123
  %inc127 = add nuw i32 %i.3252, 1
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %num_ins = getelementptr inbounds %struct.snd_vx_hardware, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %num_ins to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ins, align 4
  %cmp85 = icmp ult i32 %inc127, %58
  br i1 %cmp85, label %for.cond83.if.end99_crit_edge, label %for.cond83.for.inc129_crit_edge

for.cond83.for.inc129_crit_edge:                  ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129

for.cond83.if.end99_crit_edge:                    ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end99:                                         ; preds = %for.cond83.if.end99_crit_edge, %for.cond80.preheader.if.end99_crit_edge
  %i.3252 = phi i32 [ %inc127, %for.cond83.if.end99_crit_edge ], [ 0, %for.cond80.preheader.if.end99_crit_edge ]
  %mul88 = shl i32 %i.3252, 1
  %call101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  %59 = call ptr @memcpy(ptr %temp, ptr @vx_control_vu_meter, i32 44)
  %60 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %i.3252, ptr %index92, align 4
  %61 = ptrtoint ptr %name104 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %name, ptr %name104, align 4
  %62 = ptrtoint ptr %private_value93 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul88, ptr %private_value93, align 4
  %call106 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call107 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end99.cleanup132_crit_edge, label %cleanup123

if.end99.cleanup132_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

cleanup123:                                       ; preds = %if.end99
  %call113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %63 = call ptr @memcpy(ptr %temp, ptr @vx_control_peak_meter, i32 44)
  %64 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.3252, ptr %index92, align 4
  %65 = ptrtoint ptr %name104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %name, ptr %name104, align 4
  %66 = ptrtoint ptr %private_value93 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul88, ptr %private_value93, align 4
  %call118 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call119 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call118) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %cleanup123.cleanup132_crit_edge, label %for.cond83

cleanup123.cleanup132_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.inc129:                                       ; preds = %for.cond83.for.inc129_crit_edge, %for.cond80.preheader.for.inc129_crit_edge
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %num_ins249.1 = getelementptr inbounds %struct.snd_vx_hardware, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %num_ins249.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_ins249.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp85250.not.1 = icmp eq i32 %70, 0
  br i1 %cmp85250.not.1, label %for.inc129.for.inc129.1_crit_edge, label %for.inc129.if.then91.1_crit_edge

for.inc129.if.then91.1_crit_edge:                 ; preds = %for.inc129
  br label %if.then91.1

for.inc129.for.inc129.1_crit_edge:                ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129.1

if.then91.1:                                      ; preds = %for.cond83.1.if.then91.1_crit_edge, %for.inc129.if.then91.1_crit_edge
  %i.3252.1 = phi i32 [ %inc127.1, %for.cond83.1.if.then91.1_crit_edge ], [ 0, %for.inc129.if.then91.1_crit_edge ]
  %mul88.1 = shl i32 %i.3252.1, 1
  %or89.1 = or i32 %mul88.1, 256
  %71 = call ptr @memcpy(ptr %temp, ptr @vx_control_saturation, i32 44)
  %72 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %i.3252.1, ptr %index92, align 4
  %73 = ptrtoint ptr %private_value93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or89.1, ptr %private_value93, align 4
  %call94.1 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call95.1 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call94.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.1)
  %cmp96.1 = icmp slt i32 %call95.1, 0
  br i1 %cmp96.1, label %if.then91.1.cleanup132_crit_edge, label %if.end99.1

if.then91.1.cleanup132_crit_edge:                 ; preds = %if.then91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end99.1:                                       ; preds = %if.then91.1
  %call101.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3)
  %74 = call ptr @memcpy(ptr %temp, ptr @vx_control_vu_meter, i32 44)
  %75 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.3252.1, ptr %index92, align 4
  %76 = ptrtoint ptr %name104 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %name, ptr %name104, align 4
  %77 = ptrtoint ptr %private_value93 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or89.1, ptr %private_value93, align 4
  %call106.1 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call107.1 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call106.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.1)
  %cmp108.1 = icmp slt i32 %call107.1, 0
  br i1 %cmp108.1, label %if.end99.1.cleanup132_crit_edge, label %cleanup123.1

if.end99.1.cleanup132_crit_edge:                  ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

cleanup123.1:                                     ; preds = %if.end99.1
  %call113.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3)
  %78 = call ptr @memcpy(ptr %temp, ptr @vx_control_peak_meter, i32 44)
  %79 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %i.3252.1, ptr %index92, align 4
  %80 = ptrtoint ptr %name104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %name, ptr %name104, align 4
  %81 = ptrtoint ptr %private_value93 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or89.1, ptr %private_value93, align 4
  %call118.1 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %chip) #7
  %call119.1 = call i32 @snd_ctl_add(ptr noundef %2, ptr noundef %call118.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.1)
  %cmp120.1 = icmp slt i32 %call119.1, 0
  br i1 %cmp120.1, label %cleanup123.1.cleanup132_crit_edge, label %for.cond83.1

cleanup123.1.cleanup132_crit_edge:                ; preds = %cleanup123.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

for.cond83.1:                                     ; preds = %cleanup123.1
  %inc127.1 = add nuw i32 %i.3252.1, 1
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %num_ins.1 = getelementptr inbounds %struct.snd_vx_hardware, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %num_ins.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_ins.1, align 4
  %cmp85.1 = icmp ult i32 %inc127.1, %85
  br i1 %cmp85.1, label %for.cond83.1.if.then91.1_crit_edge, label %for.cond83.1.for.inc129.1_crit_edge

for.cond83.1.for.inc129.1_crit_edge:              ; preds = %for.cond83.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129.1

for.cond83.1.if.then91.1_crit_edge:               ; preds = %for.cond83.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91.1

for.inc129.1:                                     ; preds = %for.cond83.1.for.inc129.1_crit_edge, %for.inc129.for.inc129.1_crit_edge
  call fastcc void @vx_reset_audio_levels(ptr noundef %chip)
  br label %cleanup132

cleanup132:                                       ; preds = %for.inc129.1, %cleanup123.1.cleanup132_crit_edge, %if.end99.1.cleanup132_crit_edge, %if.then91.1.cleanup132_crit_edge, %cleanup123.cleanup132_crit_edge, %if.end99.cleanup132_crit_edge, %if.end74.cleanup132_crit_edge, %if.end69.cleanup132_crit_edge, %if.end64.cleanup132_crit_edge, %for.end59.cleanup132_crit_edge, %for.body47.cleanup132_crit_edge, %cleanup.cleanup132_crit_edge, %if.end25.cleanup132_crit_edge, %if.end18.cleanup132_crit_edge, %for.body11.cleanup132_crit_edge, %for.body.cleanup132_crit_edge
  %retval.5 = phi i32 [ 0, %for.inc129.1 ], [ %call61, %for.end59.cleanup132_crit_edge ], [ %call66, %if.end64.cleanup132_crit_edge ], [ %call71, %if.end69.cleanup132_crit_edge ], [ %call76, %if.end74.cleanup132_crit_edge ], [ %call95.1, %if.then91.1.cleanup132_crit_edge ], [ %call107.1, %if.end99.1.cleanup132_crit_edge ], [ %call119.1, %cleanup123.1.cleanup132_crit_edge ], [ %call107, %if.end99.cleanup132_crit_edge ], [ %call119, %cleanup123.cleanup132_crit_edge ], [ %call53, %for.body47.cleanup132_crit_edge ], [ %call15, %for.body11.cleanup132_crit_edge ], [ %call22, %if.end18.cleanup132_crit_edge ], [ %call29, %if.end25.cleanup132_crit_edge ], [ %call36, %cleanup.cleanup132_crit_edge ], [ %call5, %for.body.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp) #7
  ret i32 %retval.5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vx_reset_audio_levels(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %audio_gain = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 27
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %level = getelementptr inbounds %struct.vx_audio_level, ptr %info, i32 0, i32 3
  %0 = call ptr @memset(ptr %audio_gain, i32 0, i32 56)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %num_ins39 = getelementptr inbounds %struct.snd_vx_hardware, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %num_ins39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ins39, align 4
  %mul40.mask = and i32 %4, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40.mask)
  %cmp541.not = icmp eq i32 %mul40.mask, 0
  br i1 %cmp541.not, label %entry.for.inc21_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.inc21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %i.042 = phi i32 [ %inc, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %5 = call ptr @memset(ptr %info, i32 0, i32 16)
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %info, align 4
  %bf.set16 = or i8 %bf.load, -16
  store i8 %bf.set16, ptr %info, align 4
  %7 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 439, ptr %level, align 4
  %call = call fastcc i32 @vx_adjust_audio_level(ptr noundef %chip, i32 noundef %i.042, i32 noundef 0, ptr noundef nonnull %info)
  %arrayidx18 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 27, i32 0, i32 %i.042
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 439, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 29, i32 %i.042
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 439, ptr %arrayidx20, align 4
  %inc = add nuw i32 %i.042, 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %num_ins = getelementptr inbounds %struct.snd_vx_hardware, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_ins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ins, align 4
  %mul = shl i32 %13, 1
  %cmp5 = icmp ult i32 %inc, %mul
  br i1 %cmp5, label %if.end.if.end_crit_edge, label %if.end.for.inc21_crit_edge

if.end.for.inc21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc21:                                        ; preds = %if.end.for.inc21_crit_edge, %entry.for.inc21_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %num_ins39.1 = getelementptr inbounds %struct.snd_vx_hardware, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %num_ins39.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ins39.1, align 4
  %mul40.mask.1 = and i32 %17, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40.mask.1)
  %cmp541.not.1 = icmp eq i32 %mul40.mask.1, 0
  br i1 %cmp541.not.1, label %for.inc21.for.inc21.1_crit_edge, label %for.inc21.if.end.1_crit_edge

for.inc21.if.end.1_crit_edge:                     ; preds = %for.inc21
  br label %if.end.1

for.inc21.for.inc21.1_crit_edge:                  ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.1

if.end.1:                                         ; preds = %if.end.1.if.end.1_crit_edge, %for.inc21.if.end.1_crit_edge
  %i.042.1 = phi i32 [ %inc.1, %if.end.1.if.end.1_crit_edge ], [ 0, %for.inc21.if.end.1_crit_edge ]
  %18 = call ptr @memset(ptr %info, i32 0, i32 16)
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load14.1 = load i8, ptr %info, align 4
  %bf.set16.1 = or i8 %bf.load14.1, -128
  store i8 %bf.set16.1, ptr %info, align 4
  %20 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 439, ptr %level, align 4
  %call.1 = call fastcc i32 @vx_adjust_audio_level(ptr noundef %chip, i32 noundef %i.042.1, i32 noundef 1, ptr noundef nonnull %info)
  %arrayidx18.1 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 27, i32 1, i32 %i.042.1
  %21 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 439, ptr %arrayidx18.1, align 4
  %arrayidx20.1 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 29, i32 %i.042.1
  %22 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 439, ptr %arrayidx20.1, align 4
  %inc.1 = add nuw i32 %i.042.1, 1
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %num_ins.1 = getelementptr inbounds %struct.snd_vx_hardware, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_ins.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ins.1, align 4
  %mul.1 = shl i32 %26, 1
  %cmp5.1 = icmp ult i32 %inc.1, %mul.1
  br i1 %cmp5.1, label %if.end.1.if.end.1_crit_edge, label %if.end.1.for.inc21.1_crit_edge

if.end.1.for.inc21.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.1

if.end.1.if.end.1_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

for.inc21.1:                                      ; preds = %if.end.1.for.inc21.1_crit_edge, %for.inc21.for.inc21.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vx_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_output_level_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %hw = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %output_level_max = getelementptr inbounds %struct.snd_vx_hardware, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %output_level_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output_level_max, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_output_level_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.vx_core, ptr %1, i32 0, i32 26, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 26, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_output_level_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %hw = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %output_level_max = getelementptr inbounds %struct.snd_vx_hardware, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %output_level_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_level_max, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp ugt i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp7 = icmp ugt i32 %11, %7
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx9 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 26, i32 %3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp11.not = icmp eq i32 %9, %13
  br i1 %cmp11.not, label %lor.lhs.false12, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false12:                                  ; preds = %if.end
  %arrayidx16 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 26, i32 %3, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp17.not = icmp eq i32 %11, %15
  br i1 %cmp17.not, label %lor.lhs.false12.cleanup.sink.split_crit_edge, label %lor.lhs.false12.if.then18_crit_edge

lor.lhs.false12.if.then18_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false12.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then18:                                        ; preds = %lor.lhs.false12.if.then18_crit_edge, %if.end.if.then18_crit_edge
  tail call fastcc void @vx_set_analog_output_level(ptr noundef %1, i32 noundef %3, i32 noundef %9, i32 noundef %11)
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %arrayidx9, align 4
  %arrayidx28 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 26, i32 %3, i32 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %arrayidx28, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then18, %lor.lhs.false12.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then18 ], [ 0, %lor.lhs.false12.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vx_audio_gain_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  store i32 511, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 1
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx3 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 27, i32 %and2, i32 %and
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %add = add nuw nsw i32 %and, 1
  %arrayidx7 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 27, i32 %and2, i32 %add
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx9, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %info.i51 = alloca %struct.vx_audio_level, align 4
  %info.i = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %5)
  %cmp = icmp ugt i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp9 = icmp ugt i32 %7, 511
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx12 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 27, i32 %and2, i32 %and
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp13.not = icmp eq i32 %5, %9
  %add = add nuw nsw i32 %and, 1
  br i1 %cmp13.not, label %lor.lhs.false14, label %if.end.if.then20_crit_edge

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false14:                                  ; preds = %if.end
  %arrayidx18 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 27, i32 %and2, i32 %add
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp19.not = icmp eq i32 %7, %11
  br i1 %cmp19.not, label %lor.lhs.false14.cleanup.sink.split_crit_edge, label %lor.lhs.false14.if.then20_crit_edge

lor.lhs.false14.if.then20_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false14.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then20:                                        ; preds = %lor.lhs.false14.if.then20_crit_edge, %if.end.if.then20_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %12 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %info.i, align 4
  %conv.i = trunc i32 %5 to i16
  %level1.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 3
  %14 = ptrtoint ptr %level1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %level1.i, align 4
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %arrayidx12, align 4
  %call.i = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %and, i32 noundef %and2, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i51) #7
  %16 = call ptr @memset(ptr %info.i51, i32 0, i32 16)
  %17 = ptrtoint ptr %info.i51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %info.i51, align 4
  %conv.i52 = trunc i32 %7 to i16
  %level1.i53 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i51, i32 0, i32 3
  %18 = ptrtoint ptr %level1.i53 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i52, ptr %level1.i53, align 4
  %arrayidx2.i54 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 27, i32 %and2, i32 %add
  %19 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %arrayidx2.i54, align 4
  %call.i55 = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %add, i32 noundef %and2, ptr noundef nonnull %info.i51) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i51) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20, %lor.lhs.false14.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then20 ], [ 0, %lor.lhs.false14.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.vx_core, ptr %1, i32 0, i32 28, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %add = add nuw nsw i32 %and, 1
  %arrayidx3 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 28, i32 %add
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx6, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %info.i38 = alloca %struct.vx_audio_level, align 4
  %info.i = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %arrayidx1 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 28, i32 %and
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw nsw i32 %and, 1
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %add = add nuw nsw i32 %and, 1
  %arrayidx6 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 28, i32 %add
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp8.not = icmp eq i32 %9, %conv7
  br i1 %cmp8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %add13.pre-phi = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %add, %lor.lhs.false.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %12 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %info.i, align 4
  %tobool.not.i = xor i1 %tobool, true
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %mute.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 1
  %14 = ptrtoint ptr %mute.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lnot.ext.i, ptr %mute.i, align 4
  %conv.i = zext i1 %tobool to i8
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx1, align 1
  %call.i = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %and, i32 noundef 0, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  %arrayidx15 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16 = icmp ne i32 %17, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i38) #7
  %18 = call ptr @memset(ptr %info.i38, i32 0, i32 16)
  %19 = ptrtoint ptr %info.i38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %info.i38, align 4
  %tobool.not.i39 = xor i1 %tobool16, true
  %lnot.ext.i40 = zext i1 %tobool.not.i39 to i32
  %mute.i41 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i38, i32 0, i32 1
  %20 = ptrtoint ptr %mute.i41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext.i40, ptr %mute.i41, align 4
  %conv.i42 = zext i1 %tobool16 to i8
  %arrayidx.i43 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 28, i32 %add13.pre-phi
  %21 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i42, ptr %arrayidx.i43, align 1
  %call.i44 = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %add13.pre-phi, i32 noundef 0, ptr noundef nonnull %info.i38) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_monitor_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %add = add nuw nsw i32 %and, 1
  %arrayidx3 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %add
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_monitor_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %info.i51 = alloca %struct.vx_audio_level, align 4
  %info.i = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %5)
  %cmp = icmp ugt i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp7 = icmp ugt i32 %7, 511
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx9 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %and
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp10.not = icmp eq i32 %5, %9
  %add = add nuw nsw i32 %and, 1
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false11:                                  ; preds = %if.end
  %arrayidx14 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %add
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp15.not = icmp eq i32 %7, %11
  br i1 %cmp15.not, label %lor.lhs.false11.cleanup.sink.split_crit_edge, label %lor.lhs.false11.if.then16_crit_edge

lor.lhs.false11.if.then16_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false11.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then16:                                        ; preds = %lor.lhs.false11.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %arrayidx18 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %and
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %14 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %conv.i = trunc i32 %5 to i16
  %monitor_level.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 4
  %15 = ptrtoint ptr %monitor_level.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %monitor_level.i, align 2
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 80, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %monitor_mute.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 2
  %17 = ptrtoint ptr %monitor_mute.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lnot.ext.i, ptr %monitor_mute.i, align 4
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %arrayidx9, align 4
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %13, ptr %arrayidx18, align 1
  %call.i = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %and, i32 noundef 0, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  %arrayidx23 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %add
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i51) #7
  %22 = call ptr @memset(ptr %info.i51, i32 0, i32 16)
  %conv.i52 = trunc i32 %7 to i16
  %monitor_level.i53 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i51, i32 0, i32 4
  %23 = ptrtoint ptr %monitor_level.i53 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i52, ptr %monitor_level.i53, align 2
  %24 = ptrtoint ptr %info.i51 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 80, ptr %info.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i54 = icmp eq i8 %21, 0
  %lnot.ext.i55 = zext i1 %tobool.not.i54 to i32
  %monitor_mute.i56 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i51, i32 0, i32 2
  %25 = ptrtoint ptr %monitor_mute.i56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnot.ext.i55, ptr %monitor_mute.i56, align 4
  %arrayidx.i57 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %add
  %26 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %arrayidx.i57, align 4
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %21, ptr %arrayidx23, align 1
  %call.i59 = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %add, i32 noundef 0, ptr noundef nonnull %info.i51) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i51) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16, %lor.lhs.false11.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then16 ], [ 0, %lor.lhs.false11.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_monitor_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %add = add nuw nsw i32 %and, 1
  %arrayidx3 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %add
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx6, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_monitor_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %info.i46 = alloca %struct.vx_audio_level, align 4
  %info.i = alloca %struct.vx_audio_level, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %arrayidx1 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %and
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw nsw i32 %and, 1
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %add = add nuw nsw i32 %and, 1
  %arrayidx6 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %add
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp8.not = icmp eq i32 %9, %conv7
  br i1 %cmp8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %add14.pre-phi = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %add, %lor.lhs.false.if.then_crit_edge ]
  %arrayidx10 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %and
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %14 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %conv.i = trunc i32 %13 to i16
  %monitor_level.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 4
  %15 = ptrtoint ptr %monitor_level.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %monitor_level.i, align 2
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 80, ptr %info.i, align 4
  %tobool.not.i = xor i1 %tobool, true
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %monitor_mute.i = getelementptr inbounds %struct.vx_audio_level, ptr %info.i, i32 0, i32 2
  %17 = ptrtoint ptr %monitor_mute.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lnot.ext.i, ptr %monitor_mute.i, align 4
  %conv4.i = zext i1 %tobool to i8
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4.i, ptr %arrayidx1, align 1
  %call.i = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %and, i32 noundef 0, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  %arrayidx17 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 29, i32 %add14.pre-phi
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20 = icmp ne i32 %22, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i46) #7
  %23 = call ptr @memset(ptr %info.i46, i32 0, i32 16)
  %conv.i47 = trunc i32 %20 to i16
  %monitor_level.i48 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i46, i32 0, i32 4
  %24 = ptrtoint ptr %monitor_level.i48 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i47, ptr %monitor_level.i48, align 2
  %25 = ptrtoint ptr %info.i46 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 80, ptr %info.i46, align 4
  %tobool.not.i49 = xor i1 %tobool20, true
  %lnot.ext.i50 = zext i1 %tobool.not.i49 to i32
  %monitor_mute.i51 = getelementptr inbounds %struct.vx_audio_level, ptr %info.i46, i32 0, i32 2
  %26 = ptrtoint ptr %monitor_mute.i51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %lnot.ext.i50, ptr %monitor_mute.i51, align 4
  %conv4.i53 = zext i1 %tobool20 to i8
  %arrayidx5.i54 = getelementptr %struct.vx_core, ptr %1, i32 0, i32 30, i32 %add14.pre-phi
  %27 = ptrtoint ptr %arrayidx5.i54 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i53, ptr %arrayidx5.i54, align 1
  %call.i55 = call fastcc i32 @vx_adjust_audio_level(ptr noundef %1, i32 noundef %add14.pre-phi, i32 noundef 0, ptr noundef nonnull %info.i46) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i46) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_src_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @vx_audio_src_info.texts_mic) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @vx_audio_src_info.texts_vx2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_audio_src_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_source_target = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_source_target, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_audio_src_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp ugt i32 %5, 2
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5 = icmp ugt i32 %5, 1
  br i1 %cmp5, label %if.else.cleanup_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %audio_source_target = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audio_source_target, align 4
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11.not = icmp eq i32 %7, %9
  br i1 %cmp11.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.then12

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %audio_source_target, align 4
  %audio_source.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %audio_source.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audio_source.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp.i = icmp eq i32 %9, %12
  br i1 %cmp.i, label %if.then12.cleanup.sink.split_crit_edge, label %lor.lhs.false.i

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.then12
  %pcm_running.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %pcm_running.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcm_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %chip_status.i.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %chip_status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip_status.i.i, align 4
  %and.i.i = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.vx_change_audio_source.exit.i_crit_edge

if.end.i.vx_change_audio_source.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_change_audio_source.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %ops.i.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %change_audio_source.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %change_audio_source.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %change_audio_source.i.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef %9) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %vx_change_audio_source.exit.i

vx_change_audio_source.exit.i:                    ; preds = %if.end.i.i, %if.end.i.vx_change_audio_source.exit.i_crit_edge
  %21 = ptrtoint ptr %audio_source_target to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audio_source_target, align 4
  %23 = ptrtoint ptr %audio_source.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %audio_source.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %vx_change_audio_source.exit.i, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then12.cleanup.sink.split_crit_edge ], [ 1, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ 1, %vx_change_audio_source.exit.i ], [ 0, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_clock_mode_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @vx_clock_mode_info.texts) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_clock_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %clock_mode = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_clock_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %clock_mode = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_mode, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clock_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clock_mode, align 4
  %freq = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq, align 4
  %call = tail call i32 @vx_set_clock(ptr noundef %1, i32 noundef %10) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then4 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vx_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @vx_iec958_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %uer_bits = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %uer_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uer_bits, align 4
  %conv = trunc i32 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 8
  %5 = load i32, ptr %uer_bits, align 4
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx7, align 1
  %7 = load i32, ptr %uer_bits, align 4
  %shr9 = lshr i32 %7, 16
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx14, align 2
  %9 = load i32, ptr %uer_bits, align 4
  %shr16 = lshr i32 %9, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx21 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx21, align 1
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %uer_bits = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %uer_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uer_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or17)
  %cmp.not = icmp eq i32 %11, %or17
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %uer_bits to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17, ptr %uer_bits, align 4
  tail call void @vx_set_iec958_status(ptr noundef %1, i32 noundef %or17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vx_set_iec958_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_saturation_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #7
  %4 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  %chip_status.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_status.i, align 4
  %and.i = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vx_get_audio_vu_meter.exit_crit_edge

entry.vx_get_audio_vu_meter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

if.end.i:                                         ; preds = %entry
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 29) #7
  %LgStat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 1
  %7 = ptrtoint ptr %LgStat.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %LgStat.i, align 2
  %add.i = add i16 %8, 4
  store i16 %add.i, ptr %LgStat.i, align 2
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %9 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Cmd.i, align 4
  %or.i = or i32 %10, 2048
  store i32 %or.i, ptr %Cmd.i, align 4
  %arrayidx6.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2, i32 1
  %or11.1.i = shl i32 3, %and
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or11.1.i, ptr %arrayidx6.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %if.end.i.vx_get_audio_vu_meter.exit_crit_edge, label %for.cond16.preheader.i

if.end.i.vx_get_audio_vu_meter.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

for.cond16.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %Stat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3
  %12 = ptrtoint ptr %Stat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Stat.i, align 4
  %14 = lshr i32 %13, %and
  %15 = and i32 %14, 1
  %add21.1.i = add nuw nsw i32 %and, 2
  %16 = lshr i32 %13, %add21.1.i
  %17 = and i32 %16, 1
  br label %vx_get_audio_vu_meter.exit

vx_get_audio_vu_meter.exit:                       ; preds = %for.cond16.preheader.i, %if.end.i.vx_get_audio_vu_meter.exit_crit_edge, %entry.vx_get_audio_vu_meter.exit_crit_edge
  %meter.sroa.9.0 = phi i32 [ -1, %if.end.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %17, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  %meter.sroa.0.0 = phi i32 [ -1, %if.end.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %15, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %meter.sroa.0.0, ptr %value, align 8
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %meter.sroa.9.0, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vx_vu_meter_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @vx_vu_meter_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #7
  %4 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  %chip_status.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_status.i, align 4
  %and.i = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vx_get_audio_vu_meter.exit_crit_edge

entry.vx_get_audio_vu_meter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

if.end.i:                                         ; preds = %entry
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 29) #7
  %LgStat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 1
  %7 = ptrtoint ptr %LgStat.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %LgStat.i, align 2
  %add.i = add i16 %8, 4
  store i16 %add.i, ptr %LgStat.i, align 2
  %9 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %10 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Cmd.i, align 4
  %or.i = or i32 %11, 2048
  store i32 %or.i, ptr %Cmd.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx6.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2, i32 1
  %or11.1.i = shl i32 3, %and
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or11.1.i, ptr %arrayidx6.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge, label %for.cond16.preheader.i

if.end4.i.vx_get_audio_vu_meter.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

for.cond16.preheader.i:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx27.i, align 4
  %arrayidx27.1.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx27.1.i, align 4
  %phi.bo = ashr i32 %14, 16
  %phi.bo13 = ashr i32 %16, 16
  br label %vx_get_audio_vu_meter.exit

vx_get_audio_vu_meter.exit:                       ; preds = %for.cond16.preheader.i, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge, %entry.vx_get_audio_vu_meter.exit_crit_edge
  %meter.sroa.11.0 = phi i32 [ -1, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %phi.bo13, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  %meter.sroa.4.0 = phi i32 [ -1, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %phi.bo, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %meter.sroa.4.0, ptr %value, align 8
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %meter.sroa.11.0, ptr %arrayidx9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_peak_meter_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #7
  %4 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  %chip_status.i = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_status.i, align 4
  %and.i = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vx_get_audio_vu_meter.exit_crit_edge

entry.vx_get_audio_vu_meter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

if.end.i:                                         ; preds = %entry
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 29) #7
  %LgStat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 1
  %7 = ptrtoint ptr %LgStat.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %LgStat.i, align 2
  %add.i = add i16 %8, 4
  store i16 %add.i, ptr %LgStat.i, align 2
  %9 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %10 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Cmd.i, align 4
  %or.i = or i32 %11, 2048
  store i32 %or.i, ptr %Cmd.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx6.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2, i32 1
  %or11.1.i = shl i32 3, %and
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or11.1.i, ptr %arrayidx6.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge, label %for.cond16.preheader.i

if.end4.i.vx_get_audio_vu_meter.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vx_get_audio_vu_meter.exit

for.cond16.preheader.i:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx30.i, align 4
  %arrayidx30.1.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx30.1.i, align 4
  %phi.bo = ashr i32 %14, 16
  %phi.bo13 = ashr i32 %16, 16
  br label %vx_get_audio_vu_meter.exit

vx_get_audio_vu_meter.exit:                       ; preds = %for.cond16.preheader.i, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge, %entry.vx_get_audio_vu_meter.exit_crit_edge
  %meter.sroa.13.0 = phi i32 [ -1, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %phi.bo13, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  %meter.sroa.6.0 = phi i32 [ -1, %if.end4.i.vx_get_audio_vu_meter.exit_crit_edge ], [ %phi.bo, %for.cond16.preheader.i ], [ -1, %entry.vx_get_audio_vu_meter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %meter.sroa.6.0, ptr %value, align 8
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %meter.sroa.13.0, ptr %arrayidx9, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/drivers/vx/vx_mixer.c", i32 923, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/drivers/vx/vx_mixer.c", i32 950, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/drivers/vx/vx_mixer.c", i32 974, i32 40}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/drivers/vx/vx_mixer.c", i32 974, i32 50}
!8 = distinct !{null, !9, !"dir", i1 false, i1 false}
!9 = !{!"../sound/drivers/vx/vx_mixer.c", i32 974, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/drivers/vx/vx_mixer.c", i32 985, i32 18}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/drivers/vx/vx_mixer.c", i32 993, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/drivers/vx/vx_mixer.c", i32 22, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/drivers/vx/vx_mixer.c", i32 449, i32 11}
!18 = !{ptr @vx_control_output_level, !19, !"vx_control_output_level", i1 false, i1 false}
!19 = !{!"../sound/drivers/vx/vx_mixer.c", i32 445, i32 38}
!20 = !{ptr @vx_control_audio_gain, !21, !"vx_control_audio_gain", i1 false, i1 false}
!21 = !{!"../sound/drivers/vx/vx_mixer.c", i32 707, i32 38}
!22 = !{ptr @db_scale_audio_gain, !23, !"db_scale_audio_gain", i1 false, i1 false}
!23 = !{!"../sound/drivers/vx/vx_mixer.c", i32 705, i32 14}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/drivers/vx/vx_mixer.c", i32 719, i32 18}
!26 = !{ptr @vx_control_output_switch, !27, !"vx_control_output_switch", i1 false, i1 false}
!27 = !{!"../sound/drivers/vx/vx_mixer.c", i32 717, i32 38}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/drivers/vx/vx_mixer.c", i32 726, i32 18}
!30 = !{ptr @vx_control_monitor_gain, !31, !"vx_control_monitor_gain", i1 false, i1 false}
!31 = !{!"../sound/drivers/vx/vx_mixer.c", i32 724, i32 38}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/drivers/vx/vx_mixer.c", i32 736, i32 18}
!34 = !{ptr @vx_control_monitor_switch, !35, !"vx_control_monitor_switch", i1 false, i1 false}
!35 = !{!"../sound/drivers/vx/vx_mixer.c", i32 734, i32 38}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/drivers/vx/vx_mixer.c", i32 506, i32 11}
!38 = !{ptr @vx_control_audio_src, !39, !"vx_control_audio_src", i1 false, i1 false}
!39 = !{!"../sound/drivers/vx/vx_mixer.c", i32 504, i32 38}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/drivers/vx/vx_mixer.c", i32 462, i32 3}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/drivers/vx/vx_mixer.c", i32 462, i32 14}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/drivers/vx/vx_mixer.c", i32 462, i32 22}
!46 = !{ptr @vx_audio_src_info.texts_mic, !47, !"texts_mic", i1 false, i1 false}
!47 = !{!"../sound/drivers/vx/vx_mixer.c", i32 461, i32 28}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/drivers/vx/vx_mixer.c", i32 465, i32 14}
!50 = !{ptr @vx_audio_src_info.texts_vx2, !51, !"texts_vx2", i1 false, i1 false}
!51 = !{!"../sound/drivers/vx/vx_mixer.c", i32 464, i32 28}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/drivers/vx/vx_mixer.c", i32 550, i32 11}
!54 = !{ptr @vx_control_clock_mode, !55, !"vx_control_clock_mode", i1 false, i1 false}
!55 = !{!"../sound/drivers/vx/vx_mixer.c", i32 548, i32 38}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/drivers/vx/vx_mixer.c", i32 518, i32 3}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/drivers/vx/vx_mixer.c", i32 518, i32 11}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/drivers/vx/vx_mixer.c", i32 518, i32 23}
!62 = !{ptr @vx_clock_mode_info.texts, !63, !"texts", i1 false, i1 false}
!63 = !{!"../sound/drivers/vx/vx_mixer.c", i32 517, i32 28}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/drivers/vx/vx_mixer.c", i32 798, i32 11}
!66 = !{ptr @vx_control_iec958_mask, !67, !"vx_control_iec958_mask", i1 false, i1 false}
!67 = !{!"../sound/drivers/vx/vx_mixer.c", i32 795, i32 38}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/drivers/vx/vx_mixer.c", i32 805, i32 18}
!70 = !{ptr @vx_control_iec958, !71, !"vx_control_iec958", i1 false, i1 false}
!71 = !{!"../sound/drivers/vx/vx_mixer.c", i32 803, i32 38}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/drivers/vx/vx_mixer.c", i32 886, i32 11}
!74 = !{ptr @vx_control_saturation, !75, !"vx_control_saturation", i1 false, i1 false}
!75 = !{!"../sound/drivers/vx/vx_mixer.c", i32 884, i32 38}
!76 = !{ptr @vx_control_vu_meter, !77, !"vx_control_vu_meter", i1 false, i1 false}
!77 = !{!"../sound/drivers/vx/vx_mixer.c", i32 868, i32 38}
!78 = !{ptr @vx_control_peak_meter, !79, !"vx_control_peak_meter", i1 false, i1 false}
!79 = !{!"../sound/drivers/vx/vx_mixer.c", i32 876, i32 38}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 1, i32 2000}
