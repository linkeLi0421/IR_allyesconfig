; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emuproc.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emuproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emu1010_regs\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_regs\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr_regs00a\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr_regs00b\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr_regs20a\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr_regs20b\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr_regs20c\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emu10k1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif-in\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"capture-rates\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"voices\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fx8010_gpr\00", [21 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_ops_fx8010 = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_emu10k1_fx8010_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fx8010_tram_data\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fx8010_tram_addr\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fx8010_code\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fx8010_acode\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EMU1010 Registers:\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%02X: %08X, %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IO Registers:\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02X: %08lX\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Input values out of range\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Registers 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%02X: \00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08lX \00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_read.creative_outs = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AC97 Left\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AC97 Right\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Optical IEC958 Left\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Optical IEC958 Right\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Center\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LFE\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Left\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Headphone Right\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Surround Left\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Surround Right\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Capture Left\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCM Capture Right\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AC97 Surround Left\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AC97 Surround Right\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Analog Center\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Analog LFE\00", [21 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_read.audigy_outs = internal constant { [64 x ptr], [64 x i8] } { [64 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.33, ptr @.str.34, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.31, ptr @.str.32, ptr @.str.42, ptr @.str.42, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.42, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], [64 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital Front Left\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Digital Front Right\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Center\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital LEF\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital Rear Left\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital Rear Right\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Front Left\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Right\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rear Left\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rear Right\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AC97 Front Left\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AC97 Front Right\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Capture Left\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Capture Right\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_0\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_1\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_3\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_4\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_5\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_6\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_7\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_8\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FXBUS2_9\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_10\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_11\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_12\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_13\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_14\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_15\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_16\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_17\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_18\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_19\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_20\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_21\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_22\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_23\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_24\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_25\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_26\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_27\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_28\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_29\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_30\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FXBUS2_31\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EMU10K1\0A\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Card                  : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Audigy\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMU APS\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Creative\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Internal TRAM (words) : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"External TRAM (words) : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Effect Send Routing   :\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ch%i: A=%i, B=%i, C=%i, D=%i, \00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"E=%i, F=%i, G=%i, H=%i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ch%i: A=%i, B=%i, C=%i, D=%i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0ACaptured FX Outputs   :\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Output %02i [%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AAll FX Outputs        :\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADAT Locked : %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADAT Unlocked\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPDIF Locked : %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPDIF Unlocked\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD-ROM S/PDIF In\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Optical or Coax S/PDIF In\00", [38 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_spdif_status.clkaccy = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1000ppm\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50ppm\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"variable\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_spdif_status.samplerate = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 44100, i32 1, i32 48000, i32 32000, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_spdif_status.channel = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unspec\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"11\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"15\00", [29 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_spdif_status.emphasis = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"50/15 usec 2 channel\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A%s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Professional Mode     : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not Audio Data        : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Copyright             : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Emphasis              : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mode                  : %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Category Code         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Generation Status     : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"original\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"copy\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Source Mask           : %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel Number        : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sample Rate           : %iHz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock Accuracy        : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S/PDIF Valid          : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S/PDIF Locked         : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Rate Locked           : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Estimated Sample Rate : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No signal detected.\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_emu10k1_proc_rates_read.samplerate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 44100, i32 48000, i32 96000, i32 192000, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Channel %d: Rate=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel %d: No input\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch\09use\09pcm\09efx\09synth\09midi\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%i\09%i\09%i\09%i\09%i\09%i\0A\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FX8010 Instruction List '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Code dump      :\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"    OP(0x%02x, 0x%03x, 0x%03x, 0x%03x, 0x%03x) /* 0x%04x: 0x%08x%08x */\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 557, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 560, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 563, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 566, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 569, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 572, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 575, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 580, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 583, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 586, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 589, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 592, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant [28 x i8] c"snd_emu10k1_proc_ops_fx8010\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 548, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 599, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 606, i32 37 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 613, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 620, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 389, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 393, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 404, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 409, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 421, i32 20 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 473, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 476, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 478, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 484, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 486, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 497, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"creative_outs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 70, i32 28 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 71, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 72, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 73, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 74, i32 12 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 75, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 76, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 77, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 78, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 79, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 80, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 81, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 82, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 83, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 84, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 85, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 86, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 88, i32 12 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 89, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant [12 x i8] c"audigy_outs\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 105, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 106, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 107, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 108, i32 12 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 109, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 112, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 113, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 114, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 115, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 120, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 121, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 122, i32 12 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 123, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 124, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 125, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 138, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 139, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 140, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 141, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 142, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 143, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 144, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 145, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 146, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 147, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 148, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 149, i32 12 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 150, i32 12 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 151, i32 12 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 152, i32 12 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 153, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 154, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 155, i32 12 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 156, i32 12 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 157, i32 12 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 158, i32 12 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 159, i32 12 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 160, i32 12 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 161, i32 12 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 162, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 163, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 164, i32 12 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 165, i32 12 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 166, i32 12 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 167, i32 12 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 168, i32 12 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 169, i32 12 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 178, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 179, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 181, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 182, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 184, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 193, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 199, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 205, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 213, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 216, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 218, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 237, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 239, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 246, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 248, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 251, i32 46 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 252, i32 46 }
@___asan_gen_.509 = private unnamed_addr constant [8 x i8] c"clkaccy\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 29, i32 28 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 29, i32 43 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 29, i32 54 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 29, i32 63 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 29, i32 75 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 30, i32 19 }
@___asan_gen_.527 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 28 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 44 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 54 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 62 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 71 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 76 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 81 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 86 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 91 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 96 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 101 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 106 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 112 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 118 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 124 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 130 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 31, i32 136 }
@___asan_gen_.578 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 32, i32 28 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 32, i32 44 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 32, i32 52 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 32, i32 76 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 37, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 40, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 41, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 42, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 43, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 44, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 45, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 46, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 47, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 48, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 49, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 50, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 54, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 55, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 56, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 58, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 61, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 265, i32 19 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 271, i32 18 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 272, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 369, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 372, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 230, i32 6 }
@___asan_gen_.678 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 214, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 174, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 282, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 283, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.690 = private constant [31 x i8] c"../sound/pci/emu10k1/emuproc.c\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 290, i32 4 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_emu10k1_proc_ops_fx8010, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @snd_emu10k1_proc_read.creative_outs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @snd_emu10k1_proc_read.audigy_outs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @snd_emu10k1_proc_spdif_status.clkaccy, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @snd_emu10k1_proc_spdif_status.samplerate, ptr @snd_emu10k1_proc_spdif_status.channel, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @snd_emu10k1_proc_spdif_status.emphasis, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @snd_emu10k1_proc_rates_read.samplerate, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_ops_fx8010 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_read.creative_outs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_read.audigy_outs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_spdif_status.clkaccy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_spdif_status.samplerate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_spdif_status.channel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_spdif_status.emphasis to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_proc_rates_read.samplerate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_proc_init(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %0 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_emu1010_reg_read, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %card2 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %6 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card2, align 4
  %call3 = tail call i32 @snd_card_rw_proc_new(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_io_reg_read, ptr noundef nonnull @snd_emu_proc_io_reg_write) #7
  %8 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card2, align 4
  %call5 = tail call i32 @snd_card_rw_proc_new(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_ptr_reg_read00a, ptr noundef nonnull @snd_emu_proc_ptr_reg_write00) #7
  %10 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card2, align 4
  %call7 = tail call i32 @snd_card_rw_proc_new(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_ptr_reg_read00b, ptr noundef nonnull @snd_emu_proc_ptr_reg_write00) #7
  %12 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card2, align 4
  %call9 = tail call i32 @snd_card_rw_proc_new(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_ptr_reg_read20a, ptr noundef nonnull @snd_emu_proc_ptr_reg_write20) #7
  %14 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card2, align 4
  %call11 = tail call i32 @snd_card_rw_proc_new(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_ptr_reg_read20b, ptr noundef nonnull @snd_emu_proc_ptr_reg_write20) #7
  %16 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card2, align 4
  %call13 = tail call i32 @snd_card_rw_proc_new(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef %emu, ptr noundef nonnull @snd_emu_proc_ptr_reg_read20c, ptr noundef nonnull @snd_emu_proc_ptr_reg_write20) #7
  %18 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card2, align 4
  %call.i115 = tail call i32 @snd_card_rw_proc_new(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef %emu, ptr noundef nonnull @snd_emu10k1_proc_read, ptr noundef null) #7
  %20 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card_capabilities, align 4
  %emu10k2_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %emu10k2_chip to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %emu10k2_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %if.end.if.end21_crit_edge, label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card2, align 4
  %call.i116 = tail call i32 @snd_card_rw_proc_new(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef %emu, ptr noundef nonnull @snd_emu10k1_proc_spdif_read, ptr noundef null) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %26 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool23.not = icmp eq i8 %29, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card2, align 4
  %call.i117 = tail call i32 @snd_card_rw_proc_new(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %emu, ptr noundef nonnull @snd_emu10k1_proc_rates_read, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %32 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card2, align 4
  %call.i118 = tail call i32 @snd_card_rw_proc_new(ptr noundef %33, ptr noundef nonnull @.str.10, ptr noundef %emu, ptr noundef nonnull @snd_emu10k1_proc_voices_read, ptr noundef null) #7
  %34 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card2, align 4
  %proc_root.i = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %proc_root.i, align 8
  %call.i119 = tail call ptr @snd_info_create_card_entry(ptr noundef %35, ptr noundef nonnull @.str.11, ptr noundef %37) #7
  %tobool.not.i.not = icmp eq ptr %call.i119, null
  br i1 %tobool.not.i.not, label %if.end27.if.end35_crit_edge, label %if.then33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %call.i119, i32 0, i32 3
  %38 = ptrtoint ptr %content to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %content, align 4
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %call.i119, i32 0, i32 7
  %39 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %emu, ptr %private_data, align 4
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call.i119, i32 0, i32 1
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -32476, ptr %mode, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %41 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool34.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool34.not, i32 1024, i32 2048
  %size = getelementptr inbounds %struct.snd_info_entry, ptr %call.i119, i32 0, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %size, align 4
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call.i119, i32 0, i32 4
  %44 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @snd_emu10k1_proc_ops_fx8010, ptr %c, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  %45 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card2, align 4
  %proc_root.i120 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %proc_root.i120 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %proc_root.i120, align 8
  %call.i121 = tail call ptr @snd_info_create_card_entry(ptr noundef %46, ptr noundef nonnull @.str.12, ptr noundef %48) #7
  %tobool.not.i122.not = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i122.not, label %if.end35.if.end48_crit_edge, label %if.then39

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %content40 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i121, i32 0, i32 3
  %49 = ptrtoint ptr %content40 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %content40, align 4
  %private_data41 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i121, i32 0, i32 7
  %50 = ptrtoint ptr %private_data41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %emu, ptr %private_data41, align 4
  %mode42 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i121, i32 0, i32 1
  %51 = ptrtoint ptr %mode42 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -32476, ptr %mode42, align 4
  %audigy43 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %52 = ptrtoint ptr %audigy43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %audigy43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool44.not = icmp eq i32 %53, 0
  %cond45 = select i1 %tobool44.not, i32 640, i32 1024
  %size46 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i121, i32 0, i32 2
  %54 = ptrtoint ptr %size46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond45, ptr %size46, align 4
  %c47 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i121, i32 0, i32 4
  %55 = ptrtoint ptr %c47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @snd_emu10k1_proc_ops_fx8010, ptr %c47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.end35.if.end48_crit_edge
  %56 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card2, align 4
  %proc_root.i124 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 20
  %58 = ptrtoint ptr %proc_root.i124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %proc_root.i124, align 8
  %call.i125 = tail call ptr @snd_info_create_card_entry(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef %59) #7
  %tobool.not.i126.not = icmp eq ptr %call.i125, null
  br i1 %tobool.not.i126.not, label %if.end48.if.end61_crit_edge, label %if.then52

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %content53 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i125, i32 0, i32 3
  %60 = ptrtoint ptr %content53 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %content53, align 4
  %private_data54 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i125, i32 0, i32 7
  %61 = ptrtoint ptr %private_data54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %emu, ptr %private_data54, align 4
  %mode55 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i125, i32 0, i32 1
  %62 = ptrtoint ptr %mode55 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -32476, ptr %mode55, align 4
  %audigy56 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %63 = ptrtoint ptr %audigy56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %audigy56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool57.not = icmp eq i32 %64, 0
  %cond58 = select i1 %tobool57.not, i32 640, i32 1024
  %size59 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i125, i32 0, i32 2
  %65 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond58, ptr %size59, align 4
  %c60 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i125, i32 0, i32 4
  %66 = ptrtoint ptr %c60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @snd_emu10k1_proc_ops_fx8010, ptr %c60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %if.end48.if.end61_crit_edge
  %67 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card2, align 4
  %proc_root.i128 = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %proc_root.i128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %proc_root.i128, align 8
  %call.i129 = tail call ptr @snd_info_create_card_entry(ptr noundef %68, ptr noundef nonnull @.str.14, ptr noundef %70) #7
  %tobool.not.i130.not = icmp eq ptr %call.i129, null
  br i1 %tobool.not.i130.not, label %if.end61.if.end74_crit_edge, label %if.then65

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %content66 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i129, i32 0, i32 3
  %71 = ptrtoint ptr %content66 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %content66, align 4
  %private_data67 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i129, i32 0, i32 7
  %72 = ptrtoint ptr %private_data67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %emu, ptr %private_data67, align 4
  %mode68 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i129, i32 0, i32 1
  %73 = ptrtoint ptr %mode68 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -32476, ptr %mode68, align 4
  %audigy69 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %74 = ptrtoint ptr %audigy69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %audigy69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool70.not = icmp eq i32 %75, 0
  %cond71 = select i1 %tobool70.not, i32 4096, i32 8192
  %size72 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i129, i32 0, i32 2
  %76 = ptrtoint ptr %size72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond71, ptr %size72, align 4
  %c73 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i129, i32 0, i32 4
  %77 = ptrtoint ptr %c73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @snd_emu10k1_proc_ops_fx8010, ptr %c73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then65, %if.end61.if.end74_crit_edge
  %78 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card2, align 4
  %call.i132 = tail call i32 @snd_card_rw_proc_new(ptr noundef %79, ptr noundef nonnull @.str.15, ptr noundef %emu, ptr noundef nonnull @snd_emu10k1_proc_acode_read, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_emu1010_reg_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !351
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.16) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %call = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef %i.08, ptr noundef nonnull %value) #7
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %shr = lshr i32 %8, 8
  %and = and i32 %shr, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %i.08, i32 noundef %8, i32 noundef %and) #7
  %add = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %add, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_io_reg_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.18) #7
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %add14, %do.body3.do.body3_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #7
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.021
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #7, !srcloc !352
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !353
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call5) #7
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %i.021, i32 noundef %8) #7
  %add14 = add nuw nsw i32 %i.021, 4
  %cmp = icmp ult i32 %i.021, 60
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

