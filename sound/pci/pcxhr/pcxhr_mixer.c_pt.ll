; ModuleID = '/llk/IR_all_yes/sound/pci/pcxhr/pcxhr_mixer.c_pt.bc'
source_filename = "../sound/pci/pcxhr/pcxhr_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pcxhr_mgr = type { i32, [6 x ptr], ptr, i32, i32, [3 x i32], [40 x i8], ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcxhr = type { ptr, ptr, i32, ptr, %struct.pcxhr_pipe, [2 x %struct.pcxhr_pipe], [4 x %struct.pcxhr_stream], [2 x %struct.pcxhr_stream], i32, i32, [2 x i32], [2 x i32], [2 x i32], [4 x [2 x i32]], [4 x [2 x i32]], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, [5 x i8] }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_stream = type { ptr, i32, ptr, i32, i64, i32, i32, i32, i32 }
%struct.pcxhr_rmh = type { i16, i16, i16, i16, [8 x i32], [16 x i32] }
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

@pcxhr_create_mixer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mgr->mixer_mutex\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_control_analog_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @pcxhr_analog_vol_info, ptr @pcxhr_analog_vol_get, ptr @pcxhr_analog_vol_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_a_hr222_playback = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2550, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_analog_playback = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10400, i32 65636], [16 x i8] zeroinitializer }, align 32
@pcxhr_control_output_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @pcxhr_audio_sw_get, ptr @pcxhr_audio_sw_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_pcxhr_pcm_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @pcxhr_digital_vol_info, ptr @pcxhr_pcm_vol_get, ptr @pcxhr_pcm_vol_put, %union.anon.82 { ptr @db_scale_digital }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@pcxhr_control_pcm_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 4, ptr @snd_ctl_boolean_stereo_info, ptr @pcxhr_pcm_sw_get, ptr @pcxhr_pcm_sw_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_playback_iec958_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.15, i32 0, i32 1, i32 0, ptr @pcxhr_iec958_info, ptr @pcxhr_iec958_mask_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_playback_iec958 = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @pcxhr_iec958_info, ptr @pcxhr_iec958_get, ptr @pcxhr_iec958_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_a_hr222_capture = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11150, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_analog_capture = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11200, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@pcxhr_control_audio_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @pcxhr_audio_src_info, ptr @pcxhr_audio_src_get, ptr @pcxhr_audio_src_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_capture_iec958_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.27, i32 0, i32 1, i32 0, ptr @pcxhr_iec958_info, ptr @pcxhr_iec958_mask_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_capture_iec958 = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.28, i32 0, i32 1, i32 0, ptr @pcxhr_iec958_info, ptr @pcxhr_iec958_get, ptr null, %union.anon.82 zeroinitializer, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_monitor_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @pcxhr_digital_vol_info, ptr @pcxhr_monitor_vol_get, ptr @pcxhr_monitor_vol_put, %union.anon.82 { ptr @db_scale_digital }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_monitor_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @pcxhr_monitor_sw_get, ptr @pcxhr_monitor_sw_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_clock_type = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @pcxhr_clock_type_info, ptr @pcxhr_clock_type_get, ptr @pcxhr_clock_type_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_control_clock_rate = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.39, i32 0, i32 1, i32 0, ptr @pcxhr_clock_rate_info, ptr @pcxhr_clock_rate_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_pcxhr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pcxhr_update_analog_audio_level\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/pcxhr/pcxhr_mixer.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"error update_analog_audio_level card(%d) is_capture(%d) err(%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@db_scale_digital = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10975, i32 65561], [16 x i8] zeroinitializer }, align 32
@pcxhr_update_audio_pipe_level.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pcxhr_update_audio_pipe_level\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error update_audio_level(%d) err=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@pcxhr_update_playback_stream_level.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.7, ptr @.str.13, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pcxhr_update_playback_stream_level\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error update_playback_stream_level card(%d) err(%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@pcxhr_iec958_capture_byte.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcxhr_iec958_capture_byte\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read iec958 AES %d byte %d = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@pcxhr_iec958_update_byte.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcxhr_iec958_update_byte\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"write iec958 AES %d byte %d bit %d (cmd %x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@pcxhr_audio_src_info.texts = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Digi+SRC\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line+Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Monitoring Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Monitoring Playback Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Clock Mode\00", [21 x i8] zeroinitializer }, align 32
@pcxhr_clock_type_info.textsPCXHR = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WordClock\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AES Sync\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 1\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 2\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 3\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 4\00", [26 x i8] zeroinitializer }, align 32
@pcxhr_clock_type_info.textsHR22 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.34, ptr @.str.35], [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Clock Rates\00", [20 x i8] zeroinitializer }, align 32
@switch.table.pcxhr_audio_src_put = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 1024, i32 4096, i32 262144], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1108, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"pcxhr_control_analog_level\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 175, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1117, i32 16 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"db_scale_a_hr222_playback\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 37, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"db_scale_analog_playback\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 34, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"pcxhr_control_output_switch\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 225, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"snd_pcxhr_pcm_vol\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 399, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1136, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"pcxhr_control_pcm_switch\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 450, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [35 x i8] c"pcxhr_control_playback_iec958_mask\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1007, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"pcxhr_control_playback_iec958\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1014, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1165, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"db_scale_a_hr222_capture\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 36, i32 14 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"db_scale_analog_capture\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 33, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1178, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"pcxhr_control_audio_src\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 687, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [34 x i8] c"pcxhr_control_capture_iec958_mask\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1023, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"pcxhr_control_capture_iec958\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1030, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"pcxhr_control_monitor_vol\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 499, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"pcxhr_control_monitor_sw\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 552, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"pcxhr_control_clock_type\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 788, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant [25 x i8] c"pcxhr_control_clock_rate\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 832, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 62, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 227, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"db_scale_digital\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 238, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 326, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 275, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 452, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1010, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1016, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 908, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 970, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 689, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 638, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1026, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1033, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 503, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 554, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 790, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"textsPCXHR\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 717, i32 21 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 718, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 718, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 718, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 719, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 719, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 719, i32 21 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 719, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant [10 x i8] c"textsHR22\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 721, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [33 x i8] c"../sound/pci/pcxhr/pcxhr_mixer.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 835, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant [33 x i8] c"switch.table.pcxhr_audio_src_put\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @pcxhr_create_mixer.__key, ptr @.str, ptr @pcxhr_control_analog_level, ptr @.str.1, ptr @db_scale_a_hr222_playback, ptr @db_scale_analog_playback, ptr @pcxhr_control_output_switch, ptr @snd_pcxhr_pcm_vol, ptr @.str.2, ptr @pcxhr_control_pcm_switch, ptr @pcxhr_control_playback_iec958_mask, ptr @pcxhr_control_playback_iec958, ptr @.str.3, ptr @db_scale_a_hr222_capture, ptr @db_scale_analog_capture, ptr @.str.4, ptr @pcxhr_control_audio_src, ptr @pcxhr_control_capture_iec958_mask, ptr @pcxhr_control_capture_iec958, ptr @pcxhr_control_monitor_vol, ptr @pcxhr_control_monitor_sw, ptr @pcxhr_control_clock_type, ptr @pcxhr_control_clock_rate, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @db_scale_digital, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pcxhr_audio_src_info.texts, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @pcxhr_clock_type_info.textsPCXHR, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pcxhr_clock_type_info.textsHR22, ptr @.str.39, ptr @switch.table.pcxhr_audio_src_put], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_create_mixer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_analog_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_a_hr222_playback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_analog_playback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_output_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcxhr_pcm_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_pcm_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_playback_iec958_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_playback_iec958 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_a_hr222_capture to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_analog_capture to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_audio_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_capture_iec958_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_capture_iec958 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_monitor_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_monitor_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_clock_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_control_clock_rate to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_digital to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_audio_src_info.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_clock_type_info.textsPCXHR to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_clock_type_info.textsHR22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcxhr_audio_src_put to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_create_mixer(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mixer_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @pcxhr_create_mixer.__key) #7
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp214.not = icmp eq i32 %1, 0
  br i1 %cmp214.not, label %entry.cleanup134_crit_edge, label %for.body.lr.ph

entry.cleanup134_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 3
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 11
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 10
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %temp) #7
  %2 = call ptr @memset(ptr %temp, i32 255, i32 48)
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.0215
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %nb_streams_play = getelementptr inbounds %struct.snd_pcxhr, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.if.end41_crit_edge, label %if.then

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then:                                          ; preds = %for.body
  %7 = call ptr @memcpy(ptr %temp, ptr @pcxhr_control_analog_level, i32 40)
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %name, align 4
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %private_value, align 4
  %10 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool2.not, ptr @db_scale_analog_playback, ptr @db_scale_a_hr222_playback
  %11 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %tlv, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %call = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %4) #7
  %call5 = call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.cleanup.thread_crit_edge, label %if.end8

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end8:                                          ; preds = %if.then
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 8
  %call10 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_output_switch, ptr noundef %4) #7
  %call11 = call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup.thread_crit_edge, label %if.end14

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end8
  %16 = call ptr @memcpy(ptr %temp, ptr @snd_pcxhr_pcm_vol, i32 44)
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %name, align 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %count, align 4
  %19 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %private_value, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 8
  %call18 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %4) #7
  %call19 = call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end14.cleanup.thread_crit_edge, label %if.end22

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 8
  %call24 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_pcm_switch, ptr noundef %4) #7
  %call25 = call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup.thread_crit_edge, label %if.end28

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end28:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 8
  %call30 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_playback_iec958_mask, ptr noundef %4) #7
  %call31 = call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.cleanup.thread_crit_edge, label %if.end34

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end34:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %4, align 8
  %call36 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_playback_iec958, ptr noundef %4) #7
  %call37 = call i32 @snd_ctl_add(ptr noundef %27, ptr noundef %call36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end34.cleanup.thread_crit_edge, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end34.cleanup.thread_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end34.if.end41_crit_edge, %for.body.if.end41_crit_edge
  %nb_streams_capt = getelementptr inbounds %struct.snd_pcxhr, ptr %4, i32 0, i32 9
  %28 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %if.end41.if.end118_crit_edge, label %if.then43

if.end41.if.end118_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then43:                                        ; preds = %if.end41
  %30 = call ptr @memcpy(ptr %temp, ptr @pcxhr_control_analog_level, i32 40)
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.3, ptr %name, align 4
  %32 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %private_value, align 4
  %33 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load47 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool50.not = icmp sgt i8 %bf.load47, -1
  %spec.select217 = select i1 %tobool50.not, ptr @db_scale_analog_capture, ptr @db_scale_a_hr222_capture
  %34 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select217, ptr %tlv, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 8
  %call57 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %4) #7
  %call58 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef %call57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then43.cleanup.thread_crit_edge, label %if.end61

