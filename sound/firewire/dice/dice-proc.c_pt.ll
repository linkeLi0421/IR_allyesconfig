; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-proc.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.71, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.anon.94 = type { i32, i32 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, [256 x i8] }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.anon.97 = type { i32, i32, i32, i32, [256 x i8], i32, i32 }
%struct.anon.98 = type { i32, i32, i32, i32, [256 x i8], i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firewire\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dice\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"formation\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_sync\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unused2\00", [24 x i8] zeroinitializer }, align 32
@dice_proc_read.clock_sources = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aes1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aes2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aes3\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aes4\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adat\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tdif\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wc\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arx1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arx2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arx3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arx4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@dice_proc_read.rates = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32000\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"44100\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48000\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"88200\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"96000\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"176400\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"192000\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"any low\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"any mid\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"any high\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sections:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  %s: offset %u, size %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"global:\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  owner: %04x:%04x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  notification: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  nick name: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  clock select: %s %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  enable: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  status: %slocked %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  ext status: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  sample rate: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  version: %u.%u.%u.%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  clock caps:\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  clock source names: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx %u:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  iso channel: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  audio channels: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  midi ports: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  speed: S%u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  names: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  ac3 caps: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  ac3 enable: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx %u:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  sequence start: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext status:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  clock source: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  locked: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  rate: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  adat user data: \00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"middle\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Output stream from unit:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\09%s\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09MIDI\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Tx %u:\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\09%u\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09%u\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input stream to unit:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rx %u:\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 299, i32 48 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 305, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 306, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 60, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 60, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 60, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 60, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 60, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"clock_sources\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 62, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 63, i32 50 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 64, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 66, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 48 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 67, i32 58 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 68, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 68, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 68, i32 25 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 68, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 119, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 121, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 128, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 129, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 132, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 134, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 135, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 141, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 142, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 148, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 149, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 151, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 156, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 159, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 163, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 166, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 178, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 179, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 180, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 182, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 183, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 186, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 189, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 191, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 204, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 206, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 227, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 228, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 232, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 233, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 236, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 238, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 240, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 35, i32 9 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 249, i32 30 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 250, i32 33 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 251, i32 31 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 256, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 258, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 259, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 261, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 263, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 264, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 267, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private constant [35 x i8] c"../sound/firewire/dice/dice-proc.c\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 272, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dice_proc_read.clock_sources, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dice_proc_read.rates, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_proc_read.clock_sources to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_proc_read.rates to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_create_proc(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dice, align 8
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %proc_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_root, align 8
  %call = tail call ptr @snd_info_create_card_entry(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16749, ptr %mode, align 4
  %5 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dice, align 8
  %call.i = tail call ptr @snd_info_create_card_entry(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.add_node.exit_crit_edge, label %if.then.i

if.end.add_node.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %add_node.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dice, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dice_proc_read, ptr %c.i.i, align 4
  br label %add_node.exit

add_node.exit:                                    ; preds = %if.then.i, %if.end.add_node.exit_crit_edge
  %9 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dice, align 8
  %call.i8 = tail call ptr @snd_info_create_card_entry(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #4
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %add_node.exit.cleanup_crit_edge, label %if.then.i12

add_node.exit.cleanup_crit_edge:                  ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i12:                                      ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  %private_data2.i.i10 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i8, i32 0, i32 7
  %11 = ptrtoint ptr %private_data2.i.i10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dice, ptr %private_data2.i.i10, align 4
  %c.i.i11 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i8, i32 0, i32 4
  %12 = ptrtoint ptr %c.i.i11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dice_proc_read_formation, ptr %c.i.i11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i12, %add_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #0 align 64 {
entry:
  %sections = alloca [10 x i32], align 4
  %tx_rx_header = alloca %struct.anon.94, align 4
  %buf = alloca %union.anon.95, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sections) #4
  %2 = call ptr @memset(ptr %sections, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_rx_header) #4
  %3 = ptrtoint ptr %tx_rx_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tx_rx_header, align 4, !annotation !173
  %4 = getelementptr inbounds %struct.anon.94, ptr %tx_rx_header, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !173
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %buf) #4
  %6 = call ptr @memset(ptr %buf, i32 255, i32 360)
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %8, i32 noundef 5, i64 noundef 281474439839744, ptr noundef nonnull %sections, i32 noundef 40, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.32) #4
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %sections to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sections, align 4
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %16) #4
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  %arrayidx5.1 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.1, align 4
  %arrayidx7.1 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef %22) #4
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %arrayidx5.2 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.2, align 4
  %arrayidx7.2 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.2, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28) #4
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %arrayidx5.3 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.3, align 4
  %arrayidx7.3 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6, i32 noundef %32, i32 noundef %34) #4
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %arrayidx5.4 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx5.4, align 4
  %arrayidx7.4 = getelementptr inbounds [10 x i32], ptr %sections, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7.4, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.7, i32 noundef %38, i32 noundef %40) #4
  %41 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx7, align 4
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 90)
  %44 = ptrtoint ptr %sections to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sections, align 4
  %46 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unit.i, align 4
  %mul.i = shl i32 %45, 2
  %conv.i = zext i32 %mul.i to i64
  %add.i = add nuw nsw i64 %conv.i, 281474439839744
  %mul1.i = shl nuw nsw i32 %43, 2
  %call.i304 = call i32 @snd_fw_transaction(ptr noundef %47, i32 noundef 5, i64 noundef %add.i, ptr noundef nonnull %buf, i32 noundef %mul1.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp12 = icmp slt i32 %call.i304, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.34) #4
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf, align 4
  %shr = lshr i32 %53, 16
  %and = and i32 %53, 65535
  %owner_lo = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 1
  %54 = ptrtoint ptr %owner_lo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %owner_lo, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.35, i32 noundef %shr, i32 noundef %and, i32 noundef %55) #4
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %notification = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 2
  %58 = ptrtoint ptr %notification to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %notification, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.36, i32 noundef %59) #4
  %nick_name = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3
  %60 = ptrtoint ptr %nick_name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nick_name, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #4
  %63 = ptrtoint ptr %nick_name to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %nick_name, align 4
  %add.ptr.i.1 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.1, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #4
  %67 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %add.ptr.i.1, align 4
  %add.ptr.i.2 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.2, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #4
  %71 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %add.ptr.i.2, align 4
  %add.ptr.i.3 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 12
  %72 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.3, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #4
  %75 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %add.ptr.i.3, align 4
  %add.ptr.i.4 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 16
  %76 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.4, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #4
  %79 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %add.ptr.i.4, align 4
  %add.ptr.i.5 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 20
  %80 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.5, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #4
  %83 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %add.ptr.i.5, align 4
  %add.ptr.i.6 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 24
  %84 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.6, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #4
  %87 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr.i.6, align 4
  %add.ptr.i.7 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 28
  %88 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.7, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #4
  %91 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %add.ptr.i.7, align 4
  %add.ptr.i.8 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 32
  %92 = ptrtoint ptr %add.ptr.i.8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.8, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #4
  %95 = ptrtoint ptr %add.ptr.i.8 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %add.ptr.i.8, align 4
  %add.ptr.i.9 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 36
  %96 = ptrtoint ptr %add.ptr.i.9 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i.9, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #4
  %99 = ptrtoint ptr %add.ptr.i.9 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %add.ptr.i.9, align 4
  %add.ptr.i.10 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 40
  %100 = ptrtoint ptr %add.ptr.i.10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.10, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #4
  %103 = ptrtoint ptr %add.ptr.i.10 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %add.ptr.i.10, align 4
  %add.ptr.i.11 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 44
  %104 = ptrtoint ptr %add.ptr.i.11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i.11, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105) #4
  %107 = ptrtoint ptr %add.ptr.i.11 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %add.ptr.i.11, align 4
  %add.ptr.i.12 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 48
  %108 = ptrtoint ptr %add.ptr.i.12 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i.12, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #4
  %111 = ptrtoint ptr %add.ptr.i.12 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %add.ptr.i.12, align 4
  %add.ptr.i.13 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 52
  %112 = ptrtoint ptr %add.ptr.i.13 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.13, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #4
  %115 = ptrtoint ptr %add.ptr.i.13 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %add.ptr.i.13, align 4
  %add.ptr.i.14 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 56
  %116 = ptrtoint ptr %add.ptr.i.14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i.14, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #4
  %119 = ptrtoint ptr %add.ptr.i.14 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %add.ptr.i.14, align 4
  %add.ptr.i.15 = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 3, i32 60
  %120 = ptrtoint ptr %add.ptr.i.15 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i.15, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #4
  %123 = ptrtoint ptr %add.ptr.i.15 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %add.ptr.i.15, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc19.i.for.body3.i_crit_edge, %if.end14
  %i.143.i = phi i32 [ %inc.pre-phi.i, %for.inc19.i.for.body3.i_crit_edge ], [ 0, %if.end14 ]
  %arrayidx.i = getelementptr i8, ptr %nick_name, i32 %i.143.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i, align 1
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values)
  switch i8 %125, label %for.body3.for.inc19_crit_edge.i [
    i8 0, label %for.body3.i.dice_proc_fixup_string.exit_crit_edge
    i8 92, label %land.lhs.true.i
  ]