for.end:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_io_reg_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #7
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !351
  %call23 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not24 = icmp eq i32 %call23, 0
  br i1 %tobool.not24, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.20, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp4 = icmp ult i32 %6, 64
  br i1 %cmp4, label %do.body7, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !354
  call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %and = and i32 %13, 1048572
  %add = add i32 %and, %11
  %and16 = and i32 %add, 1048575
  %add17 = or i32 %and16, -18874368
  %14 = inttoptr i32 %add17 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %9) #7, !srcloc !355
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call10) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body7, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_read00a(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_read(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 64)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_write00(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_write(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_read00b(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_read(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 0, i32 noundef 64, i32 noundef 64, i32 noundef 64)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_read20a(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_read(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 32, i32 noundef 0, i32 noundef 64, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_write20(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_write(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_read20b(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_read(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 32, i32 noundef 64, i32 noundef 64, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu_proc_ptr_reg_read20c(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu_proc_ptr_reg_read(ptr noundef %entry1, ptr noundef %buffer, i32 noundef 32, i32 noundef 128, i32 noundef 32, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %cond4 = select i1 %tobool.not, ptr @snd_emu10k1_proc_read.creative_outs, ptr @snd_emu10k1_proc_read.audigy_outs
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.91) #7
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card_capabilities, align 4
  %ecard = getelementptr inbounds %struct.snd_emu_chip_details, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %ecard to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ecard, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.95, ptr @.str.94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond11 = phi ptr [ %cond10, %cond.false ], [ @.str.93, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond11) #7
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %itram_size = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 4
  %16 = ptrtoint ptr %itram_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %itram_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.96, i32 noundef %17) #7
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %bytes = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 5, i32 3
  %20 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes, align 4
  %div = sdiv i32 %21, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.97, i32 noundef %div) #7
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.25) #7
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.98) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end
  %idx.0141 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  %. = select i1 %tobool19.not, i32 11, i32 126
  %call22 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %., i32 noundef %idx.0141) #7
  %28 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  br i1 %tobool26.not, label %for.body.if.else_crit_edge, label %cond.end30

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

cond.end30:                                       ; preds = %for.body
  %call28 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef 124, i32 noundef %idx.0141) #7
  %30 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool33.not = icmp eq i32 %.pr, 0
  br i1 %tobool33.not, label %cond.end30.if.else_crit_edge, label %if.then

cond.end30.if.else_crit_edge:                     ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %and = and i32 %call22, 63
  %shr = lshr i32 %call22, 8
  %and35 = and i32 %shr, 63
  %shr36 = lshr i32 %call22, 16
  %and37 = and i32 %shr36, 63
  %shr38 = lshr i32 %call22, 24
  %and39 = and i32 %shr38, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.99, i32 noundef %idx.0141, i32 noundef %and, i32 noundef %and35, i32 noundef %and37, i32 noundef %and39) #7
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %and41 = and i32 %call28, 63
  %shr42 = lshr i32 %call28, 8
  %and43 = and i32 %shr42, 63
  %shr44 = lshr i32 %call28, 16
  %and45 = and i32 %shr44, 63
  %shr46 = lshr i32 %call28, 24
  %and47 = and i32 %shr46, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.100, i32 noundef %and41, i32 noundef %and43, i32 noundef %and45, i32 noundef %and47) #7
  br label %for.inc

if.else:                                          ; preds = %cond.end30.if.else_crit_edge, %for.body.if.else_crit_edge
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %shr49 = lshr i32 %call22, 16
  %and50 = and i32 %shr49, 15
  %shr51 = lshr i32 %call22, 20
  %and52 = and i32 %shr51, 15
  %shr53 = lshr i32 %call22, 24
  %and54 = and i32 %shr53, 15
  %shr55 = lshr i32 %call22, 28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.101, i32 noundef %idx.0141, i32 noundef %and50, i32 noundef %and52, i32 noundef %and54, i32 noundef %shr55) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %idx.0141, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.102) #7
  br label %for.body61

for.body61:                                       ; preds = %for.inc69.for.body61_crit_edge, %for.end
  %idx.1145 = phi i32 [ 0, %for.end ], [ %inc70, %for.inc69.for.body61_crit_edge ]
  %div62140 = lshr i32 %idx.1145, 5
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 74, i32 %div62140
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %rem137 = and i32 %idx.1145, 31
  %shl = shl nuw i32 1, %rem137
  %and63 = and i32 %40, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.body61.for.inc69_crit_edge, label %if.then65

for.body61.for.inc69_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc69

if.then65:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %arrayidx67 = getelementptr ptr, ptr %cond4, i32 %idx.1145
  %43 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx67, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.103, i32 noundef %idx.1145, ptr noundef %44) #7
  br label %for.inc69

