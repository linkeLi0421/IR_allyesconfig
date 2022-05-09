; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emumixer.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emumixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_emu_chip_details = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.74 = type { i32, [28 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.snd_emu10k1_pcm = type { ptr, i32, ptr, [16 x ptr], ptr, i16, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@snd_emu10k1_mixer.emu10k1_remove_ctls = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Out Path & Mute\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mono Output Select\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Center Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LFE Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.emu10k1_rename_ctls = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.10, ptr @.str.5, ptr @.str.11, ptr @.str.7, ptr @.str.12, ptr @.str.9, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Surround Digital Playback Volume\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Center Digital Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LFE Digital Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.audigy_remove_ctls = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Select\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3D Control - Center\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"3D Control - Depth\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3D Control - Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Video Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Video Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"External Amplifier\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.audigy_rename_ctls = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.31, ptr @.str.14, ptr @.str.32, ptr @.str.16, ptr @.str.33, ptr @.str.29, ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.35, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wave Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wave Master Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AMic Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Phone Output Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Phone Output Playback Volume\00", [35 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.31, ptr @.str.38, ptr @.str.32, ptr @.str.16, ptr @.str.33, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Analog Mix Capture Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OLD PCM Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Old Mic Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IEC958 Optical Capture Volume\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.42, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.44, ptr @.str.45, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Line2 Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line2 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.audigy_rename_ctls_1361t_adc = internal constant { [39 x ptr], [36 x i8] } { [39 x ptr] [ptr @.str.15, ptr @.str.46, ptr @.str.16, ptr @.str.47, ptr @.str.32, ptr @.str.16, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.28, ptr @.str.56, ptr @.str.29, ptr @.str.42, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.36, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.40, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.43, ptr @.str.26, ptr @.str.66, ptr @.str.27, ptr @.str.67, ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.35, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Beep Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Beep Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phone Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phone Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Video Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Video Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_emu10k1_ac97_write, ptr @snd_emu10k1_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.70, i32 1921, ptr @.str.71, ptr @.str.72 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AC97 is optional on this board\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_emu10k1_mixer\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/emu10k1/emumixer.c\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer._entry_ptr = internal global ptr @snd_emu10k1_mixer._entry, section ".printk_index", align 4
@snd_emu10k1_mixer._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.70, i32 1923, ptr @.str.71, ptr @.str.72 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Proceeding without ac97 mixers...\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_emu10k1_mixer._entry_ptr.75 = internal global ptr @snd_emu10k1_mixer._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SB Audigy\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wave Center Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wave LFE Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line1/Mic Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line3 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown1 Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_send_routing_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.87, i32 0, i32 259, i32 32, ptr @snd_emu10k1_send_routing_info, ptr @snd_emu10k1_send_routing_get, ptr @snd_emu10k1_send_routing_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_send_volume_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.88, i32 0, i32 259, i32 32, ptr @snd_emu10k1_send_volume_info, ptr @snd_emu10k1_send_volume_get, ptr @snd_emu10k1_send_volume_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_attn_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.89, i32 0, i32 259, i32 32, ptr @snd_emu10k1_attn_info, ptr @snd_emu10k1_attn_get, ptr @snd_emu10k1_attn_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_efx_send_routing_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.90, i32 0, i32 259, i32 16, ptr @snd_emu10k1_efx_send_routing_info, ptr @snd_emu10k1_efx_send_routing_get, ptr @snd_emu10k1_efx_send_routing_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_efx_send_volume_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.91, i32 0, i32 259, i32 16, ptr @snd_emu10k1_efx_send_volume_info, ptr @snd_emu10k1_efx_send_volume_get, ptr @snd_emu10k1_efx_send_volume_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_efx_attn_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.92, i32 0, i32 259, i32 16, ptr @snd_emu10k1_efx_attn_info, ptr @snd_emu10k1_efx_attn_get, ptr @snd_emu10k1_efx_attn_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_spdif_mask_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.93, i32 0, i32 1, i32 3, ptr @snd_emu10k1_spdif_info, ptr @snd_emu10k1_spdif_get_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_spdif_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 3, ptr @snd_emu10k1_spdif_info, ptr @snd_emu10k1_spdif_get, ptr @snd_emu10k1_spdif_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_audigy_shared_spdif = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu10k1_shared_spdif_get, ptr @snd_emu10k1_shared_spdif_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1_shared_spdif = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu10k1_shared_spdif_get, ptr @snd_emu10k1_shared_spdif_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu1616_output_enum_ctls = internal constant { [18 x %struct.snd_kcontrol_new], [192 x i8] } { [18 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 9 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 11 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 12 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 13 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 15 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 17 }], [192 x i8] zeroinitializer }, align 32
@snd_emu1010_input_enum_ctls = internal constant { [22 x %struct.snd_kcontrol_new], [256 x i8] } { [22 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 9 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 11 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 12 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 13 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 15 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 17 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 18 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 19 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 20 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_input_source_get, ptr @snd_emu1010_input_source_put, %union.anon.86 zeroinitializer, i32 21 }], [256 x i8] zeroinitializer }, align 32
@snd_emu1010_adc_pads = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_adc_pads_get, ptr @snd_emu1010_adc_pads_put, %union.anon.86 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_adc_pads_get, ptr @snd_emu1010_adc_pads_put, %union.anon.86 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_adc_pads_get, ptr @snd_emu1010_adc_pads_put, %union.anon.86 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_adc_pads_get, ptr @snd_emu1010_adc_pads_put, %union.anon.86 zeroinitializer, i32 8 }], [32 x i8] zeroinitializer }, align 32
@snd_emu1010_dac_pads = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_dac_pads_get, ptr @snd_emu1010_dac_pads_put, %union.anon.86 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_dac_pads_get, ptr @snd_emu1010_dac_pads_put, %union.anon.86 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_dac_pads_get, ptr @snd_emu1010_dac_pads_put, %union.anon.86 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_dac_pads_get, ptr @snd_emu1010_dac_pads_put, %union.anon.86 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu1010_dac_pads_get, ptr @snd_emu1010_dac_pads_put, %union.anon.86 zeroinitializer, i32 16 }], [48 x i8] zeroinitializer }, align 32
@snd_emu1010_internal_clock = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 3, i32 1, ptr @snd_emu1010_internal_clock_info, ptr @snd_emu1010_internal_clock_get, ptr @snd_emu1010_internal_clock_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu1010_optical_out = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 3, i32 1, ptr @snd_emu1010_optical_out_info, ptr @snd_emu1010_optical_out_get, ptr @snd_emu1010_optical_out_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu1010_optical_in = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 3, i32 1, ptr @snd_emu1010_optical_in_info, ptr @snd_emu1010_optical_in_get, ptr @snd_emu1010_optical_in_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu1010_output_enum_ctls = internal constant { [24 x %struct.snd_kcontrol_new], [288 x i8] } { [24 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 9 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 11 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 12 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 13 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 14 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 15 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 17 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 18 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 19 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 20 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 21 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 22 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 3, i32 0, ptr @snd_emu1010_input_output_source_info, ptr @snd_emu1010_output_source_get, ptr @snd_emu1010_output_source_put, %union.anon.86 zeroinitializer, i32 23 }], [288 x i8] zeroinitializer }, align 32
@snd_audigy_i2c_capture_source = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_audigy_i2c_capture_source_info, ptr @snd_audigy_i2c_capture_source_get, ptr @snd_audigy_i2c_capture_source_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_audigy_i2c_volume_ctls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_audigy_i2c_volume_info, ptr @snd_audigy_i2c_volume_get, ptr @snd_audigy_i2c_volume_put, %union.anon.86 { ptr @snd_audigy_db_scale2 }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_audigy_i2c_volume_info, ptr @snd_audigy_i2c_volume_get, ptr @snd_audigy_i2c_volume_put, %union.anon.86 { ptr @snd_audigy_db_scale2 }, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_audigy_capture_boost = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_audigy_capture_boost_get, ptr @snd_audigy_capture_boost_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EMU10K1 PCM Send Routing\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EMU10K1 PCM Send Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EMU10K1 PCM Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Multichannel PCM Send Routing\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Multichannel PCM Send Volume\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multichannel PCM Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Audigy Analog/Digital Output Jack\00", [62 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SB Live Analog/Digital Output Jack\00", [61 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dock DAC1 Left Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dock DAC1 Right Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dock DAC2 Left Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dock DAC2 Right Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dock DAC3 Left Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dock DAC3 Right Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dock SPDIF Left Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dock SPDIF Right Playback Enum\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 0 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 1 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 2 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 3 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 4 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 5 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 6 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dock ADAT 7 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mana DAC Left Playback Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mana DAC Right Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@emu1616_src_texts = internal constant { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [60 x i8] zeroinitializer }, align 32
@emu1010_src_texts = internal constant { [53 x ptr], [44 x i8] } { [53 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Silence\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dock Mic A\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dock Mic B\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dock ADC1 Left\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Dock ADC1 Right\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dock ADC2 Left\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Dock ADC2 Right\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Dock SPDIF Left\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dock SPDIF Right\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 0\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 1\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 2\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 3\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 4\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 5\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 6\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT 7\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 0\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 1\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 2\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 3\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 4\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 5\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 6\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 7\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 8\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP 9\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 10\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 11\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 12\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 13\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 14\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 15\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 16\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 17\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 18\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 19\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 20\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 21\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 22\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 23\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 24\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 25\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 26\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 27\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 28\00", [25 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 29\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 30\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP 31\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dock ADC3 Left\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Dock ADC3 Right\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0202 ADC Left\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0202 ADC Right\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0202 SPDIF Left\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0202 SPDIF Right\00", [47 x i8] zeroinitializer }, align 32
@emu1616_output_dst = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 274, i32 278, i32 280, i32 281, i32 282, i32 283, i32 284, i32 285, i32 286, i32 287, i32 768, i32 769], [56 x i8] zeroinitializer }, align 32
@emu1616_src_regs = internal constant { [49 x i32], [60 x i8] } { [49 x i32] [i32 0, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 274, i32 278, i32 280, i32 281, i32 282, i32 283, i32 284, i32 285, i32 286, i32 287, i32 768, i32 769, i32 770, i32 771, i32 772, i32 773, i32 774, i32 775, i32 776, i32 777, i32 778, i32 779, i32 780, i32 781, i32 782, i32 783, i32 784, i32 785, i32 786, i32 787, i32 788, i32 789, i32 790, i32 791, i32 792, i32 793, i32 794, i32 795, i32 796, i32 797, i32 798, i32 799], [60 x i8] zeroinitializer }, align 32
@emu1010_output_dst = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 274, i32 278, i32 282, i32 286, i32 512, i32 513, i32 768, i32 769, i32 1024, i32 1025, i32 1026, i32 1027, i32 1028, i32 1029, i32 1030, i32 1031], [32 x i8] zeroinitializer }, align 32
@emu1010_src_regs = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 512, i32 513, i32 1280, i32 1281, i32 1024, i32 1025, i32 1026, i32 1027, i32 1028, i32 1029, i32 1030, i32 1031, i32 768, i32 769, i32 770, i32 771, i32 772, i32 773, i32 774, i32 775, i32 776, i32 777, i32 778, i32 779, i32 780, i32 781, i32 782, i32 783, i32 784, i32 785, i32 786, i32 787, i32 788, i32 789, i32 790, i32 791, i32 792, i32 793, i32 794, i32 795, i32 796, i32 797, i32 798, i32 799], [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 0 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 1 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 2 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 3 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 4 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 5 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 6 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 7 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 8 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP 9 Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP A Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP B Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP C Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP D Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP E Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP F Capture Enum\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 10 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 11 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 12 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 13 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 14 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP 15 Capture Enum\00", [44 x i8] zeroinitializer }, align 32
@emu1010_input_dst = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 1280, i32 1281, i32 1536, i32 1537, i32 1792, i32 1793], [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ADC1 14dB PAD Audio Dock Capture Switch\00", [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ADC2 14dB PAD Audio Dock Capture Switch\00", [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ADC3 14dB PAD Audio Dock Capture Switch\00", [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADC1 14dB PAD 0202 Capture Switch\00", [62 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DAC1 Audio Dock 14dB PAD Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DAC2 Audio Dock 14dB PAD Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DAC3 Audio Dock 14dB PAD Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DAC4 Audio Dock 14dB PAD Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAC1 0202 14dB PAD Playback Switch\00", [61 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clock Internal Rate\00", [44 x i8] zeroinitializer }, align 32
@snd_emu1010_internal_clock_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], [16 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"44100\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48000\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Optical Output Mode\00", [44 x i8] zeroinitializer }, align 32
@snd_emu1010_optical_out_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.204, ptr @.str.205], [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Optical Input Mode\00", [45 x i8] zeroinitializer }, align 32
@snd_emu1010_optical_in_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.204, ptr @.str.205], [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dock DAC4 Left Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dock DAC4 Right Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dock Phones Left Playback Enum\00", [33 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dock Phones Right Playback Enum\00", [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"1010 SPDIF Left Playback Enum\00", [34 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"1010 SPDIF Right Playback Enum\00", [33 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0202 DAC Left Playback Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0202 DAC Right Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 0 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 1 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 2 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 3 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 4 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 5 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 6 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1010 ADAT 7 Playback Enum\00", [38 x i8] zeroinitializer }, align 32
@snd_audigy_i2c_capture_source_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.224, ptr @.str.225], [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@snd_audigy_db_scale2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Extra Boost\00", [16 x i8] zeroinitializer }, align 32
@switch.table.snd_emu1010_internal_clock_put = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_emu1010_internal_clock_put.227 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_emu1010_internal_clock_put.228 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 17, i32 18, i32 48, i32 48], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"emu10k1_remove_ctls\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1783, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1785, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1786, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1787, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1788, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1789, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1790, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1791, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1792, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1793, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1794, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"emu10k1_rename_ctls\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1797, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1798, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1799, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1800, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [19 x i8] c"audigy_remove_ctls\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1803, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1807, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1808, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1809, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1810, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1814, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1815, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1816, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1817, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1818, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1819, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1820, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1821, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1822, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1823, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1824, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1825, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1826, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1827, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [19 x i8] c"audigy_rename_ctls\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1830, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1832, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1834, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1835, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1836, i32 34 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1837, i32 34 }
@___asan_gen_.349 = private unnamed_addr constant [27 x i8] c"audigy_rename_ctls_i2c_adc\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1840, i32 28 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1842, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1842, i32 26 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1843, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1845, i32 27 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1846, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1846, i32 24 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1852, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1854, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"audigy_remove_ctls_1361t_adc\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1858, i32 28 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1872, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1873, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [29 x i8] c"audigy_rename_ctls_1361t_adc\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1876, i32 28 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1877, i32 29 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1878, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1880, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1880, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1881, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1881, i32 27 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1882, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1882, i32 28 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1883, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1883, i32 28 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1884, i32 26 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1886, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1886, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1887, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1888, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1888, i32 25 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1889, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1890, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1890, i32 26 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1891, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1892, i32 28 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1893, i32 28 }
@___asan_gen_.454 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1902, i32 40 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1920, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1922, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1949, i32 21 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1950, i32 21 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1968, i32 33 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1988, i32 20 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1989, i32 20 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1992, i32 44 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1994, i32 20 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1994, i32 43 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1995, i32 42 }
@___asan_gen_.508 = private unnamed_addr constant [33 x i8] c"snd_emu10k1_send_routing_control\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1283, i32 38 }
@___asan_gen_.511 = private unnamed_addr constant [32 x i8] c"snd_emu10k1_send_volume_control\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1354, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant [25 x i8] c"snd_emu10k1_attn_control\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1419, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant [37 x i8] c"snd_emu10k1_efx_send_routing_control\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1491, i32 38 }
@___asan_gen_.520 = private unnamed_addr constant [36 x i8] c"snd_emu10k1_efx_send_volume_control\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1558, i32 38 }
@___asan_gen_.523 = private unnamed_addr constant [29 x i8] c"snd_emu10k1_efx_attn_control\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1616, i32 38 }
@___asan_gen_.526 = private unnamed_addr constant [31 x i8] c"snd_emu10k1_spdif_mask_control\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1167, i32 38 }
@___asan_gen_.529 = private unnamed_addr constant [26 x i8] c"snd_emu10k1_spdif_control\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1177, i32 38 }
@___asan_gen_.532 = private unnamed_addr constant [24 x i8] c"snd_audigy_shared_spdif\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1690, i32 38 }
@___asan_gen_.535 = private unnamed_addr constant [25 x i8] c"snd_emu10k1_shared_spdif\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1681, i32 38 }
@___asan_gen_.538 = private unnamed_addr constant [29 x i8] c"snd_emu1616_output_enum_ctls\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 516, i32 38 }
@___asan_gen_.541 = private unnamed_addr constant [28 x i8] c"snd_emu1010_input_enum_ctls\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 548, i32 38 }
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c"snd_emu1010_adc_pads\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 616, i32 38 }
@___asan_gen_.547 = private unnamed_addr constant [21 x i8] c"snd_emu1010_dac_pads\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 664, i32 38 }
@___asan_gen_.550 = private unnamed_addr constant [27 x i8] c"snd_emu1010_internal_clock\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 784, i32 38 }
@___asan_gen_.553 = private unnamed_addr constant [24 x i8] c"snd_emu1010_optical_out\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 836, i32 38 }
@___asan_gen_.556 = private unnamed_addr constant [23 x i8] c"snd_emu1010_optical_in\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 887, i32 38 }
@___asan_gen_.559 = private unnamed_addr constant [29 x i8] c"snd_emu1010_output_enum_ctls\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 487, i32 38 }
@___asan_gen_.562 = private unnamed_addr constant [30 x i8] c"snd_audigy_i2c_capture_source\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 967, i32 38 }
@___asan_gen_.565 = private unnamed_addr constant [27 x i8] c"snd_audigy_i2c_volume_ctls\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1054, i32 38 }
@___asan_gen_.568 = private unnamed_addr constant [25 x i8] c"snd_audigy_capture_boost\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1728, i32 38 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1287, i32 18 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1358, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1423, i32 18 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1495, i32 18 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1562, i32 18 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1620, i32 18 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1171, i32 18 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1180, i32 18 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1693, i32 11 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1684, i32 11 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 517, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 518, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 519, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 520, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 521, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 522, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 523, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 524, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 525, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 526, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 527, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 528, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 529, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 530, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 531, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 532, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 533, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 534, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [18 x i8] c"emu1616_src_texts\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 130, i32 27 }
@___asan_gen_.658 = private unnamed_addr constant [18 x i8] c"emu1010_src_texts\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 72, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 131, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 132, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 133, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 134, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 135, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 136, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 137, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 138, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 139, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 140, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 141, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 142, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 143, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 144, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 145, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 146, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 147, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 148, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 149, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 150, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 151, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 152, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 153, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 154, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 155, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 156, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 157, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 158, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 159, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 160, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 161, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 162, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 163, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 164, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 165, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 166, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 167, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 168, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 169, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 170, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 171, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 172, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 173, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 174, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 175, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 176, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 177, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 178, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 179, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 80, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 81, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 82, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 83, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 84, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 85, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [19 x i8] c"emu1616_output_dst\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 327, i32 27 }
@___asan_gen_.829 = private unnamed_addr constant [17 x i8] c"emu1616_src_regs\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 243, i32 27 }
@___asan_gen_.832 = private unnamed_addr constant [19 x i8] c"emu1010_output_dst\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 299, i32 27 }
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"emu1010_src_regs\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 186, i32 27 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 549, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 550, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 551, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 552, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 553, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 554, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 555, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 556, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 557, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 558, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 559, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 560, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 561, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 562, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 563, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 564, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 565, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 566, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 567, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 568, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 569, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 570, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant [18 x i8] c"emu1010_input_dst\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 353, i32 27 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 617, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 618, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 619, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 620, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 665, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 666, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 667, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 668, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 669, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 788, i32 18 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 676, i32 28 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 677, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 677, i32 12 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 677, i32 21 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 677, i32 30 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 839, i32 18 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 798, i32 28 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 890, i32 18 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 849, i32 28 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 494, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 495, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 496, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 497, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 500, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 501, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 502, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 503, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 504, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 505, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 506, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 507, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 508, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 509, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 510, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 511, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 905, i32 28 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 906, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 906, i32 10 }
@___asan_gen_.1021 = private unnamed_addr constant [21 x i8] c"snd_audigy_db_scale2\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 30, i32 14 }
@___asan_gen_.1024 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1025 = private constant [32 x i8] c"../sound/pci/emu10k1/emumixer.c\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1731, i32 11 }
@___asan_gen_.1027 = private unnamed_addr constant [44 x i8] c"switch.table.snd_emu1010_internal_clock_put\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant [48 x i8] c"switch.table.snd_emu1010_internal_clock_put.227\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant [48 x i8] c"switch.table.snd_emu1010_internal_clock_put.228\00", align 1
@llvm.compiler.used = appending global [271 x ptr] [ptr @snd_emu10k1_mixer._entry, ptr @snd_emu10k1_mixer._entry.73, ptr @snd_emu10k1_mixer._entry_ptr, ptr @snd_emu10k1_mixer._entry_ptr.75, ptr @snd_emu10k1_mixer.emu10k1_remove_ctls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_emu10k1_mixer.emu10k1_rename_ctls, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @snd_emu10k1_mixer.audigy_remove_ctls, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @snd_emu10k1_mixer.audigy_rename_ctls, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc, ptr @.str.44, ptr @.str.45, ptr @snd_emu10k1_mixer.audigy_rename_ctls_1361t_adc, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @snd_emu10k1_mixer.ops, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @snd_emu10k1_send_routing_control, ptr @snd_emu10k1_send_volume_control, ptr @snd_emu10k1_attn_control, ptr @snd_emu10k1_efx_send_routing_control, ptr @snd_emu10k1_efx_send_volume_control, ptr @snd_emu10k1_efx_attn_control, ptr @snd_emu10k1_spdif_mask_control, ptr @snd_emu10k1_spdif_control, ptr @snd_audigy_shared_spdif, ptr @snd_emu10k1_shared_spdif, ptr @snd_emu1616_output_enum_ctls, ptr @snd_emu1010_input_enum_ctls, ptr @snd_emu1010_adc_pads, ptr @snd_emu1010_dac_pads, ptr @snd_emu1010_internal_clock, ptr @snd_emu1010_optical_out, ptr @snd_emu1010_optical_in, ptr @snd_emu1010_output_enum_ctls, ptr @snd_audigy_i2c_capture_source, ptr @snd_audigy_i2c_volume_ctls, ptr @snd_audigy_capture_boost, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @emu1616_src_texts, ptr @emu1010_src_texts, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @emu1616_output_dst, ptr @emu1616_src_regs, ptr @emu1010_output_dst, ptr @emu1010_src_regs, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @emu1010_input_dst, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @snd_emu1010_internal_clock_info.texts, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @snd_emu1010_optical_out_info.texts, ptr @.str.207, ptr @snd_emu1010_optical_in_info.texts, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @snd_audigy_i2c_capture_source_info.texts, ptr @.str.224, ptr @.str.225, ptr @snd_audigy_db_scale2, ptr @.str.226, ptr @switch.table.snd_emu1010_internal_clock_put, ptr @switch.table.snd_emu1010_internal_clock_put.227, ptr @switch.table.snd_emu1010_internal_clock_put.228], section "llvm.metadata"
@0 = internal global [269 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.emu10k1_remove_ctls to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.emu10k1_rename_ctls to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.audigy_remove_ctls to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.audigy_rename_ctls to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.audigy_rename_ctls_1361t_adc to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_mixer._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_send_routing_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_send_volume_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_attn_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_efx_send_routing_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_efx_send_volume_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_efx_attn_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_spdif_mask_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_spdif_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_shared_spdif to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_shared_spdif to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1616_output_enum_ctls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_input_enum_ctls to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_adc_pads to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_dac_pads to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_internal_clock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_optical_out to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_optical_in to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_output_enum_ctls to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_i2c_capture_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_i2c_volume_ctls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_capture_boost to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1616_src_texts to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_src_texts to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1616_output_dst to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1616_src_regs to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_output_dst to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_src_regs to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_input_dst to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_internal_clock_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_optical_out_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu1010_optical_in_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_i2c_capture_source_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy_db_scale2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_emu1010_internal_clock_put to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_emu1010_internal_clock_put.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_emu1010_internal_clock_put.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_mixer(ptr noundef %emu, i32 noundef %pcm_device, i32 noundef %multi_device) local_unnamed_addr #0 align 64 {
entry:
  %sid.i.i927 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i917 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i907 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i897 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i892 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i887 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i882 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i877 = alloca %struct.snd_ctl_elem_id, align 4
  %sid.i.i = alloca %struct.snd_ctl_elem_id, align 4
  %id.i872 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i867 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i862 = alloca %struct.snd_ctl_elem_id, align 4
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  %pbus = alloca ptr, align 4
  %ac97 = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %2 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_capabilities, align 4
  %ac97_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ac97_chip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ac97_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else50, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus) #8
  %6 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus, align 4, !annotation !543
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97) #8
  %7 = call ptr @memset(ptr %ac97, i32 255, i32 24)
  %call = call i32 @snd_ac97_bus(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @snd_emu10k1_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %8 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 5
  %9 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 1
  %10 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pbus, align 4
  %no_vra = getelementptr inbounds %struct.snd_ac97_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %no_vra to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %no_vra, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %no_vra, align 2
  %13 = getelementptr inbounds i8, ptr %ac97, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 16)
  %15 = ptrtoint ptr %ac97 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %emu, ptr %ac97, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_emu10k1_mixer_free_ac97, ptr %9, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %8, align 4
  %ac974 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 30
  %call5 = call i32 @snd_ac97_mixer(ptr noundef %11, ptr noundef nonnull %ac97, ptr noundef %ac974) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end
  %18 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card_capabilities, align 4
  %ac97_chip9 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %ac97_chip9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ac97_chip9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp10 = icmp eq i8 %21, 1
  br i1 %cmp10, label %if.then7.cleanup.thread_crit_edge, label %cleanup