if.then43.cleanup.thread_crit_edge:               ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end61:                                         ; preds = %if.then43
  %37 = call ptr @memcpy(ptr %temp, ptr @snd_pcxhr_pcm_vol, i32 44)
  %38 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.4, ptr %name, align 4
  %39 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %count, align 4
  %40 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %private_value, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %4, align 8
  %call66 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %4) #7
  %call67 = call i32 @snd_ctl_add(ptr noundef %42, ptr noundef %call66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end61.cleanup.thread_crit_edge, label %if.end70

if.end61.cleanup.thread_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end70:                                         ; preds = %if.end61
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 8
  %call72 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_audio_src, ptr noundef %4) #7
  %call73 = call i32 @snd_ctl_add(ptr noundef %44, ptr noundef %call72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end70.cleanup.thread_crit_edge, label %if.end76

if.end70.cleanup.thread_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end76:                                         ; preds = %if.end70
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 8
  %call78 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_capture_iec958_mask, ptr noundef %4) #7
  %call79 = call i32 @snd_ctl_add(ptr noundef %46, ptr noundef %call78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end76.cleanup.thread_crit_edge, label %if.end82

if.end76.cleanup.thread_crit_edge:                ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end82:                                         ; preds = %if.end76
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 8
  %call84 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_capture_iec958, ptr noundef %4) #7
  %call85 = call i32 @snd_ctl_add(ptr noundef %48, ptr noundef %call84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end82.cleanup.thread_crit_edge, label %if.end88

if.end82.cleanup.thread_crit_edge:                ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end88:                                         ; preds = %if.end82
  %49 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load90 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load90)
  %tobool93.not = icmp sgt i8 %bf.load90, -1
  br i1 %tobool93.not, label %if.end88.if.end100_crit_edge, label %if.then94

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then94:                                        ; preds = %if.end88
  %call95 = call i32 @hr222_add_mic_controls(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then94.cleanup.thread_crit_edge, label %if.then94.if.end100_crit_edge

if.then94.if.end100_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then94.cleanup.thread_crit_edge:               ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end100:                                        ; preds = %if.then94.if.end100_crit_edge, %if.end88.if.end100_crit_edge
  %50 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp102 = icmp sgt i32 %.pr, 0
  br i1 %cmp102, label %land.lhs.true, label %if.end100.if.end118_crit_edge

if.end100.if.end118_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end100
  %51 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp104 = icmp sgt i32 %52, 0
  br i1 %cmp104, label %if.then105, label %land.lhs.true.if.end118_crit_edge

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then105:                                       ; preds = %land.lhs.true
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %4, align 8
  %call107 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_monitor_vol, ptr noundef %4) #7
  %call108 = call i32 @snd_ctl_add(ptr noundef %54, ptr noundef %call107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then105.cleanup.thread_crit_edge, label %if.end111

if.then105.cleanup.thread_crit_edge:              ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end111:                                        ; preds = %if.then105
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %4, align 8
  %call113 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_monitor_sw, ptr noundef %4) #7
  %call114 = call i32 @snd_ctl_add(ptr noundef %56, ptr noundef %call113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.end111.cleanup.thread_crit_edge, label %if.end111.if.end118_crit_edge

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end111.cleanup.thread_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end118:                                        ; preds = %if.end111.if.end118_crit_edge, %land.lhs.true.if.end118_crit_edge, %if.end100.if.end118_crit_edge, %if.end41.if.end118_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0215)
  %cmp119 = icmp eq i32 %i.0215, 0
  br i1 %cmp119, label %if.then120, label %if.end118.for.inc_crit_edge

if.end118.for.inc_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then120:                                       ; preds = %if.end118
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %4, align 8
  %call122 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_clock_type, ptr noundef %mgr) #7
  %call123 = call i32 @snd_ctl_add(ptr noundef %58, ptr noundef %call122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then120.cleanup.thread_crit_edge, label %if.end126

if.then120.cleanup.thread_crit_edge:              ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end126:                                        ; preds = %if.then120
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %4, align 8
  %call128 = call ptr @snd_ctl_new1(ptr noundef nonnull @pcxhr_control_clock_rate, ptr noundef %mgr) #7
  %call129 = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef %call128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end126.cleanup.thread_crit_edge, label %if.end126.for.inc_crit_edge

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end126.cleanup.thread_crit_edge:               ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end126.cleanup.thread_crit_edge, %if.then120.cleanup.thread_crit_edge, %if.end111.cleanup.thread_crit_edge, %if.then105.cleanup.thread_crit_edge, %if.then94.cleanup.thread_crit_edge, %if.end82.cleanup.thread_crit_edge, %if.end76.cleanup.thread_crit_edge, %if.end70.cleanup.thread_crit_edge, %if.end61.cleanup.thread_crit_edge, %if.then43.cleanup.thread_crit_edge, %if.end34.cleanup.thread_crit_edge, %if.end28.cleanup.thread_crit_edge, %if.end22.cleanup.thread_crit_edge, %if.end14.cleanup.thread_crit_edge, %if.end8.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call129, %if.end126.cleanup.thread_crit_edge ], [ %call123, %if.then120.cleanup.thread_crit_edge ], [ %call114, %if.end111.cleanup.thread_crit_edge ], [ %call108, %if.then105.cleanup.thread_crit_edge ], [ %call95, %if.then94.cleanup.thread_crit_edge ], [ %call85, %if.end82.cleanup.thread_crit_edge ], [ %call79, %if.end76.cleanup.thread_crit_edge ], [ %call73, %if.end70.cleanup.thread_crit_edge ], [ %call67, %if.end61.cleanup.thread_crit_edge ], [ %call58, %if.then43.cleanup.thread_crit_edge ], [ %call37, %if.end34.cleanup.thread_crit_edge ], [ %call31, %if.end28.cleanup.thread_crit_edge ], [ %call25, %if.end22.cleanup.thread_crit_edge ], [ %call19, %if.end14.cleanup.thread_crit_edge ], [ %call11, %if.end8.cleanup.thread_crit_edge ], [ %call5, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp) #7
  br label %cleanup134

for.inc:                                          ; preds = %if.end126.for.inc_crit_edge, %if.end118.for.inc_crit_edge
  call fastcc void @pcxhr_init_audio_levels(ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp) #7
  %inc = add nuw i32 %i.0215, 1
  %61 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mgr, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup134_crit_edge