for.inc69:                                        ; preds = %if.then65, %for.body61.for.inc69_crit_edge
  %inc70 = add nuw nsw i32 %idx.1145, 1
  %exitcond150.not = icmp eq i32 %inc70, %cond
  br i1 %exitcond150.not, label %for.end71, label %for.inc69.for.body61_crit_edge

for.inc69.for.body61_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.end71:                                        ; preds = %for.inc69
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.104) #7
  br label %for.body79

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.end71
  %idx.2149 = phi i32 [ 0, %for.end71 ], [ %inc83, %for.body79.for.body79_crit_edge ]
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %arrayidx81 = getelementptr ptr, ptr %cond4, i32 %idx.2149
  %49 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.103, i32 noundef %idx.2149, ptr noundef %50) #7
  %inc83 = add nuw nsw i32 %idx.2149, 1
  %51 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool75.not = icmp eq i32 %52, 0
  %cond76 = select i1 %tobool75.not, i32 32, i32 64
  %cmp77 = icmp ult i32 %inc83, %cond76
  br i1 %cmp77, label %for.body79.for.body79_crit_edge, label %for.end84

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79

for.end84:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_proc_spdif_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %value = alloca i32, align 4
  %value2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value2) #7
  %3 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value2, align 4, !annotation !351
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 56, ptr noundef nonnull %value) #7
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 42, ptr noundef nonnull %value) #7
  %call4 = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 43, ptr noundef nonnull %value2) #7
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %shl = shl i32 %11, 5
  %12 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value2, align 4
  %or = or i32 %shl, %13
  %add = add i32 %or, 1
  %div = udiv i32 24576000, %add
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.105, i32 noundef %div) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.106) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %call7 = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %value) #7
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %and8 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.else18

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %value) #7
  %call12 = call i32 @snd_emu1010_fpga_read(ptr noundef %1, i32 noundef 41, ptr noundef nonnull %value2) #7
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %shl13 = shl i32 %21, 5
  %22 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value2, align 4
  %or14 = or i32 %shl13, %23
  %add15 = add i32 %or14, 1
  %div16 = udiv i32 24576000, %add15
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.107, i32 noundef %div16) #7
  br label %if.end22

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.108) #7
  br label %if.end22

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @snd_emu10k1_proc_spdif_status(ptr noundef %1, ptr noundef %buffer, ptr noundef nonnull @.str.109, i32 noundef 80, i32 noundef 96)
  tail call fastcc void @snd_emu10k1_proc_spdif_status(ptr noundef %1, ptr noundef %buffer, ptr noundef nonnull @.str.110, i32 noundef 81, i32 noundef 97)
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.else18, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_proc_rates_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_emu10k1_ptr20_read(ptr noundef %1, i32 noundef 23, i32 noundef 0) #7
  %2 = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %call, 16
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %and3 = and i32 %shr, 7
  %arrayidx = getelementptr [8 x i32], ptr @snd_emu10k1_proc_rates_read.samplerate, i32 0, i32 %and3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.157, i32 noundef 0, i32 noundef %6) #7
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.158, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %9 = and i32 %call, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %shr.1 = lshr i32 %call, 20
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %and3.1 = and i32 %shr.1, 7
  %arrayidx.1 = getelementptr [8 x i32], ptr @snd_emu10k1_proc_rates_read.samplerate, i32 0, i32 %and3.1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.157, i32 noundef 1, i32 noundef %13) #7
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.158, i32 noundef 1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then.1
  %16 = and i32 %call, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.2 = icmp eq i32 %16, 0
  br i1 %tobool.not.2, label %if.else.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %shr.2 = lshr i32 %call, 24
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  %and3.2 = and i32 %shr.2, 7
  %arrayidx.2 = getelementptr [8 x i32], ptr @snd_emu10k1_proc_rates_read.samplerate, i32 0, i32 %and3.2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.157, i32 noundef 2, i32 noundef %20) #7
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.158, i32 noundef 2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not.3 = icmp sgt i32 %call, -1
  br i1 %tobool.not.3, label %if.else.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %shr.3 = lshr i32 %call, 28
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %and3.3 = and i32 %shr.3, 7
  %arrayidx.3 = getelementptr [8 x i32], ptr @snd_emu10k1_proc_rates_read.samplerate, i32 0, i32 %and3.3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.157, i32 noundef 3, i32 noundef %26) #7
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.158, i32 noundef 3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then.3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_proc_voices_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.159) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.027 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %use = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 46, i32 %idx.027, i32 2
  %6 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %use, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr5 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr5, 1
  %bf.cast6 = zext i8 %bf.clear to i32
  %bf.lshr8 = lshr i8 %bf.load, 5
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = zext i8 %bf.clear9 to i32
  %bf.lshr12 = lshr i8 %bf.load, 4
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  %bf.lshr16 = lshr i8 %bf.load, 3
  %bf.clear17 = and i8 %bf.lshr16, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.160, i32 noundef %idx.027, i32 noundef %bf.cast, i32 noundef %bf.cast6, i32 noundef %bf.cast10, i32 noundef %bf.cast14, i32 noundef %bf.cast18) #7
  %inc = add nuw nsw i32 %idx.027, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_proc_acode_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.164, ptr noundef %name) #7
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.165) #7
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %pc.054 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw i32 %pc.054, 1
  %call = tail call i32 @snd_emu10k1_efx_read(ptr noundef %1, i32 noundef %mul) #7
  %add = or i32 %mul, 1
  %call5 = tail call i32 @snd_emu10k1_efx_read(ptr noundef %1, i32 noundef %add) #7
  %6 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %. = select i1 %tobool7.not, i32 20, i32 24
  %.62 = select i1 %tobool7.not, i32 10, i32 12
  %.63 = select i1 %tobool7.not, i32 1023, i32 2047
  %shr18 = lshr i32 %call5, %.
  %and19 = and i32 %shr18, 15
  %shr20 = lshr i32 %call5, %.62
  %and21 = and i32 %shr20, %.63
  %and23 = and i32 %call5, %.63
  %shr24 = lshr i32 %call, %.62
  %and25 = and i32 %shr24, %.63
  %and27 = and i32 %call, %.63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.166, i32 noundef %and19, i32 noundef %and21, i32 noundef %and23, i32 noundef %and25, i32 noundef %and27, i32 noundef %pc.054, i32 noundef %call5, i32 noundef %call) #7
  %inc = add nuw nsw i32 %pc.054, 1
  %10 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, i32 512, i32 1024
  %cmp = icmp ult i32 %inc, %cond
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu_proc_ptr_reg_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer, i32 noundef %iobase, i32 noundef %offset, i32 noundef %length, i32 noundef %voices) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %length, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %add)
  %cmp = icmp sgt i32 %add, 160
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %iobase) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp551 = icmp sgt i32 %add, %offset
  br i1 %cmp551, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voices)
  %cmp848 = icmp sgt i32 %voices, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iobase)
  %cmp10 = icmp eq i32 %iobase, 0
  %emu_lock.i40 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %port.i42 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ %offset, %for.body.lr.ph ], [ %inc17, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %i.052) #7
  br i1 %cmp848, label %for.body9.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %shl.i38 = shl i32 %i.052, 16
  br label %for.body9

