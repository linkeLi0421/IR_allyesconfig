; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_proc.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_proc.c"
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
%struct.snd_bebob = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, ptr, i32, i32, i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, [7 x %struct.snd_bebob_stream_formation], [7 x %struct.snd_bebob_stream_formation], i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.hw_info = type { i64, i32, i32, [2 x i32], i32, i32, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.snd_bebob_meter_spec = type { i32, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firewire\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"formation\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"meter\00", [26 x i8] zeroinitializer }, align 32
@proc_read_clock.clk_labels = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"External\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYT-Match\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sampling rate: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clock Source: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clock Source: %s (MSU-dest: %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Manufacturer:\09%.8s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Protocol Ver:\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Build Ver:\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GUID:\09\090x%.8X%.8X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Model ID:\090x%02X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Model Rev:\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware Date:\09%.8s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware Time:\09%.8s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware ID:\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Firmware Ver:\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Base Addr:\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Max Size:\09%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Loader Date:\09%.8s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Loader Time:\09%.8s\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Output Stream from device:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Rate\09PCM\09MIDI\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09%d\09%d\09%d\0A\00", [21 x i8] zeroinitializer }, align 32
@snd_bebob_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Input Stream to device:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %d:\09%d\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 177, i32 49 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 183, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 184, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 185, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 188, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"clk_labels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 134, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 135, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 136, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 137, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 146, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 150, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 153, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 49, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 51, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 52, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 53, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 55, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 56, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 57, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 58, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 60, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 61, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 62, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 63, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 64, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 111, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 112, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 115, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 120, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [37 x i8] c"../sound/firewire/bebob/bebob_proc.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 92, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @proc_read_clock.clk_labels, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_read_clock.clk_labels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_bebob_proc_init(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bebob, align 8
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
  %5 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bebob, align 8
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
  store ptr %bebob, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_read_clock, ptr %c.i.i, align 4
  br label %add_node.exit

add_node.exit:                                    ; preds = %if.then.i, %if.end.add_node.exit_crit_edge
  %9 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bebob, align 8
  %call.i16 = tail call ptr @snd_info_create_card_entry(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #6
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %add_node.exit.add_node.exit21_crit_edge, label %if.then.i20

add_node.exit.add_node.exit21_crit_edge:          ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_node.exit21

if.then.i20:                                      ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i18 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i16, i32 0, i32 7
  %11 = ptrtoint ptr %private_data2.i.i18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bebob, ptr %private_data2.i.i18, align 4
  %c.i.i19 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i16, i32 0, i32 4
  %12 = ptrtoint ptr %c.i.i19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @proc_read_hw_info, ptr %c.i.i19, align 4
  br label %add_node.exit21

add_node.exit21:                                  ; preds = %if.then.i20, %add_node.exit.add_node.exit21_crit_edge
  %13 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bebob, align 8
  %call.i22 = tail call ptr @snd_info_create_card_entry(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %call) #6
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %add_node.exit21.add_node.exit27_crit_edge, label %if.then.i26

add_node.exit21.add_node.exit27_crit_edge:        ; preds = %add_node.exit21
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_node.exit27

if.then.i26:                                      ; preds = %add_node.exit21
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i24 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i22, i32 0, i32 7
  %15 = ptrtoint ptr %private_data2.i.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bebob, ptr %private_data2.i.i24, align 4
  %c.i.i25 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i22, i32 0, i32 4
  %16 = ptrtoint ptr %c.i.i25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @proc_read_formation, ptr %c.i.i25, align 4
  br label %add_node.exit27

add_node.exit27:                                  ; preds = %if.then.i26, %add_node.exit21.add_node.exit27_crit_edge
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %17 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spec, align 4
  %meter = getelementptr inbounds %struct.snd_bebob_spec, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %meter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %meter, align 4
  %cmp2.not = icmp eq ptr %20, null
  br i1 %cmp2.not, label %add_node.exit27.cleanup_crit_edge, label %if.then3

add_node.exit27.cleanup_crit_edge:                ; preds = %add_node.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %add_node.exit27
  %21 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bebob, align 8
  %call.i28 = tail call ptr @snd_info_create_card_entry(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #6
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.then3.cleanup_crit_edge, label %if.then.i32

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i32:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %private_data2.i.i30 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i28, i32 0, i32 7
  %23 = ptrtoint ptr %private_data2.i.i30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bebob, ptr %private_data2.i.i30, align 4
  %c.i.i31 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i28, i32 0, i32 4
  %24 = ptrtoint ptr %c.i.i31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @proc_read_meters, ptr %c.i.i31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i32, %if.then3.cleanup_crit_edge, %add_node.exit27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_clock(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %src = alloca i32, align 4
  %rate3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 4
  %rate = getelementptr inbounds %struct.snd_bebob_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #6
  %8 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %src, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate3) #6
  %9 = ptrtoint ptr %rate3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rate3, align 4, !annotation !71
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call = call i32 %11(ptr noundef %1, ptr noundef nonnull %rate3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %14 = ptrtoint ptr %rate3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = call i32 @snd_bebob_stream_get_clock_src(ptr noundef %1, ptr noundef nonnull %src) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %7, null
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src, align 4
  %arrayidx11 = getelementptr [3 x ptr], ptr @proc_read_clock.clk_labels, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %21) #6
  br label %if.end13

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %sync_input_plug = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %sync_input_plug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sync_input_plug, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef %21, i32 noundef %23) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_hw_info(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit, align 4
  %call.i = tail call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 5, i64 noundef 281474037317632, ptr noundef nonnull %call7.i.i, i32 noundef 80, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.end_crit_edge, label %if.end5

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %call7.i.i) #6
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %protocol_ver = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %protocol_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %protocol_ver, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %bld_ver = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %bld_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bld_ver, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %14) #6
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %guid = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %guid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %guid, align 8
  %arrayidx11 = getelementptr %struct.hw_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %18, i32 noundef %20) #6
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %model_id = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %model_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef %24) #6
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %model_rev = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %model_rev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %model_rev, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef %28) #6
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %fw_date = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef %fw_date) #6
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %fw_time = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef %fw_time) #6
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %fw_id = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %fw_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.19, i32 noundef %36) #6
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  %fw_ver = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_ver, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.20, i32 noundef %40) #6
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %base_addr = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.21, i32 noundef %44) #6
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %max_size = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.22, i32 noundef %48) #6
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  %bld_date = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.23, ptr noundef %bld_date) #6
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %bld_time = getelementptr inbounds %struct.hw_info, ptr %call7.i.i, i32 0, i32 13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.24, ptr noundef %bld_time) #6
  br label %end