for.inc.cleanup134_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup134:                                       ; preds = %for.inc.cleanup134_crit_edge, %cleanup.thread, %entry.cleanup134_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup134_crit_edge ], [ 0, %for.inc.cleanup134_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_add_mic_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_init_audio_levels(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nb_streams_play = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 8
  %aes_bits = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 24
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %nb_streams_capt = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 9
  %analog_capture_active = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 22
  %cmd4.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %arrayidx13.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 2
  %chip_idx.i = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %arrayidx16.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc51, %for.inc50.for.body_crit_edge ]
  %0 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.if.end23_crit_edge, label %for.body3.preheader

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.body3.preheader:                              ; preds = %for.body
  %arrayidx4 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 0, i32 %i.089
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 0, i32 %i.089
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 439, ptr %arrayidx6, align 4
  %arrayidx4.1 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 1, i32 %i.089
  %4 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx4.1, align 4
  %arrayidx6.1 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 1, i32 %i.089
  %5 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 439, ptr %arrayidx6.1, align 4
  %arrayidx4.2 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 2, i32 %i.089
  %6 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx4.2, align 4
  %arrayidx6.2 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 2, i32 %i.089
  %7 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 439, ptr %arrayidx6.2, align 4
  %arrayidx4.3 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 3, i32 %i.089
  %8 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx4.3, align 4
  %arrayidx6.3 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 3, i32 %i.089
  %9 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 439, ptr %arrayidx6.3, align 4
  %10 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %aes_bits, align 8
  %arrayidx8 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 10, i32 %i.089
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx8, align 4
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  %arrayidx13 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 11, i32 %i.089
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 51, ptr %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 104, ptr %arrayidx13, align 4
  call fastcc void @pcxhr_update_analog_audio_level(ptr noundef %chip, i32 noundef 0, i32 noundef %i.089)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %is_hr_stereo15 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %is_hr_stereo15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load16 = load i8, ptr %is_hr_stereo15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %tobool19.not = icmp sgt i8 %bf.load16, -1
  br i1 %tobool19.not, label %if.end.if.end23_crit_edge, label %if.then20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 @hr222_update_analog_audio_level(ptr noundef %chip, i32 noundef 0, i32 noundef %i.089) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %20 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.end23.for.inc50_crit_edge, label %if.then25

if.end23.for.inc50_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.then25:                                        ; preds = %if.end23
  %arrayidx26 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 15, i32 %i.089
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 439, ptr %arrayidx26, align 4
  %23 = ptrtoint ptr %analog_capture_active to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %analog_capture_active, align 8
  %24 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mgr, align 4
  %is_hr_stereo28 = getelementptr inbounds %struct.pcxhr_mgr, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %is_hr_stereo28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load29 = load i8, ptr %is_hr_stereo28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %tobool32.not = icmp sgt i8 %bf.load29, -1
  %arrayidx37 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 12, i32 %i.089
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 223, ptr %arrayidx37, align 4
  br label %if.end39

if.else35:                                        ; preds = %if.then25
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 224, ptr %arrayidx37, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #7
  %29 = call ptr @memset(ptr %rmh.i, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 4) #7
  %30 = ptrtoint ptr %cmd4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd4.i, align 4
  %or.i = or i32 %31, 21
  store i32 %or.i, ptr %cmd4.i, align 4
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx13.i, align 4
  %35 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip_idx.i, align 8
  %mul.i = shl i32 %36, 1
  %add.i = add i32 %mul.i, %i.089
  %shl.i = shl nuw i32 1, %add.i
  %37 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl.i, ptr %arrayidx16.i, align 4
  %38 = ptrtoint ptr %rmh.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3, ptr %rmh.i, align 4
  %39 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mgr, align 4
  %call.i = call i32 @pcxhr_send_msg(ptr noundef %40, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.else35.pcxhr_update_analog_audio_level.exit_crit_edge

if.else35.pcxhr_update_analog_audio_level.exit_crit_edge: ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcxhr_update_analog_audio_level.exit

do.body.i:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_init_audio_levels, %if.then22.i)) #7
          to label %pcxhr_update_analog_audio_level.exit [label %if.then22.i], !srcloc !130

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  %45 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_idx.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238, ptr noundef %44, ptr noundef nonnull @.str.8, i32 noundef %46, i32 noundef 1, i32 noundef %call.i) #7
  br label %pcxhr_update_analog_audio_level.exit

pcxhr_update_analog_audio_level.exit:             ; preds = %if.then22.i, %do.body.i, %if.else35.pcxhr_update_analog_audio_level.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #7
  br label %if.end39

if.end39:                                         ; preds = %pcxhr_update_analog_audio_level.exit, %if.then33
  %47 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mgr, align 4
  %is_hr_stereo41 = getelementptr inbounds %struct.pcxhr_mgr, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %is_hr_stereo41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load42 = load i8, ptr %is_hr_stereo41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %tobool45.not = icmp sgt i8 %bf.load42, -1
  br i1 %tobool45.not, label %if.end39.for.inc50_crit_edge, label %if.then46

if.end39.for.inc50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 @hr222_update_analog_audio_level(ptr noundef %chip, i32 noundef 1, i32 noundef %i.089) #7
  br label %for.inc50

for.inc50:                                        ; preds = %if.then46, %if.end39.for.inc50_crit_edge, %if.end23.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc51, 2
  br i1 %exitcond.not, label %for.end52, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end52:                                        ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcxhr_analog_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %9 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %value3, align 8
  %max6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %. = select i1 %tobool.not, i32 128, i32 99
  %.sink = select i1 %cmp, i32 %., i32 255
  %10 = ptrtoint ptr %max6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %max6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_analog_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %analog_playback_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %analog_playback_volume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %analog_playback_volume, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 11, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %analog_capture_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %analog_capture_volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %analog_capture_volume, align 8
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value7, align 8
  %arrayidx10 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 12, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx10.sink = phi ptr [ %arrayidx10, %if.else ], [ %arrayidx3, %if.then ]
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx10.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.sink, align 4
  %arrayidx12 = getelementptr [128 x i32], ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx12, align 4
  %16 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgr, align 4
  %mixer_mutex14 = getelementptr inbounds %struct.pcxhr_mgr, ptr %17, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex14) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_analog_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %conv = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %arrayidx3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 12, i32 0
  %arrayidx4 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 11, i32 0
  %cond = select i1 %cmp, ptr %arrayidx3, ptr %arrayidx4
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %8 = icmp ugt i32 %7, 255
  br i1 %8, label %cleanup.thread, label %if.then.if.end46_crit_edge

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.else22:                                        ; preds = %entry
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.else37, label %if.then29

if.then29:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %7)
  %12 = icmp ugt i32 %7, 99
  br i1 %12, label %if.then29.cleanup.thread112_crit_edge, label %if.then29.if.end46_crit_edge

if.then29.if.end46_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then29.cleanup.thread112_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread112

if.else37:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %13 = icmp ugt i32 %7, 128
  br i1 %13, label %if.else37.cleanup.thread112_crit_edge, label %if.else37.if.end46_crit_edge

if.else37.if.end46_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.else37.cleanup.thread112_crit_edge:            ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread112

if.end46:                                         ; preds = %if.else37.if.end46_crit_edge, %if.then29.if.end46_crit_edge, %if.then.if.end46_crit_edge
  %14 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp47.not = icmp eq i32 %15, %7
  br i1 %cmp47.not, label %if.end46.cleanup_crit_edge, label %if.then49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %cond, align 4
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %is_hr_stereo51 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %is_hr_stereo51 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load52 = load i8, ptr %is_hr_stereo51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52)
  %tobool55.not = icmp sgt i8 %bf.load52, -1
  br i1 %tobool55.not, label %if.else57, label %if.then56

if.then56:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @hr222_update_analog_audio_level(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #7
  br label %cleanup

if.else57:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_analog_audio_level(ptr noundef %1, i32 noundef %conv, i32 noundef 0)
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1103 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1103 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1103, align 4
  br label %if.then.1

cleanup.thread112:                                ; preds = %if.else37.cleanup.thread112_crit_edge, %if.then29.cleanup.thread112_crit_edge
  %arrayidx.1114 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1114 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1114, align 4
  br label %if.else22.1

cleanup:                                          ; preds = %if.else57, %if.then56, %if.end46.cleanup_crit_edge
  %changed.2 = phi i32 [ 1, %if.then56 ], [ 1, %if.else57 ], [ 0, %if.end46.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  br i1 %cmp, label %cleanup.if.then.1_crit_edge, label %cleanup.if.else22.1_crit_edge

cleanup.if.else22.1_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.1

cleanup.if.then.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.1

if.else22.1:                                      ; preds = %cleanup.if.else22.1_crit_edge, %cleanup.thread112
  %26 = phi i32 [ %23, %cleanup.thread112 ], [ %25, %cleanup.if.else22.1_crit_edge ]
  %changed.2118 = phi i32 [ 0, %cleanup.thread112 ], [ %changed.2, %cleanup.if.else22.1_crit_edge ]
  %cond.1119 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgr, align 4
  %is_hr_stereo24.1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %is_hr_stereo24.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load25.1 = load i8, ptr %is_hr_stereo24.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load25.1)
  %tobool28.not.1 = icmp sgt i8 %bf.load25.1, -1
  br i1 %tobool28.not.1, label %if.else37.1, label %if.then29.1

if.then29.1:                                      ; preds = %if.else22.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %26)
  %30 = icmp ugt i32 %26, 99
  br i1 %30, label %if.then29.1.cleanup.1_crit_edge, label %if.then29.1.if.end46.1_crit_edge

if.then29.1.if.end46.1_crit_edge:                 ; preds = %if.then29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.1

if.then29.1.cleanup.1_crit_edge:                  ; preds = %if.then29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.else37.1:                                      ; preds = %if.else22.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %26)
  %31 = icmp ugt i32 %26, 128
  br i1 %31, label %if.else37.1.cleanup.1_crit_edge, label %if.else37.1.if.end46.1_crit_edge

if.else37.1.if.end46.1_crit_edge:                 ; preds = %if.else37.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.1

if.else37.1.cleanup.1_crit_edge:                  ; preds = %if.else37.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.then.1:                                        ; preds = %cleanup.if.then.1_crit_edge, %cleanup.thread
  %32 = phi i32 [ %21, %cleanup.thread ], [ %25, %cleanup.if.then.1_crit_edge ]
  %changed.2107 = phi i32 [ 0, %cleanup.thread ], [ %changed.2, %cleanup.if.then.1_crit_edge ]
  %cond.1110 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 12, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %32)
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %if.then.1.cleanup.1_crit_edge, label %if.then.1.if.end46.1_crit_edge

if.then.1.if.end46.1_crit_edge:                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.1

if.then.1.cleanup.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end46.1:                                       ; preds = %if.then.1.if.end46.1_crit_edge, %if.else37.1.if.end46.1_crit_edge, %if.then29.1.if.end46.1_crit_edge
  %cond.1109 = phi ptr [ %cond.1119, %if.else37.1.if.end46.1_crit_edge ], [ %cond.1119, %if.then29.1.if.end46.1_crit_edge ], [ %cond.1110, %if.then.1.if.end46.1_crit_edge ]
  %34 = phi i32 [ %26, %if.else37.1.if.end46.1_crit_edge ], [ %26, %if.then29.1.if.end46.1_crit_edge ], [ %32, %if.then.1.if.end46.1_crit_edge ]
  %changed.2108 = phi i32 [ %changed.2118, %if.else37.1.if.end46.1_crit_edge ], [ %changed.2118, %if.then29.1.if.end46.1_crit_edge ], [ %changed.2107, %if.then.1.if.end46.1_crit_edge ]
  %35 = ptrtoint ptr %cond.1109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cond.1109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp47.not.1 = icmp eq i32 %36, %34
  br i1 %cmp47.not.1, label %if.end46.1.cleanup.1_crit_edge, label %if.then49.1