for.body9:                                        ; preds = %if.end13.for.body9_crit_edge, %for.body9.lr.ph
  %j.049 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %if.end13.for.body9_crit_edge ]
  %or.i = or i32 %j.049, %shl.i38
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %7 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i42, align 4
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %8, 1048575
  %add9.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #7, !srcloc !355
  %10 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i42, align 4
  %add13.i = add i32 %11, 4
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %12 = inttoptr i32 %add15.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #7, !srcloc !352
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !356
  br label %if.end13

if.else:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %8, 32
  %and.i43 = and i32 %add.i, 1048575
  %add9.i44 = or i32 %and.i43, -18874368
  %15 = inttoptr i32 %add9.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %6) #7, !srcloc !355
  %16 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i42, align 4
  %add13.i45 = add i32 %17, 36
  %and14.i46 = and i32 %add13.i45, 1048575
  %add15.i47 = or i32 %and14.i46, -18874368
  %18 = inttoptr i32 %add15.i47 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #7, !srcloc !352
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !356
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %value.0 = phi i32 [ %14, %if.then11 ], [ %20, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i40, i32 noundef %call2.i) #7
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef %value.0) #7
  %inc = add nuw nsw i32 %j.049, 1
  %exitcond.not = icmp eq i32 %inc, %voices
  br i1 %exitcond.not, label %if.end13.for.end_crit_edge, label %if.end13.for.body9_crit_edge

