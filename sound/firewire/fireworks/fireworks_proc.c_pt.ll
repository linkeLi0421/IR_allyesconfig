; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_proc.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_proc.c"
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
%struct.snd_efw_hwinfo = type { i32, i32, i32, i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], i32, [8 x %struct.snd_efw_phys_grp], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_efw_phys_meters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firewire\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"meters\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clock Source: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sampling Rate: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"guid_hi: 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"guid_lo: 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"type: 0x%X\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version: 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vendor_name: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"model_name: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsp_version: 0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_version: 0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fpga_version: 0x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flags: 0x%X\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_sample_rate: 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"min_sample_rate: 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"supported_clock: 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phys out: 0x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phys in: 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phys in grps: 0x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"phys in grp[%d]: type 0x%X, count 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phys out grps: 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"phys out grps[%d]: type 0x%X, count 0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp rx pcm channels 1x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp tx pcm channels 1x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp rx pcm channels 2x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp tx pcm channels 2x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp rx pcm channels 4x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdtp tx pcm channels 4x: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"midi out ports: 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"midi in ports: 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mixer playback channels: 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mixer capture channels: 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Physical Meters:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %d Outputs:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09%s [%d]: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" %d Inputs:\0A\00", [19 x i8] zeroinitializer }, align 32
@get_phys_name.ch_type = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S/PDIF or ADAT\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mirroring\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Headphones\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Guitar\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pirzo Guitar\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Guitar String\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Input\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Output\00", [25 x i8] zeroinitializer }, align 32
@snd_efw_resp_buf_size = external dso_local local_unnamed_addr global i32, align 4
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d/%d\0A\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 213, i32 47 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 219, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 220, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 221, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 222, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 117, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 118, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 41, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 42, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 43, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 44, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 45, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 46, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 48, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 49, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 50, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 52, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 54, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 55, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 56, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 59, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 60, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 62, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 65, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 71, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 74, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 80, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 82, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 84, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 86, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 88, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 90, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 93, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 94, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 96, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 98, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 147, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 152, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 157, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 165, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [8 x i8] c"ch_type\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 14, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 15, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 15, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 15, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 15, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 15, i32 49 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 16, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 16, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 16, i32 24 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 16, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 16, i32 50 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 22, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 24, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [45 x i8] c"../sound/firewire/fireworks/fireworks_proc.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 190, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @get_phys_name.ch_type, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_phys_name.ch_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_proc_init(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efw, align 8
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %proc_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_root, align 8
  %call = tail call ptr @snd_info_create_card_entry(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %3) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16749, ptr %mode, align 4
  %5 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %efw, align 8
  %call.i = tail call ptr @snd_info_create_card_entry(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.add_node.exit_crit_edge, label %if.then.i

if.end.add_node.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_node.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %efw, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_read_clock, ptr %c.i.i, align 4
  br label %add_node.exit

add_node.exit:                                    ; preds = %if.then.i, %if.end.add_node.exit_crit_edge
  %9 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %efw, align 8
  %call.i12 = tail call ptr @snd_info_create_card_entry(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #6
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %add_node.exit.add_node.exit17_crit_edge, label %if.then.i16

add_node.exit.add_node.exit17_crit_edge:          ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_node.exit17

if.then.i16:                                      ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i14 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i12, i32 0, i32 7
  %11 = ptrtoint ptr %private_data2.i.i14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %efw, ptr %private_data2.i.i14, align 4
  %c.i.i15 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i12, i32 0, i32 4
  %12 = ptrtoint ptr %c.i.i15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @proc_read_hwinfo, ptr %c.i.i15, align 4
  br label %add_node.exit17

add_node.exit17:                                  ; preds = %if.then.i16, %add_node.exit.add_node.exit17_crit_edge
  %13 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %efw, align 8
  %call.i18 = tail call ptr @snd_info_create_card_entry(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %call) #6
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %add_node.exit17.add_node.exit23_crit_edge, label %if.then.i22

add_node.exit17.add_node.exit23_crit_edge:        ; preds = %add_node.exit17
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_node.exit23

if.then.i22:                                      ; preds = %add_node.exit17
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i20 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18, i32 0, i32 7
  %15 = ptrtoint ptr %private_data2.i.i20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %efw, ptr %private_data2.i.i20, align 4
  %c.i.i21 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18, i32 0, i32 4
  %16 = ptrtoint ptr %c.i.i21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @proc_read_phys_meters, ptr %c.i.i21, align 4
  br label %add_node.exit23

add_node.exit23:                                  ; preds = %if.then.i22, %add_node.exit17.add_node.exit23_crit_edge
  %17 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efw, align 8
  %call.i24 = tail call ptr @snd_info_create_card_entry(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #6
  %tobool.not.i25 = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i25, label %add_node.exit23.cleanup_crit_edge, label %if.then.i28

add_node.exit23.cleanup_crit_edge:                ; preds = %add_node.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i28:                                      ; preds = %add_node.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i26 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i24, i32 0, i32 7
  %19 = ptrtoint ptr %private_data2.i.i26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %efw, ptr %private_data2.i.i26, align 4
  %c.i.i27 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i24, i32 0, i32 4
  %20 = ptrtoint ptr %c.i.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @proc_read_queues_state, ptr %c.i.i27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i28, %add_node.exit23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_clock(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %clock_source = alloca i32, align 4
  %sampling_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_source) #6
  %2 = ptrtoint ptr %clock_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clock_source, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sampling_rate) #6
  %3 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sampling_rate, align 4, !annotation !117
  %call = call i32 @snd_efw_command_get_clock_source(ptr noundef %1, ptr noundef nonnull %clock_source) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @snd_efw_command_get_sampling_rate(ptr noundef %1, ptr noundef nonnull %sampling_rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_source, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #6
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sampling_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sampling_rate) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_source) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_hwinfo(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 260) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_efw_command_get_hwinfo(ptr noundef %1, ptr noundef nonnull %call7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.end_crit_edge, label %if.end5

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %guid_hi = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %guid_hi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %guid_hi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %6) #6
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %guid_lo = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %guid_lo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %guid_lo, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %10) #6
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %type = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef %14) #6
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %version = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 4
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %18) #6
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %vendor_name = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef %vendor_name) #6
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %model_name = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef %model_name) #6
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %dsp_version = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 20
  %25 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsp_version, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %26) #6
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %arm_version = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 21
  %29 = ptrtoint ptr %arm_version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arm_version, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %30) #6
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %fpga_version = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 24
  %33 = ptrtoint ptr %fpga_version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fpga_version, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %34) #6
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call7.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.16, i32 noundef %38) #6
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %max_sample_rate = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 18
  %41 = ptrtoint ptr %max_sample_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_sample_rate, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.17, i32 noundef %42) #6
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %min_sample_rate = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 19
  %45 = ptrtoint ptr %min_sample_rate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_sample_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.18, i32 noundef %46) #6
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %supported_clocks = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 7
  %49 = ptrtoint ptr %supported_clocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %supported_clocks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.19, i32 noundef %50) #6
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %phys_out = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 10
  %53 = ptrtoint ptr %phys_out to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys_out, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.20, i32 noundef %54) #6
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  %phys_in = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 11
  %57 = ptrtoint ptr %phys_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phys_in, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.21, i32 noundef %58) #6
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %phys_in_grp_count = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 14
  %61 = ptrtoint ptr %phys_in_grp_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phys_in_grp_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.22, i32 noundef %62) #6
  %63 = ptrtoint ptr %phys_in_grp_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phys_in_grp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp24140.not = icmp eq i32 %64, 0
  br i1 %cmp24140.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %conv142 = phi i32 [ %conv, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %i.0141 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 13, i32 %conv142
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 2
  %conv29 = zext i8 %68 to i32
  %count = getelementptr %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 13, i32 %conv142, i32 1
  %69 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %count, align 1
  %conv33 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %66, ptr noundef nonnull @.str.23, i32 noundef %conv142, i32 noundef %conv29, i32 noundef %conv33) #6
  %inc = add i16 %i.0141, 1
  %conv = zext i16 %inc to i32
  %71 = ptrtoint ptr %phys_in_grp_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phys_in_grp_count, align 4
  %cmp24 = icmp ugt i32 %72, %conv
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  %phys_out_grp_count = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 12
  %75 = ptrtoint ptr %phys_out_grp_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phys_out_grp_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.24, i32 noundef %76) #6
  %77 = ptrtoint ptr %phys_out_grp_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phys_out_grp_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp38143.not = icmp eq i32 %78, 0
  br i1 %cmp38143.not, label %for.end.for.end55_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.for.end55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %conv36145 = phi i32 [ %conv36, %for.body40.for.body40_crit_edge ], [ 0, %for.end.for.body40_crit_edge ]
  %i.1144 = phi i16 [ %inc54, %for.body40.for.body40_crit_edge ], [ 0, %for.end.for.body40_crit_edge ]
  %79 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer, align 4
  %arrayidx45 = getelementptr %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 13, i32 %conv36145
  %81 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx45, align 2
  %conv47 = zext i8 %82 to i32
  %count51 = getelementptr %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 13, i32 %conv36145, i32 1
  %83 = ptrtoint ptr %count51 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %count51, align 1
  %conv52 = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %80, ptr noundef nonnull @.str.25, i32 noundef %conv36145, i32 noundef %conv47, i32 noundef %conv52) #6
  %inc54 = add i16 %i.1144, 1
  %conv36 = zext i16 %inc54 to i32
  %85 = ptrtoint ptr %phys_out_grp_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phys_out_grp_count, align 8
  %cmp38 = icmp ugt i32 %86, %conv36
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.for.end55_crit_edge

