; ModuleID = '/llk/IR_all_yes/sound/pci/ac97/ac97_proc.c_pt.bc'
source_filename = "../sound/pci/ac97/ac97_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.74 = type { i32, [28 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mc97\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s#%d-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s#%d-%d+regs\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"codec97#%d\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AAD18XX configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unchained        : 0x%04x,0x%04x,0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Chained          : 0x%04x,0x%04x,0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_main.spdif_slots = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" SPDIF=3/4\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" SPDIF=7/8\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" SPDIF=6/9\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" SPDIF=10/11\00", [19 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_main.spdif_rates = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" Rate=44.1kHz\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Rate=res\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" Rate=48kHz\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" Rate=32kHz\00", [20 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_main.spdif_rates_cs4205 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.13, ptr @.str.14, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_main.double_rate_slots = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10/11\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7/8\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d-%d/%d: %s\0A\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI Subsys Vendor: 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCI Subsys Device: 0x%04x\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Flags: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Revision         : 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compat. Class    : 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Subsys. Vendor ID: 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Subsys. ID       : 0x%04x\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Capabilities     :%s%s%s%s%s%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" -dedicated MIC PCM IN channel-\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" -reserved1-\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" -bass & treble-\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" -simulated stereo-\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" -headphone out-\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" -loudness-\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC resolution   : %s%s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"18-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"20-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC resolution   : %s%s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"3D enhancement   : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ac97_stereo_enhancements = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0ACurrent setup\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mic gain         : %s [%s]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+20dB\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+0dB\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"POP path         : %s 3D\0ASim. stereo      : %s\0A3D enhancement   : %s\0ALoudness         : %s\0AMono output      : %s\0AMic select       : %s\0AADC/DAC loopback : %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"post\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pre\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIX\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mic2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mic1\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Double rate slots: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Extended ID      : codec=%i rev=%i%s%s%s%s DSA=%i%s%s%s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" AMAP\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" LDAC\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" SDAC\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CDAC\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" VRM\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" SPDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DRA\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" VRA\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Extended status  :%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PRL\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PRK\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PRJ\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PRI\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" SPCV\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" MADC\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM front DAC    : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Surr DAC     : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM LFE DAC      : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM ADC          : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM MIC ADC      : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SPDIF Control    :%s%s%s%s Category=0x%x Generation=%i%s%s%s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PRO\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Consumer\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Non-audio\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PCM\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Copyright\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" Preemph50/15\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Validity\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DRS\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Enabled\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SPDIF In Status  :%s%s%s%s Category=0x%x Generation=%i\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s Accuracy=%i%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Locked\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Unlocked\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Validity?\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SPDIF In Status  : Not Locked\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Extended modem ID: codec=%i%s%s%s%s%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CID2\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CID1\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" HSET\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" LIN2\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" LIN1\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Modem status     :%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" GPIO\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" MREF\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ADC1\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DAC1\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ADC2\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" DAC2\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" HADC\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" HDAC\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRA(GPIO)\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" PRB(res)\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRC(ADC1)\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRD(DAC1)\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRE(ADC2)\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRF(DAC2)\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRG(HADC)\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PRH(HDAC)\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line1 rate       : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line2 rate       : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headset rate     : %iHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No 3D Stereo Enhancement\00", [39 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Analog Devices Phat Stereo\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Creative Stereo Enhancement\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"National Semi 3D Stereo Enhancement\00", [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YAMAHA Ymersion\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BBE 3D Stereo Enhancement\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Crystal Semi 3D Stereo Enhancement\00", [61 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Qsound QXpander\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Spatializer 3D Stereo Enhancement\00", [62 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SRS 3D Stereo Enhancement\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Platform Tech 3D Stereo Enhancement\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AKM 3D Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Aureal Stereo Enhancement\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Aztech 3D Enhancement\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Binaura 3D Audio Enhancement\00", [35 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ESS Technology Stereo Enhancement\00", [62 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Harman International VMAx\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Nvidea/IC Ensemble/KS Waves 3D Stereo Enhancement\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Philips Incredible Sound\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Texas Instruments 3D Stereo Enhancement\00", [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VLSI Technology 3D Stereo Enhancement\00", [58 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TriTech 3D Stereo Enhancement\00", [34 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Realtek 3D Stereo Enhancement\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Samsung 3D Stereo Enhancement\00", [34 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Wolfson Microelectronics 3D Enhancement\00", [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Delta Integration 3D Enhancement\00", [63 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SigmaTel 3D Enhancement\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IC Ensemble/KS Waves\00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Rockwell 3D Stereo Enhancement\00", [33 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Reserved 29\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Reserved 30\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Reserved 31\00", [20 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_functions.function_names = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Master Out\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AUX Out\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Center/LFE Out\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIF Out\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Phone In\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 1\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 2\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CD In\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Video In\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Aux In\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Out\00", [23 x i8] zeroinitializer }, align 32
@snd_ac97_proc_read_functions.locations = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.19, ptr @.str.19, ptr @.str.19, ptr @.str.168], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Rear I/O Panel\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Panel\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Motherboard\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dock/External\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NC/unused\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0A                    Gain     Inverted  Buffer delay  Location\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%-17s: %3d.%d dBV    %c      %2d/fs         %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%i:%02x = %04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 422, i32 33 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 422, i32 42 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 423, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 429, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 455, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 341, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 346, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 347, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 351, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"spdif_slots\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 96, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 96, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 96, i32 54 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 96, i32 68 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 96, i32 82 }
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"spdif_rates\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 97, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 97, i32 40 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 97, i32 57 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 97, i32 70 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 97, i32 85 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"spdif_rates_cs4205\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 98, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"double_rate_slots\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 99, i32 21 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 99, i32 46 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 99, i32 55 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 99, i32 62 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 102, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 107, i32 9 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 109, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 112, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 119, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 120, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 121, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 123, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 131, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 139, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 145, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 150, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [29 x i8] c"snd_ac97_stereo_enhancements\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 56, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 152, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 154, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 156, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 171, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 178, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 191, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 208, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 211, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 215, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 218, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 222, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 234, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 256, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 264, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 270, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 289, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 297, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 316, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 320, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 324, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 58, i32 13 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 59, i32 13 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 60, i32 13 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 61, i32 13 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 62, i32 13 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 63, i32 13 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 64, i32 13 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 65, i32 13 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 66, i32 13 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 67, i32 13 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 68, i32 13 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 69, i32 13 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 70, i32 13 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 71, i32 13 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 72, i32 13 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 73, i32 13 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 74, i32 13 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 75, i32 13 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 76, i32 13 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 77, i32 13 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 78, i32 13 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 79, i32 13 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 80, i32 13 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 81, i32 13 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 82, i32 13 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 83, i32 13 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 84, i32 13 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 85, i32 13 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 86, i32 13 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 87, i32 13 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 88, i32 13 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 89, i32 13 }
@___asan_gen_.644 = private unnamed_addr constant [15 x i8] c"function_names\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 26, i32 21 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 27, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 27, i32 17 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 27, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 27, i32 46 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 15 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 24 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 33 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 44 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 28, i32 53 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 29, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 29, i32 13 }
@___asan_gen_.683 = private unnamed_addr constant [10 x i8] c"locations\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 31, i32 21 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 32, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 32, i32 21 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 32, i32 36 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 32, i32 51 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 33, i32 39 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 42, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 46, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 386, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.711 = private constant [30 x i8] c"../sound/pci/ac97/ac97_proc.c\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 370, i32 20 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_ac97_proc_read_main.spdif_slots, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @snd_ac97_proc_read_main.spdif_rates, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @snd_ac97_proc_read_main.spdif_rates_cs4205, ptr @snd_ac97_proc_read_main.double_rate_slots, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @snd_ac97_stereo_enhancements, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @snd_ac97_proc_read_functions.function_names, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @snd_ac97_proc_read_functions.locations, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_main.spdif_slots to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_main.spdif_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_main.spdif_rates_cs4205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_main.double_rate_slots to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_stereo_enhancements to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_functions.function_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_proc_read_functions.locations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ac97_proc_init(ptr noundef %ac97) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #4
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %proc = getelementptr inbounds %struct.snd_ac97_bus, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %scaps.i = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 18
  %5 = ptrtoint ptr %scaps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scaps.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.not, ptr @.str.1, ptr @.str
  %addr = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 12
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv = zext i16 %8 to i32
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num, align 8
  %conv2 = zext i16 %10 to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv2)
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %card = getelementptr inbounds %struct.snd_ac97_bus, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %proc7 = getelementptr inbounds %struct.snd_ac97_bus, ptr %12, i32 0, i32 12
  %15 = ptrtoint ptr %proc7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proc7, align 4
  %call8 = call ptr @snd_info_create_card_entry(ptr noundef %14, ptr noundef nonnull %name, ptr noundef %16) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %private_data2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call8, i32 0, i32 7
  %17 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ac97, ptr %private_data2.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call8, i32 0, i32 4
  %18 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_ac97_proc_read, ptr %c.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %proc12 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 5
  %19 = ptrtoint ptr %proc12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %proc12, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  %conv15 = zext i16 %21 to i32
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num, align 8
  %conv17 = zext i16 %23 to i32
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, i32 noundef %conv15, i32 noundef %conv17)
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %card20 = getelementptr inbounds %struct.snd_ac97_bus, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card20, align 4
  %proc23 = getelementptr inbounds %struct.snd_ac97_bus, ptr %25, i32 0, i32 12
  %28 = ptrtoint ptr %proc23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %proc23, align 4
  %call24 = call ptr @snd_info_create_card_entry(ptr noundef %27, ptr noundef nonnull %name, ptr noundef %29) #4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end11.if.end29_crit_edge, label %if.then26

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then26:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %private_data2.i53 = getelementptr inbounds %struct.snd_info_entry, ptr %call24, i32 0, i32 7
  %30 = ptrtoint ptr %private_data2.i53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ac97, ptr %private_data2.i53, align 4
  %c.i54 = getelementptr inbounds %struct.snd_info_entry, ptr %call24, i32 0, i32 4
  %31 = ptrtoint ptr %c.i54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @snd_ac97_proc_regs_read, ptr %c.i54, align 4
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call24, i32 0, i32 1
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode, align 4
  %34 = or i16 %33, 128
  store i16 %34, ptr %mode, align 4
  %write = getelementptr inbounds %struct.snd_info_entry, ptr %call24, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @snd_ac97_proc_regs_write, ptr %write, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end11.if.end29_crit_edge
  %proc_regs = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 6
  %36 = ptrtoint ptr %proc_regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call24, ptr %proc_regs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ac97_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %page_mutex = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #4
  %id = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %and = and i32 %3, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094996800, i32 %and)
  %cmp = icmp eq i32 %and, 1094996800
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %id3 = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 8
  %spec = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24
  %chained = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 2
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then4:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %spec, align 2
  %8 = ptrtoint ptr %chained to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chained, align 2
  %or67 = or i16 %9, %7
  %call = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or67) #4
  tail call fastcc void @snd_ac97_proc_read_main(ptr noundef %1, ptr noundef %buffer, i32 noundef 0)
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 10
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.1 = icmp eq i16 %13, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1 = getelementptr [3 x i16], ptr %spec, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6.1, align 2
  %arrayidx8.1 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx8.1, align 2
  %or67.1 = or i16 %17, %15
  %call.1 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or67.1) #4
  tail call fastcc void @snd_ac97_proc_read_main(ptr noundef %1, ptr noundef %buffer, i32 noundef 1)
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.5) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 12
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.2 = icmp eq i16 %21, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1
  %22 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx6.2, align 2
  %arrayidx8.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 6
  %24 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx8.2, align 2
  %or67.2 = or i16 %25, %23
  %call.2 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or67.2) #4
  tail call fastcc void @snd_ac97_proc_read_main(ptr noundef %1, ptr noundef %buffer, i32 noundef 2)
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.5) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %call12 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext 28672) #4
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.6) #4
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %32 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %spec, align 8
  %conv18 = zext i16 %33 to i32
  %arrayidx21 = getelementptr [3 x i16], ptr %spec, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %35 to i32
  %arrayidx25 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx25, align 4
  %conv26 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef %conv18, i32 noundef %conv22, i32 noundef %conv26) #4
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %40 = ptrtoint ptr %chained to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %chained, align 2
  %conv31 = zext i16 %41 to i32
  %arrayidx34 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 4
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %43 to i32
  %arrayidx38 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 6
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef %conv31, i32 noundef %conv35, i32 noundef %conv39) #4
  br label %if.end40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @snd_ac97_proc_read_main(ptr noundef %1, ptr noundef %buffer, i32 noundef 0)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.inc.2
  tail call void @mutex_unlock(ptr noundef %page_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ac97_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %page_mutex = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #4
  %id = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %and = and i32 %3, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094996800, i32 %and)
  %cmp = icmp eq i32 %and, 1094996800
  br i1 %cmp, label %for.cond.preheader, label %entry.for.body.i36_crit_edge