if.then7.cleanup.thread_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end21:                                         ; preds = %if.end
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %22 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac974, align 4
  br i1 %tobool22.not, label %if.else32, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_ac97_write_cache(ptr noundef %25, i16 noundef zeroext 2, i16 noundef zeroext 0) #8
  %26 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ac974, align 4
  call void @snd_ac97_write_cache(ptr noundef %27, i16 noundef zeroext 26, i16 noundef zeroext 0) #8
  %28 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ac974, align 4
  %call27 = call i32 @snd_ac97_update_bits(ptr noundef %29, i16 noundef zeroext 32, i16 noundef zeroext 512, i16 noundef zeroext 512) #8
  %30 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card_capabilities, align 4
  %adc_1361t = getelementptr inbounds %struct.snd_emu_chip_details, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %adc_1361t to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adc_1361t, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  %snd_emu10k1_mixer.audigy_remove_ctls.snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc = select i1 %tobool29.not, ptr @snd_emu10k1_mixer.audigy_remove_ctls, ptr @snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc
  br label %if.end46

if.else32:                                        ; preds = %if.end21
  %id = getelementptr inbounds %struct.snd_ac97, ptr %25, i32 0, i32 13
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2088470952, i32 %35)
  %cmp34 = icmp eq i32 %35, -2088470952
  br i1 %cmp34, label %if.then36, label %if.else32.if.end43_crit_edge

if.else32.if.end43_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  %rear_ac97 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 2
  %36 = ptrtoint ptr %rear_ac97 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load37 = load i8, ptr %rear_ac97, align 4
  %bf.set39 = or i8 %bf.load37, 64
  store i8 %bf.set39, ptr %rear_ac97, align 4
  call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 95, i32 noundef 0, i32 noundef 51) #8
  %37 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac974, align 4
  call void @snd_ac97_write_cache(ptr noundef %38, i16 noundef zeroext 4, i16 noundef zeroext 514) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #8
  %39 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %name1.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %40 = call ptr @memcpy(ptr %name1.i, ptr @.str.76, i32 22)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %41 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %iface.i, align 4
  %call2.i = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i862) #8
  %42 = call ptr @memset(ptr %id.i862, i32 0, i32 64)
  %name1.i863 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i862, i32 0, i32 4
  %43 = call ptr @memcpy(ptr %name1.i863, ptr @.str.77, i32 22)
  %iface.i865 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i862, i32 0, i32 1
  %44 = ptrtoint ptr %iface.i865 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %iface.i865, align 4
  %call2.i866 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i862) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i862) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.else32.if.end43_crit_edge
  %45 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ac974, align 4
  call void @snd_ac97_write_cache(ptr noundef %46, i16 noundef zeroext 56, i16 noundef zeroext 514) #8
  %47 = ptrtoint ptr %ac974 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ac974, align 4
  call void @snd_ac97_write_cache(ptr noundef %48, i16 noundef zeroext 54, i16 noundef zeroext 514) #8
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.then23
  %c.0 = phi ptr [ @snd_emu10k1_mixer.emu10k1_remove_ctls, %if.end43 ], [ %snd_emu10k1_mixer.audigy_remove_ctls.snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc, %if.then23 ]
  %49 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c.0, align 4
  %tobool47.not956 = icmp eq ptr %50, null
  br i1 %tobool47.not956, label %if.end46.cleanup.thread939_crit_edge, label %for.body.lr.ph

if.end46.cleanup.thread939_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread939

for.body.lr.ph:                                   ; preds = %if.end46
  %name1.i868 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i867, i32 0, i32 4
  %iface.i870 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i867, i32 0, i32 1
  br label %for.body

cleanup.thread939:                                ; preds = %for.body.cleanup.thread939_crit_edge, %if.end46.cleanup.thread939_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus) #8
  br label %if.end83

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %51 = phi ptr [ %50, %for.body.lr.ph ], [ %55, %for.body.for.body_crit_edge ]
  %c.1957 = phi ptr [ %c.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i867) #8
  %52 = call ptr @memset(ptr %id.i867, i32 0, i32 64)
  %call.i869 = call ptr @strcpy(ptr noundef %name1.i868, ptr noundef nonnull %51) #11
  %53 = ptrtoint ptr %iface.i870 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %iface.i870, align 4
  %call2.i871 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i867) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i867) #8
  %incdec.ptr = getelementptr ptr, ptr %c.1957, i32 1
  %54 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %incdec.ptr, align 4
  %tobool47.not = icmp eq ptr %55, null
  br i1 %tobool47.not, label %for.body.cleanup.thread939_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup.thread939_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread939

cleanup.thread:                                   ; preds = %if.then7.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.then7.cleanup.thread_crit_edge ], [ %call, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus) #8
  br label %cleanup568

cleanup:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.68) #12
  %60 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card1, align 4
  %dev19 = getelementptr inbounds %struct.snd_card, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev19, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.74) #12
  %64 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card1, align 4
  %66 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pbus, align 4
  call void @snd_device_free(ptr noundef %65, ptr noundef %67) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus) #8
  br label %no_ac97

if.else50:                                        ; preds = %entry
  %i2c_adc = getelementptr inbounds %struct.snd_emu_chip_details, ptr %3, i32 0, i32 17
  %68 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_adc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool52.not = icmp eq i8 %69, 0
  br i1 %tobool52.not, label %if.else50.no_ac97_crit_edge, label %for.cond54.preheader

if.else50.no_ac97_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_ac97

for.cond54.preheader:                             ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  %name1.i873 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i872, i32 0, i32 4
  %iface.i875 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i872, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i872) #8
  %70 = call ptr @memset(ptr %id.i872, i32 0, i32 64)
  %71 = call ptr @memcpy(ptr %name1.i873, ptr @.str.42, i32 19)
  %72 = ptrtoint ptr %iface.i875 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %iface.i875, align 4
  %call2.i876 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i872) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i872) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i872) #8
  %73 = call ptr @memset(ptr %id.i872, i32 0, i32 64)
  %74 = call ptr @memcpy(ptr %name1.i873, ptr @.str.37, i32 26)
  %75 = ptrtoint ptr %iface.i875 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %iface.i875, align 4
  %call2.i876.1 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i872) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i872) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i872) #8
  %76 = call ptr @memset(ptr %id.i872, i32 0, i32 64)
  %77 = call ptr @memcpy(ptr %name1.i873, ptr @.str.43, i32 19)
  %78 = ptrtoint ptr %iface.i875 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %iface.i875, align 4
  %call2.i876.2 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i872) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i872) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i872) #8
  %79 = call ptr @memset(ptr %id.i872, i32 0, i32 64)
  %80 = call ptr @memcpy(ptr %name1.i873, ptr @.str.41, i32 30)
  %81 = ptrtoint ptr %iface.i875 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %iface.i875, align 4
  %call2.i876.3 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i872) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i872) #8
  br label %if.end83

no_ac97:                                          ; preds = %if.else50.no_ac97_crit_edge, %cleanup
  %82 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card_capabilities, align 4
  %ecard = getelementptr inbounds %struct.snd_emu_chip_details, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %ecard to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ecard, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool63.not = icmp eq i8 %85, 0
  br i1 %tobool63.not, label %if.else67, label %if.then64

if.then64:                                        ; preds = %no_ac97
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card1, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %mixername to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 4993741158846845696, ptr %mixername, align 1
  br label %if.end83

if.else67:                                        ; preds = %no_ac97
  %audigy68 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %89 = ptrtoint ptr %audigy68 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %audigy68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool69.not = icmp eq i32 %90, 0
  %91 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card1, align 4
  %mixername77 = getelementptr inbounds %struct.snd_card, ptr %92, i32 0, i32 6
  br i1 %tobool69.not, label %if.else75, label %if.then70

if.then70:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %93 = call ptr @memcpy(ptr %mixername77, ptr @.str.79, i32 10)
  br label %if.end83

if.else75:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %mixername77 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 5002783615204667648, ptr %mixername77, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.else75, %if.then70, %if.then64, %for.cond54.preheader, %cleanup.thread939
  %audigy84 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %95 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool85.not = icmp eq i32 %96, 0
  br i1 %tobool85.not, label %if.end83.if.end100_crit_edge, label %if.then86

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then86:                                        ; preds = %if.end83
  %97 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card_capabilities, align 4
  %adc_1361t88 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %98, i32 0, i32 18
  %99 = ptrtoint ptr %adc_1361t88 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %adc_1361t88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool89.not = icmp eq i8 %100, 0
  br i1 %tobool89.not, label %if.else91, label %if.then86.if.end100_crit_edge

if.then86.if.end100_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.else91:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %i2c_adc93 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %98, i32 0, i32 17
  %101 = ptrtoint ptr %i2c_adc93 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %i2c_adc93, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool94.not = icmp eq i8 %102, 0
  %snd_emu10k1_mixer.audigy_rename_ctls.snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc = select i1 %tobool94.not, ptr @snd_emu10k1_mixer.audigy_rename_ctls, ptr @snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc
  br label %if.end100

if.end100:                                        ; preds = %if.else91, %if.then86.if.end100_crit_edge, %if.end83.if.end100_crit_edge
  %c.3 = phi ptr [ @snd_emu10k1_mixer.audigy_rename_ctls_1361t_adc, %if.then86.if.end100_crit_edge ], [ %snd_emu10k1_mixer.audigy_rename_ctls.snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc, %if.else91 ], [ @snd_emu10k1_mixer.emu10k1_rename_ctls, %if.end83.if.end100_crit_edge ]
  %103 = ptrtoint ptr %c.3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %c.3, align 4
  %tobool102.not959 = icmp eq ptr %104, null
  br i1 %tobool102.not959, label %if.end100.for.end107_crit_edge, label %for.body103.lr.ph

if.end100.for.end107_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end107

for.body103.lr.ph:                                ; preds = %if.end100
  %name1.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 4
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 1
  br label %for.body103

for.body103:                                      ; preds = %rename_ctl.exit.for.body103_crit_edge, %for.body103.lr.ph
  %105 = phi ptr [ %104, %for.body103.lr.ph ], [ %111, %rename_ctl.exit.for.body103_crit_edge ]
  %c.4960 = phi ptr [ %c.3, %for.body103.lr.ph ], [ %add.ptr, %rename_ctl.exit.for.body103_crit_edge ]
  %arrayidx104 = getelementptr ptr, ptr %c.4960, i32 1
  %106 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx104, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #8
  %108 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.i = call ptr @strcpy(ptr noundef %name1.i.i, ptr noundef nonnull %105) #11
  %109 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #8
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %for.body103.rename_ctl.exit_crit_edge, label %if.then.i

for.body103.rename_ctl.exit_crit_edge:            ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %rename_ctl.exit

if.then.i:                                        ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i, i32 0, i32 1, i32 4
  %call1.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %107) #11
  br label %rename_ctl.exit

rename_ctl.exit:                                  ; preds = %if.then.i, %for.body103.rename_ctl.exit_crit_edge
  %add.ptr = getelementptr ptr, ptr %c.4960, i32 2
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr, align 4
  %tobool102.not = icmp eq ptr %111, null
  br i1 %tobool102.not, label %rename_ctl.exit.for.end107_crit_edge, label %rename_ctl.exit.for.body103_crit_edge