if.end13.for.body9_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.body.for.end_crit_edge
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.25) #7
  %inc17 = add nsw i32 %i.052, 1
  %exitcond54.not = icmp eq i32 %inc17, %add
  br i1 %exitcond54.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu_proc_ptr_reg_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer, i32 noundef %iobase) unnamed_addr #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %channel_id = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #7
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_id) #7
  %4 = ptrtoint ptr %channel_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %channel_id, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !351
  %call11 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not12 = icmp eq i32 %call11, 0
  br i1 %tobool.not12, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %add15.i = add i32 %iobase, 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.26, ptr noundef nonnull %reg, ptr noundef nonnull %channel_id, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 3
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %7)
  %cmp4 = icmp ult i32 %7, 160
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp7 = icmp ult i32 %9, 4
  br i1 %cmp7, label %if.then8, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %shl.i = shl nuw nsw i32 %7, 16
  %or.i = or i32 %9, %shl.i
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !357
  call void @arm_heavy_mb() #7
  %12 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add.i = add i32 %14, %iobase
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add9.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #7, !srcloc !355
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !358
  call void @arm_heavy_mb() #7
  %16 = call i32 @llvm.bswap.i32(i32 %11) #7
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add16.i = add i32 %add15.i, %18
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %19 = inttoptr i32 %add18.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #7, !srcloc !355
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then8, %land.lhs.true.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_id) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_proc_spdif_status(ptr noundef %emu, ptr nocapture noundef readonly %buffer, ptr noundef %title, i32 noundef %status_reg, i32 noundef %rate_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %status_reg, i32 noundef 0) #7
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef %title) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.not = icmp eq i32 %call, -1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.137, ptr @.str.136
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.135, ptr noundef nonnull %cond) #7
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %and4 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.137, ptr @.str.136
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond6) #7
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %and8 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.137, ptr @.str.136
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.139, ptr noundef nonnull %cond10) #7
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %and12 = lshr i32 %call, 3
  %shr = and i32 %and12, 7
  %arrayidx = getelementptr [8 x ptr], ptr @snd_emu10k1_proc_spdif_status.emphasis, i32 0, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.140, ptr noundef %11) #7
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %and14 = lshr i32 %call, 6
  %shr15 = and i32 %and14, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.141, i32 noundef %shr15) #7
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %and17 = lshr i32 %call, 8
  %shr18 = and i32 %and17, 127
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.142, i32 noundef %shr18) #7
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %and20 = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.145, ptr @.str.144
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.143, ptr noundef nonnull %cond22) #7
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %and24 = lshr i32 %call, 16
  %shr25 = and i32 %and24, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.146, i32 noundef %shr25) #7
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %and27 = lshr i32 %call, 20
  %shr28 = and i32 %and27, 15
  %arrayidx29 = getelementptr [16 x ptr], ptr @snd_emu10k1_proc_spdif_status.channel, i32 0, i32 %shr28
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.147, ptr noundef %23) #7
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %and31 = lshr i32 %call, 24
  %shr32 = and i32 %and31, 15
  %arrayidx33 = getelementptr [16 x i32], ptr @snd_emu10k1_proc_spdif_status.samplerate, i32 0, i32 %shr32
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.148, i32 noundef %27) #7
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %and35 = lshr i32 %call, 28
  %shr36 = and i32 %and35, 3
  %arrayidx37 = getelementptr [4 x ptr], ptr @snd_emu10k1_proc_spdif_status.clkaccy, i32 0, i32 %shr36
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.149, ptr noundef %31) #7
  %call40 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %rate_reg, i32 noundef 0) #7
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %and42 = and i32 %call40, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.152, ptr @.str.151
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.150, ptr noundef nonnull %cond44) #7
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  %and46 = and i32 %call40, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.152, ptr @.str.151
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.153, ptr noundef nonnull %cond48) #7
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %and50 = and i32 %call40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.152, ptr @.str.151
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.154, ptr noundef nonnull %cond52) #7
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %and54 = and i32 %call40, 1048575
  %mul = mul nuw nsw i32 %and54, 375
  %shr55 = lshr i32 %mul, 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.155, i32 noundef %shr55) #7
  br label %if.end57

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.156) #7
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr20_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_fx8010_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(17) @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end8.i_crit_edge, label %if.else

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(17) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end8.i_crit_edge, label %if.else6