for.body3.i.dice_proc_fixup_string.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dice_proc_fixup_string.exit

for.body3.for.inc19_crit_edge.i:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i = add nuw i32 %i.143.i, 1
  br label %for.inc19.i

land.lhs.true.i:                                  ; preds = %for.body3.i
  %add10.i = add nuw i32 %i.143.i, 1
  %arrayidx11.i = getelementptr i8, ptr %nick_name, i32 %add10.i
  %127 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %128)
  %cmp13.i = icmp eq i8 %128, 92
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.for.inc19.i_crit_edge

land.lhs.true.i.for.inc19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %add16.i = add i32 %i.143.i, 2
  br label %cleanup.sink.split.i

for.inc19.i:                                      ; preds = %land.lhs.true.i.for.inc19.i_crit_edge, %for.body3.for.inc19_crit_edge.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %for.body3.for.inc19_crit_edge.i ], [ %add10.i, %land.lhs.true.i.for.inc19.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %inc.pre-phi.i, 62
  br i1 %exitcond.not.i, label %for.inc19.i.cleanup.sink.split.i_crit_edge, label %for.inc19.i.for.body3.i_crit_edge

for.inc19.i.for.body3.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc19.i.cleanup.sink.split.i_crit_edge:       ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.inc19.i.cleanup.sink.split.i_crit_edge, %if.then15.i
  %sub21.sink.i = phi i32 [ %add16.i, %if.then15.i ], [ 63, %for.inc19.i.cleanup.sink.split.i_crit_edge ]
  %arrayidx22.i = getelementptr i8, ptr %nick_name, i32 %sub21.sink.i
  %129 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx22.i, align 1
  br label %dice_proc_fixup_string.exit

dice_proc_fixup_string.exit:                      ; preds = %cleanup.sink.split.i, %for.body3.i.dice_proc_fixup_string.exit_crit_edge
  %130 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %131, ptr noundef nonnull @.str.37, ptr noundef %nick_name) #4
  %132 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer, align 4
  %clock_select = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 4
  %134 = ptrtoint ptr %clock_select to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %clock_select, align 4
  %and24 = and i32 %135, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and24)
  %cmp.i306 = icmp ult i32 %and24, 13
  br i1 %cmp.i306, label %if.then.i, label %dice_proc_fixup_string.exit.str_from_array.exit_crit_edge

dice_proc_fixup_string.exit.str_from_array.exit_crit_edge: ; preds = %dice_proc_fixup_string.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %str_from_array.exit

if.then.i:                                        ; preds = %dice_proc_fixup_string.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i307 = getelementptr ptr, ptr @dice_proc_read.clock_sources, i32 %and24
  %136 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i307, align 4
  br label %str_from_array.exit

str_from_array.exit:                              ; preds = %if.then.i, %dice_proc_fixup_string.exit.str_from_array.exit_crit_edge
  %retval.0.i = phi ptr [ %137, %if.then.i ], [ @.str.67, %dice_proc_fixup_string.exit.str_from_array.exit_crit_edge ]
  %and27 = lshr i32 %135, 8
  %shr28 = and i32 %and27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr28)
  %cmp.i308 = icmp ult i32 %shr28, 11
  br i1 %cmp.i308, label %if.then.i310, label %str_from_array.exit.str_from_array.exit312_crit_edge

str_from_array.exit.str_from_array.exit312_crit_edge: ; preds = %str_from_array.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %str_from_array.exit312

if.then.i310:                                     ; preds = %str_from_array.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i309 = getelementptr ptr, ptr @dice_proc_read.rates, i32 %shr28
  %138 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i309, align 4
  br label %str_from_array.exit312

str_from_array.exit312:                           ; preds = %if.then.i310, %str_from_array.exit.str_from_array.exit312_crit_edge
  %retval.0.i311 = phi ptr [ %139, %if.then.i310 ], [ @.str.67, %str_from_array.exit.str_from_array.exit312_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %133, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i, ptr noundef %retval.0.i311) #4
  %140 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buffer, align 4
  %enable = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 5
  %142 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %enable, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %141, ptr noundef nonnull @.str.39, i32 noundef %143) #4
  %144 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %buffer, align 4
  %status = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 6
  %146 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %status, align 4
  %and32 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool.not = icmp eq i32 %and32, 0
  %cond33 = select i1 %tobool.not, ptr @.str.42, ptr @.str.41
  %and35 = lshr i32 %147, 8
  %shr36 = and i32 %and35, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr36)
  %cmp.i313 = icmp ult i32 %shr36, 11
  br i1 %cmp.i313, label %if.then.i315, label %str_from_array.exit312.str_from_array.exit317_crit_edge

str_from_array.exit312.str_from_array.exit317_crit_edge: ; preds = %str_from_array.exit312
  call void @__sanitizer_cov_trace_pc() #6
  br label %str_from_array.exit317