end:                                              ; preds = %if.end5, %if.end.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_formation(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.25) #6
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.26) #6
  %tx_stream_formations = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_bebob_rate_table to i32))
  %8 = load i32, ptr @snd_bebob_rate_table, align 4
  %9 = ptrtoint ptr %tx_stream_formations to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_stream_formations, align 4
  %midi = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 0, i32 1
  %11 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %midi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %8, i32 noundef %10, i32 noundef %12) #6
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 1) to i32))
  %15 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 1), align 4
  %arrayidx5.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.1, align 4
  %midi.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1, i32 1
  %18 = ptrtoint ptr %midi.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %midi.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %17, i32 noundef %19) #6
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 2) to i32))
  %22 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 2), align 4
  %arrayidx5.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx5.2, align 4
  %midi.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2, i32 1
  %25 = ptrtoint ptr %midi.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %midi.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24, i32 noundef %26) #6
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 3) to i32))
  %29 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 3), align 4
  %arrayidx5.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3
  %30 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.3, align 4
  %midi.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3, i32 1
  %32 = ptrtoint ptr %midi.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %midi.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #6
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 4) to i32))
  %36 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 4), align 4
  %arrayidx5.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx5.4, align 4
  %midi.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4, i32 1
  %39 = ptrtoint ptr %midi.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %midi.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.27, i32 noundef %36, i32 noundef %38, i32 noundef %40) #6
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 5) to i32))
  %43 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 5), align 4
  %arrayidx5.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5
  %44 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.5, align 4
  %midi.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5, i32 1
  %46 = ptrtoint ptr %midi.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %midi.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef %43, i32 noundef %45, i32 noundef %47) #6
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 6) to i32))
  %50 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @snd_bebob_rate_table, i32 0, i32 6), align 4
  %arrayidx5.6 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6
  %51 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx5.6, align 4
  %midi.6 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6, i32 1
  %53 = ptrtoint ptr %midi.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %midi.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.27, i32 noundef %50, i32 noundef %52, i32 noundef %54) #6
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.28) #6
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.26) #6
  %rx_stream_formations = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 15
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %61 = ptrtoint ptr %rx_stream_formations to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_stream_formations, align 4
  %midi18 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 0, i32 1
  %63 = ptrtoint ptr %midi18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %midi18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.27, i32 noundef %8, i32 noundef %62, i32 noundef %64) #6
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer, align 4
  %arrayidx15.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1
  %67 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx15.1, align 4
  %midi18.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1, i32 1
  %69 = ptrtoint ptr %midi18.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %midi18.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %66, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %68, i32 noundef %70) #6
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  %arrayidx15.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2
  %73 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx15.2, align 4
  %midi18.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2, i32 1
  %75 = ptrtoint ptr %midi18.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %midi18.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %72, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %74, i32 noundef %76) #6
  %77 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer, align 4
  %arrayidx15.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3
  %79 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx15.3, align 4
  %midi18.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3, i32 1
  %81 = ptrtoint ptr %midi18.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %midi18.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %78, ptr noundef nonnull @.str.27, i32 noundef %29, i32 noundef %80, i32 noundef %82) #6
  %83 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer, align 4
  %arrayidx15.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4
  %85 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx15.4, align 4
  %midi18.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4, i32 1
  %87 = ptrtoint ptr %midi18.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %midi18.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %84, ptr noundef nonnull @.str.27, i32 noundef %36, i32 noundef %86, i32 noundef %88) #6
  %89 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer, align 4
  %arrayidx15.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5
  %91 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx15.5, align 4
  %midi18.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5, i32 1
  %93 = ptrtoint ptr %midi18.5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %midi18.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef nonnull @.str.27, i32 noundef %43, i32 noundef %92, i32 noundef %94) #6
  %95 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer, align 4
  %arrayidx15.6 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6
  %97 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx15.6, align 4
  %midi18.6 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6, i32 1
  %99 = ptrtoint ptr %midi18.6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %midi18.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %96, ptr noundef nonnull @.str.27, i32 noundef %50, i32 noundef %98, i32 noundef %100) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_meters(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec2 = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec2, align 4
  %meter = getelementptr inbounds %struct.snd_bebob_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %meter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %meter, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %mul = shl i32 %7, 1
  %mul3 = shl i32 %7, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul3, i32 noundef 3264) #10
  %cmp4 = icmp eq ptr %call9.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %get = getelementptr inbounds %struct.snd_bebob_meter_spec, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get, align 4
  %call7 = tail call i32 %9(ptr noundef %1, ptr noundef nonnull %call9.i, i32 noundef %mul3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1156 = icmp ne i32 %mul, 0
  %or.cond = select i1 %cmp8, i1 %cmp1156, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.end6.end_crit_edge

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body.lr.ph:                                   ; preds = %if.end6
  %labels = getelementptr inbounds %struct.snd_bebob_meter_spec, ptr %5, i32 0, i32 1
  %sub = add i32 %mul, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %c.058 = phi i32 [ 1, %for.body.lr.ph ], [ %c.1, %for.inc.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %labels, align 4
  %div51 = lshr i32 %i.057, 1
  %arrayidx = getelementptr ptr, ptr %13, i32 %div51
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %inc = add i32 %c.058, 1
  %arrayidx13 = getelementptr i32, ptr %call9.i, i32 %i.057
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef %15, i32 noundef %c.058, i32 noundef %17) #6
  %add = add nuw i32 %i.057, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp14 = icmp ult i32 %add, %sub
  br i1 %cmp14, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %labels, align 4
  %arrayidx17 = getelementptr ptr, ptr %19, i32 %div51
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17, align 4
  %div2052 = lshr i32 %add, 1
  %arrayidx21 = getelementptr ptr, ptr %19, i32 %div2052
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %call22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %cmp23.not, i32 %inc, i32 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %c.1 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %exitcond.not = icmp eq i32 %add, %mul
  br i1 %exitcond.not, label %for.inc.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.end_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

end:                                              ; preds = %for.inc.end_crit_edge, %if.end6.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_get_clock_src(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 177, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 183, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 184, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 185, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 188, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 135, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 136, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 137, i32 3}
!16 = !{ptr @proc_read_clock.clk_labels, !17, !"clk_labels", i1 false, i1 false}
!17 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 134, i32 27}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 146, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 150, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 153, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 49, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 51, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 52, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 53, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 55, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 56, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 57, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 58, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 59, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 60, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 61, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 62, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 63, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 64, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 111, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 112, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 115, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 120, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/firewire/bebob/bebob_proc.c", i32 92, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