entry.for.body.i36_crit_edge:                     ; preds = %entry
  br label %for.body.i36

for.cond.preheader:                               ; preds = %entry
  %id3 = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 8
  %spec = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then4:                                         ; preds = %for.cond.preheader
  %chained = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 2
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %spec, align 2
  %8 = ptrtoint ptr %chained to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chained, align 2
  %or29 = or i16 %9, %7
  %call = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or29) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4
  %reg.06.i = phi i32 [ 0, %if.then4 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %reg.06.i to i16
  %call.i = tail call zeroext i16 @snd_ac97_read(ptr noundef %1, i16 noundef zeroext %conv.i) #4
  %conv1.i = zext i16 %call.i to i32
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.171, i32 noundef 0, i32 noundef %reg.06.i, i32 noundef %conv1.i) #4
  %add.i = add nuw nsw i32 %reg.06.i, 2
  %cmp.i = icmp ult i32 %reg.06.i, 126
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc:                                          ; preds = %for.body.i.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 10
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.1 = icmp eq i16 %13, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  %arrayidx6.1 = getelementptr [3 x i16], ptr %spec, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6.1, align 2
  %arrayidx8.1 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx8.1, align 2
  %or29.1 = or i16 %17, %15
  %call.1 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or29.1) #4
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %if.then4.1
  %reg.06.i.1 = phi i32 [ 0, %if.then4.1 ], [ %add.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %conv.i.1 = trunc i32 %reg.06.i.1 to i16
  %call.i.1 = tail call zeroext i16 @snd_ac97_read(ptr noundef %1, i16 noundef zeroext %conv.i.1) #4
  %conv1.i.1 = zext i16 %call.i.1 to i32
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.171, i32 noundef 1, i32 noundef %reg.06.i.1, i32 noundef %conv1.i.1) #4
  %add.i.1 = add nuw nsw i32 %reg.06.i.1, 2
  %cmp.i.1 = icmp ult i32 %reg.06.i.1, 126
  br i1 %cmp.i.1, label %for.body.i.1.for.body.i.1_crit_edge, label %for.body.i.1.for.inc.1_crit_edge

for.body.i.1.for.inc.1_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.1