if.then.i315:                                     ; preds = %str_from_array.exit312
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i314 = getelementptr ptr, ptr @dice_proc_read.rates, i32 %shr36
  %148 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i314, align 4
  br label %str_from_array.exit317

str_from_array.exit317:                           ; preds = %if.then.i315, %str_from_array.exit312.str_from_array.exit317_crit_edge
  %retval.0.i316 = phi ptr [ %149, %if.then.i315 ], [ @.str.67, %str_from_array.exit312.str_from_array.exit317_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %145, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond33, ptr noundef %retval.0.i316) #4
  %150 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %buffer, align 4
  %extended_status = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 7
  %152 = ptrtoint ptr %extended_status to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %extended_status, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %151, ptr noundef nonnull @.str.43, i32 noundef %153) #4
  %154 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %buffer, align 4
  %sample_rate = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 8
  %156 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %155, ptr noundef nonnull @.str.44, i32 noundef %157) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %43)
  %cmp40 = icmp ugt i32 %43, 89
  br i1 %cmp40, label %if.then41, label %str_from_array.exit317.if.end87_crit_edge

str_from_array.exit317.if.end87_crit_edge:        ; preds = %str_from_array.exit317
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then41:                                        ; preds = %str_from_array.exit317
  %158 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %buffer, align 4
  %version = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 9
  %160 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %version, align 4
  %shr43 = lshr i32 %161, 24
  %shr46 = lshr i32 %161, 16
  %and47 = and i32 %shr46, 255
  %shr49 = lshr i32 %161, 8
  %and50 = and i32 %shr49, 255
  %and53 = and i32 %161, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %159, ptr noundef nonnull @.str.45, i32 noundef %shr43, i32 noundef %and47, i32 noundef %and50, i32 noundef %and53) #4
  %162 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %163, ptr noundef nonnull @.str.46) #4
  %clock_caps = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 10
  %164 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %clock_caps, align 4
  %and58 = and i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then41.for.inc64_crit_edge, label %if.then60

if.then41.for.inc64_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64

if.then60:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %167, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.21) #4
  br label %for.inc64

for.inc64:                                        ; preds = %if.then60, %if.then41.for.inc64_crit_edge
  %168 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %clock_caps, align 4
  %and58.1 = and i32 %169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.1)
  %tobool59.not.1 = icmp eq i32 %and58.1, 0
  br i1 %tobool59.not.1, label %for.inc64.for.inc64.1_crit_edge, label %if.then60.1

for.inc64.for.inc64.1_crit_edge:                  ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.1

if.then60.1:                                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #6
  %170 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %171, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.22) #4
  br label %for.inc64.1

for.inc64.1:                                      ; preds = %if.then60.1, %for.inc64.for.inc64.1_crit_edge
  %172 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %clock_caps, align 4
  %and58.2 = and i32 %173, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.2)
  %tobool59.not.2 = icmp eq i32 %and58.2, 0
  br i1 %tobool59.not.2, label %for.inc64.1.for.inc64.2_crit_edge, label %if.then60.2

for.inc64.1.for.inc64.2_crit_edge:                ; preds = %for.inc64.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2

if.then60.2:                                      ; preds = %for.inc64.1
  call void @__sanitizer_cov_trace_pc() #6
  %174 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %175, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.23) #4
  br label %for.inc64.2

for.inc64.2:                                      ; preds = %if.then60.2, %for.inc64.1.for.inc64.2_crit_edge
  %176 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %clock_caps, align 4
  %and58.3 = and i32 %177, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.3)
  %tobool59.not.3 = icmp eq i32 %and58.3, 0
  br i1 %tobool59.not.3, label %for.inc64.2.for.inc64.3_crit_edge, label %if.then60.3

for.inc64.2.for.inc64.3_crit_edge:                ; preds = %for.inc64.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3

if.then60.3:                                      ; preds = %for.inc64.2
  call void @__sanitizer_cov_trace_pc() #6
  %178 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %179, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24) #4
  br label %for.inc64.3

for.inc64.3:                                      ; preds = %if.then60.3, %for.inc64.2.for.inc64.3_crit_edge
  %180 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %clock_caps, align 4
  %and58.4 = and i32 %181, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.4)
  %tobool59.not.4 = icmp eq i32 %and58.4, 0
  br i1 %tobool59.not.4, label %for.inc64.3.for.inc64.4_crit_edge, label %if.then60.4

for.inc64.3.for.inc64.4_crit_edge:                ; preds = %for.inc64.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.4

if.then60.4:                                      ; preds = %for.inc64.3
  call void @__sanitizer_cov_trace_pc() #6
  %182 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %183, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25) #4
  br label %for.inc64.4

for.inc64.4:                                      ; preds = %if.then60.4, %for.inc64.3.for.inc64.4_crit_edge
  %184 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %clock_caps, align 4
  %and58.5 = and i32 %185, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.5)
  %tobool59.not.5 = icmp eq i32 %and58.5, 0
  br i1 %tobool59.not.5, label %for.inc64.4.for.inc64.5_crit_edge, label %if.then60.5

for.inc64.4.for.inc64.5_crit_edge:                ; preds = %for.inc64.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.5

if.then60.5:                                      ; preds = %for.inc64.4
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %187, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.26) #4
  br label %for.inc64.5

for.inc64.5:                                      ; preds = %if.then60.5, %for.inc64.4.for.inc64.5_crit_edge
  %188 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %clock_caps, align 4
  %and58.6 = and i32 %189, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.6)
  %tobool59.not.6 = icmp eq i32 %and58.6, 0
  br i1 %tobool59.not.6, label %for.inc64.5.for.body69.preheader_crit_edge, label %if.then60.6

for.inc64.5.for.body69.preheader_crit_edge:       ; preds = %for.inc64.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body69.preheader

if.then60.6:                                      ; preds = %for.inc64.5
  call void @__sanitizer_cov_trace_pc() #6
  %190 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %191, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.27) #4
  br label %for.body69.preheader

for.body69.preheader:                             ; preds = %if.then60.6, %for.inc64.5.for.body69.preheader_crit_edge
  br label %for.body69

for.body69:                                       ; preds = %for.inc79.for.body69_crit_edge, %for.body69.preheader
  %i.2443 = phi i32 [ %inc80, %for.inc79.for.body69_crit_edge ], [ 0, %for.body69.preheader ]
  %192 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %clock_caps, align 4
  %shl72 = shl i32 65536, %i.2443
  %and73 = and i32 %193, %shl72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %for.body69.for.inc79_crit_edge, label %if.then75

for.body69.for.inc79_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc79

if.then75:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #6
  %194 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %buffer, align 4
  %arrayidx77 = getelementptr [13 x ptr], ptr @dice_proc_read.clock_sources, i32 0, i32 %i.2443
  %196 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx77, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %195, ptr noundef nonnull @.str.47, ptr noundef %197) #4
  br label %for.inc79

for.inc79:                                        ; preds = %if.then75, %for.body69.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %i.2443, 1
  %exitcond.not = icmp eq i32 %inc80, 13
  br i1 %exitcond.not, label %for.end81, label %for.inc79.for.body69_crit_edge