rename_ctl.exit.for.body103_crit_edge:            ; preds = %rename_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body103

rename_ctl.exit.for.end107_crit_edge:             ; preds = %rename_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end107

for.end107:                                       ; preds = %rename_ctl.exit.for.end107_crit_edge, %if.end100.for.end107_crit_edge
  %112 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card_capabilities, align 4
  %subsystem = getelementptr inbounds %struct.snd_emu_chip_details, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %subsystem to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %subsystem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2143284990, i32 %115)
  %cmp109 = icmp eq i32 %115, -2143284990
  br i1 %cmp109, label %if.then111, label %for.end107.if.end116_crit_edge

for.end107.if.end116_crit_edge:                   ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then111:                                       ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i877) #8
  %116 = call ptr @memset(ptr %id.i877, i32 0, i32 64)
  %name1.i878 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i877, i32 0, i32 4
  %117 = call ptr @memcpy(ptr %name1.i878, ptr @.str.7, i32 23)
  %iface.i880 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i877, i32 0, i32 1
  %118 = ptrtoint ptr %iface.i880 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %iface.i880, align 4
  %call2.i881 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i877) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i877) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i882) #8
  %119 = call ptr @memset(ptr %id.i882, i32 0, i32 64)
  %name1.i883 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i882, i32 0, i32 4
  %120 = call ptr @memcpy(ptr %name1.i883, ptr @.str.9, i32 20)
  %iface.i885 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i882, i32 0, i32 1
  %121 = ptrtoint ptr %iface.i885 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %iface.i885, align 4
  %call2.i886 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i882) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i882) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i887) #8
  %122 = call ptr @memset(ptr %id.i887, i32 0, i32 64)
  %name1.i888 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i887, i32 0, i32 4
  %123 = call ptr @memcpy(ptr %name1.i888, ptr @.str.81, i32 28)
  %iface.i890 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i887, i32 0, i32 1
  %124 = ptrtoint ptr %iface.i890 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %iface.i890, align 4
  %call2.i891 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i887) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i887) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i892) #8
  %125 = call ptr @memset(ptr %id.i892, i32 0, i32 64)
  %name1.i893 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i892, i32 0, i32 4
  %126 = call ptr @memcpy(ptr %name1.i893, ptr @.str.82, i32 25)
  %iface.i895 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i892, i32 0, i32 1
  %127 = ptrtoint ptr %iface.i895 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %iface.i895, align 4
  %call2.i896 = call i32 @snd_ctl_remove_id(ptr noundef %1, ptr noundef nonnull %id.i892) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i892) #8
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %for.end107.if.end116_crit_edge
  %128 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %card_capabilities, align 4
  %subsystem118 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %subsystem118 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %subsystem118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537334018, i32 %131)
  %cmp119 = icmp eq i32 %131, 537334018
  br i1 %cmp119, label %if.then121, label %if.end116.if.end126_crit_edge

if.end116.if.end126_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then121:                                       ; preds = %if.end116
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i897) #8
  %132 = call ptr @memset(ptr %sid.i.i897, i32 0, i32 64)
  %name1.i.i898 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i897, i32 0, i32 4
  %133 = call ptr @memcpy(ptr %name1.i.i898, ptr @.str.45, i32 21)
  %iface.i.i900 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i897, i32 0, i32 1
  %134 = ptrtoint ptr %iface.i.i900 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %iface.i.i900, align 4
  %call2.i.i901 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i897) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i897) #8
  %tobool.not.i902 = icmp eq ptr %call2.i.i901, null
  br i1 %tobool.not.i902, label %if.then121.rename_ctl.exit906_crit_edge, label %if.then.i905

if.then121.rename_ctl.exit906_crit_edge:          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %rename_ctl.exit906

if.then.i905:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %name.i903 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i901, i32 0, i32 1, i32 4
  %135 = call ptr @memcpy(ptr %name.i903, ptr @.str.83, i32 25)
  br label %rename_ctl.exit906

rename_ctl.exit906:                               ; preds = %if.then.i905, %if.then121.rename_ctl.exit906_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i907) #8
  %136 = call ptr @memset(ptr %sid.i.i907, i32 0, i32 64)
  %name1.i.i908 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i907, i32 0, i32 4
  %137 = call ptr @memcpy(ptr %name1.i.i908, ptr @.str.37, i32 26)
  %iface.i.i910 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i907, i32 0, i32 1
  %138 = ptrtoint ptr %iface.i.i910 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %iface.i.i910, align 4
  %call2.i.i911 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i907) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i907) #8
  %tobool.not.i912 = icmp eq ptr %call2.i.i911, null
  br i1 %tobool.not.i912, label %rename_ctl.exit906.rename_ctl.exit916_crit_edge, label %if.then.i915

rename_ctl.exit906.rename_ctl.exit916_crit_edge:  ; preds = %rename_ctl.exit906
  call void @__sanitizer_cov_trace_pc() #10
  br label %rename_ctl.exit916

if.then.i915:                                     ; preds = %rename_ctl.exit906
  call void @__sanitizer_cov_trace_pc() #10
  %name.i913 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i911, i32 0, i32 1, i32 4
  %139 = call ptr @memcpy(ptr %name.i913, ptr @.str.45, i32 21)
  br label %rename_ctl.exit916

rename_ctl.exit916:                               ; preds = %if.then.i915, %rename_ctl.exit906.rename_ctl.exit916_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i917) #8
  %140 = call ptr @memset(ptr %sid.i.i917, i32 0, i32 64)
  %name1.i.i918 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i917, i32 0, i32 4
  %141 = call ptr @memcpy(ptr %name1.i.i918, ptr @.str.84, i32 20)
  %iface.i.i920 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i917, i32 0, i32 1
  %142 = ptrtoint ptr %iface.i.i920 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %iface.i.i920, align 4
  %call2.i.i921 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i917) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i917) #8
  %tobool.not.i922 = icmp eq ptr %call2.i.i921, null
  br i1 %tobool.not.i922, label %rename_ctl.exit916.rename_ctl.exit926_crit_edge, label %if.then.i925

rename_ctl.exit916.rename_ctl.exit926_crit_edge:  ; preds = %rename_ctl.exit916
  call void @__sanitizer_cov_trace_pc() #10
  br label %rename_ctl.exit926

if.then.i925:                                     ; preds = %rename_ctl.exit916
  call void @__sanitizer_cov_trace_pc() #10
  %name.i923 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i921, i32 0, i32 1, i32 4
  %143 = call ptr @memcpy(ptr %name.i923, ptr @.str.85, i32 21)
  br label %rename_ctl.exit926

rename_ctl.exit926:                               ; preds = %if.then.i925, %rename_ctl.exit916.rename_ctl.exit926_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i927) #8
  %144 = call ptr @memset(ptr %sid.i.i927, i32 0, i32 64)
  %name1.i.i928 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i927, i32 0, i32 4
  %145 = call ptr @memcpy(ptr %name1.i.i928, ptr @.str.42, i32 19)
  %iface.i.i930 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i927, i32 0, i32 1
  %146 = ptrtoint ptr %iface.i.i930 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %iface.i.i930, align 4
  %call2.i.i931 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef nonnull %sid.i.i927) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i927) #8
  %tobool.not.i932 = icmp eq ptr %call2.i.i931, null
  br i1 %tobool.not.i932, label %rename_ctl.exit926.if.end126_crit_edge, label %if.then.i935

rename_ctl.exit926.if.end126_crit_edge:           ; preds = %rename_ctl.exit926
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then.i935:                                     ; preds = %rename_ctl.exit926
  call void @__sanitizer_cov_trace_pc() #10
  %name.i933 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i.i931, i32 0, i32 1, i32 4
  %147 = call ptr @memcpy(ptr %name.i933, ptr @.str.86, i32 24)
  br label %if.end126

if.end126:                                        ; preds = %if.then.i935, %rename_ctl.exit926.if.end126_crit_edge, %if.end116.if.end126_crit_edge
  %call127 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_send_routing_control, ptr noundef %emu) #8
  %ctl_send_routing = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 55
  %148 = ptrtoint ptr %ctl_send_routing to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call127, ptr %ctl_send_routing, align 4
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.end126.cleanup568_crit_edge, label %if.end130

if.end126.cleanup568_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end130:                                        ; preds = %if.end126
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %call127, i32 0, i32 1, i32 2
  %149 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %pcm_device, ptr %device, align 4
  %call132 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.cleanup568_crit_edge

if.end130.cleanup568_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end135:                                        ; preds = %if.end130
  %call136 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_send_volume_control, ptr noundef %emu) #8
  %ctl_send_volume = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 56
  %150 = ptrtoint ptr %ctl_send_volume to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call136, ptr %ctl_send_volume, align 4
  %tobool137.not = icmp eq ptr %call136, null
  br i1 %tobool137.not, label %if.end135.cleanup568_crit_edge, label %if.end139

if.end135.cleanup568_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end139:                                        ; preds = %if.end135
  %device141 = getelementptr inbounds %struct.snd_kcontrol, ptr %call136, i32 0, i32 1, i32 2
  %151 = ptrtoint ptr %device141 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %pcm_device, ptr %device141, align 4
  %call142 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end139.cleanup568_crit_edge

if.end139.cleanup568_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end145:                                        ; preds = %if.end139
  %call146 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_attn_control, ptr noundef %emu) #8
  %ctl_attn = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 57
  %152 = ptrtoint ptr %ctl_attn to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call146, ptr %ctl_attn, align 4
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.end145.cleanup568_crit_edge, label %if.end149

if.end145.cleanup568_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end149:                                        ; preds = %if.end145
  %device151 = getelementptr inbounds %struct.snd_kcontrol, ptr %call146, i32 0, i32 1, i32 2
  %153 = ptrtoint ptr %device151 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %pcm_device, ptr %device151, align 4
  %call152 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call146) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end149.cleanup568_crit_edge

if.end149.cleanup568_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end155:                                        ; preds = %if.end149
  %call156 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_efx_send_routing_control, ptr noundef %emu) #8
  %ctl_efx_send_routing = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 58
  %154 = ptrtoint ptr %ctl_efx_send_routing to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call156, ptr %ctl_efx_send_routing, align 4
  %tobool157.not = icmp eq ptr %call156, null
  br i1 %tobool157.not, label %if.end155.cleanup568_crit_edge, label %if.end159

if.end155.cleanup568_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end159:                                        ; preds = %if.end155
  %device161 = getelementptr inbounds %struct.snd_kcontrol, ptr %call156, i32 0, i32 1, i32 2
  %155 = ptrtoint ptr %device161 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %multi_device, ptr %device161, align 4
  %call162 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call156) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end159.cleanup568_crit_edge

if.end159.cleanup568_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end165:                                        ; preds = %if.end159
  %call166 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_efx_send_volume_control, ptr noundef %emu) #8
  %ctl_efx_send_volume = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 59
  %156 = ptrtoint ptr %ctl_efx_send_volume to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call166, ptr %ctl_efx_send_volume, align 4
  %tobool167.not = icmp eq ptr %call166, null
  br i1 %tobool167.not, label %if.end165.cleanup568_crit_edge, label %if.end169

if.end165.cleanup568_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end169:                                        ; preds = %if.end165
  %device171 = getelementptr inbounds %struct.snd_kcontrol, ptr %call166, i32 0, i32 1, i32 2
  %157 = ptrtoint ptr %device171 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %multi_device, ptr %device171, align 4
  %call172 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end169.cleanup568_crit_edge

if.end169.cleanup568_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end175:                                        ; preds = %if.end169
  %call176 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_efx_attn_control, ptr noundef %emu) #8
  %ctl_efx_attn = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 60
  %158 = ptrtoint ptr %ctl_efx_attn to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call176, ptr %ctl_efx_attn, align 4
  %tobool177.not = icmp eq ptr %call176, null
  br i1 %tobool177.not, label %if.end175.cleanup568_crit_edge, label %if.end179

if.end175.cleanup568_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end179:                                        ; preds = %if.end175
  %device181 = getelementptr inbounds %struct.snd_kcontrol, ptr %call176, i32 0, i32 1, i32 2
  %159 = ptrtoint ptr %device181 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %multi_device, ptr %device181, align 4
  %call182 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call176) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end179.for.body189_crit_edge, label %if.end179.cleanup568_crit_edge

if.end179.cleanup568_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end179.for.body189_crit_edge:                  ; preds = %if.end179
  br label %for.body189

for.body189:                                      ; preds = %for.body189.for.body189_crit_edge, %if.end179.for.body189_crit_edge
  %pcm.0962 = phi i32 [ %inc224, %for.body189.for.body189_crit_edge ], [ 0, %if.end179.for.body189_crit_edge ]
  %arrayidx190 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962
  %epcm = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 3
  %160 = ptrtoint ptr %epcm to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %epcm, align 4
  %arrayidx197 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 2, i32 0
  %161 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %arrayidx197, align 1
  %arrayidx200 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 1, i32 0
  %162 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %arrayidx200, align 1
  %163 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx190, align 1
  %arrayidx197.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 2, i32 1
  %164 = ptrtoint ptr %arrayidx197.1 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %arrayidx197.1, align 1
  %arrayidx200.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx200.1 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %arrayidx200.1, align 1
  %arrayidx203.1 = getelementptr [8 x i8], ptr %arrayidx190, i32 0, i32 1
  %166 = ptrtoint ptr %arrayidx203.1 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %arrayidx203.1, align 1
  %arrayidx197.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 2, i32 2
  %167 = ptrtoint ptr %arrayidx197.2 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 2, ptr %arrayidx197.2, align 1
  %arrayidx200.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 1, i32 2
  %168 = ptrtoint ptr %arrayidx200.2 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 2, ptr %arrayidx200.2, align 1
  %arrayidx203.2 = getelementptr [8 x i8], ptr %arrayidx190, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx203.2 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %arrayidx203.2, align 1
  %arrayidx197.3 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 2, i32 3
  %170 = ptrtoint ptr %arrayidx197.3 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 3, ptr %arrayidx197.3, align 1
  %arrayidx200.3 = getelementptr [3 x [8 x i8]], ptr %arrayidx190, i32 0, i32 1, i32 3
  %171 = ptrtoint ptr %arrayidx200.3 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 3, ptr %arrayidx200.3, align 1
  %arrayidx203.3 = getelementptr [8 x i8], ptr %arrayidx190, i32 0, i32 3
  %172 = ptrtoint ptr %arrayidx203.3 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %arrayidx203.3, align 1
  %send_volume = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 1
  %173 = call ptr @memset(ptr %send_volume, i32 0, i32 24)
  %arrayidx208 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 1, i32 2, i32 1
  %174 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %arrayidx208, align 1
  %arrayidx210 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 1, i32 1
  %175 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %arrayidx210, align 4
  %arrayidx214 = getelementptr [8 x i8], ptr %send_volume, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %arrayidx214, align 1
  %177 = ptrtoint ptr %send_volume to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %send_volume, align 4
  %attn = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 2
  %arrayidx218 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 2, i32 2
  %178 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %arrayidx218, align 4
  %arrayidx220 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 53, i32 %pcm.0962, i32 2, i32 1
  %179 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %arrayidx220, align 2
  %180 = ptrtoint ptr %attn to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -1, ptr %attn, align 4
  %inc224 = add nuw nsw i32 %pcm.0962, 1
  %exitcond.not = icmp eq i32 %inc224, 32
  br i1 %exitcond.not, label %for.body189.for.body229_crit_edge, label %for.body189.for.body189_crit_edge

for.body189.for.body189_crit_edge:                ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body189

for.body189.for.body229_crit_edge:                ; preds = %for.body189
  br label %for.body229

for.body229:                                      ; preds = %if.end272.for.body229_crit_edge, %for.body189.for.body229_crit_edge
  %pcm.1965 = phi i32 [ %inc280, %if.end272.for.body229_crit_edge ], [ 0, %for.body189.for.body229_crit_edge ]
  %arrayidx232 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 54, i32 %pcm.1965
  %epcm233 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 54, i32 %pcm.1965, i32 3
  %181 = ptrtoint ptr %epcm233 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %epcm233, align 4
  %conv234 = trunc i32 %pcm.1965 to i8
  %182 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv234, ptr %arrayidx232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcm.1965)
  %cmp238 = icmp eq i32 %pcm.1965, 0
  %conv240 = zext i1 %cmp238 to i8
  %arrayidx243 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 1
  %183 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv240, ptr %arrayidx243, align 1
  %arrayidx252 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 2
  %184 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 13, ptr %arrayidx252, align 1
  %arrayidx252.1 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 3
  %185 = ptrtoint ptr %arrayidx252.1 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 14, ptr %arrayidx252.1, align 1
  %186 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool257.not = icmp eq i32 %187, 0
  br i1 %tobool257.not, label %for.body229.if.end272_crit_edge, label %for.body262.preheader

for.body229.if.end272_crit_edge:                  ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

for.body262.preheader:                            ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx268 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 4
  %188 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 60, ptr %arrayidx268, align 1
  %arrayidx268.1 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 5
  %189 = ptrtoint ptr %arrayidx268.1 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 61, ptr %arrayidx268.1, align 1
  %arrayidx268.2 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 6
  %190 = ptrtoint ptr %arrayidx268.2 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 62, ptr %arrayidx268.2, align 1
  %arrayidx268.3 = getelementptr [8 x i8], ptr %arrayidx232, i32 0, i32 7
  %191 = ptrtoint ptr %arrayidx268.3 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 63, ptr %arrayidx268.3, align 1
  br label %if.end272

if.end272:                                        ; preds = %for.body262.preheader, %for.body229.if.end272_crit_edge
  %send_volume273 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 54, i32 %pcm.1965, i32 1
  %192 = call ptr @memset(ptr %send_volume273, i32 0, i32 24)
  %193 = ptrtoint ptr %send_volume273 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -1, ptr %send_volume273, align 4
  %attn277 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 54, i32 %pcm.1965, i32 2
  %194 = ptrtoint ptr %attn277 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %attn277, align 4
  %inc280 = add nuw nsw i32 %pcm.1965, 1
  %exitcond993.not = icmp eq i32 %inc280, 16
  br i1 %exitcond993.not, label %for.end281, label %if.end272.for.body229_crit_edge

if.end272.for.body229_crit_edge:                  ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body229

for.end281:                                       ; preds = %if.end272
  %195 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %card_capabilities, align 4
  %ecard283 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %196, i32 0, i32 14
  %197 = ptrtoint ptr %ecard283 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ecard283, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool284.not = icmp eq i8 %198, 0
  br i1 %tobool284.not, label %if.then285, label %for.end281.if.end317_crit_edge