for.inc.1:                                        ; preds = %for.body.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 12
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.2 = icmp eq i16 %21, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  %arrayidx6.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1
  %22 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx6.2, align 2
  %arrayidx8.2 = getelementptr %struct.snd_ac97, ptr %1, i32 0, i32 24, i32 1, i32 6
  %24 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx8.2, align 2
  %or29.2 = or i16 %25, %23
  %call.2 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext %or29.2) #4
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %if.then4.2
  %reg.06.i.2 = phi i32 [ 0, %if.then4.2 ], [ %add.i.2, %for.body.i.2.for.body.i.2_crit_edge ]
  %conv.i.2 = trunc i32 %reg.06.i.2 to i16
  %call.i.2 = tail call zeroext i16 @snd_ac97_read(ptr noundef %1, i16 noundef zeroext %conv.i.2) #4
  %conv1.i.2 = zext i16 %call.i.2 to i32
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.171, i32 noundef 2, i32 noundef %reg.06.i.2, i32 noundef %conv1.i.2) #4
  %add.i.2 = add nuw nsw i32 %reg.06.i.2, 2
  %cmp.i.2 = icmp ult i32 %reg.06.i.2, 126
  br i1 %cmp.i.2, label %for.body.i.2.for.body.i.2_crit_edge, label %for.body.i.2.for.inc.2_crit_edge

for.body.i.2.for.inc.2_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.2

for.inc.2:                                        ; preds = %for.body.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call11 = tail call i32 @snd_ac97_update_bits(ptr noundef %1, i16 noundef zeroext 116, i16 noundef zeroext 28672, i16 noundef zeroext 28672) #4
  br label %if.end12

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %entry.for.body.i36_crit_edge
  %reg.06.i30 = phi i32 [ %add.i34, %for.body.i36.for.body.i36_crit_edge ], [ 0, %entry.for.body.i36_crit_edge ]
  %conv.i31 = trunc i32 %reg.06.i30 to i16
  %call.i32 = tail call zeroext i16 @snd_ac97_read(ptr noundef %1, i16 noundef zeroext %conv.i31) #4
  %conv1.i33 = zext i16 %call.i32 to i32
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.171, i32 noundef 0, i32 noundef %reg.06.i30, i32 noundef %conv1.i33) #4
  %add.i34 = add nuw nsw i32 %reg.06.i30, 2
  %cmp.i35 = icmp ult i32 %reg.06.i30, 126
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.if.end12_crit_edge

for.body.i36.if.end12_crit_edge:                  ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i36

if.end12:                                         ; preds = %for.body.i36.if.end12_crit_edge, %for.inc.2
  tail call void @mutex_unlock(ptr noundef %page_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ac97_proc_regs_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #4
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !301
  %page_mutex = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #4
  %call15 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not16 = icmp eq i32 %call15, 0
  br i1 %tobool.not16, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.172, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = and i32 %6, -127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %land.lhs.true6, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

land.lhs.true6:                                   ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp7 = icmp ult i32 %10, 65536
  br i1 %cmp7, label %if.then8, label %land.lhs.true6.while.cond.backedge_crit_edge

land.lhs.true6.while.cond.backedge_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %6 to i16
  %conv9 = trunc i32 %10 to i16
  call void @snd_ac97_write_cache(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv9) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then8, %land.lhs.true6.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %page_mutex) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ac97_proc_done(ptr nocapture noundef %ac97) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_regs = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 6
  %0 = ptrtoint ptr %proc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_regs, align 8
  tail call void @snd_info_free_entry(ptr noundef %1) #4
  %2 = ptrtoint ptr %proc_regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %proc_regs, align 8
  %proc = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 5
  %3 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc, align 4
  tail call void @snd_info_free_entry(ptr noundef %4) #4
  %5 = ptrtoint ptr %proc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %proc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ac97_bus_proc_init(ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #4
  %num = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 4
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num, align 4
  %conv = zext i16 %2 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, i32 noundef %conv)
  %card = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 3
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %proc_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_root, align 8
  %call4 = call ptr @snd_info_create_card_entry(ptr noundef %4, ptr noundef nonnull %name, ptr noundef %6) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16749, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %proc = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 12
  %8 = ptrtoint ptr %proc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %proc, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ac97_bus_proc_done(ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %proc = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc, align 4
  tail call void @snd_info_free_entry(ptr noundef %1) #4
  %2 = ptrtoint ptr %proc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %proc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ac97_proc_read_main(ptr noundef %ac97, ptr noundef readonly %buffer, i32 noundef %subidx) unnamed_addr #0 align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #4
  %0 = call ptr @memset(ptr %name, i32 255, i32 64)
  %id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 13
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @snd_ac97_get_name(ptr noundef null, i32 noundef %2, ptr noundef nonnull %name, i32 noundef 0) #4
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %addr = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 12
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv = zext i16 %6 to i32
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num, align 8
  %conv2 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv2, i32 noundef %subidx, ptr noundef nonnull %name) #4
  %scaps = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 18
  %9 = ptrtoint ptr %scaps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scaps, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.__modem_crit_edge, label %if.end