if.end46.1.cleanup.1_crit_edge:                   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.then49.1:                                      ; preds = %if.end46.1
  %37 = ptrtoint ptr %cond.1109 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %cond.1109, align 4
  %38 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mgr, align 4
  %is_hr_stereo51.1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %is_hr_stereo51.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load52.1 = load i8, ptr %is_hr_stereo51.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52.1)
  %tobool55.not.1 = icmp sgt i8 %bf.load52.1, -1
  br i1 %tobool55.not.1, label %if.else57.1, label %if.then56.1

if.then56.1:                                      ; preds = %if.then49.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.1 = tail call i32 @hr222_update_analog_audio_level(ptr noundef %1, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup.1

if.else57.1:                                      ; preds = %if.then49.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_analog_audio_level(ptr noundef %1, i32 noundef %conv, i32 noundef 1)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.else57.1, %if.then56.1, %if.end46.1.cleanup.1_crit_edge, %if.then.1.cleanup.1_crit_edge, %if.else37.1.cleanup.1_crit_edge, %if.then29.1.cleanup.1_crit_edge
  %changed.2.1 = phi i32 [ %changed.2118, %if.then29.1.cleanup.1_crit_edge ], [ %changed.2118, %if.else37.1.cleanup.1_crit_edge ], [ 1, %if.then56.1 ], [ 1, %if.else57.1 ], [ %changed.2108, %if.end46.1.cleanup.1_crit_edge ], [ %changed.2107, %if.then.1.cleanup.1_crit_edge ]
  %41 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mgr, align 4
  %mixer_mutex63 = getelementptr inbounds %struct.pcxhr_mgr, ptr %42, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex63) #7
  ret i32 %changed.2.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_update_analog_audio_level(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_update_analog_audio_level(ptr nocapture noundef readonly %chip, i32 noundef %is_capture, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #7
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_capture)
  %tobool.not = icmp eq i32 %is_capture, 0
  %cmd4 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %1 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %2, 21
  %3 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %cmd4, align 4
  %arrayidx1 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 12, i32 %channel
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %or6 = or i32 %2, 20
  %6 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or6, ptr %cmd4, align 4
  %arrayidx7 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 10, i32 %channel
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.else.if.end14_crit_edge, label %if.then9

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 11, i32 %channel
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %phi.bo = sub i32 128, %10
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.else.if.end14_crit_edge, %if.then
  %vol.0.sink = phi i32 [ %5, %if.then ], [ %phi.bo, %if.then9 ], [ 128, %if.else.if.end14_crit_edge ]
  %arrayidx13 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %vol.0.sink, ptr %arrayidx13, align 4
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_idx, align 8
  %mul = shl i32 %13, 1
  %add = add i32 %mul, %channel
  %shl = shl nuw i32 1, %add
  %arrayidx16 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %arrayidx16, align 4
  %15 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %rmh, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %16 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgr, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %17, ptr noundef nonnull %rmh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_update_analog_audio_level, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !130

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_idx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238, ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %23, i32 noundef %is_capture, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body, %if.end14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_audio_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %analog_playback_active = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %analog_playback_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %analog_playback_active, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.pcxhr_mgr, ptr %11, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_audio_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @hr222_update_analog_audio_level(ptr noundef %1, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_analog_audio_level(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then10 ], [ 1, %if.else ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp2.not.1 = icmp eq i32 %13, %15
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.1 = icmp ne i32 %15, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %lnot.ext.1, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %is_hr_stereo.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.1 = load i8, ptr %is_hr_stereo.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool9.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool9.not.1, label %if.else.1, label %if.then10.1

if.then10.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.1 = tail call i32 @hr222_update_analog_audio_level(ptr noundef %1, i32 noundef 0, i32 noundef 1) #7
  br label %for.inc.1

if.else.1:                                        ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_analog_audio_level(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then10.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ 1, %if.then10.1 ], [ 1, %if.else.1 ], [ %changed.1, %for.inc.for.inc.1_crit_edge ]
  %20 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mgr, align 4
  %mixer_mutex14 = getelementptr inbounds %struct.pcxhr_mgr, ptr %21, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex14) #7
  ret i32 %changed.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pcxhr_digital_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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
define internal i32 @pcxhr_pcm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #7, !srcloc !131
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %12, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %digital_capture_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 15
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 14, i32 %and.i
  %stored_volume.0 = select i1 %tobool.not, ptr %arrayidx, ptr %digital_capture_volume
  %13 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stored_volume.0, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  %arrayidx4 = getelementptr i32, ptr %stored_volume.0, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx6, align 4
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgr, align 4
  %mixer_mutex8 = getelementptr inbounds %struct.pcxhr_mgr, ptr %20, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #7, !srcloc !131
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %12, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %digital_capture_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 15
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 14, i32 %and.i
  %stored_volume.0 = select i1 %tobool.not, ptr %arrayidx, ptr %digital_capture_volume
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %14)
  %15 = icmp ugt i32 %14, 511
  br i1 %15, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %16 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stored_volume.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp8.not = icmp eq i32 %17, %14
  br i1 %cmp8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %stored_volume.0, align 4
  br i1 %tobool.not, label %if.then9.cleanup_crit_edge, label %if.then12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %changed.2 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then12 ], [ 1, %if.then9.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %20)
  %21 = icmp ugt i32 %20, 511
  br i1 %21, label %cleanup.cleanup.1_crit_edge, label %if.end6.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end6.1:                                        ; preds = %cleanup
  %arrayidx7.1 = getelementptr i32, ptr %stored_volume.0, i32 1
  %22 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %20)
  %cmp8.not.1 = icmp eq i32 %23, %20
  br i1 %cmp8.not.1, label %if.end6.1.cleanup.1_crit_edge, label %if.then9.1

if.end6.1.cleanup.1_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.then9.1:                                       ; preds = %if.end6.1
  %24 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %arrayidx7.1, align 4
  br i1 %tobool.not, label %if.then9.1.cleanup.1_crit_edge, label %cleanup.1.thread

if.then9.1.cleanup.1_crit_edge:                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

cleanup.1.thread:                                 ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 1, i32 noundef 1)
  br label %if.end20

cleanup.1:                                        ; preds = %if.then9.1.cleanup.1_crit_edge, %if.end6.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %changed.2.1 = phi i32 [ %changed.2, %cleanup.cleanup.1_crit_edge ], [ 1, %if.then9.1.cleanup.1_crit_edge ], [ %changed.2, %if.end6.1.cleanup.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.2.1)
  %tobool17.not = icmp ne i32 %changed.2.1, 0
  %25 = and i1 %tobool.not, %tobool17.not
  br i1 %25, label %if.then18, label %cleanup.1.if.end20_crit_edge

cleanup.1.if.end20_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_playback_stream_level(ptr noundef %1, i32 noundef %and.i)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %cleanup.1.if.end20_crit_edge, %cleanup.1.thread
  %changed.2.156 = phi i32 [ 1, %cleanup.1.thread ], [ 1, %if.then18 ], [ %changed.2.1, %cleanup.1.if.end20_crit_edge ]
  %26 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mgr, align 4
  %mixer_mutex22 = getelementptr inbounds %struct.pcxhr_mgr, ptr %27, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex22) #7
  ret i32 %changed.2.156
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_update_audio_pipe_level(ptr nocapture noundef readonly %chip, i32 noundef %capture, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #7
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool.not = icmp eq i32 %capture, 0
  %capture_pipe = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 5
  %playback_pipe = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 4
  %pipe.0 = select i1 %tobool.not, ptr %playback_pipe, ptr %capture_pipe
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 24) #7
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %pipe.0, i32 0, i32 2
  %1 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %first_audio, align 4
  %add = add i32 %2, %channel
  %shl = shl nuw i32 1, %add
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef %capture, i32 noundef 0, i32 noundef 0, i32 noundef %shl) #7
  %cmd8 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %3 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd8, align 4
  br i1 %tobool.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %4, 1
  %5 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %cmd8, align 4
  %arrayidx4 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 15, i32 %channel
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx6, align 4
  br label %if.end21

if.else7:                                         ; preds = %entry
  %or10 = or i32 %4, 10
  %9 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or10, ptr %cmd8, align 4
  %arrayidx11 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 17, i32 %channel
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %shl12 = shl i32 %11, 10
  %arrayidx14 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl12, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 16, i32 %channel
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then16, label %if.else7.if.end21_crit_edge