for.end281.if.end317_crit_edge:                   ; preds = %for.end281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end317

if.then285:                                       ; preds = %for.end281
  %call286 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_spdif_mask_control, ptr noundef %emu) #8
  %tobool287.not = icmp eq ptr %call286, null
  br i1 %tobool287.not, label %if.then285.cleanup568_crit_edge, label %if.end289

if.then285.cleanup568_crit_edge:                  ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end289:                                        ; preds = %if.then285
  %199 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool291.not = icmp eq i32 %200, 0
  br i1 %tobool291.not, label %if.then292, label %if.end289.if.end296_crit_edge

if.end289.if.end296_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end296

if.then292:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  %pcm_efx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 35
  %201 = ptrtoint ptr %pcm_efx to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pcm_efx, align 4
  %device293 = getelementptr inbounds %struct.snd_pcm, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %device293 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %device293, align 4
  %device295 = getelementptr inbounds %struct.snd_kcontrol, ptr %call286, i32 0, i32 1, i32 2
  %205 = ptrtoint ptr %device295 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %device295, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.then292, %if.end289.if.end296_crit_edge
  %call297 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call286) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.end300, label %if.end296.cleanup568_crit_edge

if.end296.cleanup568_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end300:                                        ; preds = %if.end296
  %call301 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_spdif_control, ptr noundef %emu) #8
  %tobool302.not = icmp eq ptr %call301, null
  br i1 %tobool302.not, label %if.end300.cleanup568_crit_edge, label %if.end304

if.end300.cleanup568_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end304:                                        ; preds = %if.end300
  %206 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool306.not = icmp eq i32 %207, 0
  br i1 %tobool306.not, label %if.then307, label %if.end304.if.end312_crit_edge

if.end304.if.end312_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then307:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  %pcm_efx308 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 35
  %208 = ptrtoint ptr %pcm_efx308 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pcm_efx308, align 4
  %device309 = getelementptr inbounds %struct.snd_pcm, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %device309 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %device309, align 4
  %device311 = getelementptr inbounds %struct.snd_kcontrol, ptr %call301, i32 0, i32 1, i32 2
  %212 = ptrtoint ptr %device311 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %device311, align 4
  br label %if.end312

if.end312:                                        ; preds = %if.then307, %if.end304.if.end312_crit_edge
  %call313 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call301) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %if.end312.if.end317_crit_edge, label %if.end312.cleanup568_crit_edge

if.end312.cleanup568_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end312.if.end317_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end317

if.end317:                                        ; preds = %if.end312.if.end317_crit_edge, %for.end281.if.end317_crit_edge
  %213 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %214, i32 0, i32 15
  %215 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool319.not = icmp eq i8 %216, 0
  br i1 %tobool319.not, label %if.else321, label %if.end317.if.end348_crit_edge

if.end317.if.end348_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.else321:                                       ; preds = %if.end317
  %217 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool323.not = icmp eq i32 %218, 0
  br i1 %tobool323.not, label %if.else333, label %if.then324

if.then324:                                       ; preds = %if.else321
  %call325 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_audigy_shared_spdif, ptr noundef %emu) #8
  %tobool326.not = icmp eq ptr %call325, null
  br i1 %tobool326.not, label %if.then324.cleanup568_crit_edge, label %if.end328

if.then324.cleanup568_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end328:                                        ; preds = %if.then324
  %call329 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call325) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end328.if.end348_crit_edge, label %if.end328.cleanup568_crit_edge

if.end328.cleanup568_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end328.if.end348_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.else333:                                       ; preds = %if.else321
  %ecard335 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %214, i32 0, i32 14
  %219 = ptrtoint ptr %ecard335 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ecard335, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool336.not = icmp eq i8 %220, 0
  br i1 %tobool336.not, label %if.then337, label %if.else333.if.end348_crit_edge

if.else333.if.end348_crit_edge:                   ; preds = %if.else333
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.then337:                                       ; preds = %if.else333
  %call338 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1_shared_spdif, ptr noundef %emu) #8
  %tobool339.not = icmp eq ptr %call338, null
  br i1 %tobool339.not, label %if.then337.cleanup568_crit_edge, label %if.end341

if.then337.cleanup568_crit_edge:                  ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end341:                                        ; preds = %if.then337
  %call342 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call338) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end341.if.end348_crit_edge, label %if.end341.cleanup568_crit_edge

if.end341.cleanup568_crit_edge:                   ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end341.if.end348_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.end348:                                        ; preds = %if.end341.if.end348_crit_edge, %if.else333.if.end348_crit_edge, %if.end328.if.end348_crit_edge, %if.end317.if.end348_crit_edge
  %221 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool350.not = icmp eq i8 %224, 0
  br i1 %tobool350.not, label %if.end348.if.end356_crit_edge, label %if.then351

if.end348.if.end356_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end356

if.then351:                                       ; preds = %if.end348
  %call352 = call i32 @snd_p16v_mixer(ptr noundef %emu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %tobool353.not = icmp eq i32 %call352, 0
  br i1 %tobool353.not, label %if.then351.if.end356_crit_edge, label %if.then351.cleanup568_crit_edge

if.then351.cleanup568_crit_edge:                  ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.then351.if.end356_crit_edge:                   ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end356

if.end356:                                        ; preds = %if.then351.if.end356_crit_edge, %if.end348.if.end356_crit_edge
  %225 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %card_capabilities, align 4
  %emu_model358 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %226, i32 0, i32 15
  %227 = ptrtoint ptr %emu_model358 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %emu_model358, align 4
  %229 = zext i8 %228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values)
  switch i8 %228, label %if.end356.for.body449_crit_edge [
    i8 3, label %if.end356.for.body366_crit_edge
    i8 0, label %if.end356.if.end524_crit_edge
  ]

if.end356.if.end524_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end524

if.end356.for.body366_crit_edge:                  ; preds = %if.end356
  br label %for.body366

if.end356.for.body449_crit_edge:                  ; preds = %if.end356
  br label %for.body449

for.cond363:                                      ; preds = %for.body366
  %inc375 = add nuw nsw i32 %i.0966, 1
  %exitcond994.not = icmp eq i32 %inc375, 18
  br i1 %exitcond994.not, label %for.cond363.for.body380_crit_edge, label %for.cond363.for.body366_crit_edge

for.cond363.for.body366_crit_edge:                ; preds = %for.cond363
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body366

for.cond363.for.body380_crit_edge:                ; preds = %for.cond363
  br label %for.body380

for.body366:                                      ; preds = %for.cond363.for.body366_crit_edge, %if.end356.for.body366_crit_edge
  %i.0966 = phi i32 [ %inc375, %for.cond363.for.body366_crit_edge ], [ 0, %if.end356.for.body366_crit_edge ]
  %arrayidx367 = getelementptr [18 x %struct.snd_kcontrol_new], ptr @snd_emu1616_output_enum_ctls, i32 0, i32 %i.0966
  %call368 = call ptr @snd_ctl_new1(ptr noundef %arrayidx367, ptr noundef %emu) #8
  %call369 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call368) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %for.body366.cleanup568_crit_edge, label %for.cond363

for.body366.cleanup568_crit_edge:                 ; preds = %for.body366
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond377:                                      ; preds = %for.body380
  %inc389 = add nuw nsw i32 %i.1967, 1
  %exitcond995.not = icmp eq i32 %inc389, 22
  br i1 %exitcond995.not, label %for.body394.preheader, label %for.cond377.for.body380_crit_edge

for.cond377.for.body380_crit_edge:                ; preds = %for.cond377
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body380

for.body394.preheader:                            ; preds = %for.cond377
  %call396 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_adc_pads, ptr noundef %emu) #8
  %call397 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call396) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397)
  %cmp398 = icmp slt i32 %call397, 0
  br i1 %cmp398, label %for.body394.preheader.cleanup568_crit_edge, label %for.cond391

for.body394.preheader.cleanup568_crit_edge:       ; preds = %for.body394.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.body380:                                      ; preds = %for.cond377.for.body380_crit_edge, %for.cond363.for.body380_crit_edge
  %i.1967 = phi i32 [ %inc389, %for.cond377.for.body380_crit_edge ], [ 0, %for.cond363.for.body380_crit_edge ]
  %arrayidx381 = getelementptr [22 x %struct.snd_kcontrol_new], ptr @snd_emu1010_input_enum_ctls, i32 0, i32 %i.1967
  %call382 = call ptr @snd_ctl_new1(ptr noundef %arrayidx381, ptr noundef %emu) #8
  %call383 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call382) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %cmp384 = icmp slt i32 %call383, 0
  br i1 %cmp384, label %for.body380.cleanup568_crit_edge, label %for.cond377

for.body380.cleanup568_crit_edge:                 ; preds = %for.body380
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond391:                                      ; preds = %for.body394.preheader
  %call396.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_emu1010_adc_pads, i32 0, i32 1), ptr noundef %emu) #8
  %call397.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call396.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397.1)
  %cmp398.1 = icmp slt i32 %call397.1, 0
  br i1 %cmp398.1, label %for.cond391.cleanup568_crit_edge, label %for.cond391.1

for.cond391.cleanup568_crit_edge:                 ; preds = %for.cond391
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond391.1:                                    ; preds = %for.cond391
  %call410 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_dac_pads, ptr noundef %emu) #8
  %call411 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call410) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %cmp412 = icmp slt i32 %call411, 0
  br i1 %cmp412, label %for.cond391.1.cleanup568_crit_edge, label %for.cond405

for.cond391.1.cleanup568_crit_edge:               ; preds = %for.cond391.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond405:                                      ; preds = %for.cond391.1
  %call410.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 1), ptr noundef %emu) #8
  %call411.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call410.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411.1)
  %cmp412.1 = icmp slt i32 %call411.1, 0
  br i1 %cmp412.1, label %for.cond405.cleanup568_crit_edge, label %for.cond405.1

for.cond405.cleanup568_crit_edge:                 ; preds = %for.cond405
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond405.1:                                    ; preds = %for.cond405
  %call410.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 2), ptr noundef %emu) #8
  %call411.2 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call410.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411.2)
  %cmp412.2 = icmp slt i32 %call411.2, 0
  br i1 %cmp412.2, label %for.cond405.1.cleanup568_crit_edge, label %for.cond405.2

for.cond405.1.cleanup568_crit_edge:               ; preds = %for.cond405.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond405.2:                                    ; preds = %for.cond405.1
  %call419 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_internal_clock, ptr noundef %emu) #8
  %call420 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call419) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %cmp421 = icmp slt i32 %call420, 0
  br i1 %cmp421, label %for.cond405.2.cleanup568_crit_edge, label %if.end424

for.cond405.2.cleanup568_crit_edge:               ; preds = %for.cond405.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end424:                                        ; preds = %for.cond405.2
  %call425 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_optical_out, ptr noundef %emu) #8
  %call426 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call425) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call426)
  %cmp427 = icmp slt i32 %call426, 0
  br i1 %cmp427, label %if.end424.cleanup568_crit_edge, label %cleanup437

if.end424.cleanup568_crit_edge:                   ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

cleanup437:                                       ; preds = %if.end424
  %call431 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_optical_in, ptr noundef %emu) #8
  %call432 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call431) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call432)
  %cmp433 = icmp slt i32 %call432, 0
  br i1 %cmp433, label %cleanup437.cleanup568_crit_edge, label %cleanup437.if.end524_crit_edge

cleanup437.if.end524_crit_edge:                   ; preds = %cleanup437
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end524

cleanup437.cleanup568_crit_edge:                  ; preds = %cleanup437
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond446:                                      ; preds = %for.body449
  %inc458 = add nuw nsw i32 %i445.0970, 1
  %exitcond997.not = icmp eq i32 %inc458, 24
  br i1 %exitcond997.not, label %for.cond446.for.body463_crit_edge, label %for.cond446.for.body449_crit_edge

for.cond446.for.body449_crit_edge:                ; preds = %for.cond446
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body449

for.cond446.for.body463_crit_edge:                ; preds = %for.cond446
  br label %for.body463

for.body449:                                      ; preds = %for.cond446.for.body449_crit_edge, %if.end356.for.body449_crit_edge
  %i445.0970 = phi i32 [ %inc458, %for.cond446.for.body449_crit_edge ], [ 0, %if.end356.for.body449_crit_edge ]
  %arrayidx450 = getelementptr [24 x %struct.snd_kcontrol_new], ptr @snd_emu1010_output_enum_ctls, i32 0, i32 %i445.0970
  %call451 = call ptr @snd_ctl_new1(ptr noundef %arrayidx450, ptr noundef %emu) #8
  %call452 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call451) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call452)
  %cmp453 = icmp slt i32 %call452, 0
  br i1 %cmp453, label %for.body449.cleanup568_crit_edge, label %for.cond446

for.body449.cleanup568_crit_edge:                 ; preds = %for.body449
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond460:                                      ; preds = %for.body463
  %inc472 = add nuw nsw i32 %i445.1971, 1
  %exitcond998.not = icmp eq i32 %inc472, 22
  br i1 %exitcond998.not, label %for.body477.preheader, label %for.cond460.for.body463_crit_edge

for.cond460.for.body463_crit_edge:                ; preds = %for.cond460
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body463

for.body477.preheader:                            ; preds = %for.cond460
  %call479 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_adc_pads, ptr noundef %emu) #8
  %call480 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call479) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480)
  %cmp481 = icmp slt i32 %call480, 0
  br i1 %cmp481, label %for.body477.preheader.cleanup568_crit_edge, label %for.cond474

for.body477.preheader.cleanup568_crit_edge:       ; preds = %for.body477.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.body463:                                      ; preds = %for.cond460.for.body463_crit_edge, %for.cond446.for.body463_crit_edge
  %i445.1971 = phi i32 [ %inc472, %for.cond460.for.body463_crit_edge ], [ 0, %for.cond446.for.body463_crit_edge ]
  %arrayidx464 = getelementptr [22 x %struct.snd_kcontrol_new], ptr @snd_emu1010_input_enum_ctls, i32 0, i32 %i445.1971
  %call465 = call ptr @snd_ctl_new1(ptr noundef %arrayidx464, ptr noundef %emu) #8
  %call466 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call465) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %cmp467 = icmp slt i32 %call466, 0
  br i1 %cmp467, label %for.body463.cleanup568_crit_edge, label %for.cond460

for.body463.cleanup568_crit_edge:                 ; preds = %for.body463
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond474:                                      ; preds = %for.body477.preheader
  %call479.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_emu1010_adc_pads, i32 0, i32 1), ptr noundef %emu) #8
  %call480.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call479.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480.1)
  %cmp481.1 = icmp slt i32 %call480.1, 0
  br i1 %cmp481.1, label %for.cond474.cleanup568_crit_edge, label %for.cond474.1

for.cond474.cleanup568_crit_edge:                 ; preds = %for.cond474
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond474.1:                                    ; preds = %for.cond474
  %call479.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_emu1010_adc_pads, i32 0, i32 2), ptr noundef %emu) #8
  %call480.2 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call479.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480.2)
  %cmp481.2 = icmp slt i32 %call480.2, 0
  br i1 %cmp481.2, label %for.cond474.1.cleanup568_crit_edge, label %for.cond474.2

for.cond474.1.cleanup568_crit_edge:               ; preds = %for.cond474.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond474.2:                                    ; preds = %for.cond474.1
  %call479.3 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_emu1010_adc_pads, i32 0, i32 3), ptr noundef %emu) #8
  %call480.3 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call479.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480.3)
  %cmp481.3 = icmp slt i32 %call480.3, 0
  br i1 %cmp481.3, label %for.cond474.2.cleanup568_crit_edge, label %for.cond474.3

for.cond474.2.cleanup568_crit_edge:               ; preds = %for.cond474.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond474.3:                                    ; preds = %for.cond474.2
  %call493 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_dac_pads, ptr noundef %emu) #8
  %call494 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call493) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494)
  %cmp495 = icmp slt i32 %call494, 0
  br i1 %cmp495, label %for.cond474.3.cleanup568_crit_edge, label %for.cond488

for.cond474.3.cleanup568_crit_edge:               ; preds = %for.cond474.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond488:                                      ; preds = %for.cond474.3
  %call493.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 1), ptr noundef %emu) #8
  %call494.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call493.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494.1)
  %cmp495.1 = icmp slt i32 %call494.1, 0
  br i1 %cmp495.1, label %for.cond488.cleanup568_crit_edge, label %for.cond488.1

for.cond488.cleanup568_crit_edge:                 ; preds = %for.cond488
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond488.1:                                    ; preds = %for.cond488
  %call493.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 2), ptr noundef %emu) #8
  %call494.2 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call493.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494.2)
  %cmp495.2 = icmp slt i32 %call494.2, 0
  br i1 %cmp495.2, label %for.cond488.1.cleanup568_crit_edge, label %for.cond488.2

for.cond488.1.cleanup568_crit_edge:               ; preds = %for.cond488.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond488.2:                                    ; preds = %for.cond488.1
  %call493.3 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 3), ptr noundef %emu) #8
  %call494.3 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call493.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494.3)
  %cmp495.3 = icmp slt i32 %call494.3, 0
  br i1 %cmp495.3, label %for.cond488.2.cleanup568_crit_edge, label %for.cond488.3

for.cond488.2.cleanup568_crit_edge:               ; preds = %for.cond488.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond488.3:                                    ; preds = %for.cond488.2
  %call493.4 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_emu1010_dac_pads, i32 0, i32 4), ptr noundef %emu) #8
  %call494.4 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call493.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494.4)
  %cmp495.4 = icmp slt i32 %call494.4, 0
  br i1 %cmp495.4, label %for.cond488.3.cleanup568_crit_edge, label %for.cond488.4

for.cond488.3.cleanup568_crit_edge:               ; preds = %for.cond488.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond488.4:                                    ; preds = %for.cond488.3
  %call502 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_internal_clock, ptr noundef %emu) #8
  %call503 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call502) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call503)
  %cmp504 = icmp slt i32 %call503, 0
  br i1 %cmp504, label %for.cond488.4.cleanup568_crit_edge, label %if.end507

for.cond488.4.cleanup568_crit_edge:               ; preds = %for.cond488.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end507:                                        ; preds = %for.cond488.4
  %call508 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_optical_out, ptr noundef %emu) #8
  %call509 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call508) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call509)
  %cmp510 = icmp slt i32 %call509, 0
  br i1 %cmp510, label %if.end507.cleanup568_crit_edge, label %cleanup520