entry.__modem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__modem

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %subsystem_vendor = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 7
  %13 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor, align 4
  %conv6 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %conv6) #4
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %subsystem_device = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 8
  %17 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %subsystem_device, align 2
  %conv8 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %conv8) #4
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %flags = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 19
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.23, i32 noundef %22) #4
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 15
  %23 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ext_id, align 2
  %25 = and i16 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp12.not = icmp eq i16 %25, 0
  br i1 %cmp12.not, label %if.end.if.end33_crit_edge, label %if.then14

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 36) #4
  %call15 = call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 36, i16 noundef zeroext 15, i16 noundef zeroext 1) #4
  %call16 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 96) #4
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %conv18 = zext i16 %call16 to i32
  %and19 = and i32 %conv18, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.24, i32 noundef %and19) #4
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %30 = lshr i32 %conv18, 8
  %and22 = and i32 %30, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.25, i32 noundef %and22) #4
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %call24 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 98) #4
  %conv25 = zext i16 %call24 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.26, i32 noundef %conv25) #4
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %call27 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 100) #4
  %conv28 = zext i16 %call27 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.27, i32 noundef %conv28) #4
  %35 = and i16 %call, 15
  %call32 = call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 36, i16 noundef zeroext 15, i16 noundef zeroext %35) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then14, %if.end.if.end33_crit_edge
  %caps = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 14
  %36 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %caps, align 8
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %conv35 = zext i16 %37 to i32
  %and36 = and i32 %conv35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not = icmp eq i32 %and36, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %and38 = and i32 %conv35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.30, ptr @.str.31
  %and42 = and i32 %conv35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.30, ptr @.str.32
  %and46 = and i32 %conv35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.30, ptr @.str.33
  %and50 = and i32 %conv35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.30, ptr @.str.34
  %and54 = and i32 %conv35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.30, ptr @.str.35
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond, ptr noundef nonnull %cond40, ptr noundef nonnull %cond44, ptr noundef nonnull %cond48, ptr noundef nonnull %cond52, ptr noundef nonnull %cond56) #4
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %caps, align 8
  %42 = and i16 %41, 192
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp63 = icmp eq i16 %42, 0
  %cond65 = select i1 %cmp63, ptr @.str.37, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %42)
  %cmp67 = icmp eq i16 %42, 64
  %cond69 = select i1 %cmp67, ptr @.str.38, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %42)
  %cmp71 = icmp eq i16 %42, 128
  %cond73 = select i1 %cmp71, ptr @.str.39, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %42)
  %cmp75 = icmp eq i16 %42, 192
  %cond77 = select i1 %cmp75, ptr @.str.40, ptr @.str.30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond65, ptr noundef nonnull %cond69, ptr noundef nonnull %cond73, ptr noundef nonnull %cond77) #4
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %caps, align 8
  %47 = and i16 %46, 768
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp84 = icmp eq i16 %47, 0
  %cond86 = select i1 %cmp84, ptr @.str.37, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %47)
  %cmp88 = icmp eq i16 %47, 256
  %cond90 = select i1 %cmp88, ptr @.str.38, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %47)
  %cmp92 = icmp eq i16 %47, 512
  %cond94 = select i1 %cmp92, ptr @.str.39, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %47)
  %cmp96 = icmp eq i16 %47, 768
  %cond98 = select i1 %cmp96, ptr @.str.40, ptr @.str.30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond86, ptr noundef nonnull %cond90, ptr noundef nonnull %cond94, ptr noundef nonnull %cond98) #4
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  %52 = lshr i32 %conv35, 10
  %and102 = and i32 %52, 31
  %arrayidx = getelementptr [32 x ptr], ptr @snd_ac97_stereo_enhancements, i32 0, i32 %and102
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.42, ptr noundef %54) #4
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.43) #4
  %call104 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 14) #4
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %59 = and i16 %call104, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool108.not = icmp eq i16 %59, 0
  %cond109 = select i1 %tobool108.not, ptr @.str.46, ptr @.str.45
  %arrayidx110 = getelementptr %struct.snd_ac97, ptr %ac97, i32 0, i32 22, i32 14
  %60 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx110, align 4
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool113.not = icmp eq i16 %62, 0
  %cond114 = select i1 %tobool113.not, ptr @.str.46, ptr @.str.45
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond109, ptr noundef nonnull %cond114) #4
  %call115 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 32) #4
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  %conv117 = zext i16 %call115 to i32
  %and118 = and i32 %conv117, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %cond120 = select i1 %tobool119.not, ptr @.str.49, ptr @.str.48
  %and122 = and i32 %conv117, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %cond124 = select i1 %tobool123.not, ptr @.str.51, ptr @.str.50
  %and126 = and i32 %conv117, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %cond128 = select i1 %tobool127.not, ptr @.str.51, ptr @.str.50
  %and130 = and i32 %conv117, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %cond132 = select i1 %tobool131.not, ptr @.str.51, ptr @.str.50
  %and134 = and i32 %conv117, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  %cond136 = select i1 %tobool135.not, ptr @.str.53, ptr @.str.52
  %and138 = and i32 %conv117, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.55, ptr @.str.54
  %and142 = and i32 %conv117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  %cond144 = select i1 %tobool143.not, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond120, ptr noundef nonnull %cond124, ptr noundef nonnull %cond128, ptr noundef nonnull %cond132, ptr noundef nonnull %cond136, ptr noundef nonnull %cond140, ptr noundef nonnull %cond144) #4
  %65 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ext_id, align 2
  %67 = and i16 %66, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool148.not = icmp eq i16 %67, 0
  br i1 %tobool148.not, label %if.end33.if.end155_crit_edge, label %if.then149

if.end33.if.end155_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end155

if.then149:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %70 = lshr i32 %conv117, 10
  %and153 = and i32 %70, 3
  %arrayidx154 = getelementptr [4 x ptr], ptr @snd_ac97_proc_read_main.double_rate_slots, i32 0, i32 %and153
  %71 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx154, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.56, ptr noundef %72) #4
  br label %if.end155

if.end155:                                        ; preds = %if.then149, %if.end33.if.end155_crit_edge
  %call156 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 40) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call156)
  %cmp158 = icmp eq i16 %call156, 0
  br i1 %cmp158, label %if.end155.__modem_crit_edge, label %if.end161

if.end155.__modem_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %__modem

if.end161:                                        ; preds = %if.end155
  %conv157 = zext i16 %call156 to i32
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  %75 = lshr i32 %conv157, 14
  %and167 = lshr i32 %conv157, 10
  %76 = and i32 %and167, 3
  %and170 = and i32 %conv157, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  %cond172 = select i1 %tobool171.not, ptr @.str.30, ptr @.str.58
  %and174 = and i32 %conv157, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  %cond176 = select i1 %tobool175.not, ptr @.str.30, ptr @.str.59
  %and178 = and i32 %conv157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  %cond180 = select i1 %tobool179.not, ptr @.str.30, ptr @.str.60
  %and182 = and i32 %conv157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  %cond184 = select i1 %tobool183.not, ptr @.str.30, ptr @.str.61
  %and186 = lshr i32 %conv157, 4
  %77 = and i32 %and186, 3
  %and189 = and i32 %conv157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  %cond191 = select i1 %tobool190.not, ptr @.str.30, ptr @.str.62
  %and193 = and i32 %conv157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  %cond195 = select i1 %tobool194.not, ptr @.str.30, ptr @.str.63
  %and197 = and i32 %conv157, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  %cond199 = select i1 %tobool198.not, ptr @.str.30, ptr @.str.64
  %and201 = and i32 %conv157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  %cond203 = select i1 %tobool202.not, ptr @.str.30, ptr @.str.65
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.57, i32 noundef %75, i32 noundef %76, ptr noundef nonnull %cond172, ptr noundef nonnull %cond176, ptr noundef nonnull %cond180, ptr noundef nonnull %cond184, i32 noundef %77, ptr noundef nonnull %cond191, ptr noundef nonnull %cond195, ptr noundef nonnull %cond199, ptr noundef nonnull %cond203) #4
  %call204 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 42) #4
  %78 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer, align 4
  %conv206 = zext i16 %call204 to i32
  %and207 = and i32 %conv206, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  %cond209 = select i1 %tobool208.not, ptr @.str.30, ptr @.str.67
  %and211 = and i32 %conv206, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  %cond213 = select i1 %tobool212.not, ptr @.str.30, ptr @.str.68
  %and215 = and i32 %conv206, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  %cond217 = select i1 %tobool216.not, ptr @.str.30, ptr @.str.69
  %and219 = and i32 %conv206, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  %cond221 = select i1 %tobool220.not, ptr @.str.30, ptr @.str.70
  %and223 = and i32 %conv206, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %cond225 = select i1 %tobool224.not, ptr @.str.30, ptr @.str.71
  %and227 = and i32 %conv206, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  %cond229 = select i1 %tobool228.not, ptr @.str.30, ptr @.str.72
  %and231 = and i32 %conv206, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  %cond233 = select i1 %tobool232.not, ptr @.str.30, ptr @.str.59
  %and235 = and i32 %conv206, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  %cond237 = select i1 %tobool236.not, ptr @.str.30, ptr @.str.60
  %and239 = and i32 %conv206, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  %cond241 = select i1 %tobool240.not, ptr @.str.30, ptr @.str.61
  br i1 %tobool194.not, label %if.end161.cond.end_crit_edge, label %cond.true

if.end161.cond.end_crit_edge:                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  %and246 = lshr i32 %conv206, 4
  %80 = and i32 %and246, 3
  %arrayidx248 = getelementptr [4 x ptr], ptr @snd_ac97_proc_read_main.spdif_slots, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx248, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end161.cond.end_crit_edge
  %cond249 = phi ptr [ %82, %cond.true ], [ @.str.30, %if.end161.cond.end_crit_edge ]
  %and251 = and i32 %conv206, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  %cond253 = select i1 %tobool252.not, ptr @.str.30, ptr @.str.62
  %and255 = and i32 %conv206, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  %cond257 = select i1 %tobool256.not, ptr @.str.30, ptr @.str.63
  %and259 = and i32 %conv206, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  %cond261 = select i1 %tobool260.not, ptr @.str.30, ptr @.str.64
  %and263 = and i32 %conv206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  %cond265 = select i1 %tobool264.not, ptr @.str.30, ptr @.str.65
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond209, ptr noundef nonnull %cond213, ptr noundef nonnull %cond217, ptr noundef nonnull %cond221, ptr noundef nonnull %cond225, ptr noundef nonnull %cond229, ptr noundef nonnull %cond233, ptr noundef nonnull %cond237, ptr noundef nonnull %cond241, ptr noundef %cond249, ptr noundef nonnull %cond253, ptr noundef nonnull %cond257, ptr noundef nonnull %cond261, ptr noundef nonnull %cond265) #4
  br i1 %tobool202.not, label %cond.end.if.end292_crit_edge, label %if.then269