if.else7.if.end21_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %shl12, 2097152
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or19, ptr %arrayidx14, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.else7.if.end21_crit_edge, %if.then2
  %16 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %rmh, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %18, ptr noundef nonnull %rmh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp slt i32 %call, 0
  br i1 %cmp22, label %do.body, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_update_audio_pipe_level.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_update_audio_pipe_level, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !130

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_idx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_update_audio_pipe_level.__UNIQUE_ID_ddebug240, ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_update_playback_stream_level(ptr nocapture noundef readonly %chip, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #7
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 %idx
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 %idx
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 8
  %phi.bo = shl i32 %4, 10
  %phi.bo1 = or i32 %phi.bo, 10485760
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %left.0 = phi i32 [ %phi.bo1, %if.then ], [ 10485760, %entry.if.end_crit_edge ]
  %arrayidx6 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 13, i32 %idx, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 14, i32 %idx, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11, align 4
  %phi.bo2 = or i32 %8, 9437184
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %right.0 = phi i32 [ %phi.bo2, %if.then8 ], [ 9437184, %if.end.if.end13_crit_edge ]
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 18) #7
  %first_audio = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_audio, align 4
  %shl = shl nuw i32 1, %idx
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef 0, i32 noundef %10, i32 noundef 0, i32 noundef %shl) #7
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %cmd, align 4
  %arrayidx16 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %left.0, ptr %arrayidx16, align 4
  %arrayidx22 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %right.0, ptr %arrayidx22, align 4
  %15 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %rmh, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %16 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgr, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %17, ptr noundef nonnull %rmh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_update_playback_stream_level.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_update_playback_stream_level, %if.then31)) #7
          to label %cleanup [label %if.then31], !srcloc !130

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %22 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_idx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_update_playback_stream_level.__UNIQUE_ID_ddebug239, ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %23, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body, %if.end13.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_set_pipe_cmd_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_pcm_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #7, !srcloc !131
  %and.i = and i32 %8, %sub.i
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 13, i32 %and.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 13, i32 %and.i, i32 1
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7, align 4
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %mixer_mutex9 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_pcm_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #7, !srcloc !131
  %and.i = and i32 %8, %sub.i
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 13, i32 %and.i, i32 0
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not = icmp eq i32 %12, %14
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool = icmp ne i32 %14, 0
  %lnot.ext = zext i1 %tobool to i32
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnot.ext, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx1.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 13, i32 %and.i, i32 1
  %16 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.1, align 4
  %arrayidx2.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp3.not.1 = icmp eq i32 %17, %19
  br i1 %cmp3.not.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.1 = icmp ne i32 %19, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %20 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext.1, ptr %arrayidx1.1, align 4
  br label %if.then11

for.inc.1:                                        ; preds = %for.inc
  br i1 %cmp3.not, label %for.inc.1.if.end13_crit_edge, label %for.inc.1.if.then11_crit_edge

for.inc.1.if.then11_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

for.inc.1.if.end13_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %for.inc.1.if.then11_crit_edge, %for.inc.1.thread
  tail call fastcc void @pcxhr_update_playback_stream_level(ptr noundef %1, i32 noundef %and.i)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.inc.1.if.end13_crit_edge
  %changed.1.136 = phi i32 [ 1, %if.then11 ], [ 0, %for.inc.1.if.end13_crit_edge ]
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %mixer_mutex15 = getelementptr inbounds %struct.pcxhr_mgr, ptr %22, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex15) #7
  ret i32 %changed.1.136
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pcxhr_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @pcxhr_iec958_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %aes_bits = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %aes_bits) #7
  %2 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %aes_bits, align 1, !annotation !132
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %4, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %aes_bits, align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @hr222_iec958_capture_byte(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %aes_bits) #7
  br label %if.end

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call fastcc i32 @pcxhr_iec958_capture_byte(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %aes_bits)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  %err.0 = phi i32 [ %call, %if.then4 ], [ %call6, %if.else5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool7.not = icmp eq i32 %err.0, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then
  %13 = ptrtoint ptr %aes_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aes_bits, align 1
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value, align 1
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.1 = icmp eq i32 %17, 0
  br i1 %cmp1.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %if.end10
  %18 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %is_hr_stereo.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.1 = load i8, ptr %is_hr_stereo.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool.not.1, label %if.else5.1, label %if.then4.1

if.then4.1:                                       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.1 = call i32 @hr222_iec958_capture_byte(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %aes_bits) #7
  br label %if.end.1

if.else5.1:                                       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  %call6.1 = call fastcc i32 @pcxhr_iec958_capture_byte(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %aes_bits)
  br label %if.end.1

if.end.1:                                         ; preds = %if.else5.1, %if.then4.1
  %err.0.1 = phi i32 [ %call.1, %if.then4.1 ], [ %call6.1, %if.else5.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.1)
  %tobool7.not.1 = icmp eq i32 %err.0.1, 0
  br i1 %tobool7.not.1, label %if.end.1.if.end10.1_crit_edge, label %if.end.1.for.end_crit_edge

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.1.if.end10.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.1

if.then.1:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %23 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %aes_bits, align 1
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then.1, %if.end.1.if.end10.1_crit_edge
  %24 = ptrtoint ptr %aes_bits to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %aes_bits, align 1
  %arrayidx11.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx11.1, align 1
  %27 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.2 = icmp eq i32 %28, 0
  br i1 %cmp1.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %if.end10.1
  %29 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %is_hr_stereo.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.2 = load i8, ptr %is_hr_stereo.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool.not.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %tobool.not.2, label %if.else5.2, label %if.then4.2

if.then4.2:                                       ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  %call.2 = call i32 @hr222_iec958_capture_byte(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %aes_bits) #7
  br label %if.end.2

if.else5.2:                                       ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  %call6.2 = call fastcc i32 @pcxhr_iec958_capture_byte(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %aes_bits)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else5.2, %if.then4.2
  %err.0.2 = phi i32 [ %call.2, %if.then4.2 ], [ %call6.2, %if.else5.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.2)
  %tobool7.not.2 = icmp eq i32 %err.0.2, 0
  br i1 %tobool7.not.2, label %if.end.2.if.end10.2_crit_edge, label %if.end.2.for.end_crit_edge

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.2.if.end10.2_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.2

if.then.2:                                        ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.2, align 1
  %34 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %aes_bits, align 1
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.then.2, %if.end.2.if.end10.2_crit_edge
  %35 = ptrtoint ptr %aes_bits to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %aes_bits, align 1
  %arrayidx11.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx11.2, align 1
  %38 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.3 = icmp eq i32 %39, 0
  br i1 %cmp1.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %if.end10.2
  %40 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.3 = getelementptr inbounds %struct.pcxhr_mgr, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %is_hr_stereo.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.3 = load i8, ptr %is_hr_stereo.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %tobool.not.3 = icmp sgt i8 %bf.load.3, -1
  br i1 %tobool.not.3, label %if.else5.3, label %if.then4.3

if.then4.3:                                       ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #9
  %call.3 = call i32 @hr222_iec958_capture_byte(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %aes_bits) #7
  br label %if.end.3

if.else5.3:                                       ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #9
  %call6.3 = call fastcc i32 @pcxhr_iec958_capture_byte(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %aes_bits)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else5.3, %if.then4.3
  %err.0.3 = phi i32 [ %call.3, %if.then4.3 ], [ %call6.3, %if.else5.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.3)
  %tobool7.not.3 = icmp eq i32 %err.0.3, 0
  br i1 %tobool7.not.3, label %if.end.3.if.end10.3_crit_edge, label %if.end.3.for.end_crit_edge

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.3.if.end10.3_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.3

if.then.3:                                        ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.3, align 1
  %45 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %aes_bits, align 1
  br label %if.end10.3

if.end10.3:                                       ; preds = %if.then.3, %if.end.3.if.end10.3_crit_edge
  %46 = ptrtoint ptr %aes_bits to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %aes_bits, align 1
  %arrayidx11.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx11.3, align 1
  %49 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp1.4 = icmp eq i32 %50, 0
  br i1 %cmp1.4, label %if.then.4, label %if.else.4

if.else.4:                                        ; preds = %if.end10.3
  %51 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.4 = getelementptr inbounds %struct.pcxhr_mgr, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %is_hr_stereo.4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.4 = load i8, ptr %is_hr_stereo.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.4)
  %tobool.not.4 = icmp sgt i8 %bf.load.4, -1
  br i1 %tobool.not.4, label %if.else5.4, label %if.then4.4

if.then4.4:                                       ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #9
  %call.4 = call i32 @hr222_iec958_capture_byte(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %aes_bits) #7
  br label %if.end.4

if.else5.4:                                       ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #9
  %call6.4 = call fastcc i32 @pcxhr_iec958_capture_byte(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %aes_bits)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else5.4, %if.then4.4
  %err.0.4 = phi i32 [ %call.4, %if.then4.4 ], [ %call6.4, %if.else5.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.4)
  %tobool7.not.4 = icmp eq i32 %err.0.4, 0
  br i1 %tobool7.not.4, label %if.end.4.if.end10.4_crit_edge, label %if.end.4.for.end_crit_edge

if.end.4.for.end_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.4.if.end10.4_crit_edge:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.4

if.then.4:                                        ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 4
  %54 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.4, align 1
  %56 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %aes_bits, align 1
  br label %if.end10.4

if.end10.4:                                       ; preds = %if.then.4, %if.end.4.if.end10.4_crit_edge
  %57 = ptrtoint ptr %aes_bits to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %aes_bits, align 1
  %arrayidx11.4 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx11.4, align 1
  br label %for.end

for.end:                                          ; preds = %if.end10.4, %if.end.4.for.end_crit_edge, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %60 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mgr, align 4
  %mixer_mutex13 = getelementptr inbounds %struct.pcxhr_mgr, ptr %61, i32 0, i32 11
  call void @mutex_unlock(ptr noundef %mixer_mutex13) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %aes_bits) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 1
  %arrayidx1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 0
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp3.not = icmp eq i8 %5, %7
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @hr222_iec958_update_byte(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %5) #7
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_iec958_update_byte(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %5)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then6, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 1, %if.else ], [ 1, %if.then6 ]
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 1
  %13 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp3.not.1 = icmp eq i8 %12, %14
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %is_hr_stereo.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.1 = load i8, ptr %is_hr_stereo.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool.not.1, label %if.else.1, label %if.then6.1

if.then6.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.1 = tail call i32 @hr222_iec958_update_byte(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %12) #7
  br label %for.inc.1