if.end507.cleanup568_crit_edge:                   ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

cleanup520:                                       ; preds = %if.end507
  %call514 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu1010_optical_in, ptr noundef %emu) #8
  %call515 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call514) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call515)
  %cmp516 = icmp slt i32 %call515, 0
  br i1 %cmp516, label %cleanup520.cleanup568_crit_edge, label %cleanup520.if.end524_crit_edge

cleanup520.if.end524_crit_edge:                   ; preds = %cleanup520
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end524

cleanup520.cleanup568_crit_edge:                  ; preds = %cleanup520
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end524:                                        ; preds = %cleanup520.if.end524_crit_edge, %cleanup437.if.end524_crit_edge, %if.end356.if.end524_crit_edge
  %230 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %card_capabilities, align 4
  %i2c_adc526 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %231, i32 0, i32 17
  %232 = ptrtoint ptr %i2c_adc526 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %i2c_adc526, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool527.not = icmp eq i8 %233, 0
  br i1 %tobool527.not, label %if.end524.if.end553_crit_edge, label %if.then528

if.end524.if.end553_crit_edge:                    ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end553

if.then528:                                       ; preds = %if.end524
  %call530 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_audigy_i2c_capture_source, ptr noundef %emu) #8
  %call531 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call530) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call531)
  %cmp532 = icmp slt i32 %call531, 0
  br i1 %cmp532, label %if.then528.cleanup568_crit_edge, label %for.body539.preheader

if.then528.cleanup568_crit_edge:                  ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.body539.preheader:                            ; preds = %if.then528
  %call541 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_audigy_i2c_volume_ctls, ptr noundef %emu) #8
  %call542 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call541) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call542)
  %cmp543 = icmp slt i32 %call542, 0
  br i1 %cmp543, label %for.body539.preheader.cleanup568_crit_edge, label %for.cond536

for.body539.preheader.cleanup568_crit_edge:       ; preds = %for.body539.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

for.cond536:                                      ; preds = %for.body539.preheader
  %call541.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_audigy_i2c_volume_ctls, i32 0, i32 1), ptr noundef %emu) #8
  %call542.1 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call541.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call542.1)
  %cmp543.1 = icmp slt i32 %call542.1, 0
  br i1 %cmp543.1, label %for.cond536.cleanup568_crit_edge, label %for.cond536.if.end553_crit_edge

for.cond536.if.end553_crit_edge:                  ; preds = %for.cond536
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end553

for.cond536.cleanup568_crit_edge:                 ; preds = %for.cond536
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end553:                                        ; preds = %for.cond536.if.end553_crit_edge, %if.end524.if.end553_crit_edge
  %234 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %card_capabilities, align 4
  %ac97_chip555 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %235, i32 0, i32 13
  %236 = ptrtoint ptr %ac97_chip555 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ac97_chip555, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool557.not = icmp eq i8 %237, 0
  br i1 %tobool557.not, label %if.end553.if.end567_crit_edge, label %land.lhs.true

if.end553.if.end567_crit_edge:                    ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end567

land.lhs.true:                                    ; preds = %if.end553
  %238 = ptrtoint ptr %audigy84 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %audigy84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool559.not = icmp eq i32 %239, 0
  br i1 %tobool559.not, label %land.lhs.true.if.end567_crit_edge, label %if.then560

land.lhs.true.if.end567_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end567

if.then560:                                       ; preds = %land.lhs.true
  %call561 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_audigy_capture_boost, ptr noundef %emu) #8
  %call562 = call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call561) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call562)
  %cmp563 = icmp slt i32 %call562, 0
  br i1 %cmp563, label %if.then560.cleanup568_crit_edge, label %if.then560.if.end567_crit_edge

if.then560.if.end567_crit_edge:                   ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end567

if.then560.cleanup568_crit_edge:                  ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup568

if.end567:                                        ; preds = %if.then560.if.end567_crit_edge, %land.lhs.true.if.end567_crit_edge, %if.end553.if.end567_crit_edge
  br label %cleanup568

cleanup568:                                       ; preds = %if.end567, %if.then560.cleanup568_crit_edge, %for.cond536.cleanup568_crit_edge, %for.body539.preheader.cleanup568_crit_edge, %if.then528.cleanup568_crit_edge, %cleanup520.cleanup568_crit_edge, %if.end507.cleanup568_crit_edge, %for.cond488.4.cleanup568_crit_edge, %for.cond488.3.cleanup568_crit_edge, %for.cond488.2.cleanup568_crit_edge, %for.cond488.1.cleanup568_crit_edge, %for.cond488.cleanup568_crit_edge, %for.cond474.3.cleanup568_crit_edge, %for.cond474.2.cleanup568_crit_edge, %for.cond474.1.cleanup568_crit_edge, %for.cond474.cleanup568_crit_edge, %for.body463.cleanup568_crit_edge, %for.body477.preheader.cleanup568_crit_edge, %for.body449.cleanup568_crit_edge, %cleanup437.cleanup568_crit_edge, %if.end424.cleanup568_crit_edge, %for.cond405.2.cleanup568_crit_edge, %for.cond405.1.cleanup568_crit_edge, %for.cond405.cleanup568_crit_edge, %for.cond391.1.cleanup568_crit_edge, %for.cond391.cleanup568_crit_edge, %for.body380.cleanup568_crit_edge, %for.body394.preheader.cleanup568_crit_edge, %for.body366.cleanup568_crit_edge, %if.then351.cleanup568_crit_edge, %if.end341.cleanup568_crit_edge, %if.then337.cleanup568_crit_edge, %if.end328.cleanup568_crit_edge, %if.then324.cleanup568_crit_edge, %if.end312.cleanup568_crit_edge, %if.end300.cleanup568_crit_edge, %if.end296.cleanup568_crit_edge, %if.then285.cleanup568_crit_edge, %if.end179.cleanup568_crit_edge, %if.end175.cleanup568_crit_edge, %if.end169.cleanup568_crit_edge, %if.end165.cleanup568_crit_edge, %if.end159.cleanup568_crit_edge, %if.end155.cleanup568_crit_edge, %if.end149.cleanup568_crit_edge, %if.end145.cleanup568_crit_edge, %if.end139.cleanup568_crit_edge, %if.end135.cleanup568_crit_edge, %if.end130.cleanup568_crit_edge, %if.end126.cleanup568_crit_edge, %cleanup.thread
  %retval.7 = phi i32 [ 0, %if.end567 ], [ %call432, %cleanup437.cleanup568_crit_edge ], [ %call515, %cleanup520.cleanup568_crit_edge ], [ -12, %if.end126.cleanup568_crit_edge ], [ %call132, %if.end130.cleanup568_crit_edge ], [ -12, %if.end135.cleanup568_crit_edge ], [ %call142, %if.end139.cleanup568_crit_edge ], [ -12, %if.end145.cleanup568_crit_edge ], [ %call152, %if.end149.cleanup568_crit_edge ], [ -12, %if.end155.cleanup568_crit_edge ], [ %call162, %if.end159.cleanup568_crit_edge ], [ -12, %if.end165.cleanup568_crit_edge ], [ %call172, %if.end169.cleanup568_crit_edge ], [ -12, %if.end175.cleanup568_crit_edge ], [ %call182, %if.end179.cleanup568_crit_edge ], [ -12, %if.then285.cleanup568_crit_edge ], [ %call297, %if.end296.cleanup568_crit_edge ], [ -12, %if.end300.cleanup568_crit_edge ], [ %call313, %if.end312.cleanup568_crit_edge ], [ -12, %if.then324.cleanup568_crit_edge ], [ %call329, %if.end328.cleanup568_crit_edge ], [ -12, %if.then337.cleanup568_crit_edge ], [ %call342, %if.end341.cleanup568_crit_edge ], [ %call352, %if.then351.cleanup568_crit_edge ], [ %call562, %if.then560.cleanup568_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %call426, %if.end424.cleanup568_crit_edge ], [ %call420, %for.cond405.2.cleanup568_crit_edge ], [ %call509, %if.end507.cleanup568_crit_edge ], [ %call503, %for.cond488.4.cleanup568_crit_edge ], [ %call531, %if.then528.cleanup568_crit_edge ], [ %call542, %for.body539.preheader.cleanup568_crit_edge ], [ %call542.1, %for.cond536.cleanup568_crit_edge ], [ %call494, %for.cond474.3.cleanup568_crit_edge ], [ %call494.1, %for.cond488.cleanup568_crit_edge ], [ %call494.2, %for.cond488.1.cleanup568_crit_edge ], [ %call494.3, %for.cond488.2.cleanup568_crit_edge ], [ %call494.4, %for.cond488.3.cleanup568_crit_edge ], [ %call480, %for.body477.preheader.cleanup568_crit_edge ], [ %call480.1, %for.cond474.cleanup568_crit_edge ], [ %call480.2, %for.cond474.1.cleanup568_crit_edge ], [ %call480.3, %for.cond474.2.cleanup568_crit_edge ], [ %call411, %for.cond391.1.cleanup568_crit_edge ], [ %call411.1, %for.cond405.cleanup568_crit_edge ], [ %call411.2, %for.cond405.1.cleanup568_crit_edge ], [ %call397, %for.body394.preheader.cleanup568_crit_edge ], [ %call397.1, %for.cond391.cleanup568_crit_edge ], [ %call466, %for.body463.cleanup568_crit_edge ], [ %call452, %for.body449.cleanup568_crit_edge ], [ %call383, %for.body380.cleanup568_crit_edge ], [ %call369, %for.body366.cleanup568_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_emu10k1_ac97_read(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_emu10k1_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_p16v_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_send_routing_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 12, i32 24
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %7 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  %cond3 = select i1 %tobool2.not, i32 15, i32 63
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond3, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_send_routing_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %cond3 = select i1 %tobool.not, i32 15, i32 63
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %entry
  %idx.036 = phi i32 [ 0, %entry ], [ %inc, %for.body14.for.body14_crit_edge ]
  %arrayidx16 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 0, i32 %idx.036
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %and = and i32 %cond3, %conv17
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.036
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %idx.036, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.body14.for.body14.1_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.body14.for.body14.1_crit_edge:                ; preds = %for.body14
  br label %for.body14.1

for.body14.1:                                     ; preds = %for.body14.1.for.body14.1_crit_edge, %for.body14.for.body14.1_crit_edge
  %idx.036.1 = phi i32 [ %inc.1, %for.body14.1.for.body14.1_crit_edge ], [ 0, %for.body14.for.body14.1_crit_edge ]
  %arrayidx16.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 %idx.036.1
  %14 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16.1, align 1
  %conv17.1 = zext i8 %15 to i32
  %and.1 = and i32 %cond3, %conv17.1
  %add.1 = add nuw nsw i32 %idx.036.1, %cond
  %arrayidx18.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add.1
  %16 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.1, ptr %arrayidx18.1, align 4
  %inc.1 = add nuw nsw i32 %idx.036.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %cond
  br i1 %exitcond.1.not, label %for.inc19.1, label %for.body14.1.for.body14.1_crit_edge

for.body14.1.for.body14.1_crit_edge:              ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.1

for.inc19.1:                                      ; preds = %for.body14.1
  %mul.2 = shl nuw nsw i32 %cond, 1
  br label %for.body14.2

for.body14.2:                                     ; preds = %for.body14.2.for.body14.2_crit_edge, %for.inc19.1
  %idx.036.2 = phi i32 [ 0, %for.inc19.1 ], [ %inc.2, %for.body14.2.for.body14.2_crit_edge ]
  %arrayidx16.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 %idx.036.2
  %17 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16.2, align 1
  %conv17.2 = zext i8 %18 to i32
  %and.2 = and i32 %cond3, %conv17.2
  %add.2 = add nuw nsw i32 %idx.036.2, %mul.2
  %arrayidx18.2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add.2
  %19 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.2, ptr %arrayidx18.2, align 4
  %inc.2 = add nuw nsw i32 %idx.036.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %cond
  br i1 %exitcond.2.not, label %for.inc19.2, label %for.body14.2.for.body14.2_crit_edge

for.body14.2.for.body14.2_crit_edge:              ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.2

for.inc19.2:                                      ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_send_routing_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %cond3 = select i1 %tobool.not, i32 15, i32 63
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body14

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %entry
  %idx.0103 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body14_crit_edge ]
  %change.1102 = phi i32 [ 0, %entry ], [ %change.2, %for.inc.for.body14_crit_edge ]
  %arrayidx15 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.0103
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  %and = and i32 %12, %cond3
  %arrayidx17 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 0, i32 %idx.0103
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv18)
  %cmp19.not = icmp eq i32 %and, %conv18
  br i1 %cmp19.not, label %for.body14.for.inc_crit_edge, label %if.then

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = trunc i32 %and to i8
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv21, ptr %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body14.for.inc_crit_edge
  %change.2 = phi i32 [ 1, %if.then ], [ %change.1102, %for.body14.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %idx.0103, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.for.body14.1_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.inc.for.body14.1_crit_edge:                   ; preds = %for.inc
  br label %for.body14.1

for.body14.1:                                     ; preds = %for.inc.1.for.body14.1_crit_edge, %for.inc.for.body14.1_crit_edge
  %idx.0103.1 = phi i32 [ %inc.1, %for.inc.1.for.body14.1_crit_edge ], [ 0, %for.inc.for.body14.1_crit_edge ]
  %change.1102.1 = phi i32 [ %change.2.1, %for.inc.1.for.body14.1_crit_edge ], [ %change.2, %for.inc.for.body14.1_crit_edge ]
  %add.1 = add nuw nsw i32 %idx.0103.1, %cond
  %arrayidx15.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add.1
  %16 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15.1, align 4
  %and.1 = and i32 %17, %cond3
  %arrayidx17.1 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1, i32 %idx.0103.1
  %18 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %conv18.1)
  %cmp19.not.1 = icmp eq i32 %and.1, %conv18.1
  br i1 %cmp19.not.1, label %for.body14.1.for.inc.1_crit_edge, label %if.then.1

for.body14.1.for.inc.1_crit_edge:                 ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.1 = trunc i32 %and.1 to i8
  %20 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv21.1, ptr %arrayidx17.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.body14.1.for.inc.1_crit_edge
  %change.2.1 = phi i32 [ 1, %if.then.1 ], [ %change.1102.1, %for.body14.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %idx.0103.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %cond
  br i1 %exitcond.1.not, label %for.inc25.1, label %for.inc.1.for.body14.1_crit_edge

for.inc.1.for.body14.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.1

for.inc25.1:                                      ; preds = %for.inc.1
  %mul.2 = shl nuw nsw i32 %cond, 1
  br label %for.body14.2.outer

for.body14.2.outer:                               ; preds = %for.inc.2.thread.for.body14.2.outer_crit_edge, %for.inc25.1
  %idx.0103.2.ph = phi i32 [ %inc.2108, %for.inc.2.thread.for.body14.2.outer_crit_edge ], [ 0, %for.inc25.1 ]
  %change.1102.2.ph = phi i32 [ 1, %for.inc.2.thread.for.body14.2.outer_crit_edge ], [ %change.2.1, %for.inc25.1 ]
  br label %for.body14.2

for.body14.2:                                     ; preds = %for.inc.2.for.body14.2_crit_edge, %for.body14.2.outer
  %idx.0103.2 = phi i32 [ %inc.2, %for.inc.2.for.body14.2_crit_edge ], [ %idx.0103.2.ph, %for.body14.2.outer ]
  %add.2 = add nuw nsw i32 %idx.0103.2, %mul.2
  %arrayidx15.2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add.2
  %21 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15.2, align 4
  %and.2 = and i32 %22, %cond3
  %arrayidx17.2 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2, i32 %idx.0103.2
  %23 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %conv18.2)
  %cmp19.not.2 = icmp eq i32 %and.2, %conv18.2
  br i1 %cmp19.not.2, label %for.inc.2, label %for.inc.2.thread

for.inc.2:                                        ; preds = %for.body14.2
  %inc.2 = add nuw nsw i32 %idx.0103.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %cond
  br i1 %exitcond.2.not, label %for.inc25.2, label %for.inc.2.for.body14.2_crit_edge

for.inc.2.for.body14.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.2

for.inc.2.thread:                                 ; preds = %for.body14.2
  %conv21.2 = trunc i32 %and.2 to i8
  %25 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21.2, ptr %arrayidx17.2, align 1
  %inc.2108 = add nuw nsw i32 %idx.0103.2, 1
  %exitcond.2.not109 = icmp eq i32 %inc.2108, %cond
  br i1 %exitcond.2.not109, label %for.inc.2.thread.land.lhs.true_crit_edge, label %for.inc.2.thread.for.body14.2.outer_crit_edge

for.inc.2.thread.for.body14.2.outer_crit_edge:    ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.2.outer

for.inc.2.thread.land.lhs.true_crit_edge:         ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc25.2:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change.1102.2.ph)
  %tobool28.not = icmp eq i32 %change.1102.2.ph, 0
  br i1 %tobool28.not, label %for.inc25.2.if.end67_crit_edge, label %for.inc25.2.land.lhs.true_crit_edge

for.inc25.2.land.lhs.true_crit_edge:              ; preds = %for.inc25.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc25.2.if.end67_crit_edge:                   ; preds = %for.inc25.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true:                                    ; preds = %for.inc25.2.land.lhs.true_crit_edge, %for.inc.2.thread.land.lhs.true_crit_edge
  %change.2.2110113 = phi i32 [ %change.1102.2.ph, %for.inc25.2.land.lhs.true_crit_edge ], [ 1, %for.inc.2.thread.land.lhs.true_crit_edge ]
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 3
  %26 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epcm, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %land.lhs.true.if.end67_crit_edge, label %if.then30

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then30:                                        ; preds = %land.lhs.true
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %voices, align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.then30.if.end67_crit_edge, label %land.lhs.true34

if.then30.if.end67_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true34:                                  ; preds = %if.then30
  %arrayidx37 = getelementptr %struct.snd_emu10k1_pcm, ptr %27, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %31, null
  %number61 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %number61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number61, align 4
  br i1 %tobool38.not, label %if.then57, label %if.then39

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 1
  tail call fastcc void @update_emu10k1_fxrt(ptr noundef %1, i32 noundef %33, ptr noundef %arrayidx44)
  %34 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %epcm, align 4
  %arrayidx48 = getelementptr %struct.snd_emu10k1_pcm, ptr %35, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48, align 4
  %number49 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %number49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number49, align 4
  %arrayidx51 = getelementptr [3 x [8 x i8]], ptr %arrayidx, i32 0, i32 2
  tail call fastcc void @update_emu10k1_fxrt(ptr noundef %1, i32 noundef %39, ptr noundef %arrayidx51)
  br label %if.end67