if.else.if.end8.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.else6:                                         ; preds = %if.else
  %call8 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(12) @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool11.not, i32 1024, i32 1536
  br label %if.end8.i

if.else12:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %cond15 = select i1 %tobool11.not, i32 256, i32 1024
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else12, %if.then10, %if.else.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %offset.0 = phi i32 [ %cond15, %if.else12 ], [ %cond, %if.then10 ], [ 768, %entry.if.end8.i_crit_edge ], [ 512, %if.else.if.end8.i_crit_edge ]
  %add = add i32 %count, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.end8.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i
  %and = and i64 %pos, 3
  %conv22 = zext i32 %count to i64
  %add23 = add nuw nsw i64 %conv22, 3
  %add24 = add nuw nsw i64 %add23, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %add24)
  %cmp82.not = icmp ult i64 %add24, 4
  br i1 %cmp82.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = lshr i64 %add24, 2
  %7 = lshr i64 %pos, 2
  %8 = trunc i64 %7 to i32
  %audigy33 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %9 = trunc i64 %6 to i32
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %idx.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end43.for.body_crit_edge ]
  %add26 = add i32 %idx.083, %8
  %conv30 = add i32 %add26, %offset.0
  %call31 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %conv30, i32 noundef 0) #7
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %audigy33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audigy33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool34.not = icmp eq i32 %11, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end43_crit_edge, label %if.then35

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shr36 = lshr i32 %call31, 11
  %conv41 = add i32 %add26, 256
  %call42 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef %conv41, i32 noundef 0) #7
  %shl = shl i32 %call42, 20
  %or = or i32 %shl, %shr36
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %land.lhs.true.if.end43_crit_edge, %for.body.if.end43_crit_edge
  %val.0 = phi i32 [ %or, %if.then35 ], [ %call31, %land.lhs.true.if.end43_crit_edge ], [ %call31, %for.body.if.end43_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %idx.083
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val.0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.083, 1
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idx.ext = trunc i64 %and to i32
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !359

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.161, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.163, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i80

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i80:                                     ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #12, !srcloc !360
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i80.copy_to_user.exit_crit_edge

if.end.i.i80.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %count) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i80.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count, %if.end.i.i80.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool46.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool46.not, i32 %count, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %14 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %copy_to_user.exit.thread ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_efx_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !285, !287, !289, !291, !293, !295, !296, !297, !299, !301, !303, !305, !307, !308, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !332, !334, !336, !338, !340}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emuproc.c", i32 557, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emuproc.c", i32 560, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emuproc.c", i32 563, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/emuproc.c", i32 566, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/emuproc.c", i32 569, i32 34}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emuproc.c", i32 572, i32 34}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emuproc.c", i32 575, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/emu10k1/emuproc.c", i32 580, i32 34}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/emu10k1/emuproc.c", i32 583, i32 35}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/emuproc.c", i32 586, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/emuproc.c", i32 589, i32 34}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/emuproc.c", i32 592, i32 37}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/emu10k1/emuproc.c", i32 599, i32 37}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/emuproc.c", i32 606, i32 37}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/emuproc.c", i32 613, i32 37}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/emuproc.c", i32 620, i32 34}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/emu10k1/emuproc.c", i32 389, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/emu10k1/emuproc.c", i32 393, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/emu10k1/emuproc.c", i32 404, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/emu10k1/emuproc.c", i32 409, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/emuproc.c", i32 421, i32 20}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/emuproc.c", i32 473, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/emu10k1/emuproc.c", i32 476, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/emuproc.c", i32 478, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/emu10k1/emuproc.c", i32 484, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/emuproc.c", i32 486, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/emu10k1/emuproc.c", i32 497, i32 20}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/emu10k1/emuproc.c", i32 71, i32 12}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/emu10k1/emuproc.c", i32 72, i32 12}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/emu10k1/emuproc.c", i32 73, i32 12}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/emu10k1/emuproc.c", i32 74, i32 12}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/emu10k1/emuproc.c", i32 75, i32 12}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/emu10k1/emuproc.c", i32 76, i32 12}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/emu10k1/emuproc.c", i32 77, i32 12}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/emu10k1/emuproc.c", i32 78, i32 12}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/emu10k1/emuproc.c", i32 79, i32 12}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/emu10k1/emuproc.c", i32 80, i32 12}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/emu10k1/emuproc.c", i32 81, i32 12}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/emu10k1/emuproc.c", i32 82, i32 12}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/emu10k1/emuproc.c", i32 83, i32 12}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/emu10k1/emuproc.c", i32 84, i32 12}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/emu10k1/emuproc.c", i32 85, i32 12}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/emu10k1/emuproc.c", i32 86, i32 12}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/emu10k1/emuproc.c", i32 88, i32 12}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/emu10k1/emuproc.c", i32 89, i32 12}
!90 = !{ptr @snd_emu10k1_proc_read.creative_outs, !91, !"creative_outs", i1 false, i1 false}
!91 = !{!"../sound/pci/emu10k1/emuproc.c", i32 70, i32 28}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/emu10k1/emuproc.c", i32 106, i32 12}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/emu10k1/emuproc.c", i32 107, i32 12}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/emu10k1/emuproc.c", i32 108, i32 12}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/emu10k1/emuproc.c", i32 109, i32 12}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/emu10k1/emuproc.c", i32 112, i32 12}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/emu10k1/emuproc.c", i32 113, i32 12}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/emu10k1/emuproc.c", i32 114, i32 12}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/emu10k1/emuproc.c", i32 115, i32 12}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/emu10k1/emuproc.c", i32 120, i32 12}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/emu10k1/emuproc.c", i32 121, i32 12}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/emu10k1/emuproc.c", i32 122, i32 12}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/emu10k1/emuproc.c", i32 123, i32 12}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/emu10k1/emuproc.c", i32 124, i32 12}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/emu10k1/emuproc.c", i32 125, i32 12}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/emu10k1/emuproc.c", i32 138, i32 12}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/emu10k1/emuproc.c", i32 139, i32 12}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/emu10k1/emuproc.c", i32 140, i32 12}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/emu10k1/emuproc.c", i32 141, i32 12}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/emu10k1/emuproc.c", i32 142, i32 12}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/emu10k1/emuproc.c", i32 143, i32 12}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/emu10k1/emuproc.c", i32 144, i32 12}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/emu10k1/emuproc.c", i32 145, i32 12}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/emu10k1/emuproc.c", i32 146, i32 12}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/emu10k1/emuproc.c", i32 147, i32 12}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/emu10k1/emuproc.c", i32 148, i32 12}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/emu10k1/emuproc.c", i32 149, i32 12}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/emu10k1/emuproc.c", i32 150, i32 12}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/emu10k1/emuproc.c", i32 151, i32 12}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/emu10k1/emuproc.c", i32 152, i32 12}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/emu10k1/emuproc.c", i32 153, i32 12}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/emu10k1/emuproc.c", i32 154, i32 12}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/emu10k1/emuproc.c", i32 155, i32 12}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/emu10k1/emuproc.c", i32 156, i32 12}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/emu10k1/emuproc.c", i32 157, i32 12}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/emu10k1/emuproc.c", i32 158, i32 12}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/emu10k1/emuproc.c", i32 159, i32 12}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/emu10k1/emuproc.c", i32 160, i32 12}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/emu10k1/emuproc.c", i32 161, i32 12}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/emu10k1/emuproc.c", i32 162, i32 12}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/emu10k1/emuproc.c", i32 163, i32 12}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/emu10k1/emuproc.c", i32 164, i32 12}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/emu10k1/emuproc.c", i32 165, i32 12}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/emu10k1/emuproc.c", i32 166, i32 12}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/emu10k1/emuproc.c", i32 167, i32 12}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/emu10k1/emuproc.c", i32 168, i32 12}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/emu10k1/emuproc.c", i32 169, i32 12}
!184 = !{ptr @snd_emu10k1_proc_read.audigy_outs, !185, !"audigy_outs", i1 false, i1 false}
!185 = !{!"../sound/pci/emu10k1/emuproc.c", i32 105, i32 28}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/emu10k1/emuproc.c", i32 178, i32 2}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/emu10k1/emuproc.c", i32 179, i32 2}
!190 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/emu10k1/emuproc.c", i32 181, i32 2}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/emu10k1/emuproc.c", i32 182, i32 2}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/emu10k1/emuproc.c", i32 184, i32 2}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/emu10k1/emuproc.c", i32 193, i32 4}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/emu10k1/emuproc.c", i32 199, i32 4}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/emu10k1/emuproc.c", i32 205, i32 4}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/emu10k1/emuproc.c", i32 213, i32 2}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/emu10k1/emuproc.c", i32 216, i32 4}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/emu10k1/emuproc.c", i32 218, i32 2}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/emu10k1/emuproc.c", i32 237, i32 4}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/emu10k1/emuproc.c", i32 239, i32 4}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/emu10k1/emuproc.c", i32 246, i32 4}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/emu10k1/emuproc.c", i32 248, i32 4}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/emu10k1/emuproc.c", i32 251, i32 46}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/emu10k1/emuproc.c", i32 252, i32 46}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/emu10k1/emuproc.c", i32 29, i32 43}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/emu10k1/emuproc.c", i32 29, i32 54}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/emu10k1/emuproc.c", i32 29, i32 63}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/emu10k1/emuproc.c", i32 29, i32 75}
!231 = !{ptr @snd_emu10k1_proc_spdif_status.clkaccy, !232, !"clkaccy", i1 false, i1 false}
!232 = !{!"../sound/pci/emu10k1/emuproc.c", i32 29, i32 28}
!233 = !{ptr @snd_emu10k1_proc_spdif_status.samplerate, !234, !"samplerate", i1 false, i1 false}
!234 = !{!"../sound/pci/emu10k1/emuproc.c", i32 30, i32 19}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 44}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 54}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 62}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 71}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 76}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 81}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 86}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 91}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 96}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 101}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 106}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 112}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 118}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 124}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 130}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 136}
!267 = !{ptr @snd_emu10k1_proc_spdif_status.channel, !268, !"channel", i1 false, i1 false}
!268 = !{!"../sound/pci/emu10k1/emuproc.c", i32 31, i32 28}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/emu10k1/emuproc.c", i32 32, i32 44}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/pci/emu10k1/emuproc.c", i32 32, i32 52}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/pci/emu10k1/emuproc.c", i32 32, i32 76}
!275 = !{ptr @snd_emu10k1_proc_spdif_status.emphasis, !276, !"emphasis", i1 false, i1 false}
!276 = !{!"../sound/pci/emu10k1/emuproc.c", i32 32, i32 28}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/emu10k1/emuproc.c", i32 37, i32 2}
!279 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/emu10k1/emuproc.c", i32 40, i32 3}
!281 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/emu10k1/emuproc.c", i32 41, i32 3}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/pci/emu10k1/emuproc.c", i32 42, i32 3}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/pci/emu10k1/emuproc.c", i32 43, i32 3}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/emu10k1/emuproc.c", i32 44, i32 3}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/pci/emu10k1/emuproc.c", i32 45, i32 3}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/pci/emu10k1/emuproc.c", i32 46, i32 3}
!295 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.145, !294, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.146, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/pci/emu10k1/emuproc.c", i32 47, i32 3}
!299 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/pci/emu10k1/emuproc.c", i32 48, i32 3}
!301 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/pci/emu10k1/emuproc.c", i32 49, i32 3}
!303 = !{ptr @.str.149, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/pci/emu10k1/emuproc.c", i32 50, i32 3}
!305 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/emu10k1/emuproc.c", i32 54, i32 4}
!307 = !{ptr @.str.151, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/emu10k1/emuproc.c", i32 55, i32 4}
!311 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/pci/emu10k1/emuproc.c", i32 56, i32 4}
!313 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/emu10k1/emuproc.c", i32 58, i32 4}
!315 = !{ptr @.str.156, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/pci/emu10k1/emuproc.c", i32 61, i32 3}
!317 = !{ptr @snd_emu10k1_proc_rates_read.samplerate, !318, !"samplerate", i1 false, i1 false}
!318 = !{!"../sound/pci/emu10k1/emuproc.c", i32 265, i32 19}
!319 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/pci/emu10k1/emuproc.c", i32 271, i32 18}
!321 = !{ptr @.str.158, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/pci/emu10k1/emuproc.c", i32 272, i32 8}
!323 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/pci/emu10k1/emuproc.c", i32 369, i32 2}
!325 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/pci/emu10k1/emuproc.c", i32 372, i32 3}
!327 = !{ptr @snd_emu10k1_proc_ops_fx8010, !328, !"snd_emu10k1_proc_ops_fx8010", i1 false, i1 false}
!328 = !{!"../sound/pci/emu10k1/emuproc.c", i32 548, i32 40}
!329 = distinct !{null, !330, !"__already_done", i1 false, i1 false}
!330 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!331 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.162, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!334 = !{ptr @.str.163, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!336 = !{ptr @.str.164, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/emu10k1/emuproc.c", i32 282, i32 2}
!338 = !{ptr @.str.165, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/emu10k1/emuproc.c", i32 283, i32 2}
!340 = !{ptr @.str.166, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/pci/emu10k1/emuproc.c", i32 290, i32 4}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!351 = !{!"auto-init"}
!352 = !{i64 6619057}
!353 = !{i64 2154461161}
!354 = !{i64 2154461878}
!355 = !{i64 6618639}
!356 = !{i64 2154463692}
!357 = !{i64 2154464322}
!358 = !{i64 2154464825}
!359 = !{!"branch_weights", i32 2000, i32 1}
!360 = !{i64 2153297592, i64 2153297617}