for.inc79.for.body69_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body69

for.end81:                                        ; preds = %for.inc79
  %198 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %199, ptr noundef nonnull @.str.48) #4
  %clock_source_names = getelementptr inbounds %struct.anon.96, ptr %buf, i32 0, i32 11
  br label %for.body.i323

for.body.i323:                                    ; preds = %for.body.i323.for.body.i323_crit_edge, %for.end81
  %i.041.i319 = phi i32 [ %add.i321, %for.body.i323.for.body.i323_crit_edge ], [ 0, %for.end81 ]
  %add.ptr.i320 = getelementptr i8, ptr %clock_source_names, i32 %i.041.i319
  %200 = ptrtoint ptr %add.ptr.i320 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr.i320, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #4
  %203 = ptrtoint ptr %add.ptr.i320 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %add.ptr.i320, align 4
  %add.i321 = add nuw nsw i32 %i.041.i319, 4
  %cmp.i322 = icmp ult i32 %i.041.i319, 252
  br i1 %cmp.i322, label %for.body.i323.for.body.i323_crit_edge, label %for.body.i323.for.body3.i326_crit_edge

for.body.i323.for.body3.i326_crit_edge:           ; preds = %for.body.i323
  br label %for.body3.i326

for.body.i323.for.body.i323_crit_edge:            ; preds = %for.body.i323
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i323

for.body3.i326:                                   ; preds = %for.inc19.i337.for.body3.i326_crit_edge, %for.body.i323.for.body3.i326_crit_edge
  %i.143.i324 = phi i32 [ %inc.pre-phi.i335, %for.inc19.i337.for.body3.i326_crit_edge ], [ 0, %for.body.i323.for.body3.i326_crit_edge ]
  %arrayidx.i325 = getelementptr i8, ptr %clock_source_names, i32 %i.143.i324
  %204 = ptrtoint ptr %arrayidx.i325 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx.i325, align 1
  %206 = zext i8 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %205, label %for.body3.for.inc19_crit_edge.i328 [
    i8 0, label %for.body3.i326.dice_proc_fixup_string.exit342_crit_edge
    i8 92, label %land.lhs.true.i332
  ]

for.body3.i326.dice_proc_fixup_string.exit342_crit_edge: ; preds = %for.body3.i326
  call void @__sanitizer_cov_trace_pc() #6
  br label %dice_proc_fixup_string.exit342

for.body3.for.inc19_crit_edge.i328:               ; preds = %for.body3.i326
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i327 = add nuw i32 %i.143.i324, 1
  br label %for.inc19.i337

land.lhs.true.i332:                               ; preds = %for.body3.i326
  %add10.i329 = add nuw i32 %i.143.i324, 1
  %arrayidx11.i330 = getelementptr i8, ptr %clock_source_names, i32 %add10.i329
  %207 = ptrtoint ptr %arrayidx11.i330 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx11.i330, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %208)
  %cmp13.i331 = icmp eq i8 %208, 92
  br i1 %cmp13.i331, label %if.then15.i334, label %land.lhs.true.i332.for.inc19.i337_crit_edge

land.lhs.true.i332.for.inc19.i337_crit_edge:      ; preds = %land.lhs.true.i332
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i337

if.then15.i334:                                   ; preds = %land.lhs.true.i332
  call void @__sanitizer_cov_trace_pc() #6
  %add16.i333 = add i32 %i.143.i324, 2
  br label %cleanup.sink.split.i341

for.inc19.i337:                                   ; preds = %land.lhs.true.i332.for.inc19.i337_crit_edge, %for.body3.for.inc19_crit_edge.i328
  %inc.pre-phi.i335 = phi i32 [ %.pre.i327, %for.body3.for.inc19_crit_edge.i328 ], [ %add10.i329, %land.lhs.true.i332.for.inc19.i337_crit_edge ]
  %exitcond.not.i336 = icmp eq i32 %inc.pre-phi.i335, 254
  br i1 %exitcond.not.i336, label %for.inc19.i337.cleanup.sink.split.i341_crit_edge, label %for.inc19.i337.for.body3.i326_crit_edge

for.inc19.i337.for.body3.i326_crit_edge:          ; preds = %for.inc19.i337
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i326

for.inc19.i337.cleanup.sink.split.i341_crit_edge: ; preds = %for.inc19.i337
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i341

cleanup.sink.split.i341:                          ; preds = %for.inc19.i337.cleanup.sink.split.i341_crit_edge, %if.then15.i334
  %sub21.sink.i339 = phi i32 [ %add16.i333, %if.then15.i334 ], [ 255, %for.inc19.i337.cleanup.sink.split.i341_crit_edge ]
  %arrayidx22.i340 = getelementptr i8, ptr %clock_source_names, i32 %sub21.sink.i339
  %209 = ptrtoint ptr %arrayidx22.i340 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %arrayidx22.i340, align 1
  br label %dice_proc_fixup_string.exit342

dice_proc_fixup_string.exit342:                   ; preds = %cleanup.sink.split.i341, %for.body3.i326.dice_proc_fixup_string.exit342_crit_edge
  %210 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %211, ptr noundef nonnull @.str.49, ptr noundef %clock_source_names) #4
  br label %if.end87

if.end87:                                         ; preds = %dice_proc_fixup_string.exit342, %str_from_array.exit317.if.end87_crit_edge
  %212 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx5.1, align 4
  %214 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %unit.i, align 4
  %mul.i344 = shl i32 %213, 2
  %conv.i345 = zext i32 %mul.i344 to i64
  %add.i346 = add nuw nsw i64 %conv.i345, 281474439839744
  %call.i347 = call i32 @snd_fw_transaction(ptr noundef %215, i32 noundef 5, i64 noundef %add.i346, ptr noundef nonnull %tx_rx_header, i32 noundef 8, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %cmp90 = icmp slt i32 %call.i347, 0
  br i1 %cmp90, label %if.end87.cleanup_crit_edge, label %if.end92

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end92:                                         ; preds = %if.end87
  %216 = ptrtoint ptr %tx_rx_header to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tx_rx_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp100445.not = icmp eq i32 %217, 0
  br i1 %cmp100445.not, label %if.end92.for.end131_crit_edge, label %for.body101.lr.ph

if.end92.for.end131_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end131

for.body101.lr.ph:                                ; preds = %if.end92
  %218 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %4, align 4
  %220 = call i32 @llvm.umin.i32(i32 %219, i32 70)
  %mul1.i352 = shl nuw nsw i32 %220, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %220)
  %cmp117 = icmp ugt i32 %220, 67
  %names = getelementptr inbounds %struct.anon.97, ptr %buf, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %220)
  %cmp124 = icmp ugt i32 %220, 69
  %ac3_caps = getelementptr inbounds %struct.anon.97, ptr %buf, i32 0, i32 5
  %ac3_enable = getelementptr inbounds %struct.anon.97, ptr %buf, i32 0, i32 6
  br label %for.body101