cond.end.if.end292_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end292

if.then269:                                       ; preds = %cond.end
  %call270 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 44) #4
  %83 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer, align 4
  %conv272 = zext i16 %call270 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %84, ptr noundef nonnull @.str.73, i32 noundef %conv272) #4
  br i1 %tobool179.not, label %if.then269.if.end280_crit_edge, label %if.then276

if.then269.if.end280_crit_edge:                   ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end280

if.then276:                                       ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #6
  %call277 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 46) #4
  %85 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buffer, align 4
  %conv279 = zext i16 %call277 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %86, ptr noundef nonnull @.str.74, i32 noundef %conv279) #4
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.then269.if.end280_crit_edge
  br i1 %tobool175.not, label %if.end280.if.end288_crit_edge, label %if.then284

if.end280.if.end288_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end288

if.then284:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #6
  %call285 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 48) #4
  %87 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer, align 4
  %conv287 = zext i16 %call285 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.75, i32 noundef %conv287) #4
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.end280.if.end288_crit_edge
  %call289 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 50) #4
  %89 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer, align 4
  %conv291 = zext i16 %call289 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef nonnull @.str.76, i32 noundef %conv291) #4
  br label %if.end292

if.end292:                                        ; preds = %if.end288, %cond.end.if.end292_crit_edge
  br i1 %tobool190.not, label %if.end292.if.end300_crit_edge, label %if.then296

if.end292.if.end300_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.then296:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #6
  %call297 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 52) #4
  %91 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buffer, align 4
  %conv299 = zext i16 %call297 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %92, ptr noundef nonnull @.str.77, i32 noundef %conv299) #4
  br label %if.end300

if.end300:                                        ; preds = %if.then296, %if.end292.if.end300_crit_edge
  br i1 %tobool194.not, label %lor.lhs.false, label %if.end300.if.then311_crit_edge

if.end300.if.then311_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then311

lor.lhs.false:                                    ; preds = %if.end300
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 8
  %and305 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %lor.lhs.false307, label %lor.lhs.false.if.then311_crit_edge

lor.lhs.false.if.then311_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then311

lor.lhs.false307:                                 ; preds = %lor.lhs.false
  %95 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498236928, i32 %96)
  %cmp309 = icmp eq i32 %96, 1498236928
  br i1 %cmp309, label %lor.lhs.false307.if.then311_crit_edge, label %lor.lhs.false307.if.end461_crit_edge

lor.lhs.false307.if.end461_crit_edge:             ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end461

lor.lhs.false307.if.then311_crit_edge:            ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then311

if.then311:                                       ; preds = %lor.lhs.false307.if.then311_crit_edge, %lor.lhs.false.if.then311_crit_edge, %if.end300.if.then311_crit_edge
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 8
  %and313 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %if.else, label %if.then315

if.then315:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #6
  %call316 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 104) #4
  br label %if.end333

if.else:                                          ; preds = %if.then311
  %99 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498236928, i32 %100)
  %cmp318 = icmp eq i32 %100, 1498236928
  br i1 %cmp318, label %if.then320, label %if.else330

if.then320:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call321 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 102) #4
  %and323 = lshr i16 %call321, 4
  %101 = and i16 %and323, 4080
  %and326 = lshr i16 %call321, 2
  %102 = and i16 %and326, 14
  %or = or i16 %102, %101
  %or328 = or i16 %or, 8192
  br label %if.end333

if.else330:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call331 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 58) #4
  br label %if.end333

if.end333:                                        ; preds = %if.else330, %if.then320, %if.then315
  %val.0 = phi i16 [ %call316, %if.then315 ], [ %or328, %if.then320 ], [ %call331, %if.else330 ]
  %103 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffer, align 4
  %conv335 = zext i16 %val.0 to i32
  %and336 = and i32 %conv335, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  %cond338 = select i1 %tobool337.not, ptr @.str.80, ptr @.str.79
  %and340 = and i32 %conv335, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  %cond342 = select i1 %tobool341.not, ptr @.str.82, ptr @.str.81
  %and344 = and i32 %conv335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  %cond346 = select i1 %tobool345.not, ptr @.str.83, ptr @.str.30
  %and348 = and i32 %conv335, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  %cond350 = select i1 %tobool349.not, ptr @.str.30, ptr @.str.84
  %and352 = lshr i32 %conv335, 4
  %105 = and i32 %and352, 127
  %and355 = lshr i32 %conv335, 11
  %106 = and i32 %and355, 1
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 8
  %and358 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  %and362 = lshr i32 %conv335, 12
  %109 = and i32 %and362, 3
  %arrayidx364 = getelementptr [4 x ptr], ptr @snd_ac97_proc_read_main.spdif_rates_cs4205, i32 0, i32 %109
  %arrayidx369 = getelementptr [4 x ptr], ptr @snd_ac97_proc_read_main.spdif_rates, i32 0, i32 %109
  %cond371.in = select i1 %tobool359.not, ptr %arrayidx369, ptr %arrayidx364
  %110 = ptrtoint ptr %cond371.in to i32
  call void @__asan_load4_noabort(i32 %110)
  %cond371 = load ptr, ptr %cond371.in, align 4
  %and382 = and i32 %conv335, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  %.str.86..str.85 = select i1 %tobool359.not, ptr @.str.86, ptr @.str.85
  %.str.85..str.87 = select i1 %tobool359.not, ptr @.str.85, ptr @.str.87
  %cond384 = select i1 %tobool383.not, ptr @.str.30, ptr %.str.86..str.85
  %and397 = and i32 %conv335, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397)
  %tobool398.not = icmp eq i32 %and397, 0
  %cond399 = select i1 %tobool398.not, ptr @.str.30, ptr %.str.85..str.87
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %104, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond338, ptr noundef nonnull %cond342, ptr noundef nonnull %cond346, ptr noundef nonnull %cond350, i32 noundef %105, i32 noundef %106, ptr noundef %cond371, ptr noundef nonnull %cond384, ptr noundef nonnull %cond399) #4
  %111 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id, align 4
  %and403 = and i32 %112, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095517984, i32 %and403)
  %cmp404 = icmp eq i32 %and403, 1095517984
  br i1 %cmp404, label %land.lhs.true, label %if.end333.if.end461_crit_edge

if.end333.if.end461_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end461

land.lhs.true:                                    ; preds = %if.end333
  %call406 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 122) #4
  %113 = and i16 %call406, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool409.not = icmp eq i16 %113, 0
  br i1 %tobool409.not, label %land.lhs.true.if.end461_crit_edge, label %if.then410

land.lhs.true.if.end461_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end461

if.then410:                                       ; preds = %land.lhs.true
  %call411 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 98) #4
  %114 = and i16 %call411, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool414.not = icmp eq i16 %114, 0
  br i1 %tobool414.not, label %if.else457, label %if.then415