if.else.1:                                        ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_iec958_update_byte(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %12)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then6.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ %changed.1, %for.inc.for.inc.1_crit_edge ], [ 1, %if.else.1 ], [ 1, %if.then6.1 ]
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 2
  %20 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp3.not.2 = icmp eq i8 %19, %21
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %22 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %is_hr_stereo.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.2 = load i8, ptr %is_hr_stereo.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool.not.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %tobool.not.2, label %if.else.2, label %if.then6.2

if.then6.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  %call.2 = tail call i32 @hr222_iec958_update_byte(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %19) #7
  br label %for.inc.2

if.else.2:                                        ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_iec958_update_byte(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %19)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %changed.1.2 = phi i32 [ %changed.1.1, %for.inc.1.for.inc.2_crit_edge ], [ 1, %if.else.2 ], [ 1, %if.then6.2 ]
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 3
  %27 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp3.not.3 = icmp eq i8 %26, %28
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %29 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.3 = getelementptr inbounds %struct.pcxhr_mgr, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %is_hr_stereo.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.3 = load i8, ptr %is_hr_stereo.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %tobool.not.3 = icmp sgt i8 %bf.load.3, -1
  br i1 %tobool.not.3, label %if.else.3, label %if.then6.3

if.then6.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  %call.3 = tail call i32 @hr222_iec958_update_byte(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %26) #7
  br label %for.inc.3

if.else.3:                                        ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_iec958_update_byte(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %26)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then6.3, %for.inc.2.for.inc.3_crit_edge
  %changed.1.3 = phi i32 [ %changed.1.2, %for.inc.2.for.inc.3_crit_edge ], [ 1, %if.else.3 ], [ 1, %if.then6.3 ]
  %arrayidx.4 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 24, i32 4
  %34 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp3.not.4 = icmp eq i8 %33, %35
  br i1 %cmp3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %36 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mgr, align 4
  %is_hr_stereo.4 = getelementptr inbounds %struct.pcxhr_mgr, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %is_hr_stereo.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.4 = load i8, ptr %is_hr_stereo.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.4)
  %tobool.not.4 = icmp sgt i8 %bf.load.4, -1
  br i1 %tobool.not.4, label %if.else.4, label %if.then6.4

if.then6.4:                                       ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #9
  %call.4 = tail call i32 @hr222_iec958_update_byte(ptr noundef %1, i32 noundef 4, i8 noundef zeroext %33) #7
  br label %for.inc.4

if.else.4:                                        ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_iec958_update_byte(ptr noundef %1, i32 noundef 4, i8 noundef zeroext %33)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then6.4, %for.inc.3.for.inc.4_crit_edge
  %changed.1.4 = phi i32 [ %changed.1.3, %for.inc.3.for.inc.4_crit_edge ], [ 1, %if.else.4 ], [ 1, %if.then6.4 ]
  %39 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mgr, align 4
  %mixer_mutex16 = getelementptr inbounds %struct.pcxhr_mgr, ptr %40, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex16) #7
  ret i32 %changed.1.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_iec958_capture_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_iec958_capture_byte(ptr nocapture noundef readonly %chip, i32 noundef %aes_idx, ptr nocapture noundef writeonly %aes_bits) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #7
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 5) #7
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd, align 4
  %or = or i32 %2, 11
  store i32 %or, ptr %cmd, align 4
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %3 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.mult = shl i32 %4, 1
  %switch.offset = add i32 %switch.idx.mult, 524432
  %arrayidx11 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.offset, ptr %arrayidx11, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %aes_idx)
  %7 = icmp ult i32 %aes_idx, 5
  br i1 %7, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %8 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgr, align 4
  %board_aes_in_192k = getelementptr inbounds %struct.pcxhr_mgr, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %board_aes_in_192k to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %board_aes_in_192k, align 4
  %11 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %. = select i1 %tobool.not, i32 2105344, i32 2103552
  %switch.idx.mult117 = shl i32 %aes_idx, 8
  %switch.offset118 = add i32 %switch.idx.mult117, %.
  %arrayidx31 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.offset118, ptr %arrayidx31, align 4
  %arrayidx47 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx47, align 4
  %and = and i32 %14, 1048575
  store i32 %and, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.offset118, ptr %arrayidx49, align 4
  %16 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %rmh, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %9, ptr noundef nonnull %rmh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool52.not = icmp eq i32 %call, 0
  br i1 %tobool52.not, label %if.end54, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %board_aes_in_192k56 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %board_aes_in_192k56 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load57 = load i8, ptr %board_aes_in_192k56, align 4
  %20 = and i8 %bf.load57, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool61.not = icmp eq i8 %20, 0
  %arrayidx69 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx69, align 4
  %trunc = trunc i32 %22 to i8
  %spec.select.7 = call i8 @llvm.bitreverse.i8(i8 %trunc)
  %temp.2 = select i1 %tobool61.not, i8 %spec.select.7, i8 %trunc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_iec958_capture_byte.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_iec958_capture_byte, %if.then83)) #7
          to label %do.end [label %if.then83], !srcloc !130

if.then83:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_idx, align 8
  %conv85 = zext i8 %temp.2 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_iec958_capture_byte.__UNIQUE_ID_ddebug241, ptr noundef %26, ptr noundef nonnull @.str.18, i32 noundef %28, i32 noundef %aes_idx, i32 noundef %conv85) #7
  br label %do.end

do.end:                                           ; preds = %if.then83, %if.end54
  %29 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %temp.2, ptr %aes_bits, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_iec958_update_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_iec958_update_byte(ptr nocapture noundef %chip, i32 noundef %aes_idx, i8 noundef zeroext %aes_bits) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 24, i32 %aes_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #7
  %2 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %shl = shl i32 %aes_idx, 3
  %cmd17 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %if.end31.for.body_crit_edge ]
  %old_bits.03 = phi i8 [ %1, %entry ], [ %19, %if.end31.for.body_crit_edge ]
  %new_bits.02 = phi i8 [ %aes_bits, %entry ], [ %20, %if.end31.for.body_crit_edge ]
  %3 = and i8 %old_bits.03, 1
  %4 = and i8 %new_bits.02, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp4.not = icmp eq i8 %3, %4
  br i1 %cmp4.not, label %for.body.if.end31_crit_edge, label %if.then

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %for.body
  %and3 = zext i8 %4 to i32
  %5 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_idx, align 8
  %and6 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp8 = icmp sgt i32 %6, 3
  %or = or i32 %and6, 4194304
  %spec.select = select i1 %cmp8, i32 %or, i32 %and6
  %add = add nuw nsw i32 %i.04, %shl
  %shl11 = shl i32 %add, 2
  %shl15 = shl nuw nsw i32 %and3, 23
  %or12 = or i32 %shl11, %shl15
  %or16 = or i32 %or12, %spec.select
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 4) #7
  %7 = ptrtoint ptr %cmd17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd17, align 4
  %or19 = or i32 %8, 10
  store i32 %or19, ptr %cmd17, align 4
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or16, ptr %arrayidx21, align 4
  %10 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %rmh, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_iec958_update_byte.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_iec958_update_byte, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !130

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip_idx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_iec958_update_byte.__UNIQUE_ID_ddebug242, ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %16, i32 noundef %aes_idx, i32 noundef %i.04, i32 noundef %or16) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.then
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %call27 = call i32 @pcxhr_send_msg(ptr noundef %18, ptr noundef nonnull %rmh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end.if.end31_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %do.end.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %19 = lshr i8 %old_bits.03, 1
  %20 = lshr i8 %new_bits.02, 1
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %aes_bits, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_audio_src_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool6.not, i32 3, i32 5
  %i.0 = select i1 %tobool.not, i32 2, i32 %spec.select
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %i.0, ptr noundef nonnull @pcxhr_audio_src_info.texts) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcxhr_audio_src_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_capture_source = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %audio_capture_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_capture_source, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_audio_src_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  %changed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool6.not, i32 3, i32 5
  %i.0 = select i1 %tobool.not, i32 2, i32 %spec.select
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %i.0)
  %cmp.not = icmp ult i32 %8, %i.0
  br i1 %cmp.not, label %if.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %audio_capture_source = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %audio_capture_source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audio_capture_source, align 8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp14.not = icmp eq i32 %10, %12
  br i1 %cmp14.not, label %if.end10.if.end27_crit_edge, label %if.then15

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then15:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %audio_capture_source to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %audio_capture_source, align 8
  %14 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mgr, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load20 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @hr222_set_audio_source(ptr noundef %1) #7
  br label %if.end27

if.else:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #7
  %17 = call ptr @memset(ptr %rmh.i, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed.i) #7
  %18 = ptrtoint ptr %changed.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %changed.i, align 4, !annotation !132
  %chip_idx.i = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %switch.lookup, label %if.else.pcxhr_set_audio_source.exit_crit_edge

if.else.pcxhr_set_audio_source.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcxhr_set_audio_source.exit

switch.lookup:                                    ; preds = %if.else
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.pcxhr_audio_src_put, i32 0, i32 %20
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.idx.mult = shl i32 %20, 1
  %switch.offset = add i32 %switch.idx.mult, 524432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  %.mask.0.i = select i1 %cmp.not.i, i32 0, i32 %switch.load
  %23 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mgr, align 4
  %call.i = call i32 @pcxhr_write_io_num_reg_cont(ptr noundef %24, i32 noundef %switch.load, i32 noundef %.mask.0.i, ptr noundef nonnull %changed.i) #7
  %25 = ptrtoint ptr %changed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %switch.lookup.if.end11.i_crit_edge, label %if.then4.i