for.body101:                                      ; preds = %for.inc129.for.body101_crit_edge, %for.body101.lr.ph
  %stream.0446 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc130, %for.inc129.for.body101_crit_edge ]
  %221 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx5.1, align 4
  %add103 = add i32 %222, 2
  %223 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %4, align 4
  %mul105 = mul i32 %224, %stream.0446
  %add106 = add i32 %add103, %mul105
  %225 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %unit.i, align 4
  %mul.i349 = shl i32 %add106, 2
  %conv.i350 = zext i32 %mul.i349 to i64
  %add.i351 = add nuw nsw i64 %conv.i350, 281474439839744
  %call.i353 = call i32 @snd_fw_transaction(ptr noundef %226, i32 noundef 5, i64 noundef %add.i351, ptr noundef nonnull %buf, i32 noundef %mul1.i352, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %cmp108 = icmp slt i32 %call.i353, 0
  br i1 %cmp108, label %for.body101.for.end131_crit_edge, label %if.end110

for.body101.for.end131_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end131

if.end110:                                        ; preds = %for.body101
  %227 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %228, ptr noundef nonnull @.str.50, i32 noundef %stream.0446) #4
  %229 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %buffer, align 4
  %231 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %buf, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %230, ptr noundef nonnull @.str.51, i32 noundef %232) #4
  %233 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %buffer, align 4
  %235 = ptrtoint ptr %owner_lo to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %owner_lo, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %234, ptr noundef nonnull @.str.52, i32 noundef %236) #4
  %237 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %buffer, align 4
  %239 = ptrtoint ptr %notification to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %notification, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %238, ptr noundef nonnull @.str.53, i32 noundef %240) #4
  %241 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %buffer, align 4
  %243 = ptrtoint ptr %nick_name to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %nick_name, align 4
  %shl116 = shl i32 100, %244
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %242, ptr noundef nonnull @.str.54, i32 noundef %shl116) #4
  br i1 %cmp117, label %if.end110.for.body.i359_crit_edge, label %if.end110.for.inc129_crit_edge

if.end110.for.inc129_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc129

if.end110.for.body.i359_crit_edge:                ; preds = %if.end110
  br label %for.body.i359

for.body.i359:                                    ; preds = %for.body.i359.for.body.i359_crit_edge, %if.end110.for.body.i359_crit_edge
  %i.041.i355 = phi i32 [ %add.i357, %for.body.i359.for.body.i359_crit_edge ], [ 0, %if.end110.for.body.i359_crit_edge ]
  %add.ptr.i356 = getelementptr i8, ptr %names, i32 %i.041.i355
  %245 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %add.ptr.i356, align 4
  %247 = call i32 @llvm.bswap.i32(i32 %246) #4
  %248 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %add.ptr.i356, align 4
  %add.i357 = add nuw nsw i32 %i.041.i355, 4
  %cmp.i358 = icmp ult i32 %i.041.i355, 252
  br i1 %cmp.i358, label %for.body.i359.for.body.i359_crit_edge, label %for.body.i359.for.body3.i362_crit_edge

for.body.i359.for.body3.i362_crit_edge:           ; preds = %for.body.i359
  br label %for.body3.i362

for.body.i359.for.body.i359_crit_edge:            ; preds = %for.body.i359
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i359

for.body3.i362:                                   ; preds = %for.inc19.i373.for.body3.i362_crit_edge, %for.body.i359.for.body3.i362_crit_edge
  %i.143.i360 = phi i32 [ %inc.pre-phi.i371, %for.inc19.i373.for.body3.i362_crit_edge ], [ 0, %for.body.i359.for.body3.i362_crit_edge ]
  %arrayidx.i361 = getelementptr i8, ptr %names, i32 %i.143.i360
  %249 = ptrtoint ptr %arrayidx.i361 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx.i361, align 1
  %251 = zext i8 %250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %250, label %for.body3.for.inc19_crit_edge.i364 [
    i8 0, label %for.body3.i362.if.end123_crit_edge
    i8 92, label %land.lhs.true.i368
  ]

for.body3.i362.if.end123_crit_edge:               ; preds = %for.body3.i362
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

for.body3.for.inc19_crit_edge.i364:               ; preds = %for.body3.i362
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i363 = add nuw i32 %i.143.i360, 1
  br label %for.inc19.i373

land.lhs.true.i368:                               ; preds = %for.body3.i362
  %add10.i365 = add nuw i32 %i.143.i360, 1
  %arrayidx11.i366 = getelementptr i8, ptr %names, i32 %add10.i365
  %252 = ptrtoint ptr %arrayidx11.i366 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx11.i366, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %253)
  %cmp13.i367 = icmp eq i8 %253, 92
  br i1 %cmp13.i367, label %if.then15.i370, label %land.lhs.true.i368.for.inc19.i373_crit_edge

land.lhs.true.i368.for.inc19.i373_crit_edge:      ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i373

if.then15.i370:                                   ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #6
  %add16.i369 = add i32 %i.143.i360, 2
  br label %cleanup.sink.split.i377

for.inc19.i373:                                   ; preds = %land.lhs.true.i368.for.inc19.i373_crit_edge, %for.body3.for.inc19_crit_edge.i364
  %inc.pre-phi.i371 = phi i32 [ %.pre.i363, %for.body3.for.inc19_crit_edge.i364 ], [ %add10.i365, %land.lhs.true.i368.for.inc19.i373_crit_edge ]
  %exitcond.not.i372 = icmp eq i32 %inc.pre-phi.i371, 254
  br i1 %exitcond.not.i372, label %for.inc19.i373.cleanup.sink.split.i377_crit_edge, label %for.inc19.i373.for.body3.i362_crit_edge

for.inc19.i373.for.body3.i362_crit_edge:          ; preds = %for.inc19.i373
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i362

for.inc19.i373.cleanup.sink.split.i377_crit_edge: ; preds = %for.inc19.i373
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i377

cleanup.sink.split.i377:                          ; preds = %for.inc19.i373.cleanup.sink.split.i377_crit_edge, %if.then15.i370
  %sub21.sink.i375 = phi i32 [ %add16.i369, %if.then15.i370 ], [ 255, %for.inc19.i373.cleanup.sink.split.i377_crit_edge ]
  %arrayidx22.i376 = getelementptr i8, ptr %names, i32 %sub21.sink.i375
  %254 = ptrtoint ptr %arrayidx22.i376 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx22.i376, align 1
  br label %if.end123

if.end123:                                        ; preds = %cleanup.sink.split.i377, %for.body3.i362.if.end123_crit_edge
  %255 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %256, ptr noundef nonnull @.str.55, ptr noundef %names) #4
  br i1 %cmp124, label %if.then125, label %if.end123.for.inc129_crit_edge

if.end123.for.inc129_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc129

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  %257 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %buffer, align 4
  %259 = ptrtoint ptr %ac3_caps to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ac3_caps, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %258, ptr noundef nonnull @.str.56, i32 noundef %260) #4
  %261 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %buffer, align 4
  %263 = ptrtoint ptr %ac3_enable to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ac3_enable, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %262, ptr noundef nonnull @.str.57, i32 noundef %264) #4
  br label %for.inc129