if.then415:                                       ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #6
  %call416 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 96) #4
  %115 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buffer, align 4
  %conv418 = zext i16 %call416 to i32
  %and419 = and i32 %conv418, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and419)
  %tobool420.not = icmp eq i32 %and419, 0
  %cond421 = select i1 %tobool420.not, ptr @.str.80, ptr @.str.79
  %and423 = and i32 %conv418, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  %cond425 = select i1 %tobool424.not, ptr @.str.82, ptr @.str.81
  %and427 = and i32 %conv418, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and427)
  %tobool428.not = icmp eq i32 %and427, 0
  %cond429 = select i1 %tobool428.not, ptr @.str.83, ptr @.str.30
  %and431 = and i32 %conv418, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and431)
  %tobool432.not = icmp eq i32 %and431, 0
  %cond433 = select i1 %tobool432.not, ptr @.str.30, ptr @.str.84
  %and435 = lshr i32 %conv418, 8
  %117 = and i32 %and435, 127
  %118 = lshr i32 %conv418, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %116, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond421, ptr noundef nonnull %cond425, ptr noundef nonnull %cond429, ptr noundef nonnull %cond433, i32 noundef %117, i32 noundef %118) #4
  %call440 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 98) #4
  %119 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer, align 4
  %conv442 = zext i16 %call440 to i32
  %and443 = lshr i32 %conv442, 8
  %121 = and i32 %and443, 15
  %arrayidx445 = getelementptr [4 x ptr], ptr @snd_ac97_proc_read_main.spdif_rates, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx445, align 4
  %and447 = lshr i32 %conv442, 12
  %124 = and i32 %and447, 3
  %and450 = and i32 %conv442, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and450)
  %tobool451.not = icmp eq i32 %and450, 0
  %cond452 = select i1 %tobool451.not, ptr @.str.91, ptr @.str.90
  %and454 = and i32 %conv442, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  %cond456 = select i1 %tobool455.not, ptr @.str.30, ptr @.str.92
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %120, ptr noundef nonnull @.str.89, ptr noundef %123, i32 noundef %124, ptr noundef nonnull %cond452, ptr noundef nonnull %cond456) #4
  br label %if.end461

if.else457:                                       ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #6
  %125 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %126, ptr noundef nonnull @.str.93) #4
  br label %if.end461

if.end461:                                        ; preds = %if.else457, %if.then415, %land.lhs.true.if.end461_crit_edge, %if.end333.if.end461_crit_edge, %lor.lhs.false307.if.end461_crit_edge
  %127 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ext_id, align 2
  %129 = and i16 %128, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp465.not = icmp eq i16 %129, 0
  br i1 %cmp465.not, label %if.end461.__modem_crit_edge, label %if.then467

if.end461.__modem_crit_edge:                      ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #6
  br label %__modem

if.then467:                                       ; preds = %if.end461
  %call468 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 36) #4
  %call469 = call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 36, i16 noundef zeroext 15, i16 noundef zeroext 1) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then467
  %function.041.i = phi i32 [ 0, %if.then467 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %header.040.i = phi i32 [ 0, %if.then467 ], [ %header.2.i, %for.inc.i.for.body.i_crit_edge ]
  %function.0.tr.i = trunc i32 %function.041.i to i16
  %conv.i = shl i16 %function.0.tr.i, 1
  call void @snd_ac97_write(ptr noundef %ac97, i16 noundef zeroext 102, i16 noundef zeroext %conv.i) #4
  %call.i = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 104) #4
  %conv1.i = zext i16 %call.i to i32
  %and.i = and i32 %conv1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %header.040.i)
  %tobool2.not.i = icmp eq i32 %header.040.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %130 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %131, ptr noundef nonnull @.str.169) #4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 106) #4
  %132 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr [12 x ptr], ptr @snd_ac97_proc_read_functions.function_names, i32 0, i32 %function.041.i
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i, align 4
  %and9.i = and i32 %conv1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and12.i = lshr i32 %conv1.i, 12
  %136 = and i32 %and12.i, 7
  %137 = sub nsw i32 0, %136
  %138 = select i1 %tobool10.not.i, i32 %136, i32 %137
  %139 = trunc i32 %138 to i8
  %div.lhs.trunc.i = mul nsw i8 %139, 3
  %div39.i = sdiv i8 %div.lhs.trunc.i, 2
  %div.sext.i = sext i8 %div39.i to i32
  %and15.i = lshr i32 %conv1.i, 11
  %140 = and i32 %and15.i, 1
  %mul17.i = mul nuw nsw i32 %140, 5
  %and19.i = and i32 %conv1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, i32 45, i32 88
  %and23.i = lshr i32 %conv1.i, 5
  %141 = and i32 %and23.i, 31
  %142 = lshr i16 %call6.i, 13
  %143 = zext i16 %142 to i32
  %arrayidx27.i = getelementptr [8 x ptr], ptr @snd_ac97_proc_read_functions.locations, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx27.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %133, ptr noundef nonnull @.str.170, ptr noundef %135, i32 noundef %div.sext.i, i32 noundef %mul17.i, i32 noundef %cond21.i, i32 noundef %141, ptr noundef %145) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %header.2.i = phi i32 [ 1, %if.end5.i ], [ %header.040.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %function.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %snd_ac97_proc_read_functions.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

snd_ac97_proc_read_functions.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %146 = and i16 %call468, 15
  %call473 = call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 36, i16 noundef zeroext 15, i16 noundef zeroext %146) #4
  br label %__modem

__modem:                                          ; preds = %snd_ac97_proc_read_functions.exit, %if.end461.__modem_crit_edge, %if.end155.__modem_crit_edge, %entry.__modem_crit_edge
  %call475 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 60) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call475)
  %cmp477 = icmp eq i16 %call475, 0
  br i1 %cmp477, label %__modem.cleanup_crit_edge, label %if.end480