switch.lookup.if.end11.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i:                                       ; preds = %switch.lookup
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 8) #7
  %27 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_idx.i, align 8
  %shl.i = shl nuw i32 1, %28
  %cmd.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd.i, align 4
  %or.i = or i32 %30, %shl.i
  store i32 %or.i, ptr %cmd.i, align 4
  %31 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mgr, align 4
  %call7.i = call i32 @pcxhr_send_msg(ptr noundef %32, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then4.i.if.end11.i_crit_edge, label %if.then4.i.pcxhr_set_audio_source.exit_crit_edge

if.then4.i.pcxhr_set_audio_source.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcxhr_set_audio_source.exit

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then4.i.if.end11.i_crit_edge, %switch.lookup.if.end11.i_crit_edge
  %33 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr, align 4
  %board_aes_in_192k.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %board_aes_in_192k.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %board_aes_in_192k.i, align 4
  %36 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not.i = icmp eq i8 %36, 0
  br i1 %tobool13.not.i, label %if.else34.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end11.i
  %capture_chips.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %34, i32 0, i32 15
  %37 = ptrtoint ptr %capture_chips.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capture_chips.i, align 4
  %smax.i = call i32 @llvm.smax.i32(i32 %38, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %exitcond.not.i = icmp slt i32 %38, 1
  br i1 %exitcond.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx20.i = getelementptr %struct.pcxhr_mgr, ptr %34, i32 0, i32 1, i32 0
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx20.i, align 4
  %audio_capture_source21.i = getelementptr inbounds %struct.snd_pcxhr, ptr %40, i32 0, i32 18
  %41 = ptrtoint ptr %audio_capture_source21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audio_capture_source21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp22.i = icmp eq i32 %42, 2
  %src_config.1.i = select i1 %cmp22.i, i32 200, i32 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %smax.i)
  %exitcond.1.not.i = icmp eq i32 %smax.i, 1
  br i1 %exitcond.1.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.1.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.1.i:                                     ; preds = %for.body.i
  %arrayidx20.1.i = getelementptr %struct.pcxhr_mgr, ptr %34, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx20.1.i, align 4
  %audio_capture_source21.1.i = getelementptr inbounds %struct.snd_pcxhr, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %audio_capture_source21.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %audio_capture_source21.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp22.1.i = icmp eq i32 %46, 2
  %or25.1.i = select i1 %cmp22.1.i, i32 4, i32 0
  %src_config.1.1.i = or i32 %or25.1.i, %src_config.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i)
  %exitcond.2.not.i = icmp eq i32 %smax.i, 2
  br i1 %exitcond.2.not.i, label %for.body.1.i.for.end.i_crit_edge, label %for.body.2.i

for.body.1.i.for.end.i_crit_edge:                 ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.2.i:                                     ; preds = %for.body.1.i
  %arrayidx20.2.i = getelementptr %struct.pcxhr_mgr, ptr %34, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx20.2.i, align 4
  %audio_capture_source21.2.i = getelementptr inbounds %struct.snd_pcxhr, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %audio_capture_source21.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %audio_capture_source21.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp22.2.i = icmp eq i32 %50, 2
  %or25.2.i = select i1 %cmp22.2.i, i32 2, i32 0
  %src_config.1.2.i = or i32 %or25.2.i, %src_config.1.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax.i)
  %exitcond.3.not.i = icmp eq i32 %smax.i, 3
  br i1 %exitcond.3.not.i, label %for.body.2.i.for.end.i_crit_edge, label %for.body.3.i

for.body.2.i.for.end.i_crit_edge:                 ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.3.i:                                     ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx20.3.i = getelementptr %struct.pcxhr_mgr, ptr %34, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx20.3.i, align 4
  %audio_capture_source21.3.i = getelementptr inbounds %struct.snd_pcxhr, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %audio_capture_source21.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %audio_capture_source21.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp22.3.i = icmp eq i32 %54, 2
  %or25.3.i = zext i1 %cmp22.3.i to i32
  %src_config.1.3.i = or i32 %src_config.1.2.i, %or25.3.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.3.i, %for.body.2.i.for.end.i_crit_edge, %for.body.1.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %src_config.0.lcssa.i = phi i32 [ 192, %for.cond.preheader.i.for.end.i_crit_edge ], [ %src_config.1.i, %for.body.i.for.end.i_crit_edge ], [ %src_config.1.1.i, %for.body.1.i.for.end.i_crit_edge ], [ %src_config.1.2.i, %for.body.2.i.for.end.i_crit_edge ], [ %src_config.1.3.i, %for.body.3.i ]
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 4) #7
  %55 = ptrtoint ptr %rmh.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %rmh.i, align 4
  %cmd27.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %56 = ptrtoint ptr %cmd27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd27.i, align 4
  %or29.i = or i32 %57, 12
  store i32 %or29.i, ptr %cmd27.i, align 4
  %arrayidx31.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %src_config.0.lcssa.i, ptr %arrayidx31.i, align 4
  br label %cleanup62.sink.split.i

if.else34.i:                                      ; preds = %if.end11.i
  %59 = ptrtoint ptr %audio_capture_source to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %audio_capture_source, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp36.i = icmp eq i32 %60, 2
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 4) #7
  %61 = ptrtoint ptr %rmh.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 3, ptr %rmh.i, align 4
  %cmd40.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %62 = ptrtoint ptr %cmd40.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd40.i, align 4
  %or42.i = or i32 %63, 11
  store i32 %or42.i, ptr %cmd40.i, align 4
  %arrayidx44.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %switch.offset, ptr %arrayidx44.i, align 4
  %or46.i = select i1 %cmp36.i, i32 2097985, i32 2098004
  %arrayidx48.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or46.i, ptr %arrayidx48.i, align 4
  %66 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mgr, align 4
  %call50.i = call i32 @pcxhr_send_msg(ptr noundef %67, ptr noundef nonnull %rmh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.else34.i.pcxhr_set_audio_source.exit_crit_edge

if.else34.i.pcxhr_set_audio_source.exit_crit_edge: ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcxhr_set_audio_source.exit

if.end53.i:                                       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  %or56.i = select i1 %cmp36.i, i32 2098241, i32 2098249
  %68 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or56.i, ptr %arrayidx48.i, align 4
  br label %cleanup62.sink.split.i

cleanup62.sink.split.i:                           ; preds = %if.end53.i, %for.end.i
  %69 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mgr, align 4
  %call33.i = call i32 @pcxhr_send_msg(ptr noundef %70, ptr noundef nonnull %rmh.i) #7
  br label %pcxhr_set_audio_source.exit

pcxhr_set_audio_source.exit:                      ; preds = %cleanup62.sink.split.i, %if.else34.i.pcxhr_set_audio_source.exit_crit_edge, %if.then4.i.pcxhr_set_audio_source.exit_crit_edge, %if.else.pcxhr_set_audio_source.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed.i) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #7
  br label %if.end27

if.end27:                                         ; preds = %pcxhr_set_audio_source.exit, %if.then24, %if.end10.if.end27_crit_edge
  %ret.0 = phi i32 [ 0, %if.end10.if.end27_crit_edge ], [ 1, %pcxhr_set_audio_source.exit ], [ 1, %if.then24 ]
  %71 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mgr, align 4
  %mixer_mutex29 = getelementptr inbounds %struct.pcxhr_mgr, ptr %72, i32 0, i32 11
  call void @mutex_unlock(ptr noundef %mixer_mutex29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_set_audio_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_write_io_num_reg_cont(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_monitor_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %monitoring_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %monitoring_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitoring_volume, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.pcxhr_mgr, ptr %11, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_monitor_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 17, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 16, i32 0
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then8

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 1, %if.then8 ], [ 1, %if.then.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2.not.1 = icmp eq i32 %12, %14
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.1, align 4
  %arrayidx7.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then8.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then8.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ %changed.1, %for.inc.for.inc.1_crit_edge ], [ 1, %if.then8.1 ], [ 1, %if.then.1.for.inc.1_crit_edge ]
  %18 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgr, align 4
  %mixer_mutex11 = getelementptr inbounds %struct.pcxhr_mgr, ptr %19, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex11) #7
  ret i32 %changed.1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_monitor_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %monitoring_active = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %monitoring_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitoring_active, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.pcxhr_mgr, ptr %11, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_monitor_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 16, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not.1 = icmp eq i32 %10, %12
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.1 = icmp ne i32 %12, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.1, ptr %arrayidx.1, align 4
  %or.1 = or i32 %changed.1, 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ %or.1, %if.then.1 ], [ %changed.1, %for.inc.for.inc.1_crit_edge ]
  %and = and i32 %changed.1.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.inc.1.if.end10_crit_edge, label %if.then9

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.inc.1.if.end10_crit_edge
  %and11 = and i32 %changed.1.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcxhr_update_audio_pipe_level(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %14 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mgr, align 4
  %mixer_mutex17 = getelementptr inbounds %struct.pcxhr_mgr, ptr %15, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1.1)
  %cmp18 = icmp ne i32 %changed.1.1, 0
  %conv = zext i1 %cmp18 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_clock_type_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end7.thread, label %if.end7

if.end7:                                          ; preds = %entry
  %capture_chips = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4.not86 = icmp slt i8 %bf.load, 0
  %spec.select.v = select i1 %tobool4.not86, i32 2, i32 3
  %spec.select = add i32 %5, %spec.select.v
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool12.not, label %if.else, label %if.then13