for.inc129:                                       ; preds = %if.then125, %if.end123.for.inc129_crit_edge, %if.end110.for.inc129_crit_edge
  %inc130 = add nuw i32 %stream.0446, 1
  %265 = ptrtoint ptr %tx_rx_header to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %tx_rx_header, align 4
  %cmp100 = icmp ult i32 %inc130, %266
  br i1 %cmp100, label %for.inc129.for.body101_crit_edge, label %for.inc129.for.end131_crit_edge

for.inc129.for.end131_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end131

for.inc129.for.body101_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body101

for.end131:                                       ; preds = %for.inc129.for.end131_crit_edge, %for.body101.for.end131_crit_edge, %if.end92.for.end131_crit_edge
  %267 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx5.2, align 4
  %269 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %unit.i, align 4
  %mul.i380 = shl i32 %268, 2
  %conv.i381 = zext i32 %mul.i380 to i64
  %add.i382 = add nuw nsw i64 %conv.i381, 281474439839744
  %call.i383 = call i32 @snd_fw_transaction(ptr noundef %270, i32 noundef 5, i64 noundef %add.i382, ptr noundef nonnull %tx_rx_header, i32 noundef 8, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %cmp134 = icmp slt i32 %call.i383, 0
  br i1 %cmp134, label %for.end131.cleanup_crit_edge, label %if.end136

for.end131.cleanup_crit_edge:                     ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end136:                                        ; preds = %for.end131
  %271 = ptrtoint ptr %tx_rx_header to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %tx_rx_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp146447.not = icmp eq i32 %272, 0
  br i1 %cmp146447.not, label %if.end136.for.end182_crit_edge, label %for.body147.lr.ph

if.end136.for.end182_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end182

for.body147.lr.ph:                                ; preds = %if.end136
  %273 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %4, align 4
  %275 = call i32 @llvm.umin.i32(i32 %274, i32 70)
  %mul1.i388 = shl nuw nsw i32 %275, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %275)
  %cmp165 = icmp ugt i32 %275, 67
  %names167 = getelementptr inbounds %struct.anon.98, ptr %buf, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %275)
  %cmp173 = icmp ugt i32 %275, 69
  %ac3_caps176 = getelementptr inbounds %struct.anon.98, ptr %buf, i32 0, i32 5
  %ac3_enable178 = getelementptr inbounds %struct.anon.98, ptr %buf, i32 0, i32 6
  br label %for.body147

for.body147:                                      ; preds = %for.inc180.for.body147_crit_edge, %for.body147.lr.ph
  %stream.1448 = phi i32 [ 0, %for.body147.lr.ph ], [ %inc181, %for.inc180.for.body147_crit_edge ]
  %276 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx5.2, align 4
  %add149 = add i32 %277, 2
  %278 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %4, align 4
  %mul151 = mul i32 %279, %stream.1448
  %add152 = add i32 %add149, %mul151
  %280 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %unit.i, align 4
  %mul.i385 = shl i32 %add152, 2
  %conv.i386 = zext i32 %mul.i385 to i64
  %add.i387 = add nuw nsw i64 %conv.i386, 281474439839744
  %call.i389 = call i32 @snd_fw_transaction(ptr noundef %281, i32 noundef 5, i64 noundef %add.i387, ptr noundef nonnull %buf, i32 noundef %mul1.i388, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %cmp154 = icmp slt i32 %call.i389, 0
  br i1 %cmp154, label %for.body147.for.end182_crit_edge, label %if.end156

for.body147.for.end182_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end182

if.end156:                                        ; preds = %for.body147
  %282 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %283, ptr noundef nonnull @.str.58, i32 noundef %stream.1448) #4
  %284 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %buffer, align 4
  %286 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %buf, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %285, ptr noundef nonnull @.str.51, i32 noundef %287) #4
  %288 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %buffer, align 4
  %290 = ptrtoint ptr %owner_lo to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %owner_lo, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %289, ptr noundef nonnull @.str.59, i32 noundef %291) #4
  %292 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %buffer, align 4
  %294 = ptrtoint ptr %notification to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %notification, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %293, ptr noundef nonnull @.str.52, i32 noundef %295) #4
  %296 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %buffer, align 4
  %298 = ptrtoint ptr %nick_name to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %nick_name, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %297, ptr noundef nonnull @.str.53, i32 noundef %299) #4
  br i1 %cmp165, label %if.end156.for.body.i395_crit_edge, label %if.end156.for.inc180_crit_edge

if.end156.for.inc180_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc180

if.end156.for.body.i395_crit_edge:                ; preds = %if.end156
  br label %for.body.i395

for.body.i395:                                    ; preds = %for.body.i395.for.body.i395_crit_edge, %if.end156.for.body.i395_crit_edge
  %i.041.i391 = phi i32 [ %add.i393, %for.body.i395.for.body.i395_crit_edge ], [ 0, %if.end156.for.body.i395_crit_edge ]
  %add.ptr.i392 = getelementptr i8, ptr %names167, i32 %i.041.i391
  %300 = ptrtoint ptr %add.ptr.i392 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %add.ptr.i392, align 4
  %302 = call i32 @llvm.bswap.i32(i32 %301) #4
  %303 = ptrtoint ptr %add.ptr.i392 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %add.ptr.i392, align 4
  %add.i393 = add nuw nsw i32 %i.041.i391, 4
  %cmp.i394 = icmp ult i32 %i.041.i391, 252
  br i1 %cmp.i394, label %for.body.i395.for.body.i395_crit_edge, label %for.body.i395.for.body3.i398_crit_edge

for.body.i395.for.body3.i398_crit_edge:           ; preds = %for.body.i395
  br label %for.body3.i398

for.body.i395.for.body.i395_crit_edge:            ; preds = %for.body.i395
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i395

for.body3.i398:                                   ; preds = %for.inc19.i409.for.body3.i398_crit_edge, %for.body.i395.for.body3.i398_crit_edge
  %i.143.i396 = phi i32 [ %inc.pre-phi.i407, %for.inc19.i409.for.body3.i398_crit_edge ], [ 0, %for.body.i395.for.body3.i398_crit_edge ]
  %arrayidx.i397 = getelementptr i8, ptr %names167, i32 %i.143.i396
  %304 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx.i397, align 1
  %306 = zext i8 %305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %305, label %for.body3.for.inc19_crit_edge.i400 [
    i8 0, label %for.body3.i398.if.end172_crit_edge
    i8 92, label %land.lhs.true.i404
  ]

for.body3.i398.if.end172_crit_edge:               ; preds = %for.body3.i398
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end172

for.body3.for.inc19_crit_edge.i400:               ; preds = %for.body3.i398
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i399 = add nuw i32 %i.143.i396, 1
  br label %for.inc19.i409