for.body40.for.end55_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40

for.end55:                                        ; preds = %for.body40.for.end55_crit_edge, %for.end.for.end55_crit_edge
  %87 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer, align 4
  %amdtp_rx_pcm_channels = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 8
  %89 = ptrtoint ptr %amdtp_rx_pcm_channels to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %amdtp_rx_pcm_channels, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.26, i32 noundef %90) #6
  %91 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buffer, align 4
  %amdtp_tx_pcm_channels = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 9
  %93 = ptrtoint ptr %amdtp_tx_pcm_channels to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %amdtp_tx_pcm_channels, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %92, ptr noundef nonnull @.str.27, i32 noundef %94) #6
  %95 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer, align 4
  %amdtp_rx_pcm_channels_2x = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 25
  %97 = ptrtoint ptr %amdtp_rx_pcm_channels_2x to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %amdtp_rx_pcm_channels_2x, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %96, ptr noundef nonnull @.str.28, i32 noundef %98) #6
  %99 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buffer, align 4
  %amdtp_tx_pcm_channels_2x = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 26
  %101 = ptrtoint ptr %amdtp_tx_pcm_channels_2x to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %amdtp_tx_pcm_channels_2x, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %100, ptr noundef nonnull @.str.29, i32 noundef %102) #6
  %103 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffer, align 4
  %amdtp_rx_pcm_channels_4x = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 27
  %105 = ptrtoint ptr %amdtp_rx_pcm_channels_4x to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %amdtp_rx_pcm_channels_4x, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %104, ptr noundef nonnull @.str.30, i32 noundef %106) #6
  %107 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buffer, align 4
  %amdtp_tx_pcm_channels_4x = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 28
  %109 = ptrtoint ptr %amdtp_tx_pcm_channels_4x to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %amdtp_tx_pcm_channels_4x, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %108, ptr noundef nonnull @.str.31, i32 noundef %110) #6
  %111 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buffer, align 4
  %midi_out_ports = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 16
  %113 = ptrtoint ptr %midi_out_ports to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %midi_out_ports, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %112, ptr noundef nonnull @.str.32, i32 noundef %114) #6
  %115 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buffer, align 4
  %midi_in_ports = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 17
  %117 = ptrtoint ptr %midi_in_ports to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %midi_in_ports, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %116, ptr noundef nonnull @.str.33, i32 noundef %118) #6
  %119 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer, align 4
  %mixer_playback_channels = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 22
  %121 = ptrtoint ptr %mixer_playback_channels to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mixer_playback_channels, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %120, ptr noundef nonnull @.str.34, i32 noundef %122) #6
  %123 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buffer, align 4
  %mixer_capture_channels = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i, i32 0, i32 23
  %125 = ptrtoint ptr %mixer_capture_channels to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mixer_capture_channels, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %124, ptr noundef nonnull @.str.35, i32 noundef %126) #6
  br label %end