if.end7.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not77 = icmp sgt i8 %bf.load, -1
  %spec.select85 = select i1 %tobool12.not77, ptr @pcxhr_clock_type_info.textsPCXHR, ptr @pcxhr_clock_type_info.textsHR22
  br label %if.end66

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp = icmp sgt i32 %spec.select, 3
  br i1 %cmp, label %do.end, label %if.then13.if.end66_crit_edge, !prof !133

if.then13.if.end66_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 734, i32 noundef 9, ptr noundef null) #7
  br label %if.end66

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.select)
  %cmp36 = icmp sgt i32 %spec.select, 7
  br i1 %cmp36, label %do.end52, label %if.else.if.end66_crit_edge, !prof !133

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 737, i32 noundef 9, ptr noundef null) #7
  br label %if.end66

if.end66:                                         ; preds = %do.end52, %if.else.if.end66_crit_edge, %do.end, %if.then13.if.end66_crit_edge, %if.end7.thread
  %clock_items.079 = phi i32 [ %spec.select, %do.end ], [ %spec.select, %if.then13.if.end66_crit_edge ], [ %spec.select, %do.end52 ], [ %spec.select, %if.else.if.end66_crit_edge ], [ 2, %if.end7.thread ]
  %texts.0 = phi ptr [ @pcxhr_clock_type_info.textsHR22, %do.end ], [ @pcxhr_clock_type_info.textsHR22, %if.then13.if.end66_crit_edge ], [ @pcxhr_clock_type_info.textsPCXHR, %do.end52 ], [ @pcxhr_clock_type_info.textsPCXHR, %if.else.if.end66_crit_edge ], [ %spec.select85, %if.end7.thread ]
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %clock_items.079, ptr noundef nonnull %texts.0) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcxhr_clock_type_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %use_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_clock_type, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_clock_type_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate, align 4, !annotation !132
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %capture_chips = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capture_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4.not61 = icmp slt i8 %bf.load, 0
  %spec.select.v = select i1 %tobool4.not61, i32 2, i32 3
  %spec.select = add i32 %6, %spec.select.v
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %clock_items.0 = phi i32 [ 2, %entry.if.end7_crit_edge ], [ %spec.select, %if.then ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %clock_items.0)
  %cmp.not = icmp ult i32 %8, %clock_items.0
  br i1 %cmp.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %use_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %use_clock_type, align 4
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12.not = icmp eq i32 %10, %12
  br i1 %cmp12.not, label %if.end9.if.end35_crit_edge, label %if.then13

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then13:                                        ; preds = %if.end9
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  %15 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %use_clock_type, align 4
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp18.not = icmp eq i32 %14, 0
  br i1 %cmp18.not, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %sample_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  %spec.store.select = select i1 %tobool21.not, i32 48000, i32 %18
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %rate, align 4
  br label %if.then26

if.end24:                                         ; preds = %if.then13
  %call = call i32 @pcxhr_get_external_clock(ptr noundef %1, i32 noundef %14, ptr noundef nonnull %rate) #7
  %20 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool25.not = icmp eq i32 %.pr, 0
  br i1 %tobool25.not, label %if.end24.if.end33_crit_edge, label %if.end24.if.then26_crit_edge

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.end24.thread
  %21 = phi i32 [ %spec.store.select, %if.end24.thread ], [ %.pr, %if.end24.if.then26_crit_edge ]
  %call27 = call i32 @pcxhr_set_clock(ptr noundef %1, i32 noundef %21) #7
  %sample_rate28 = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %sample_rate28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_rate28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %if.then26.if.end33_crit_edge, label %if.then30

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate, align 4
  %26 = ptrtoint ptr %sample_rate28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sample_rate28, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then26.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  call void @mutex_unlock(ptr noundef %setup_mutex) #7
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end9.if.end35_crit_edge
  %ret.0 = phi i32 [ 1, %if.end33 ], [ 0, %if.end9.if.end35_crit_edge ]
  call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end35 ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_get_external_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcxhr_clock_rate_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
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
  %capture_chips = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capture_chips, align 4
  %add = add i32 %4, 3
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 192000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_clock_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate, align 4, !annotation !132
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #7
  %capture_chips = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capture_chips, align 4
  %add13 = add i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13)
  %cmp14 = icmp sgt i32 %add13, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sample_rate_real = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 30
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end3.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.015)
  %cmp1 = icmp eq i32 %i.015, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %sample_rate_real to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sample_rate_real, align 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate, align 4
  br label %if.end3

if.else:                                          ; preds = %for.body
  %call = call i32 @pcxhr_get_external_clock(ptr noundef %1, i32 noundef %i.015, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %if.then
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.015
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %11 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capture_chips, align 4
  %add = add i32 %12, 3
  %cmp = icmp slt i32 %inc, %add
  br i1 %cmp, label %if.end3.for.body_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end3.for.end_crit_edge, %if.else.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mixer_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @pcxhr_create_mixer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1108, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1117, i32 16}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1136, i32 16}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1165, i32 16}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1178, i32 16}
!11 = !{ptr @pcxhr_control_analog_level, !12, !"pcxhr_control_analog_level", i1 false, i1 false}
!12 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 175, i32 38}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 62, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pcxhr_update_analog_audio_level.__UNIQUE_ID_ddebug238, !14, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!19 = !{ptr @db_scale_a_hr222_playback, !20, !"db_scale_a_hr222_playback", i1 false, i1 false}
!20 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 37, i32 14}
!21 = !{ptr @db_scale_analog_playback, !22, !"db_scale_analog_playback", i1 false, i1 false}
!22 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 34, i32 14}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 227, i32 11}
!25 = !{ptr @pcxhr_control_output_switch, !26, !"pcxhr_control_output_switch", i1 false, i1 false}
!26 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 225, i32 38}
!27 = !{ptr @snd_pcxhr_pcm_vol, !28, !"snd_pcxhr_pcm_vol", i1 false, i1 false}
!28 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 399, i32 38}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 326, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pcxhr_update_audio_pipe_level.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 275, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pcxhr_update_playback_stream_level.__UNIQUE_ID_ddebug239, !34, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!37 = !{ptr @db_scale_digital, !38, !"db_scale_digital", i1 false, i1 false}
!38 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 238, i32 14}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 452, i32 11}
!41 = !{ptr @pcxhr_control_pcm_switch, !42, !"pcxhr_control_pcm_switch", i1 false, i1 false}
!42 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 450, i32 38}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1010, i32 11}
!45 = !{ptr @pcxhr_control_playback_iec958_mask, !46, !"pcxhr_control_playback_iec958_mask", i1 false, i1 false}
!46 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1007, i32 38}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1016, i32 18}
!49 = !{ptr @pcxhr_control_playback_iec958, !50, !"pcxhr_control_playback_iec958", i1 false, i1 false}
!50 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1014, i32 38}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 908, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pcxhr_iec958_capture_byte.__UNIQUE_ID_ddebug241, !52, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 970, i32 4}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pcxhr_iec958_update_byte.__UNIQUE_ID_ddebug242, !56, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!59 = !{ptr @db_scale_a_hr222_capture, !60, !"db_scale_a_hr222_capture", i1 false, i1 false}
!60 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 36, i32 14}
!61 = !{ptr @db_scale_analog_capture, !62, !"db_scale_analog_capture", i1 false, i1 false}
!62 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 33, i32 14}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 689, i32 11}
!65 = !{ptr @pcxhr_control_audio_src, !66, !"pcxhr_control_audio_src", i1 false, i1 false}
!66 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 687, i32 38}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 639, i32 3}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 639, i32 11}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 639, i32 22}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 639, i32 34}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 639, i32 41}
!77 = !{ptr @pcxhr_audio_src_info.texts, !78, !"texts", i1 false, i1 false}
!78 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 638, i32 21}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1026, i32 11}
!81 = !{ptr @pcxhr_control_capture_iec958_mask, !82, !"pcxhr_control_capture_iec958_mask", i1 false, i1 false}
!82 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1023, i32 38}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1033, i32 18}
!85 = !{ptr @pcxhr_control_capture_iec958, !86, !"pcxhr_control_capture_iec958", i1 false, i1 false}
!86 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 1030, i32 38}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 503, i32 18}
!89 = !{ptr @pcxhr_control_monitor_vol, !90, !"pcxhr_control_monitor_vol", i1 false, i1 false}
!90 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 499, i32 38}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 554, i32 18}
!93 = !{ptr @pcxhr_control_monitor_sw, !94, !"pcxhr_control_monitor_sw", i1 false, i1 false}
!94 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 552, i32 38}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 790, i32 11}
!97 = !{ptr @pcxhr_control_clock_type, !98, !"pcxhr_control_clock_type", i1 false, i1 false}
!98 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 788, i32 38}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 718, i32 3}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 718, i32 15}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 718, i32 28}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 719, i32 3}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 719, i32 12}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 719, i32 21}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 719, i32 30}
!113 = !{ptr @pcxhr_clock_type_info.textsPCXHR, !114, !"textsPCXHR", i1 false, i1 false}
!114 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 717, i32 21}
!115 = !{ptr @pcxhr_clock_type_info.textsHR22, !116, !"textsHR22", i1 false, i1 false}
!116 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 721, i32 21}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 835, i32 11}
!119 = !{ptr @pcxhr_control_clock_rate, !120, !"pcxhr_control_clock_rate", i1 false, i1 false}
!120 = !{!"../sound/pci/pcxhr/pcxhr_mixer.c", i32 832, i32 38}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148814305, i64 2148814310, i64 2148814323, i64 2148814367, i64 2148814401, i64 2148814422}
!131 = !{i64 682777, i64 682794}
!132 = !{!"auto-init"}
!133 = !{!"branch_weights", i32 1, i32 2000}