land.lhs.true.i404:                               ; preds = %for.body3.i398
  %add10.i401 = add nuw i32 %i.143.i396, 1
  %arrayidx11.i402 = getelementptr i8, ptr %names167, i32 %add10.i401
  %307 = ptrtoint ptr %arrayidx11.i402 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx11.i402, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %308)
  %cmp13.i403 = icmp eq i8 %308, 92
  br i1 %cmp13.i403, label %if.then15.i406, label %land.lhs.true.i404.for.inc19.i409_crit_edge

land.lhs.true.i404.for.inc19.i409_crit_edge:      ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i409

if.then15.i406:                                   ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #6
  %add16.i405 = add i32 %i.143.i396, 2
  br label %cleanup.sink.split.i413

for.inc19.i409:                                   ; preds = %land.lhs.true.i404.for.inc19.i409_crit_edge, %for.body3.for.inc19_crit_edge.i400
  %inc.pre-phi.i407 = phi i32 [ %.pre.i399, %for.body3.for.inc19_crit_edge.i400 ], [ %add10.i401, %land.lhs.true.i404.for.inc19.i409_crit_edge ]
  %exitcond.not.i408 = icmp eq i32 %inc.pre-phi.i407, 254
  br i1 %exitcond.not.i408, label %for.inc19.i409.cleanup.sink.split.i413_crit_edge, label %for.inc19.i409.for.body3.i398_crit_edge

for.inc19.i409.for.body3.i398_crit_edge:          ; preds = %for.inc19.i409
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i398

for.inc19.i409.cleanup.sink.split.i413_crit_edge: ; preds = %for.inc19.i409
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i413

cleanup.sink.split.i413:                          ; preds = %for.inc19.i409.cleanup.sink.split.i413_crit_edge, %if.then15.i406
  %sub21.sink.i411 = phi i32 [ %add16.i405, %if.then15.i406 ], [ 255, %for.inc19.i409.cleanup.sink.split.i413_crit_edge ]
  %arrayidx22.i412 = getelementptr i8, ptr %names167, i32 %sub21.sink.i411
  %309 = ptrtoint ptr %arrayidx22.i412 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %arrayidx22.i412, align 1
  br label %if.end172

if.end172:                                        ; preds = %cleanup.sink.split.i413, %for.body3.i398.if.end172_crit_edge
  %310 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %311, ptr noundef nonnull @.str.55, ptr noundef %names167) #4
  br i1 %cmp173, label %if.then174, label %if.end172.for.inc180_crit_edge

if.end172.for.inc180_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc180

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #6
  %312 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %buffer, align 4
  %314 = ptrtoint ptr %ac3_caps176 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %ac3_caps176, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %313, ptr noundef nonnull @.str.56, i32 noundef %315) #4
  %316 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %buffer, align 4
  %318 = ptrtoint ptr %ac3_enable178 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ac3_enable178, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %317, ptr noundef nonnull @.str.57, i32 noundef %319) #4
  br label %for.inc180

for.inc180:                                       ; preds = %if.then174, %if.end172.for.inc180_crit_edge, %if.end156.for.inc180_crit_edge
  %inc181 = add nuw i32 %stream.1448, 1
  %320 = ptrtoint ptr %tx_rx_header to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %tx_rx_header, align 4
  %cmp146 = icmp ult i32 %inc181, %321
  br i1 %cmp146, label %for.inc180.for.body147_crit_edge, label %for.inc180.for.end182_crit_edge

for.inc180.for.end182_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end182

for.inc180.for.body147_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body147

for.end182:                                       ; preds = %for.inc180.for.end182_crit_edge, %for.body147.for.end182_crit_edge, %if.end136.for.end182_crit_edge
  %322 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %323)
  %cmp185 = icmp ult i32 %323, 4
  br i1 %cmp185, label %for.end182.cleanup_crit_edge, label %if.then191

for.end182.cleanup_crit_edge:                     ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then191:                                       ; preds = %for.end182
  %324 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx5.3, align 4
  %326 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %unit.i, align 4
  %mul.i416 = shl i32 %325, 2
  %conv.i417 = zext i32 %mul.i416 to i64
  %add.i418 = add nuw nsw i64 %conv.i417, 281474439839744
  %call.i419 = call i32 @snd_fw_transaction(ptr noundef %327, i32 noundef 5, i64 noundef %add.i418, ptr noundef nonnull %buf, i32 noundef 16, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %cmp194 = icmp slt i32 %call.i419, 0
  br i1 %cmp194, label %if.then191.cleanup_crit_edge, label %if.end196

if.then191.cleanup_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end196:                                        ; preds = %if.then191
  %328 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %329, ptr noundef nonnull @.str.60) #4
  %330 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %buffer, align 4
  %332 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %333)
  %cmp.i420 = icmp ult i32 %333, 13
  br i1 %cmp.i420, label %if.then.i422, label %if.end196.str_from_array.exit424_crit_edge

if.end196.str_from_array.exit424_crit_edge:       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  br label %str_from_array.exit424

if.then.i422:                                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i421 = getelementptr ptr, ptr @dice_proc_read.clock_sources, i32 %333
  %334 = ptrtoint ptr %arrayidx.i421 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx.i421, align 4
  br label %str_from_array.exit424

str_from_array.exit424:                           ; preds = %if.then.i422, %if.end196.str_from_array.exit424_crit_edge
  %retval.0.i423 = phi ptr [ %335, %if.then.i422 ], [ @.str.67, %if.end196.str_from_array.exit424_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %331, ptr noundef nonnull @.str.61, ptr noundef %retval.0.i423) #4
  %336 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %buffer, align 4
  %338 = ptrtoint ptr %owner_lo to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %owner_lo, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %337, ptr noundef nonnull @.str.62, i32 noundef %339) #4
  %340 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %buffer, align 4
  %342 = ptrtoint ptr %notification to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %notification, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %343)
  %cmp.i425 = icmp ult i32 %343, 11
  br i1 %cmp.i425, label %if.then.i427, label %str_from_array.exit424.str_from_array.exit429_crit_edge

str_from_array.exit424.str_from_array.exit429_crit_edge: ; preds = %str_from_array.exit424
  call void @__sanitizer_cov_trace_pc() #6
  br label %str_from_array.exit429

if.then.i427:                                     ; preds = %str_from_array.exit424
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i426 = getelementptr ptr, ptr @dice_proc_read.rates, i32 %343
  %344 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx.i426, align 4
  br label %str_from_array.exit429

str_from_array.exit429:                           ; preds = %if.then.i427, %str_from_array.exit424.str_from_array.exit429_crit_edge
  %retval.0.i428 = phi ptr [ %345, %if.then.i427 ], [ @.str.67, %str_from_array.exit424.str_from_array.exit429_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %341, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i428) #4
  %346 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %347, ptr noundef nonnull @.str.64) #4
  %348 = ptrtoint ptr %nick_name to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %nick_name, align 4
  %and204 = and i32 %349, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  %350 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %buffer, align 4
  br i1 %tobool205.not, label %if.else, label %if.then206

if.then206:                                       ; preds = %str_from_array.exit429
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %351, ptr noundef nonnull @.str.65) #4
  br label %cleanup