end:                                              ; preds = %for.end55, %if.end.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_phys_meters(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %phys_in = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %phys_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_in, align 8
  %phys_out = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %phys_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_out, align 4
  %add = add i32 %5, %3
  %mul = shl i32 %add, 2
  %add2 = add i32 %mul, 36
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @snd_efw_command_get_phys_meters(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %add2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.end_crit_edge, label %if.end6

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.36) #6
  %8 = ptrtoint ptr %phys_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys_out, align 4
  %out_meters = getelementptr inbounds %struct.snd_efw_phys_meters, ptr %call9.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %out_meters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_meters, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %values = getelementptr inbounds %struct.snd_efw_phys_meters, ptr %call9.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.37, i32 noundef %12) #6
  %phys_out_grp_count = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %phys_out_grp_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys_out_grp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11143.not = icmp eq i32 %16, 0
  br i1 %cmp11143.not, label %if.end6.for.end28_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end28_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %if.end6.for.body_crit_edge
  %m.0145 = phi i32 [ %m.1.lcssa, %for.inc26.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %g.0144 = phi i32 [ %inc27, %for.inc26.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_efw, ptr %1, i32 0, i32 24, i32 %g.0144
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp.i = icmp ult i8 %18, 10
  br i1 %cmp.i, label %if.then.i, label %for.body.get_phys_name.exit_crit_edge

for.body.get_phys_name.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_phys_name.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [10 x ptr], ptr @get_phys_name.ch_type, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  br label %get_phys_name.exit

get_phys_name.exit:                               ; preds = %if.then.i, %for.body.get_phys_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.then.i ], [ @.str.51, %for.body.get_phys_name.exit_crit_edge ]
  %count = getelementptr %struct.snd_efw, ptr %1, i32 0, i32 24, i32 %g.0144, i32 1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp16139.not = icmp eq i8 %22, 0
  br i1 %cmp16139.not, label %get_phys_name.exit.for.inc26_crit_edge, label %get_phys_name.exit.for.body18_crit_edge

get_phys_name.exit.for.body18_crit_edge:          ; preds = %get_phys_name.exit
  br label %for.body18

get_phys_name.exit.for.inc26_crit_edge:           ; preds = %get_phys_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %get_phys_name.exit.for.body18_crit_edge
  %m.1142 = phi i32 [ %m.2, %for.inc.for.body18_crit_edge ], [ %m.0145, %get_phys_name.exit.for.body18_crit_edge ]
  %c.0140 = phi i32 [ %inc25, %for.inc.for.body18_crit_edge ], [ 0, %get_phys_name.exit.for.body18_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %m.1142, i32 %12)
  %cmp19 = icmp ult i32 %m.1142, %12
  br i1 %cmp19, label %if.then21, label %for.body18.for.inc_crit_edge

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then21:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %inc = add nuw i32 %m.1142, 1
  %arrayidx23 = getelementptr i32, ptr %values, i32 %m.1142
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i, i32 noundef %c.0140, i32 noundef %26) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %for.body18.for.inc_crit_edge
  %m.2 = phi i32 [ %inc, %if.then21 ], [ %m.1142, %for.body18.for.inc_crit_edge ]
  %inc25 = add nuw nsw i32 %c.0140, 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count, align 1
  %conv = zext i8 %28 to i32
  %cmp16 = icmp ult i32 %inc25, %conv
  br i1 %cmp16, label %for.inc.for.body18_crit_edge, label %for.inc.for.inc26_crit_edge