__modem.cleanup_crit_edge:                        ; preds = %__modem
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end480:                                        ; preds = %__modem
  %conv476 = zext i16 %call475 to i32
  %147 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %buffer, align 4
  %149 = lshr i32 %conv476, 14
  %and486 = and i32 %conv476, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and486)
  %tobool487.not = icmp eq i32 %and486, 0
  %cond488 = select i1 %tobool487.not, ptr @.str.30, ptr @.str.95
  %and490 = and i32 %conv476, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and490)
  %tobool491.not = icmp eq i32 %and490, 0
  %cond492 = select i1 %tobool491.not, ptr @.str.30, ptr @.str.96
  %and494 = and i32 %conv476, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and494)
  %tobool495.not = icmp eq i32 %and494, 0
  %cond496 = select i1 %tobool495.not, ptr @.str.30, ptr @.str.97
  %and498 = and i32 %conv476, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and498)
  %tobool499.not = icmp eq i32 %and498, 0
  %cond500 = select i1 %tobool499.not, ptr @.str.30, ptr @.str.98
  %and502 = and i32 %conv476, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502)
  %tobool503.not = icmp eq i32 %and502, 0
  %cond504 = select i1 %tobool503.not, ptr @.str.30, ptr @.str.99
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %148, ptr noundef nonnull @.str.94, i32 noundef %149, ptr noundef nonnull %cond488, ptr noundef nonnull %cond492, ptr noundef nonnull %cond496, ptr noundef nonnull %cond500, ptr noundef nonnull %cond504) #4
  %call505 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 62) #4
  %150 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %buffer, align 4
  %conv507 = zext i16 %call505 to i32
  %and508 = and i32 %conv507, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and508)
  %tobool509.not = icmp eq i32 %and508, 0
  %cond510 = select i1 %tobool509.not, ptr @.str.30, ptr @.str.101
  %and512 = and i32 %conv507, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and512)
  %tobool513.not = icmp eq i32 %and512, 0
  %cond514 = select i1 %tobool513.not, ptr @.str.30, ptr @.str.102
  %and516 = and i32 %conv507, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and516)
  %tobool517.not = icmp eq i32 %and516, 0
  %cond518 = select i1 %tobool517.not, ptr @.str.30, ptr @.str.103
  %and520 = and i32 %conv507, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and520)
  %tobool521.not = icmp eq i32 %and520, 0
  %cond522 = select i1 %tobool521.not, ptr @.str.30, ptr @.str.104
  %and524 = and i32 %conv507, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and524)
  %tobool525.not = icmp eq i32 %and524, 0
  %cond526 = select i1 %tobool525.not, ptr @.str.30, ptr @.str.105
  %and528 = and i32 %conv507, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528)
  %tobool529.not = icmp eq i32 %and528, 0
  %cond530 = select i1 %tobool529.not, ptr @.str.30, ptr @.str.106
  %and532 = and i32 %conv507, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and532)
  %tobool533.not = icmp eq i32 %and532, 0
  %cond534 = select i1 %tobool533.not, ptr @.str.30, ptr @.str.107
  %and536 = and i32 %conv507, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and536)
  %tobool537.not = icmp eq i32 %and536, 0
  %cond538 = select i1 %tobool537.not, ptr @.str.30, ptr @.str.108
  %and540 = and i32 %conv507, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and540)
  %tobool541.not = icmp eq i32 %and540, 0
  %cond542 = select i1 %tobool541.not, ptr @.str.30, ptr @.str.109
  %and544 = and i32 %conv507, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and544)
  %tobool545.not = icmp eq i32 %and544, 0
  %cond546 = select i1 %tobool545.not, ptr @.str.30, ptr @.str.110
  %and548 = and i32 %conv507, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and548)
  %tobool549.not = icmp eq i32 %and548, 0
  %cond550 = select i1 %tobool549.not, ptr @.str.30, ptr @.str.111
  %and552 = and i32 %conv507, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and552)
  %tobool553.not = icmp eq i32 %and552, 0
  %cond554 = select i1 %tobool553.not, ptr @.str.30, ptr @.str.112
  %and556 = and i32 %conv507, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and556)
  %tobool557.not = icmp eq i32 %and556, 0
  %cond558 = select i1 %tobool557.not, ptr @.str.30, ptr @.str.113
  %and560 = and i32 %conv507, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and560)
  %tobool561.not = icmp eq i32 %and560, 0
  %cond562 = select i1 %tobool561.not, ptr @.str.30, ptr @.str.114
  %and564 = and i32 %conv507, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564)
  %tobool565.not = icmp eq i32 %and564, 0
  %cond566 = select i1 %tobool565.not, ptr @.str.30, ptr @.str.115
  %and568 = and i32 %conv507, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and568)
  %tobool569.not = icmp eq i32 %and568, 0
  %cond570 = select i1 %tobool569.not, ptr @.str.30, ptr @.str.116
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %151, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond510, ptr noundef nonnull %cond514, ptr noundef nonnull %cond518, ptr noundef nonnull %cond522, ptr noundef nonnull %cond526, ptr noundef nonnull %cond530, ptr noundef nonnull %cond534, ptr noundef nonnull %cond538, ptr noundef nonnull %cond542, ptr noundef nonnull %cond546, ptr noundef nonnull %cond550, ptr noundef nonnull %cond554, ptr noundef nonnull %cond558, ptr noundef nonnull %cond562, ptr noundef nonnull %cond566, ptr noundef nonnull %cond570) #4
  br i1 %tobool503.not, label %if.end480.if.end578_crit_edge, label %if.then574

if.end480.if.end578_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end578

if.then574:                                       ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #6
  %call575 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 64) #4
  %152 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %buffer, align 4
  %conv577 = zext i16 %call575 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %153, ptr noundef nonnull @.str.117, i32 noundef %conv577) #4
  br label %if.end578

if.end578:                                        ; preds = %if.then574, %if.end480.if.end578_crit_edge
  br i1 %tobool499.not, label %if.end578.if.end586_crit_edge, label %if.then582

if.end578.if.end586_crit_edge:                    ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end586

if.then582:                                       ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #6
  %call583 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 66) #4
  %154 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %buffer, align 4
  %conv585 = zext i16 %call583 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %155, ptr noundef nonnull @.str.118, i32 noundef %conv585) #4
  br label %if.end586

if.end586:                                        ; preds = %if.then582, %if.end578.if.end586_crit_edge
  br i1 %tobool495.not, label %if.end586.cleanup_crit_edge, label %if.then590

if.end586.cleanup_crit_edge:                      ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then590:                                       ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  %call591 = call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 68) #4
  %156 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %buffer, align 4
  %conv593 = zext i16 %call591 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %157, ptr noundef nonnull @.str.119, i32 noundef %conv593) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then590, %if.end586.cleanup_crit_edge, %__modem.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_get_name(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_ac97_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !113, !114, !115, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !144, !145, !146, !147, !149, !151, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ac97/ac97_proc.c", i32 422, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ac97/ac97_proc.c", i32 422, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ac97/ac97_proc.c", i32 423, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ac97/ac97_proc.c", i32 429, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ac97/ac97_proc.c", i32 455, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ac97/ac97_proc.c", i32 341, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ac97/ac97_proc.c", i32 346, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ac97/ac97_proc.c", i32 347, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ac97/ac97_proc.c", i32 351, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ac97/ac97_proc.c", i32 96, i32 40}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ac97/ac97_proc.c", i32 96, i32 54}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ac97/ac97_proc.c", i32 96, i32 68}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ac97/ac97_proc.c", i32 96, i32 82}