if.else:                                          ; preds = %str_from_array.exit429
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %351, ptr noundef nonnull @.str.66, i32 noundef %349) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then206, %if.then191.cleanup_crit_edge, %for.end182.cleanup_crit_edge, %for.end131.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_rx_header) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sections) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_proc_read_formation(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.71) #4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) #4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69) #4
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #4
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.73) #4
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.74, i32 noundef 0) #4
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx14 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 0, i32 0
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.75, i32 noundef %17) #4
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx14.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.75, i32 noundef %21) #4
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx14.2 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.75, i32 noundef %25) #4
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %arrayidx19 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 12, i32 0
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.76, i32 noundef %29) #4
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.74, i32 noundef 1) #4
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx14.191 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 1, i32 0
  %34 = ptrtoint ptr %arrayidx14.191 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14.191, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.75, i32 noundef %35) #4
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx14.1.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx14.1.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14.1.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.75, i32 noundef %39) #4
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %arrayidx14.2.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 10, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx14.2.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx14.2.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.75, i32 noundef %43) #4
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %arrayidx19.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx19.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.76, i32 noundef %47) #4
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.77) #4
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) #4
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69) #4
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #4
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.48) #4
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.78, i32 noundef 0) #4
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %arrayidx42 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 0, i32 0
  %62 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.75, i32 noundef %63) #4
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %arrayidx42.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx42.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.75, i32 noundef %67) #4
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %arrayidx42.2 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx42.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.75, i32 noundef %71) #4
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer, align 4
  %arrayidx47 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 13, i32 0
  %74 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx47, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %73, ptr noundef nonnull @.str.76, i32 noundef %75) #4
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.78, i32 noundef 1) #4
  %78 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer, align 4
  %arrayidx42.192 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 1, i32 0
  %80 = ptrtoint ptr %arrayidx42.192 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx42.192, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull @.str.75, i32 noundef %81) #4
  %82 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer, align 4
  %arrayidx42.1.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx42.1.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx42.1.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %83, ptr noundef nonnull @.str.75, i32 noundef %85) #4
  %86 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer, align 4
  %arrayidx42.2.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 11, i32 1, i32 2
  %88 = ptrtoint ptr %arrayidx42.2.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx42.2.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %87, ptr noundef nonnull @.str.75, i32 noundef %89) #4
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  %arrayidx47.1 = getelementptr %struct.snd_dice, ptr %1, i32 0, i32 13, i32 1
  %92 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx47.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull @.str.76, i32 noundef %93) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-proc.c", i32 299, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-proc.c", i32 305, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice-proc.c", i32 306, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/dice/dice-proc.c", i32 60, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/dice/dice-proc.c", i32 60, i32 13}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/dice/dice-proc.c", i32 60, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/dice/dice-proc.c", i32 60, i32 25}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/dice/dice-proc.c", i32 60, i32 37}
!16 = distinct !{null, !17, !"section_names", i1 false, i1 false}
!17 = !{!"../sound/firewire/dice/dice-proc.c", i32 59, i32 27}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 19}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 27}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 35}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 42}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/dice/dice-proc.c", i32 63, i32 50}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 9}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 25}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 33}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/dice/dice-proc.c", i32 64, i32 41}
!44 = !{ptr @dice_proc_read.clock_sources, !45, !"clock_sources", i1 false, i1 false}
!45 = !{!"../sound/firewire/dice/dice-proc.c", i32 62, i32 27}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 12}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 21}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 30}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 39}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 48}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/firewire/dice/dice-proc.c", i32 67, i32 58}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/firewire/dice/dice-proc.c", i32 68, i32 3}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/firewire/dice/dice-proc.c", i32 68, i32 14}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/firewire/dice/dice-proc.c", i32 68, i32 25}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/firewire/dice/dice-proc.c", i32 68, i32 37}
!68 = !{ptr @dice_proc_read.rates, !69, !"rates", i1 false, i1 false}
!69 = !{!"../sound/firewire/dice/dice-proc.c", i32 66, i32 27}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/firewire/dice/dice-proc.c", i32 119, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/firewire/dice/dice-proc.c", i32 121, i32 3}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/firewire/dice/dice-proc.c", i32 128, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/firewire/dice/dice-proc.c", i32 129, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/firewire/dice/dice-proc.c", i32 132, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/firewire/dice/dice-proc.c", i32 134, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/firewire/dice/dice-proc.c", i32 135, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/firewire/dice/dice-proc.c", i32 141, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/firewire/dice/dice-proc.c", i32 142, i32 2}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/firewire/dice/dice-proc.c", i32 148, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/firewire/dice/dice-proc.c", i32 149, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/firewire/dice/dice-proc.c", i32 151, i32 3}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/firewire/dice/dice-proc.c", i32 156, i32 3}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/firewire/dice/dice-proc.c", i32 159, i32 5}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/firewire/dice/dice-proc.c", i32 163, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/firewire/dice/dice-proc.c", i32 166, i32 3}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/firewire/dice/dice-proc.c", i32 178, i32 3}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/firewire/dice/dice-proc.c", i32 179, i32 3}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/firewire/dice/dice-proc.c", i32 180, i32 3}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/firewire/dice/dice-proc.c", i32 182, i32 3}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/firewire/dice/dice-proc.c", i32 183, i32 3}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/firewire/dice/dice-proc.c", i32 186, i32 4}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/firewire/dice/dice-proc.c", i32 189, i32 4}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/firewire/dice/dice-proc.c", i32 191, i32 4}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/firewire/dice/dice-proc.c", i32 204, i32 3}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/firewire/dice/dice-proc.c", i32 206, i32 3}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/firewire/dice/dice-proc.c", i32 227, i32 3}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/firewire/dice/dice-proc.c", i32 228, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/firewire/dice/dice-proc.c", i32 232, i32 3}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/firewire/dice/dice-proc.c", i32 233, i32 3}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/firewire/dice/dice-proc.c", i32 236, i32 3}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/firewire/dice/dice-proc.c", i32 238, i32 4}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/firewire/dice/dice-proc.c", i32 240, i32 4}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/firewire/dice/dice-proc.c", i32 35, i32 9}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/firewire/dice/dice-proc.c", i32 249, i32 30}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/firewire/dice/dice-proc.c", i32 250, i32 33}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/firewire/dice/dice-proc.c", i32 251, i32 31}
!146 = distinct !{null, !147, !"rate_labels", i1 false, i1 false}
!147 = !{!"../sound/firewire/dice/dice-proc.c", i32 248, i32 27}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/firewire/dice/dice-proc.c", i32 256, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/firewire/dice/dice-proc.c", i32 258, i32 3}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/firewire/dice/dice-proc.c", i32 259, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/firewire/dice/dice-proc.c", i32 261, i32 3}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/firewire/dice/dice-proc.c", i32 263, i32 4}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/firewire/dice/dice-proc.c", i32 264, i32 3}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/firewire/dice/dice-proc.c", i32 267, i32 2}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/firewire/dice/dice-proc.c", i32 272, i32 3}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