for.inc.for.inc26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.inc26:                                        ; preds = %for.inc.for.inc26_crit_edge, %get_phys_name.exit.for.inc26_crit_edge
  %m.1.lcssa = phi i32 [ %m.0145, %get_phys_name.exit.for.inc26_crit_edge ], [ %m.2, %for.inc.for.inc26_crit_edge ]
  %inc27 = add nuw i32 %g.0144, 1
  %29 = ptrtoint ptr %phys_out_grp_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys_out_grp_count, align 4
  %cmp11 = icmp ult i32 %inc27, %30
  br i1 %cmp11, label %for.inc26.for.body_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %if.end6.for.end28_crit_edge
  %31 = ptrtoint ptr %phys_in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_in, align 8
  %in_meters = getelementptr inbounds %struct.snd_efw_phys_meters, ptr %call9.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %in_meters to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_meters, align 8
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = ptrtoint ptr %out_meters to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out_meters, align 4
  %add.ptr = getelementptr i32, ptr %values, i32 %37
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.39, i32 noundef %35) #6
  %phys_in_grp_count = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 23
  %40 = ptrtoint ptr %phys_in_grp_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phys_in_grp_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp42152.not = icmp eq i32 %41, 0
  br i1 %cmp42152.not, label %for.end28.end_crit_edge, label %for.end28.for.body44_crit_edge