if.then57:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @update_emu10k1_fxrt(ptr noundef %1, i32 noundef %33, ptr noundef %arrayidx)
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.then39, %if.then30.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge, %for.inc25.2.if.end67_crit_edge
  %change.2.2110114 = phi i32 [ %change.2.2110113, %if.then30.if.end67_crit_edge ], [ %change.2.2110113, %if.then39 ], [ %change.2.2110113, %if.then57 ], [ %change.2.2110113, %land.lhs.true.if.end67_crit_edge ], [ 0, %for.inc25.2.if.end67_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #8
  ret i32 %change.2.2110114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_emu10k1_fxrt(ptr noundef %emu, i32 noundef %voice, ptr nocapture noundef readonly %route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %route, align 1
  %conv26 = zext i8 %3 to i32
  %arrayidx27 = getelementptr i8, ptr %route, i32 1
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %5 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 %conv28, 8
  %or = or i32 %shl, %conv26
  %arrayidx3 = getelementptr i8, ptr %route, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %route, i32 3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 126, i32 noundef %voice, i32 noundef %or10) #8
  %arrayidx11 = getelementptr i8, ptr %route, i32 4
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %arrayidx13 = getelementptr i8, ptr %route, i32 5
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %arrayidx17 = getelementptr i8, ptr %route, i32 6
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  %arrayidx21 = getelementptr i8, ptr %route, i32 7
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %shl23 = shl nuw i32 %conv22, 24
  %or24 = or i32 %or20, %shl23
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 124, i32 noundef %voice, i32 noundef %or24) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31 = getelementptr i8, ptr %route, i32 2
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %arrayidx35 = getelementptr i8, ptr %route, i32 3
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %21 to i32
  %22 = shl i32 %conv36, 28
  %23 = shl nuw i32 %conv32, 24
  %24 = shl nuw nsw i32 %conv28, 20
  %25 = shl nuw nsw i32 %conv26, 16
  %26 = or i32 %24, %25
  %27 = or i32 %26, %23
  %shl39 = or i32 %27, %22
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 11, i32 noundef %voice, i32 noundef %shl39) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_send_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 12, i32 24
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_send_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %mul = mul nuw nsw i32 %cond, 3
  %11 = select i1 %tobool.not, i32 2, i32 3
  %12 = add nsw i32 %cond, -1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.025 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %div24 = lshr i32 %idx.025, %11
  %rem = and i32 %idx.025, %12
  %arrayidx9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 1, i32 %div24, i32 %rem
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i32
  %arrayidx11 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.025
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv10, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %idx.025, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_send_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %mul = mul nuw nsw i32 %cond, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = select i1 %tobool.not, i32 2, i32 3
  %12 = add nsw i32 %cond, -1
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %idx.096.ph = phi i32 [ %inc98, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  %tobool20.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %entry ]
  %change.095.ph = phi i32 [ 1, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %idx.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %idx.096.ph, %for.body.outer ]
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.096
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %div94 = lshr i32 %idx.096, %11
  %rem = and i32 %idx.096, %12
  %arrayidx10 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 1, i32 %div94, i32 %rem
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %17 = trunc i32 %14 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp12.not = icmp eq i8 %16, %17
  br i1 %cmp12.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.096, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %for.body
  %18 = trunc i32 %14 to i8
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx10, align 1
  %inc98 = add nuw nsw i32 %idx.096, 1
  %exitcond.not99 = icmp eq i32 %inc98, %mul
  br i1 %exitcond.not99, label %for.inc.thread.land.lhs.true_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.land.lhs.true_crit_edge:           ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %for.inc
  br i1 %tobool20.not, label %for.end.if.end59_crit_edge, label %for.end.land.lhs.true_crit_edge

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.inc.thread.land.lhs.true_crit_edge
  %change.1100103 = phi i32 [ %change.095.ph, %for.end.land.lhs.true_crit_edge ], [ 1, %for.inc.thread.land.lhs.true_crit_edge ]
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 3
  %20 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %epcm, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %land.lhs.true.if.end59_crit_edge, label %if.then22

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then22:                                        ; preds = %land.lhs.true
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %voices, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %if.then22.if.end59_crit_edge, label %land.lhs.true26

if.then22.if.end59_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true26:                                  ; preds = %if.then22
  %arrayidx29 = getelementptr %struct.snd_emu10k1_pcm, ptr %21, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %25, null
  %number53 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %number53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number53, align 4
  br i1 %tobool30.not, label %if.then49, label %if.then31

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 1, i32 1
  tail call fastcc void @update_emu10k1_send_volume(ptr noundef %1, i32 noundef %27, ptr noundef %arrayidx36)
  %28 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %epcm, align 4
  %arrayidx40 = getelementptr %struct.snd_emu10k1_pcm, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx40, align 4
  %number41 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %number41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number41, align 4
  %arrayidx43 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 1, i32 2
  tail call fastcc void @update_emu10k1_send_volume(ptr noundef %1, i32 noundef %33, ptr noundef %arrayidx43)
  br label %if.end59

if.then49:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  %send_volume54 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 1
  tail call fastcc void @update_emu10k1_send_volume(ptr noundef %1, i32 noundef %27, ptr noundef %send_volume54)
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.then31, %if.then22.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %for.end.if.end59_crit_edge
  %change.1100104 = phi i32 [ %change.1100103, %if.then22.if.end59_crit_edge ], [ %change.1100103, %if.then31 ], [ %change.1100103, %if.then49 ], [ %change.1100103, %land.lhs.true.if.end59_crit_edge ], [ 0, %for.end.if.end59_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 %change.1100104
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_emu10k1_send_volume(ptr noundef %emu, i32 noundef %voice, ptr nocapture noundef readonly %volume) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %volume, align 1
  %conv = zext i8 %1 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 134742017, i32 noundef %voice, i32 noundef %conv) #8
  %arrayidx1 = getelementptr i8, ptr %volume, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 134217729, i32 noundef %voice, i32 noundef %conv2) #8
  %arrayidx3 = getelementptr i8, ptr %volume, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 135790598, i32 noundef %voice, i32 noundef %conv4) #8
  %arrayidx5 = getelementptr i8, ptr %volume, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 135790599, i32 noundef %voice, i32 noundef %conv6) #8
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %8 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr i8, ptr %volume, i32 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %shl = shl nuw i32 %conv8, 24
  %arrayidx9 = getelementptr i8, ptr %volume, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or = or i32 %shl11, %shl
  %arrayidx12 = getelementptr i8, ptr %volume, i32 6
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or, %shl14
  %arrayidx16 = getelementptr i8, ptr %volume, i32 7
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %or18 = or i32 %or15, %conv17
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 125, i32 noundef %voice, i32 noundef %or18) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_emu10k1_attn_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
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
  store i32 3, ptr %count, align 8
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
define internal i32 @snd_emu10k1_attn_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx8 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %10 to i32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %value, align 4
  %arrayidx8.1 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8.1, align 2
  %conv9.1 = zext i16 %13 to i32
  %arrayidx10.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv9.1, ptr %arrayidx10.1, align 4
  %arrayidx8.2 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx8.2, align 2
  %conv9.2 = zext i16 %16 to i32
  %arrayidx10.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv9.2, ptr %arrayidx10.2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_attn_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %arrayidx9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx9, align 2
  %13 = trunc i32 %10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %13)
  %cmp11.not = icmp eq i16 %12, %13
  br i1 %cmp11.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %change.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx8.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.1, align 4
  %arrayidx9.1 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9.1, align 2
  %19 = trunc i32 %16 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %19)
  %cmp11.not.1 = icmp eq i16 %18, %19
  br i1 %cmp11.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx9.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %change.1.1 = phi i32 [ 1, %if.then.1 ], [ %change.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx8.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8.2, align 4
  %arrayidx9.2 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx9.2, align 2
  %25 = trunc i32 %22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %25)
  %cmp11.not.2 = icmp eq i16 %24, %25
  br i1 %cmp11.not.2, label %for.inc.2, label %for.inc.2.thread

for.inc.2.thread:                                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx9.2, align 2
  br label %land.lhs.true

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change.1.1)
  %tobool.not = icmp eq i32 %change.1.1, 0
  br i1 %tobool.not, label %for.inc.2.if.end54_crit_edge, label %for.inc.2.land.lhs.true_crit_edge

for.inc.2.land.lhs.true_crit_edge:                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc.2.if.end54_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true:                                    ; preds = %for.inc.2.land.lhs.true_crit_edge, %for.inc.2.thread
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 53, i32 %and.i, i32 3
  %27 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %epcm, align 4
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %land.lhs.true.if.end54_crit_edge, label %if.then17

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then17:                                        ; preds = %land.lhs.true
  %voices = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %voices, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %if.then17.if.end54_crit_edge, label %land.lhs.true21

if.then17.if.end54_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true21:                                  ; preds = %if.then17
  %arrayidx24 = getelementptr %struct.snd_emu10k1_pcm, ptr %28, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %32, null
  %number48 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %number48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %number48, align 4
  br i1 %tobool25.not, label %land.lhs.true21.if.end54.sink.split_crit_edge, label %if.then26

land.lhs.true21.if.end54.sink.split_crit_edge:    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx9.1, align 2
  %conv32 = zext i16 %36 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 269484035, i32 noundef %34, i32 noundef %conv32) #8
  %37 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %epcm, align 4
  %arrayidx35 = getelementptr %struct.snd_emu10k1_pcm, ptr %38, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35, align 4
  %number36 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %number36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number36, align 4
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.then26, %land.lhs.true21.if.end54.sink.split_crit_edge
  %arrayidx9.2.sink = phi ptr [ %arrayidx9.2, %if.then26 ], [ %arrayidx9, %land.lhs.true21.if.end54.sink.split_crit_edge ]
  %.sink = phi i32 [ %42, %if.then26 ], [ %34, %land.lhs.true21.if.end54.sink.split_crit_edge ]
  %43 = ptrtoint ptr %arrayidx9.2.sink to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx9.2.sink, align 4
  %conv39 = zext i16 %44 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 269484035, i32 noundef %.sink, i32 noundef %conv39) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.then17.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %for.inc.2.if.end54_crit_edge
  %change.1.287 = phi i32 [ 1, %if.then17.if.end54_crit_edge ], [ 1, %land.lhs.true.if.end54_crit_edge ], [ 0, %for.inc.2.if.end54_crit_edge ], [ 1, %if.end54.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 %change.1.287
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_routing_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %7 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  %cond3 = select i1 %tobool2.not, i32 15, i32 63
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond3, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_routing_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %cond3 = select i1 %tobool.not, i32 15, i32 63
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.025 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx12 = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 %idx.025
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %and = and i32 %cond3, %conv13
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.025
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %arrayidx14, align 4
  %inc = add nuw nsw i32 %idx.025, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_routing_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %cond3 = select i1 %tobool.not, i32 15, i32 63
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %idx.059.ph = phi i32 [ %inc61, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  %tobool21.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %entry ]
  %change.058.ph = phi i32 [ 1, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %idx.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %idx.059.ph, %for.body.outer ]
  %arrayidx11 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.059
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %and = and i32 %12, %cond3
  %arrayidx13 = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 %idx.059
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv14)
  %cmp15.not = icmp eq i32 %and, %conv14
  br i1 %cmp15.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.059, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %for.body
  %arrayidx13.le = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 %idx.059
  %conv17 = trunc i32 %and to i8
  %15 = ptrtoint ptr %arrayidx13.le to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17, ptr %arrayidx13.le, align 1
  %inc61 = add nuw nsw i32 %idx.059, 1
  %exitcond.not62 = icmp eq i32 %inc61, %cond
  br i1 %exitcond.not62, label %for.inc.thread.land.lhs.true_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.land.lhs.true_crit_edge:           ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %for.inc
  br i1 %tobool21.not, label %for.end.if.end35_crit_edge, label %for.end.land.lhs.true_crit_edge

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.inc.thread.land.lhs.true_crit_edge
  %change.16366 = phi i32 [ %change.058.ph, %for.end.land.lhs.true_crit_edge ], [ 1, %for.inc.thread.land.lhs.true_crit_edge ]
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 3
  %16 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epcm, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %land.lhs.true.if.end35_crit_edge, label %if.then23

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then23:                                        ; preds = %land.lhs.true
  %arrayidx25 = getelementptr %struct.snd_emu10k1_pcm, ptr %17, i32 0, i32 3, i32 %and.i
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %if.then23.if.end35_crit_edge, label %if.then27

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number, align 4
  tail call fastcc void @update_emu10k1_fxrt(ptr noundef %1, i32 noundef %21, ptr noundef %arrayidx)
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.then23.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %for.end.if.end35_crit_edge
  %change.16367 = phi i32 [ %change.16366, %if.then23.if.end35_crit_edge ], [ %change.16366, %if.then27 ], [ %change.16366, %land.lhs.true.if.end35_crit_edge ], [ 0, %for.end.if.end35_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #8
  ret i32 %change.16367
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %send_volume = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.021 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx9 = getelementptr [8 x i8], ptr %send_volume, i32 0, i32 %idx.021
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %arrayidx11 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.021
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %idx.021, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_send_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %send_volume = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 1
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %idx.055.ph = phi i32 [ %inc57, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  %tobool18.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %entry ]
  %change.054.ph = phi i32 [ 1, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %idx.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %idx.055.ph, %for.body.outer ]
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.055
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [8 x i8], ptr %send_volume, i32 0, i32 %idx.055
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %15 = trunc i32 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp12.not = icmp eq i8 %14, %15
  br i1 %cmp12.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.055, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %for.body
  %arrayidx10.le = getelementptr [8 x i8], ptr %send_volume, i32 0, i32 %idx.055
  %16 = trunc i32 %12 to i8
  %17 = ptrtoint ptr %arrayidx10.le to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx10.le, align 1
  %inc57 = add nuw nsw i32 %idx.055, 1
  %exitcond.not58 = icmp eq i32 %inc57, %cond
  br i1 %exitcond.not58, label %for.inc.thread.land.lhs.true_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.land.lhs.true_crit_edge:           ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %for.inc
  br i1 %tobool18.not, label %for.end.if.end32_crit_edge, label %for.end.land.lhs.true_crit_edge

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.inc.thread.land.lhs.true_crit_edge
  %change.15962 = phi i32 [ %change.054.ph, %for.end.land.lhs.true_crit_edge ], [ 1, %for.inc.thread.land.lhs.true_crit_edge ]
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 3
  %18 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %epcm, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %land.lhs.true.if.end32_crit_edge, label %if.then20

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %land.lhs.true
  %arrayidx22 = getelementptr %struct.snd_emu10k1_pcm, ptr %19, i32 0, i32 3, i32 %and.i
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.then20.if.end32_crit_edge, label %if.then24

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number, align 4
  tail call fastcc void @update_emu10k1_send_volume(ptr noundef %1, i32 noundef %23, ptr noundef %send_volume)
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.then20.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %for.end.if.end32_crit_edge
  %change.15963 = phi i32 [ %change.15962, %if.then20.if.end32_crit_edge ], [ %change.15962, %if.then24 ], [ %change.15962, %land.lhs.true.if.end32_crit_edge ], [ 0, %for.end.if.end32_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 %change.15963
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_emu10k1_efx_attn_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
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
  store i32 65535, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_attn_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %attn = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 2
  %9 = ptrtoint ptr %attn to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %attn, align 4
  %conv7 = zext i16 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %value, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_efx_attn_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %attn = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 2
  %11 = ptrtoint ptr %attn to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attn, align 4
  %13 = trunc i32 %10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %13)
  %cmp9.not = icmp eq i16 %12, %13
  br i1 %cmp9.not, label %entry.if.end27_crit_edge, label %land.lhs.true

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %attn to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %attn, align 4
  %epcm = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 54, i32 %and.i, i32 3
  %15 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %epcm, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true.if.end27_crit_edge, label %if.then15

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then15:                                        ; preds = %land.lhs.true
  %arrayidx17 = getelementptr %struct.snd_emu10k1_pcm, ptr %16, i32 0, i32 3, i32 %and.i
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.then15.if.end27_crit_edge, label %if.then19

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 4
  %21 = ptrtoint ptr %attn to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %attn, align 4
  %conv25 = zext i16 %22 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 269484035, i32 noundef %20, i32 noundef %conv25) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.then15.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  %change.045 = phi i32 [ 1, %if.then15.if.end27_crit_edge ], [ 1, %if.then19 ], [ 1, %land.lhs.true.if.end27_crit_edge ], [ 0, %entry.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 %change.045
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_emu10k1_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
define internal i32 @snd_emu10k1_spdif_get_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 25, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv7 = trunc i32 %10 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %value, align 8
  %12 = load i32, ptr %arrayidx, align 4
  %shr11 = lshr i32 %12, 8
  %conv13 = trunc i32 %shr11 to i8
  %arrayidx16 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %arrayidx16, align 1
  %14 = load i32, ptr %arrayidx, align 4
  %shr19 = lshr i32 %14, 16
  %conv21 = trunc i32 %shr19 to i8
  %arrayidx24 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv21, ptr %arrayidx24, align 2
  %16 = load i32, ptr %arrayidx, align 4
  %shr27 = lshr i32 %16, 24
  %conv29 = trunc i32 %shr27 to i8
  %arrayidx32 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx32, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !544
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 8
  %conv = zext i8 %10 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %12 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %arrayidx25 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 25, i32 %and.i
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or17, i32 %18)
  %cmp26 = icmp ne i32 %or17, %18
  %conv27 = zext i1 %cmp26 to i32
  br i1 %cmp26, label %if.then28, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %and.i, 84
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef %or17) #8
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or17, ptr %arrayidx25, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end.if.end31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv27, %if.end31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_shared_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %port6 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %5, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #8, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !546
  %8 = and i32 %7, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool4.not to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add7 = add i32 %5, 20
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %9 = inttoptr i32 %add9 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #8, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !547
  %11 = lshr i32 %10, 20
  %.lobit = and i32 %11, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cond.sink = phi i32 [ %.lobit, %if.else ], [ %cond, %if.then ]
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.sink, ptr %12, align 8
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card_capabilities, align 4
  %invert_shared_spdif = getelementptr inbounds %struct.snd_emu_chip_details, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %invert_shared_spdif to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %invert_shared_spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.end.if.end25_crit_edge, label %if.then19

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  %lnot.ext = zext i1 %tobool22.not to i32
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext, ptr %12, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_shared_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %invert_shared_spdif = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %invert_shared_spdif to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %invert_shared_spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %sw.0 = select i1 %tobool.not, i32 %3, i32 %lnot.ext
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %8 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_capabilities, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_emu_chip_details, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_adc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.else, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.else:                                          ; preds = %entry
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.else.if.end33_crit_edge, label %if.then10

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then10:                                        ; preds = %if.else
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add = add i32 %15, 24
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %16 = inttoptr i32 %add11 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #8, !srcloc !545
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sw.0)
  %tobool15.not = icmp eq i32 %sw.0, 0
  %cond = select i1 %tobool15.not, i32 0, i32 68
  %and16 = and i32 %18, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %cond)
  %cmp17.not = icmp eq i32 %and16, %cond
  br i1 %cmp17.not, label %if.then10.if.end33_crit_edge, label %if.then20