!26 = !{ptr @snd_ac97_proc_read_main.spdif_slots, !27, !"spdif_slots", i1 false, i1 false}
!27 = !{!"../sound/pci/ac97/ac97_proc.c", i32 96, i32 21}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ac97/ac97_proc.c", i32 97, i32 40}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ac97/ac97_proc.c", i32 97, i32 57}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ac97/ac97_proc.c", i32 97, i32 70}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ac97/ac97_proc.c", i32 97, i32 85}
!36 = !{ptr @snd_ac97_proc_read_main.spdif_rates, !37, !"spdif_rates", i1 false, i1 false}
!37 = !{!"../sound/pci/ac97/ac97_proc.c", i32 97, i32 21}
!38 = !{ptr @snd_ac97_proc_read_main.spdif_rates_cs4205, !39, !"spdif_rates_cs4205", i1 false, i1 false}
!39 = !{!"../sound/pci/ac97/ac97_proc.c", i32 98, i32 21}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ac97/ac97_proc.c", i32 99, i32 46}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ac97/ac97_proc.c", i32 99, i32 55}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ac97/ac97_proc.c", i32 99, i32 62}
!46 = !{ptr @snd_ac97_proc_read_main.double_rate_slots, !47, !"double_rate_slots", i1 false, i1 false}
!47 = !{!"../sound/pci/ac97/ac97_proc.c", i32 99, i32 21}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ac97/ac97_proc.c", i32 102, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ac97/ac97_proc.c", i32 107, i32 9}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ac97/ac97_proc.c", i32 109, i32 9}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ac97/ac97_proc.c", i32 112, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ac97/ac97_proc.c", i32 119, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ac97/ac97_proc.c", i32 120, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ac97/ac97_proc.c", i32 121, i32 3}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ac97/ac97_proc.c", i32 123, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ac97/ac97_proc.c", i32 131, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ac97/ac97_proc.c", i32 139, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/ac97/ac97_proc.c", i32 145, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ac97/ac97_proc.c", i32 150, i32 2}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/ac97/ac97_proc.c", i32 152, i32 2}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ac97/ac97_proc.c", i32 154, i32 2}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ac97/ac97_proc.c", i32 156, i32 2}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/ac97/ac97_proc.c", i32 171, i32 3}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/ac97/ac97_proc.c", i32 178, i32 2}
!103 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/ac97/ac97_proc.c", i32 191, i32 2}
!113 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.71, !112, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.72, !112, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/ac97/ac97_proc.c", i32 208, i32 3}
!121 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/ac97/ac97_proc.c", i32 211, i32 4}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/ac97/ac97_proc.c", i32 215, i32 4}
!125 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/ac97/ac97_proc.c", i32 218, i32 3}
!127 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/ac97/ac97_proc.c", i32 222, i32 3}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/ac97/ac97_proc.c", i32 234, i32 3}
!131 = !{ptr @.str.79, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.80, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.84, !130, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.85, !130, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.86, !130, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.87, !130, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.88, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/ac97/ac97_proc.c", i32 256, i32 5}
!142 = !{ptr @.str.89, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ac97/ac97_proc.c", i32 264, i32 5}
!144 = !{ptr @.str.90, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.91, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.92, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/ac97/ac97_proc.c", i32 270, i32 5}
!149 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/ac97/ac97_proc.c", i32 289, i32 2}
!151 = !{ptr @.str.95, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.96, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.97, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.98, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.99, !150, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.100, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ac97/ac97_proc.c", i32 297, i32 2}
!158 = !{ptr @.str.101, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.102, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.103, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.104, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.105, !157, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.106, !157, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.107, !157, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.108, !157, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.109, !157, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.110, !157, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.111, !157, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.112, !157, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.113, !157, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.114, !157, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.115, !157, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.116, !157, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.117, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/ac97/ac97_proc.c", i32 316, i32 3}
!176 = !{ptr @.str.118, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/ac97/ac97_proc.c", i32 320, i32 3}
!178 = !{ptr @.str.119, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/ac97/ac97_proc.c", i32 324, i32 3}
!180 = !{ptr @.str.120, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/ac97/ac97_proc.c", i32 58, i32 13}
!182 = !{ptr @.str.121, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/ac97/ac97_proc.c", i32 59, i32 13}
!184 = !{ptr @.str.122, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/ac97/ac97_proc.c", i32 60, i32 13}
!186 = !{ptr @.str.123, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/ac97/ac97_proc.c", i32 61, i32 13}
!188 = !{ptr @.str.124, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/ac97/ac97_proc.c", i32 62, i32 13}
!190 = !{ptr @.str.125, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/ac97/ac97_proc.c", i32 63, i32 13}
!192 = !{ptr @.str.126, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/ac97/ac97_proc.c", i32 64, i32 13}
!194 = !{ptr @.str.127, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/ac97/ac97_proc.c", i32 65, i32 13}
!196 = !{ptr @.str.128, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/ac97/ac97_proc.c", i32 66, i32 13}
!198 = !{ptr @.str.129, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/ac97/ac97_proc.c", i32 67, i32 13}
!200 = !{ptr @.str.130, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/ac97/ac97_proc.c", i32 68, i32 13}
!202 = !{ptr @.str.131, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/ac97/ac97_proc.c", i32 69, i32 13}
!204 = !{ptr @.str.132, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/ac97/ac97_proc.c", i32 70, i32 13}
!206 = !{ptr @.str.133, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/ac97/ac97_proc.c", i32 71, i32 13}
!208 = !{ptr @.str.134, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/ac97/ac97_proc.c", i32 72, i32 13}
!210 = !{ptr @.str.135, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/ac97/ac97_proc.c", i32 73, i32 13}
!212 = !{ptr @.str.136, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/ac97/ac97_proc.c", i32 74, i32 13}
!214 = !{ptr @.str.137, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/ac97/ac97_proc.c", i32 75, i32 13}
!216 = !{ptr @.str.138, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/ac97/ac97_proc.c", i32 76, i32 13}
!218 = !{ptr @.str.139, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/ac97/ac97_proc.c", i32 77, i32 13}
!220 = !{ptr @.str.140, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/ac97/ac97_proc.c", i32 78, i32 13}
!222 = !{ptr @.str.141, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/ac97/ac97_proc.c", i32 79, i32 13}
!224 = !{ptr @.str.142, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/ac97/ac97_proc.c", i32 80, i32 13}
!226 = !{ptr @.str.143, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/ac97/ac97_proc.c", i32 81, i32 13}
!228 = !{ptr @.str.144, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/ac97/ac97_proc.c", i32 82, i32 13}
!230 = !{ptr @.str.145, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/ac97/ac97_proc.c", i32 83, i32 13}
!232 = !{ptr @.str.146, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/ac97/ac97_proc.c", i32 84, i32 13}
!234 = !{ptr @.str.147, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/ac97/ac97_proc.c", i32 85, i32 13}
!236 = !{ptr @.str.148, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/ac97/ac97_proc.c", i32 86, i32 13}
!238 = !{ptr @.str.149, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/ac97/ac97_proc.c", i32 87, i32 13}
!240 = !{ptr @.str.150, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/ac97/ac97_proc.c", i32 88, i32 13}
!242 = !{ptr @.str.151, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/ac97/ac97_proc.c", i32 89, i32 13}
!244 = !{ptr @snd_ac97_stereo_enhancements, !245, !"snd_ac97_stereo_enhancements", i1 false, i1 false}
!245 = !{!"../sound/pci/ac97/ac97_proc.c", i32 56, i32 20}
!246 = !{ptr @.str.152, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/ac97/ac97_proc.c", i32 27, i32 3}
!248 = !{ptr @.str.153, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/ac97/ac97_proc.c", i32 27, i32 17}
!250 = !{ptr @.str.154, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/ac97/ac97_proc.c", i32 27, i32 28}
!252 = !{ptr @.str.155, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/ac97/ac97_proc.c", i32 27, i32 46}
!254 = !{ptr @.str.156, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 3}
!256 = !{ptr @.str.157, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 15}
!258 = !{ptr @.str.158, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 24}
!260 = !{ptr @.str.159, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 33}
!262 = !{ptr @.str.160, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 44}
!264 = !{ptr @.str.161, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/ac97/ac97_proc.c", i32 28, i32 53}
!266 = !{ptr @.str.162, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/ac97/ac97_proc.c", i32 29, i32 3}
!268 = !{ptr @.str.163, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/ac97/ac97_proc.c", i32 29, i32 13}
!270 = !{ptr @snd_ac97_proc_read_functions.function_names, !271, !"function_names", i1 false, i1 false}
!271 = !{!"../sound/pci/ac97/ac97_proc.c", i32 26, i32 21}
!272 = !{ptr @.str.164, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/ac97/ac97_proc.c", i32 32, i32 3}
!274 = !{ptr @.str.165, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/ac97/ac97_proc.c", i32 32, i32 21}
!276 = !{ptr @.str.166, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/ac97/ac97_proc.c", i32 32, i32 36}
!278 = !{ptr @.str.167, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/ac97/ac97_proc.c", i32 32, i32 51}
!280 = !{ptr @.str.168, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/ac97/ac97_proc.c", i32 33, i32 39}
!282 = !{ptr @snd_ac97_proc_read_functions.locations, !283, !"locations", i1 false, i1 false}
!283 = !{!"../sound/pci/ac97/ac97_proc.c", i32 31, i32 21}
!284 = !{ptr @.str.169, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/ac97/ac97_proc.c", i32 42, i32 4}
!286 = !{ptr @.str.170, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/ac97/ac97_proc.c", i32 46, i32 3}
!288 = !{ptr @.str.171, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/ac97/ac97_proc.c", i32 386, i32 3}
!290 = !{ptr @.str.172, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/ac97/ac97_proc.c", i32 370, i32 20}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{!"auto-init"}