for.end28.for.body44_crit_edge:                   ; preds = %for.end28
  br label %for.body44

for.end28.end_crit_edge:                          ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body44:                                       ; preds = %for.inc65.for.body44_crit_edge, %for.end28.for.body44_crit_edge
  %m.3154 = phi i32 [ %m.4.lcssa, %for.inc65.for.body44_crit_edge ], [ 0, %for.end28.for.body44_crit_edge ]
  %g.1153 = phi i32 [ %inc66, %for.inc65.for.body44_crit_edge ], [ 0, %for.end28.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.snd_efw, ptr %1, i32 0, i32 25, i32 %g.1153
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %43)
  %cmp.i127 = icmp ult i8 %43, 10
  br i1 %cmp.i127, label %if.then.i130, label %for.body44.get_phys_name.exit133_crit_edge

for.body44.get_phys_name.exit133_crit_edge:       ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_phys_name.exit133

if.then.i130:                                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i128 = zext i8 %43 to i32
  %arrayidx.i129 = getelementptr [10 x ptr], ptr @get_phys_name.ch_type, i32 0, i32 %conv.i128
  %44 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i129, align 4
  br label %get_phys_name.exit133

get_phys_name.exit133:                            ; preds = %if.then.i130, %for.body44.get_phys_name.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %45, %if.then.i130 ], [ @.str.50, %for.body44.get_phys_name.exit133_crit_edge ]
  %count50 = getelementptr %struct.snd_efw, ptr %1, i32 0, i32 25, i32 %g.1153, i32 1
  %46 = ptrtoint ptr %count50 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %count50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp52147.not = icmp eq i8 %47, 0
  br i1 %cmp52147.not, label %get_phys_name.exit133.for.inc65_crit_edge, label %get_phys_name.exit133.for.body54_crit_edge

get_phys_name.exit133.for.body54_crit_edge:       ; preds = %get_phys_name.exit133
  br label %for.body54

get_phys_name.exit133.for.inc65_crit_edge:        ; preds = %get_phys_name.exit133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65