if.then10.if.end33_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %and21 = and i32 %18, -69
  %or = or i32 %and21, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !549
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add27 = add i32 %21, 24
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %22 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #8, !srcloc !550
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.then10.if.end33_crit_edge, %if.else.if.end33_crit_edge, %entry.if.end33_crit_edge
  %change.0.shrunk = phi i32 [ 0, %entry.if.end33_crit_edge ], [ 1, %if.then20 ], [ 0, %if.then10.if.end33_crit_edge ], [ 0, %if.else.if.end33_crit_edge ]
  %port35 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %port35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port35, align 4
  %add36 = add i32 %24, 20
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %25 = inttoptr i32 %add38 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #8, !srcloc !545
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !551
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sw.0)
  %tobool42.not = icmp eq i32 %sw.0, 0
  %cond43 = select i1 %tobool42.not, i32 0, i32 4096
  %and44 = and i32 %27, 4096
  %28 = xor i32 %and44, %cond43
  %cmp45 = lshr exact i32 %28, 12
  %or47 = or i32 %cmp45, %change.0.shrunk
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or47)
  %tobool48.not = icmp eq i32 %or47, 0
  br i1 %tobool48.not, label %if.end33.if.end61_crit_edge, label %if.then49

if.end33.if.end61_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then49:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %and50 = and i32 %27, -4097
  %or51 = or i32 %and50, %cond43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !552
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %30 = ptrtoint ptr %port35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port35, align 4
  %add57 = add i32 %31, 20
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %32 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #8, !srcloc !550
  br label %if.end61

if.end61:                                         ; preds = %if.then49, %if.end33.if.end61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret i32 %or47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_input_output_source_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 49, ptr noundef nonnull @emu1616_src_texts) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 53, ptr noundef nonnull @emu1010_src_texts) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_output_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
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
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %and)
  %cmp = icmp ugt i32 %and, 23
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp1 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp3 = icmp ugt i32 %and, 17
  %or.cond = select i1 %cmp1, i1 %cmp3, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %emu1010 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52
  %arrayidx = getelementptr [64 x i32], ptr %emu1010, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_output_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %3)
  %cmp = icmp ugt i32 %3, 52
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp1 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp3 = icmp ugt i32 %3, 48
  %or.cond = select i1 %cmp1, i1 %cmp3, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %and = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %and)
  %cmp5 = icmp ugt i32 %and, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp14 = icmp ugt i32 %and, 17
  %or.cond57 = select i1 %cmp1, i1 %cmp14, i1 false
  %or.cond58 = select i1 %cmp5, i1 true, i1 %or.cond57
  br i1 %or.cond58, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %emu1010 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52
  %arrayidx18 = getelementptr [64 x i32], ptr %emu1010, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp19 = icmp eq i32 %11, %3
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %arrayidx18, align 4
  %13 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp29 = icmp eq i8 %14, 3
  %arrayidx32 = getelementptr [18 x i32], ptr @emu1616_output_dst, i32 0, i32 %and
  %arrayidx33 = getelementptr [49 x i32], ptr @emu1616_src_regs, i32 0, i32 %3
  %arrayidx34 = getelementptr [24 x i32], ptr @emu1010_output_dst, i32 0, i32 %and
  %arrayidx35 = getelementptr [53 x i32], ptr @emu1010_src_regs, i32 0, i32 %3
  %arrayidx33.sink = select i1 %cmp29, ptr %arrayidx33, ptr %arrayidx35
  %.sink.in = select i1 %cmp29, ptr %arrayidx32, ptr %arrayidx34
  %15 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink = load i32, ptr %.sink.in, align 4
  %16 = ptrtoint ptr %arrayidx33.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx33.sink, align 4
  %call = tail call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %1, i32 noundef %.sink, i32 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_input_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and)
  %cmp = icmp ugt i32 %and, 21
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %3, i32 0, i32 52, i32 1, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_input_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %3)
  %cmp = icmp ugt i32 %3, 52
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp1 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp3 = icmp ugt i32 %3, 48
  %or.cond = select i1 %cmp1, i1 %cmp3, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %and = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and)
  %cmp5 = icmp ugt i32 %and, 21
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 1, i32 %and
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp10 = icmp eq i32 %11, %3
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %arrayidx9, align 4
  %13 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp20 = icmp eq i8 %14, 3
  %arrayidx23 = getelementptr [22 x i32], ptr @emu1010_input_dst, i32 0, i32 %and
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr [49 x i32], ptr @emu1616_src_regs, i32 0, i32 %3
  %arrayidx26 = getelementptr [53 x i32], ptr @emu1010_src_regs, i32 0, i32 %3
  %arrayidx24.sink = select i1 %cmp20, ptr %arrayidx24, ptr %arrayidx26
  %17 = ptrtoint ptr %arrayidx24.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24.sink, align 4
  %call = tail call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %1, i32 noundef %16, i32 noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_adc_pads_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
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
  %and = and i32 %3, 255
  %adc_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 2
  %4 = ptrtoint ptr %adc_pads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adc_pads, align 4
  %and1 = and i32 %and, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_adc_pads_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %and = and i32 %3, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %adc_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 2
  %6 = ptrtoint ptr %adc_pads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adc_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %or = or i32 %7, %and
  %neg = xor i32 %and, -1
  %and1 = and i32 %7, %neg
  %cache.0 = select i1 %cmp, i32 %or, i32 %and1
  call void @__sanitizer_cov_trace_cmp4(i32 %cache.0, i32 %7)
  %cmp4.not = icmp eq i32 %cache.0, %7
  br i1 %cmp4.not, label %entry.if.end8_crit_edge, label %if.then5

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 16, i32 noundef %cache.0) #8
  %8 = ptrtoint ptr %adc_pads to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cache.0, ptr %adc_pads, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_dac_pads_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
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
  %and = and i32 %3, 255
  %dac_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 3
  %4 = ptrtoint ptr %dac_pads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dac_pads, align 4
  %and1 = and i32 %and, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_dac_pads_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %and = and i32 %3, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %dac_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 3
  %6 = ptrtoint ptr %dac_pads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dac_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %or = or i32 %7, %and
  %neg = xor i32 %and, -1
  %and1 = and i32 %7, %neg
  %cache.0 = select i1 %cmp, i32 %or, i32 %and1
  call void @__sanitizer_cov_trace_cmp4(i32 %cache.0, i32 %7)
  %cmp4.not = icmp eq i32 %cache.0, %7
  br i1 %cmp4.not, label %entry.if.end8_crit_edge, label %if.then5

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 19, i32 noundef %cache.0) #8
  %8 = ptrtoint ptr %dac_pads to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cache.0, ptr %dac_pads, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_internal_clock_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_emu1010_internal_clock_info.texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_internal_clock_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %internal_clock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 4
  %2 = ptrtoint ptr %internal_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_clock, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_internal_clock_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %internal_clock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 4
  %4 = ptrtoint ptr %internal_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %internal_clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %internal_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %internal_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %7 = icmp ult i32 %3, 4
  br i1 %7, label %switch.lookup, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_emu1010_internal_clock_put, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep57 = getelementptr inbounds [4 x i32], ptr @switch.table.snd_emu1010_internal_clock_put.227, i32 0, i32 %3
  %9 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %switch.gep59 = getelementptr inbounds [4 x i32], ptr @switch.table.snd_emu1010_internal_clock_put.228, i32 0, i32 %3
  %10 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %call22 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 7, i32 noundef 0) #8
  %call23 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 6, i32 noundef %switch.load) #8
  %call24 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 5, i32 noundef %switch.load58) #8
  %call25 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 14, i32 noundef %switch.load60) #8
  tail call void @msleep(i32 noundef 10) #8
  %call26 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 7, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_optical_out_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_emu1010_optical_out_info.texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_optical_out_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %optical_out = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 6
  %2 = ptrtoint ptr %optical_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %optical_out, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_optical_out_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %optical_out = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 6
  %4 = ptrtoint ptr %optical_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %optical_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %optical_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %optical_out, align 4
  %optical_in = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 5
  %7 = ptrtoint ptr %optical_in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %optical_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool6.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 2
  %or = or i32 %cond10, %cond
  %call = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 11, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_optical_in_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_emu1010_optical_in_info.texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu1010_optical_in_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %optical_in = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 5
  %2 = ptrtoint ptr %optical_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %optical_in, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu1010_optical_in_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %optical_in = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 5
  %4 = ptrtoint ptr %optical_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %optical_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %optical_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %optical_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool7.not to i32
  %optical_out = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 6
  %7 = ptrtoint ptr %optical_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %optical_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 2
  %or = or i32 %cond10, %cond
  %call = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 11, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy_i2c_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_audigy_i2c_capture_source_info.texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_audigy_i2c_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i2c_capture_source = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_capture_source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy_i2c_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_capture_source = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not = icmp eq i32 %5, %3
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 21, i32 noundef 0) #8
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 24
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %8 = inttoptr i32 %add10 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !545
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !553
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp eq i32 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp14, label %do.body17, label %do.body25

do.body17:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %10, 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add21 = add i32 %13, 24
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %14 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #8, !srcloc !550
  br label %if.end34

do.body25:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %and28 = and i32 %10, -5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add30 = add i32 %17, 24
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %18 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #8, !srcloc !550
  br label %if.end34

if.end34:                                         ; preds = %do.body25, %do.body17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call7) #8
  %arrayidx36 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %3
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36, align 2
  %21 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2c_capture_source, align 4
  %arrayidx41 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %22
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %24)
  %cmp44.not = icmp eq i8 %20, %24
  br i1 %cmp44.not, label %if.end34.if.end49_crit_edge, label %if.then46

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %conv38 = zext i8 %20 to i32
  %call48 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 14, i32 noundef %conv38) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end34.if.end49_crit_edge
  %arrayidx52 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %3, i32 1
  %25 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx52, align 1
  %27 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i2c_capture_source, align 4
  %arrayidx57 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %28, i32 1
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %30)
  %cmp59.not = icmp eq i8 %26, %30
  br i1 %cmp59.not, label %if.end49.if.end64_crit_edge, label %if.then61

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %conv53 = zext i8 %26 to i32
  %call63 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 15, i32 noundef %conv53) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end49.if.end64_crit_edge
  %shl = shl nuw nsw i32 4, %3
  %call66 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 21, i32 noundef %shl) #8
  %31 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %3, ptr %i2c_capture_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end64 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_i2c_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_audigy_i2c_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_audigy_i2c_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %3, i32 0, i32 27, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_emu10k1, ptr %3, i32 0, i32 27, i32 %1, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv6, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy_i2c_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp3 = icmp ugt i32 %5, 255
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp7.not = icmp eq i32 %5, %conv
  br i1 %cmp7.not, label %if.end6.if.end18_crit_edge, label %if.then9

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then9:                                         ; preds = %if.end6
  %i2c_capture_source = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp10 = icmp eq i32 %9, %3
  br i1 %cmp10, label %if.then12, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 14, i32 noundef %5) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  %conv14 = trunc i32 %5 to i8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.end6.if.end18_crit_edge
  %change.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.end6.if.end18_crit_edge ]
  %arrayidx21 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 27, i32 %3, i32 1
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp25 = icmp ugt i32 %12, 255
  br i1 %cmp25, label %if.end18.cleanup_crit_edge, label %if.end28

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv22)
  %cmp29.not = icmp eq i32 %12, %conv22
  br i1 %cmp29.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %i2c_capture_source32 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %i2c_capture_source32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_capture_source32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp33 = icmp eq i32 %16, %3
  br i1 %cmp33, label %if.then35, label %if.then31.if.end38_crit_edge

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %1, i32 noundef 15, i32 noundef %12) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then31.if.end38_crit_edge
  %conv39 = trunc i32 %12 to i8
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv39, ptr %arrayidx21, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end28.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 1, %if.end38 ], [ %change.0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy_capture_boost_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97, align 4
  %call = tail call zeroext i16 @snd_ac97_read(ptr noundef %3, i16 noundef zeroext 28) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool = icmp ne i16 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy_capture_boost_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i16 0, i16 3855
  %ac97 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac97, align 4
  %call = tail call i32 @snd_ac97_update(ptr noundef %5, i16 noundef zeroext 28, i16 noundef zeroext %.) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_ac97_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532}
!llvm.module.flags = !{!534, !535, !536, !537, !538, !539, !540, !541}
!llvm.ident = !{!542}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1785, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1786, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1787, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1788, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1789, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1790, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1791, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1792, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1793, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1794, i32 3}
!20 = !{ptr @snd_emu10k1_mixer.emu10k1_remove_ctls, !21, !"emu10k1_remove_ctls", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1783, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1798, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1799, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1800, i32 3}
!28 = !{ptr @snd_emu10k1_mixer.emu10k1_rename_ctls, !29, !"emu10k1_rename_ctls", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1797, i32 28}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1807, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1808, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1809, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1810, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1814, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1815, i32 3}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1816, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1817, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1818, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1819, i32 3}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1820, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1821, i32 3}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1822, i32 3}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1823, i32 3}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1824, i32 3}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1825, i32 3}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1826, i32 3}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1827, i32 3}
!66 = !{ptr @snd_emu10k1_mixer.audigy_remove_ctls, !67, !"audigy_remove_ctls", i1 false, i1 false}
!67 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1803, i32 28}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1832, i32 3}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1834, i32 3}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1835, i32 3}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1836, i32 34}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1837, i32 34}
!78 = !{ptr @snd_emu10k1_mixer.audigy_rename_ctls, !79, !"audigy_rename_ctls", i1 false, i1 false}
!79 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1830, i32 28}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1842, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1842, i32 26}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1843, i32 27}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1845, i32 27}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1846, i32 3}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1846, i32 24}
!92 = !{ptr @snd_emu10k1_mixer.audigy_rename_ctls_i2c_adc, !93, !"audigy_rename_ctls_i2c_adc", i1 false, i1 false}
!93 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1840, i32 28}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1852, i32 3}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1854, i32 3}
!98 = distinct !{null, !99, !"audigy_remove_ctls_i2c_adc", i1 false, i1 false}
!99 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1849, i32 28}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1872, i32 3}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1873, i32 3}
!104 = !{ptr @snd_emu10k1_mixer.audigy_remove_ctls_1361t_adc, !105, !"audigy_remove_ctls_1361t_adc", i1 false, i1 false}
!105 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1858, i32 28}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1877, i32 29}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1878, i32 29}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1880, i32 3}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1880, i32 27}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1881, i32 3}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1881, i32 27}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1882, i32 3}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1882, i32 28}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1883, i32 3}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1883, i32 28}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1884, i32 26}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1886, i32 3}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1886, i32 27}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1887, i32 3}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1888, i32 3}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1888, i32 25}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1889, i32 3}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1890, i32 3}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1890, i32 26}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1891, i32 3}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1892, i32 28}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1893, i32 28}
!150 = !{ptr @snd_emu10k1_mixer.audigy_rename_ctls_1361t_adc, !151, !"audigy_rename_ctls_1361t_adc", i1 false, i1 false}
!151 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1876, i32 28}
!152 = !{ptr @snd_emu10k1_mixer.ops, !153, !"ops", i1 false, i1 false}
!153 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1902, i32 40}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1920, i32 4}
!156 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @snd_emu10k1_mixer._entry, !155, !"_entry", i1 false, i1 false}
!161 = !{ptr @snd_emu10k1_mixer._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1922, i32 4}
!164 = !{ptr @snd_emu10k1_mixer._entry.73, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @snd_emu10k1_mixer._entry_ptr.75, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1949, i32 21}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1950, i32 21}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1966, i32 33}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1968, i32 33}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1970, i32 33}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1988, i32 20}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1989, i32 20}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1992, i32 44}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1994, i32 20}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1994, i32 43}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1995, i32 42}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1287, i32 18}
!190 = !{ptr @snd_emu10k1_send_routing_control, !191, !"snd_emu10k1_send_routing_control", i1 false, i1 false}
!191 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1283, i32 38}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1358, i32 18}
!194 = !{ptr @snd_emu10k1_send_volume_control, !195, !"snd_emu10k1_send_volume_control", i1 false, i1 false}
!195 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1354, i32 38}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1423, i32 18}
!198 = !{ptr @snd_emu10k1_attn_control, !199, !"snd_emu10k1_attn_control", i1 false, i1 false}
!199 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1419, i32 38}
!200 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1495, i32 18}
!202 = !{ptr @snd_emu10k1_efx_send_routing_control, !203, !"snd_emu10k1_efx_send_routing_control", i1 false, i1 false}
!203 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1491, i32 38}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1562, i32 18}
!206 = !{ptr @snd_emu10k1_efx_send_volume_control, !207, !"snd_emu10k1_efx_send_volume_control", i1 false, i1 false}
!207 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1558, i32 38}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1620, i32 18}
!210 = !{ptr @snd_emu10k1_efx_attn_control, !211, !"snd_emu10k1_efx_attn_control", i1 false, i1 false}
!211 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1616, i32 38}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1171, i32 18}
!214 = !{ptr @snd_emu10k1_spdif_mask_control, !215, !"snd_emu10k1_spdif_mask_control", i1 false, i1 false}
!215 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1167, i32 38}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1180, i32 18}
!218 = !{ptr @snd_emu10k1_spdif_control, !219, !"snd_emu10k1_spdif_control", i1 false, i1 false}
!219 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1177, i32 38}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1693, i32 11}
!222 = !{ptr @snd_audigy_shared_spdif, !223, !"snd_audigy_shared_spdif", i1 false, i1 false}
!223 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1690, i32 38}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1684, i32 11}
!226 = !{ptr @snd_emu10k1_shared_spdif, !227, !"snd_emu10k1_shared_spdif", i1 false, i1 false}
!227 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1681, i32 38}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/emu10k1/emumixer.c", i32 517, i32 2}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/emu10k1/emumixer.c", i32 518, i32 2}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/emu10k1/emumixer.c", i32 519, i32 2}
!234 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/emu10k1/emumixer.c", i32 520, i32 2}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/emu10k1/emumixer.c", i32 521, i32 2}
!238 = !{ptr @.str.102, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/emu10k1/emumixer.c", i32 522, i32 2}
!240 = !{ptr @.str.103, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/emu10k1/emumixer.c", i32 523, i32 2}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/emu10k1/emumixer.c", i32 524, i32 2}
!244 = !{ptr @.str.105, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/emu10k1/emumixer.c", i32 525, i32 2}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/emu10k1/emumixer.c", i32 526, i32 2}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/emu10k1/emumixer.c", i32 527, i32 2}
!250 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/emu10k1/emumixer.c", i32 528, i32 2}
!252 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/emu10k1/emumixer.c", i32 529, i32 2}
!254 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/emu10k1/emumixer.c", i32 530, i32 2}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/emu10k1/emumixer.c", i32 531, i32 2}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/emu10k1/emumixer.c", i32 532, i32 2}
!260 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/emu10k1/emumixer.c", i32 533, i32 2}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/emu10k1/emumixer.c", i32 534, i32 2}
!264 = !{ptr @snd_emu1616_output_enum_ctls, !265, !"snd_emu1616_output_enum_ctls", i1 false, i1 false}
!265 = !{!"../sound/pci/emu10k1/emumixer.c", i32 516, i32 38}
!266 = !{ptr @.str.115, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/emu10k1/emumixer.c", i32 131, i32 2}
!268 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/emu10k1/emumixer.c", i32 132, i32 2}
!270 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/emu10k1/emumixer.c", i32 133, i32 2}
!272 = !{ptr @.str.118, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/emu10k1/emumixer.c", i32 134, i32 2}
!274 = !{ptr @.str.119, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/emu10k1/emumixer.c", i32 135, i32 2}
!276 = !{ptr @.str.120, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/emu10k1/emumixer.c", i32 136, i32 2}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/emu10k1/emumixer.c", i32 137, i32 2}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/emu10k1/emumixer.c", i32 138, i32 2}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/emu10k1/emumixer.c", i32 139, i32 2}
!284 = !{ptr @.str.124, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/emu10k1/emumixer.c", i32 140, i32 2}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/emu10k1/emumixer.c", i32 141, i32 2}
!288 = !{ptr @.str.126, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/emu10k1/emumixer.c", i32 142, i32 2}
!290 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/emu10k1/emumixer.c", i32 143, i32 2}
!292 = !{ptr @.str.128, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/emu10k1/emumixer.c", i32 144, i32 2}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/emu10k1/emumixer.c", i32 145, i32 2}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/emu10k1/emumixer.c", i32 146, i32 2}
!298 = !{ptr @.str.131, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/emu10k1/emumixer.c", i32 147, i32 2}
!300 = !{ptr @.str.132, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/emu10k1/emumixer.c", i32 148, i32 2}
!302 = !{ptr @.str.133, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/pci/emu10k1/emumixer.c", i32 149, i32 2}
!304 = !{ptr @.str.134, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/emu10k1/emumixer.c", i32 150, i32 2}
!306 = !{ptr @.str.135, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/pci/emu10k1/emumixer.c", i32 151, i32 2}
!308 = !{ptr @.str.136, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/pci/emu10k1/emumixer.c", i32 152, i32 2}
!310 = !{ptr @.str.137, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/pci/emu10k1/emumixer.c", i32 153, i32 2}
!312 = !{ptr @.str.138, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/pci/emu10k1/emumixer.c", i32 154, i32 2}
!314 = !{ptr @.str.139, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/pci/emu10k1/emumixer.c", i32 155, i32 2}
!316 = !{ptr @.str.140, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/pci/emu10k1/emumixer.c", i32 156, i32 2}
!318 = !{ptr @.str.141, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/emu10k1/emumixer.c", i32 157, i32 2}
!320 = !{ptr @.str.142, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/pci/emu10k1/emumixer.c", i32 158, i32 2}
!322 = !{ptr @.str.143, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/emu10k1/emumixer.c", i32 159, i32 2}
!324 = !{ptr @.str.144, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/emu10k1/emumixer.c", i32 160, i32 2}
!326 = !{ptr @.str.145, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/pci/emu10k1/emumixer.c", i32 161, i32 2}
!328 = !{ptr @.str.146, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/emu10k1/emumixer.c", i32 162, i32 2}
!330 = !{ptr @.str.147, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/emu10k1/emumixer.c", i32 163, i32 2}
!332 = !{ptr @.str.148, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/pci/emu10k1/emumixer.c", i32 164, i32 2}
!334 = !{ptr @.str.149, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/emu10k1/emumixer.c", i32 165, i32 2}
!336 = !{ptr @.str.150, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/emu10k1/emumixer.c", i32 166, i32 2}
!338 = !{ptr @.str.151, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/emu10k1/emumixer.c", i32 167, i32 2}
!340 = !{ptr @.str.152, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/pci/emu10k1/emumixer.c", i32 168, i32 2}
!342 = !{ptr @.str.153, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/emu10k1/emumixer.c", i32 169, i32 2}
!344 = !{ptr @.str.154, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/emu10k1/emumixer.c", i32 170, i32 2}
!346 = !{ptr @.str.155, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/emu10k1/emumixer.c", i32 171, i32 2}
!348 = !{ptr @.str.156, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/emu10k1/emumixer.c", i32 172, i32 2}
!350 = !{ptr @.str.157, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/pci/emu10k1/emumixer.c", i32 173, i32 2}
!352 = !{ptr @.str.158, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/emu10k1/emumixer.c", i32 174, i32 2}
!354 = !{ptr @.str.159, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/emu10k1/emumixer.c", i32 175, i32 2}
!356 = !{ptr @.str.160, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/pci/emu10k1/emumixer.c", i32 176, i32 2}
!358 = !{ptr @.str.161, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/emu10k1/emumixer.c", i32 177, i32 2}
!360 = !{ptr @.str.162, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/emu10k1/emumixer.c", i32 178, i32 2}
!362 = !{ptr @.str.163, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/emu10k1/emumixer.c", i32 179, i32 2}
!364 = !{ptr @emu1616_src_texts, !365, !"emu1616_src_texts", i1 false, i1 false}
!365 = !{!"../sound/pci/emu10k1/emumixer.c", i32 130, i32 27}
!366 = !{ptr @.str.164, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/pci/emu10k1/emumixer.c", i32 80, i32 2}
!368 = !{ptr @.str.165, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/emu10k1/emumixer.c", i32 81, i32 2}
!370 = !{ptr @.str.166, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/pci/emu10k1/emumixer.c", i32 82, i32 2}
!372 = !{ptr @.str.167, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/emu10k1/emumixer.c", i32 83, i32 2}
!374 = !{ptr @.str.168, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/pci/emu10k1/emumixer.c", i32 84, i32 2}
!376 = !{ptr @.str.169, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/pci/emu10k1/emumixer.c", i32 85, i32 2}
!378 = !{ptr @emu1010_src_texts, !379, !"emu1010_src_texts", i1 false, i1 false}
!379 = !{!"../sound/pci/emu10k1/emumixer.c", i32 72, i32 27}
!380 = !{ptr @emu1616_output_dst, !381, !"emu1616_output_dst", i1 false, i1 false}
!381 = !{!"../sound/pci/emu10k1/emumixer.c", i32 327, i32 27}
!382 = !{ptr @emu1616_src_regs, !383, !"emu1616_src_regs", i1 false, i1 false}
!383 = !{!"../sound/pci/emu10k1/emumixer.c", i32 243, i32 27}
!384 = !{ptr @emu1010_output_dst, !385, !"emu1010_output_dst", i1 false, i1 false}
!385 = !{!"../sound/pci/emu10k1/emumixer.c", i32 299, i32 27}
!386 = !{ptr @emu1010_src_regs, !387, !"emu1010_src_regs", i1 false, i1 false}
!387 = !{!"../sound/pci/emu10k1/emumixer.c", i32 186, i32 27}
!388 = !{ptr @.str.170, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/pci/emu10k1/emumixer.c", i32 549, i32 2}
!390 = !{ptr @.str.171, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/pci/emu10k1/emumixer.c", i32 550, i32 2}
!392 = !{ptr @.str.172, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/pci/emu10k1/emumixer.c", i32 551, i32 2}
!394 = !{ptr @.str.173, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/pci/emu10k1/emumixer.c", i32 552, i32 2}
!396 = !{ptr @.str.174, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/pci/emu10k1/emumixer.c", i32 553, i32 2}
!398 = !{ptr @.str.175, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/pci/emu10k1/emumixer.c", i32 554, i32 2}
!400 = !{ptr @.str.176, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/pci/emu10k1/emumixer.c", i32 555, i32 2}
!402 = !{ptr @.str.177, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/pci/emu10k1/emumixer.c", i32 556, i32 2}
!404 = !{ptr @.str.178, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/pci/emu10k1/emumixer.c", i32 557, i32 2}
!406 = !{ptr @.str.179, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/pci/emu10k1/emumixer.c", i32 558, i32 2}
!408 = !{ptr @.str.180, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/pci/emu10k1/emumixer.c", i32 559, i32 2}
!410 = !{ptr @.str.181, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/pci/emu10k1/emumixer.c", i32 560, i32 2}
!412 = !{ptr @.str.182, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/pci/emu10k1/emumixer.c", i32 561, i32 2}
!414 = !{ptr @.str.183, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/pci/emu10k1/emumixer.c", i32 562, i32 2}
!416 = !{ptr @.str.184, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/pci/emu10k1/emumixer.c", i32 563, i32 2}
!418 = !{ptr @.str.185, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/pci/emu10k1/emumixer.c", i32 564, i32 2}
!420 = !{ptr @.str.186, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/pci/emu10k1/emumixer.c", i32 565, i32 2}
!422 = !{ptr @.str.187, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/pci/emu10k1/emumixer.c", i32 566, i32 2}
!424 = !{ptr @.str.188, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/pci/emu10k1/emumixer.c", i32 567, i32 2}
!426 = !{ptr @.str.189, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/pci/emu10k1/emumixer.c", i32 568, i32 2}
!428 = !{ptr @.str.190, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/pci/emu10k1/emumixer.c", i32 569, i32 2}
!430 = !{ptr @.str.191, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/pci/emu10k1/emumixer.c", i32 570, i32 2}
!432 = !{ptr @snd_emu1010_input_enum_ctls, !433, !"snd_emu1010_input_enum_ctls", i1 false, i1 false}
!433 = !{!"../sound/pci/emu10k1/emumixer.c", i32 548, i32 38}
!434 = !{ptr @emu1010_input_dst, !435, !"emu1010_input_dst", i1 false, i1 false}
!435 = !{!"../sound/pci/emu10k1/emumixer.c", i32 353, i32 27}
!436 = !{ptr @.str.192, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/pci/emu10k1/emumixer.c", i32 617, i32 2}
!438 = !{ptr @.str.193, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/pci/emu10k1/emumixer.c", i32 618, i32 2}
!440 = !{ptr @.str.194, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/pci/emu10k1/emumixer.c", i32 619, i32 2}
!442 = !{ptr @.str.195, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/pci/emu10k1/emumixer.c", i32 620, i32 2}
!444 = !{ptr @snd_emu1010_adc_pads, !445, !"snd_emu1010_adc_pads", i1 false, i1 false}
!445 = !{!"../sound/pci/emu10k1/emumixer.c", i32 616, i32 38}
!446 = !{ptr @.str.196, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/pci/emu10k1/emumixer.c", i32 665, i32 2}
!448 = !{ptr @.str.197, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/pci/emu10k1/emumixer.c", i32 666, i32 2}
!450 = !{ptr @.str.198, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/pci/emu10k1/emumixer.c", i32 667, i32 2}
!452 = !{ptr @.str.199, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/pci/emu10k1/emumixer.c", i32 668, i32 2}
!454 = !{ptr @.str.200, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/pci/emu10k1/emumixer.c", i32 669, i32 2}
!456 = !{ptr @snd_emu1010_dac_pads, !457, !"snd_emu1010_dac_pads", i1 false, i1 false}
!457 = !{!"../sound/pci/emu10k1/emumixer.c", i32 664, i32 38}
!458 = !{ptr @.str.201, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/pci/emu10k1/emumixer.c", i32 788, i32 18}
!460 = !{ptr @snd_emu1010_internal_clock, !461, !"snd_emu1010_internal_clock", i1 false, i1 false}
!461 = !{!"../sound/pci/emu10k1/emumixer.c", i32 784, i32 38}
!462 = !{ptr @.str.202, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/pci/emu10k1/emumixer.c", i32 677, i32 3}
!464 = !{ptr @.str.203, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/pci/emu10k1/emumixer.c", i32 677, i32 12}
!466 = !{ptr @.str.204, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/pci/emu10k1/emumixer.c", i32 677, i32 21}
!468 = !{ptr @.str.205, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/pci/emu10k1/emumixer.c", i32 677, i32 30}
!470 = !{ptr @snd_emu1010_internal_clock_info.texts, !471, !"texts", i1 false, i1 false}
!471 = !{!"../sound/pci/emu10k1/emumixer.c", i32 676, i32 28}
!472 = !{ptr @.str.206, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/pci/emu10k1/emumixer.c", i32 839, i32 18}
!474 = !{ptr @snd_emu1010_optical_out, !475, !"snd_emu1010_optical_out", i1 false, i1 false}
!475 = !{!"../sound/pci/emu10k1/emumixer.c", i32 836, i32 38}
!476 = !{ptr @snd_emu1010_optical_out_info.texts, !477, !"texts", i1 false, i1 false}
!477 = !{!"../sound/pci/emu10k1/emumixer.c", i32 798, i32 28}
!478 = !{ptr @.str.207, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/pci/emu10k1/emumixer.c", i32 890, i32 18}
!480 = !{ptr @snd_emu1010_optical_in, !481, !"snd_emu1010_optical_in", i1 false, i1 false}
!481 = !{!"../sound/pci/emu10k1/emumixer.c", i32 887, i32 38}
!482 = !{ptr @snd_emu1010_optical_in_info.texts, !483, !"texts", i1 false, i1 false}
!483 = !{!"../sound/pci/emu10k1/emumixer.c", i32 849, i32 28}
!484 = !{ptr @.str.208, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/pci/emu10k1/emumixer.c", i32 494, i32 2}
!486 = !{ptr @.str.209, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/pci/emu10k1/emumixer.c", i32 495, i32 2}
!488 = !{ptr @.str.210, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/pci/emu10k1/emumixer.c", i32 496, i32 2}
!490 = !{ptr @.str.211, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/pci/emu10k1/emumixer.c", i32 497, i32 2}
!492 = !{ptr @.str.212, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/pci/emu10k1/emumixer.c", i32 500, i32 2}
!494 = !{ptr @.str.213, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/pci/emu10k1/emumixer.c", i32 501, i32 2}
!496 = !{ptr @.str.214, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/pci/emu10k1/emumixer.c", i32 502, i32 2}
!498 = !{ptr @.str.215, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/pci/emu10k1/emumixer.c", i32 503, i32 2}
!500 = !{ptr @.str.216, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/pci/emu10k1/emumixer.c", i32 504, i32 2}
!502 = !{ptr @.str.217, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/pci/emu10k1/emumixer.c", i32 505, i32 2}
!504 = !{ptr @.str.218, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/pci/emu10k1/emumixer.c", i32 506, i32 2}
!506 = !{ptr @.str.219, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/pci/emu10k1/emumixer.c", i32 507, i32 2}
!508 = !{ptr @.str.220, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/pci/emu10k1/emumixer.c", i32 508, i32 2}
!510 = !{ptr @.str.221, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/pci/emu10k1/emumixer.c", i32 509, i32 2}
!512 = !{ptr @.str.222, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/pci/emu10k1/emumixer.c", i32 510, i32 2}
!514 = !{ptr @.str.223, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/pci/emu10k1/emumixer.c", i32 511, i32 2}
!516 = !{ptr @snd_emu1010_output_enum_ctls, !517, !"snd_emu1010_output_enum_ctls", i1 false, i1 false}
!517 = !{!"../sound/pci/emu10k1/emumixer.c", i32 487, i32 38}
!518 = !{ptr @snd_audigy_i2c_capture_source, !519, !"snd_audigy_i2c_capture_source", i1 false, i1 false}
!519 = !{!"../sound/pci/emu10k1/emumixer.c", i32 967, i32 38}
!520 = !{ptr @.str.224, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/pci/emu10k1/emumixer.c", i32 906, i32 3}
!522 = !{ptr @.str.225, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/pci/emu10k1/emumixer.c", i32 906, i32 10}
!524 = !{ptr @snd_audigy_i2c_capture_source_info.texts, !525, !"texts", i1 false, i1 false}
!525 = !{!"../sound/pci/emu10k1/emumixer.c", i32 905, i32 28}
!526 = !{ptr @snd_audigy_i2c_volume_ctls, !527, !"snd_audigy_i2c_volume_ctls", i1 false, i1 false}
!527 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1054, i32 38}
!528 = !{ptr @snd_audigy_db_scale2, !529, !"snd_audigy_db_scale2", i1 false, i1 false}
!529 = !{!"../sound/pci/emu10k1/emumixer.c", i32 30, i32 14}
!530 = !{ptr @.str.226, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1731, i32 11}
!532 = !{ptr @snd_audigy_capture_boost, !533, !"snd_audigy_capture_boost", i1 false, i1 false}
!533 = !{!"../sound/pci/emu10k1/emumixer.c", i32 1728, i32 38}
!534 = !{i32 1, !"wchar_size", i32 2}
!535 = !{i32 1, !"min_enum_size", i32 4}
!536 = !{i32 8, !"branch-target-enforcement", i32 0}
!537 = !{i32 8, !"sign-return-address", i32 0}
!538 = !{i32 8, !"sign-return-address-all", i32 0}
!539 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!540 = !{i32 7, !"uwtable", i32 1}
!541 = !{i32 7, !"frame-pointer", i32 2}
!542 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!543 = !{!"auto-init"}
!544 = !{i64 715343, i64 715360}
!545 = !{i64 6622437}
!546 = !{i64 2154555906}
!547 = !{i64 2154556592}
!548 = !{i64 2154557678}
!549 = !{i64 2154557963}
!550 = !{i64 6622019}
!551 = !{i64 2154558874}
!552 = !{i64 2154559171}
!553 = !{i64 2154545905}