for.body54:                                       ; preds = %for.inc62.for.body54_crit_edge, %get_phys_name.exit133.for.body54_crit_edge
  %m.4150 = phi i32 [ %m.5, %for.inc62.for.body54_crit_edge ], [ %m.3154, %get_phys_name.exit133.for.body54_crit_edge ]
  %c.1148 = phi i32 [ %inc63, %for.inc62.for.body54_crit_edge ], [ 0, %get_phys_name.exit133.for.body54_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %m.4150, i32 %35)
  %cmp55 = icmp ult i32 %m.4150, %35
  br i1 %cmp55, label %if.then57, label %for.body54.for.inc62_crit_edge

for.body54.for.inc62_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then57:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %inc59 = add nuw i32 %m.4150, 1
  %arrayidx60 = getelementptr i32, ptr %add.ptr, i32 %m.4150
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx60, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i132, i32 noundef %c.1148, i32 noundef %51) #6
  br label %for.inc62

for.inc62:                                        ; preds = %if.then57, %for.body54.for.inc62_crit_edge
  %m.5 = phi i32 [ %inc59, %if.then57 ], [ %m.4150, %for.body54.for.inc62_crit_edge ]
  %inc63 = add nuw nsw i32 %c.1148, 1
  %52 = ptrtoint ptr %count50 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %count50, align 1
  %conv51 = zext i8 %53 to i32
  %cmp52 = icmp ult i32 %inc63, %conv51
  br i1 %cmp52, label %for.inc62.for.body54_crit_edge, label %for.inc62.for.inc65_crit_edge

for.inc62.for.inc65_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65

for.inc62.for.body54_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

for.inc65:                                        ; preds = %for.inc62.for.inc65_crit_edge, %get_phys_name.exit133.for.inc65_crit_edge
  %m.4.lcssa = phi i32 [ %m.3154, %get_phys_name.exit133.for.inc65_crit_edge ], [ %m.5, %for.inc62.for.inc65_crit_edge ]
  %inc66 = add nuw i32 %g.1153, 1
  %54 = ptrtoint ptr %phys_in_grp_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys_in_grp_count, align 8
  %cmp42 = icmp ult i32 %inc66, %55
  br i1 %cmp42, label %for.inc65.for.body44_crit_edge, label %for.inc65.end_crit_edge

for.inc65.end_crit_edge:                          ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.inc65.for.body44_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

end:                                              ; preds = %for.inc65.end_crit_edge, %for.end28.end_crit_edge, %if.end.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_queues_state(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pull_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pull_ptr, align 4
  %push_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %push_ptr, align 8
  %cmp = icmp ugt ptr %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %6 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast6 = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast7 = ptrtoint ptr %3 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %consumed.0 = phi i32 [ %sub, %if.then ], [ %sub.ptr.sub8, %if.else ]
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %9 = load i32, ptr @snd_efw_resp_buf_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef %consumed.0, i32 noundef %9) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_sampling_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_hwinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_phys_meters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 213, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 219, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 220, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 221, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 222, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 117, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 118, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 41, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 42, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 43, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 44, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 45, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 46, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 48, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 49, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 50, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 52, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 54, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 55, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 56, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 59, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 60, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 62, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 65, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 71, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 74, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 80, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 82, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 84, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 86, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 88, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 90, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 93, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 94, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 96, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 98, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 147, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 152, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 157, i32 5}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 165, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 15, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 15, i32 13}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 15, i32 23}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 15, i32 31}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 15, i32 49}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 16, i32 3}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 16, i32 17}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 16, i32 24}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 16, i32 34}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 16, i32 50}
!100 = !{ptr @get_phys_name.ch_type, !101, !"ch_type", i1 false, i1 false}
!101 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 14, i32 27}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 22, i32 10}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 24, i32 10}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/firewire/fireworks/fireworks_proc.c", i32 190, i32 2}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
