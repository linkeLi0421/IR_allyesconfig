; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-proc.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-proc.c"
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
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firewire\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rate:\09%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Source:\09%s\0A\00", [20 x i8] zeroinitializer }, align 32
@clock_names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT on Dsub-9pin interface\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADAT on optical interface\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT on optical interface A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT on optical interface B\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S/PDIF on optical interface\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"S/PDIF on optical interface A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"S/PDIF on optical interface B\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S/PDIF on coaxial interface\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AESEBU on XLR interface\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Word clock on BNC interface\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Source packet header\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx:\09msg\09fixed\09total\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%u:\09%u\09%u\09%u\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_motu_clock_rates = external dso_local local_unnamed_addr constant [6 x i32], align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx:\09msg\09fixed\09total\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 101, i32 48 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 107, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 108, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 39, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 40, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"clock_names\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 10, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 11, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 12, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 13, i32 40 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 14, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 15, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 16, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 17, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 18, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 19, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 20, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 21, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 22, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 23, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 54, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 59, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [35 x i8] c"../sound/firewire/motu/motu-proc.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 67, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clock_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_proc_init(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %motu, align 8
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %proc_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_root, align 8
  %call = tail call ptr @snd_info_create_card_entry(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %3) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16749, ptr %mode, align 4
  %5 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %motu, align 8
  %call.i = tail call ptr @snd_info_create_card_entry(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.add_node.exit_crit_edge, label %if.then.i

if.end.add_node.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %add_node.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %motu, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_read_clock, ptr %c.i.i, align 4
  br label %add_node.exit

add_node.exit:                                    ; preds = %if.then.i, %if.end.add_node.exit_crit_edge
  %9 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %motu, align 8
  %call.i8 = tail call ptr @snd_info_create_card_entry(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #3
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %add_node.exit.cleanup_crit_edge, label %if.then.i12

add_node.exit.cleanup_crit_edge:                  ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i12:                                      ; preds = %add_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  %private_data2.i.i10 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i8, i32 0, i32 7
  %11 = ptrtoint ptr %private_data2.i.i10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %motu, ptr %private_data2.i.i10, align 4
  %c.i.i11 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i8, i32 0, i32 4
  %12 = ptrtoint ptr %c.i.i11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @proc_read_format, ptr %c.i.i11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i12, %add_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_clock(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  %source = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #3
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source) #3
  %3 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %source, align 4, !annotation !53
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %protocol_version.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then10.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #3
  br label %snd_motu_protocol_get_clock_rate.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i = call i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #3
  br label %snd_motu_protocol_get_clock_rate.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call11.i = call i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef %1, ptr noundef nonnull %rate) #3
  br label %snd_motu_protocol_get_clock_rate.exit

snd_motu_protocol_get_clock_rate.exit:            ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call11.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge, label %if.end

snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_get_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %snd_motu_protocol_get_clock_rate.exit
  %9 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec.i, align 8
  %protocol_version.i13 = getelementptr inbounds %struct.snd_motu_spec, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %protocol_version.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %protocol_version.i13, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %12, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then.i15
    i32 2, label %if.then4.i17
    i32 0, label %if.then10.i19
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call.i14 = call i32 @snd_motu_protocol_v2_get_clock_source(ptr noundef %1, ptr noundef nonnull %source) #3
  br label %snd_motu_protocol_get_clock_source.exit

if.then4.i17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i16 = call i32 @snd_motu_protocol_v3_get_clock_source(ptr noundef %1, ptr noundef nonnull %source) #3
  br label %snd_motu_protocol_get_clock_source.exit

if.then10.i19:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11.i18 = call i32 @snd_motu_protocol_v1_get_clock_source(ptr noundef %1, ptr noundef nonnull %source) #3
  br label %snd_motu_protocol_get_clock_source.exit

snd_motu_protocol_get_clock_source.exit:          ; preds = %if.then10.i19, %if.then4.i17, %if.then.i15
  %retval.0.i20 = phi i32 [ %call.i14, %if.then.i15 ], [ %call5.i16, %if.then4.i17 ], [ %call11.i18, %if.then10.i19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20)
  %cmp3 = icmp slt i32 %retval.0.i20, 0
  br i1 %cmp3, label %snd_motu_protocol_get_clock_source.exit.cleanup_crit_edge, label %if.end5

snd_motu_protocol_get_clock_source.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_get_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %snd_motu_protocol_get_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %17) #3
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %20 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %source, align 4
  %arrayidx = getelementptr [13 x ptr], ptr @clock_names, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef %23) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %snd_motu_protocol_get_clock_source.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_read_format(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %protocol_version.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then10.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef %1) #3
  br label %snd_motu_protocol_cache_packet_formats.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i = tail call i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef %1) #3
  br label %snd_motu_protocol_cache_packet_formats.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call11.i = tail call i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef %1) #3
  br label %snd_motu_protocol_cache_packet_formats.exit

snd_motu_protocol_cache_packet_formats.exit:      ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call11.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge, label %if.end

snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_cache_packet_formats.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %snd_motu_protocol_cache_packet_formats.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.18) #3
  %msg_chunks = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_motu_clock_rates to i32))
  %11 = load i32, ptr @snd_motu_clock_rates, align 4
  %12 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg_chunks, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec.i, align 8
  %arrayidx5 = getelementptr %struct.snd_motu_spec, ptr %15, i32 0, i32 3, i32 0
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %17 to i32
  %arrayidx7 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 5, i32 4, i32 0
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8) #3
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1) to i32))
  %22 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msg_chunks, align 1
  %conv.1 = zext i8 %24 to i32
  %25 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spec.i, align 8
  %arrayidx5.1 = getelementptr %struct.snd_motu_spec, ptr %26, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx7, align 1
  %conv8.1 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef %conv.1, i32 noundef %conv6.1, i32 noundef %conv8.1) #3
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2) to i32))
  %33 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2), align 4
  %34 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %msg_chunks, align 1
  %conv.2 = zext i8 %35 to i32
  %36 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spec.i, align 8
  %arrayidx5.2 = getelementptr %struct.snd_motu_spec, ptr %37, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %39 to i32
  %arrayidx7.2 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 5, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7.2, align 1
  %conv8.2 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.19, i32 noundef %33, i32 noundef %conv.2, i32 noundef %conv6.2, i32 noundef %conv8.2) #3
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3) to i32))
  %44 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3), align 4
  %45 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %msg_chunks, align 1
  %conv.3 = zext i8 %46 to i32
  %47 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spec.i, align 8
  %arrayidx5.3 = getelementptr %struct.snd_motu_spec, ptr %48, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %50 to i32
  %51 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx7.2, align 1
  %conv8.3 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %44, i32 noundef %conv.3, i32 noundef %conv6.3, i32 noundef %conv8.3) #3
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4) to i32))
  %55 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4), align 4
  %56 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %msg_chunks, align 1
  %conv.4 = zext i8 %57 to i32
  %58 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spec.i, align 8
  %arrayidx5.4 = getelementptr %struct.snd_motu_spec, ptr %59, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx5.4, align 1
  %conv6.4 = zext i8 %61 to i32
  %arrayidx7.4 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 5, i32 4, i32 2
  %62 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx7.4, align 1
  %conv8.4 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.19, i32 noundef %55, i32 noundef %conv.4, i32 noundef %conv6.4, i32 noundef %conv8.4) #3
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5) to i32))
  %66 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5), align 4
  %67 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %msg_chunks, align 1
  %conv.5 = zext i8 %68 to i32
  %69 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spec.i, align 8
  %arrayidx5.5 = getelementptr %struct.snd_motu_spec, ptr %70, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx5.5, align 1
  %conv6.5 = zext i8 %72 to i32
  %73 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx7.4, align 1
  %conv8.5 = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.19, i32 noundef %66, i32 noundef %conv.5, i32 noundef %conv6.5, i32 noundef %conv8.5) #3
  %75 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.20) #3
  %msg_chunks17 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 6, i32 3
  %77 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer, align 4
  %79 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %msg_chunks17, align 1
  %conv18 = zext i8 %80 to i32
  %81 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spec.i, align 8
  %arrayidx20 = getelementptr %struct.snd_motu_spec, ptr %82, i32 0, i32 4, i32 0
  %83 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %84 to i32
  %arrayidx23 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 6, i32 4, i32 0
  %85 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %78, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #3
  %87 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer, align 4
  %89 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %msg_chunks17, align 1
  %conv18.1 = zext i8 %90 to i32
  %91 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spec.i, align 8
  %arrayidx20.1 = getelementptr %struct.snd_motu_spec, ptr %92, i32 0, i32 4, i32 0
  %93 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx20.1, align 1
  %conv21.1 = zext i8 %94 to i32
  %95 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx23, align 1
  %conv24.1 = zext i8 %96 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef %conv18.1, i32 noundef %conv21.1, i32 noundef %conv24.1) #3
  %97 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buffer, align 4
  %99 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %msg_chunks17, align 1
  %conv18.2 = zext i8 %100 to i32
  %101 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %spec.i, align 8
  %arrayidx20.2 = getelementptr %struct.snd_motu_spec, ptr %102, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx20.2, align 1
  %conv21.2 = zext i8 %104 to i32
  %arrayidx23.2 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 6, i32 4, i32 1
  %105 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx23.2, align 1
  %conv24.2 = zext i8 %106 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %98, ptr noundef nonnull @.str.19, i32 noundef %33, i32 noundef %conv18.2, i32 noundef %conv21.2, i32 noundef %conv24.2) #3
  %107 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buffer, align 4
  %109 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %msg_chunks17, align 1
  %conv18.3 = zext i8 %110 to i32
  %111 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %spec.i, align 8
  %arrayidx20.3 = getelementptr %struct.snd_motu_spec, ptr %112, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx20.3, align 1
  %conv21.3 = zext i8 %114 to i32
  %115 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx23.2, align 1
  %conv24.3 = zext i8 %116 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %108, ptr noundef nonnull @.str.19, i32 noundef %44, i32 noundef %conv18.3, i32 noundef %conv21.3, i32 noundef %conv24.3) #3
  %117 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buffer, align 4
  %119 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %msg_chunks17, align 1
  %conv18.4 = zext i8 %120 to i32
  %121 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spec.i, align 8
  %arrayidx20.4 = getelementptr %struct.snd_motu_spec, ptr %122, i32 0, i32 4, i32 2
  %123 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx20.4, align 1
  %conv21.4 = zext i8 %124 to i32
  %arrayidx23.4 = getelementptr %struct.snd_motu, ptr %1, i32 0, i32 6, i32 4, i32 2
  %125 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx23.4, align 1
  %conv24.4 = zext i8 %126 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %118, ptr noundef nonnull @.str.19, i32 noundef %55, i32 noundef %conv18.4, i32 noundef %conv21.4, i32 noundef %conv24.4) #3
  %127 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buffer, align 4
  %129 = ptrtoint ptr %msg_chunks17 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %msg_chunks17, align 1
  %conv18.5 = zext i8 %130 to i32
  %131 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %spec.i, align 8
  %arrayidx20.5 = getelementptr %struct.snd_motu_spec, ptr %132, i32 0, i32 4, i32 2
  %133 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx20.5, align 1
  %conv21.5 = zext i8 %134 to i32
  %135 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx23.4, align 1
  %conv24.5 = zext i8 %136 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %128, ptr noundef nonnull @.str.19, i32 noundef %66, i32 noundef %conv18.5, i32 noundef %conv21.5, i32 noundef %conv24.5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_get_clock_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-proc.c", i32 101, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-proc.c", i32 107, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu-proc.c", i32 108, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/motu/motu-proc.c", i32 39, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/motu/motu-proc.c", i32 40, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/motu/motu-proc.c", i32 11, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/motu/motu-proc.c", i32 12, i32 41}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/motu/motu-proc.c", i32 13, i32 40}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/motu/motu-proc.c", i32 14, i32 42}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/motu/motu-proc.c", i32 15, i32 42}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/motu/motu-proc.c", i32 16, i32 41}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/motu/motu-proc.c", i32 17, i32 43}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/motu/motu-proc.c", i32 18, i32 43}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/motu/motu-proc.c", i32 19, i32 42}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/motu/motu-proc.c", i32 20, i32 42}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/motu/motu-proc.c", i32 21, i32 40}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/motu/motu-proc.c", i32 22, i32 32}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/motu/motu-proc.c", i32 23, i32 36}
!36 = !{ptr @clock_names, !37, !"clock_names", i1 false, i1 false}
!37 = !{!"../sound/firewire/motu/motu-proc.c", i32 10, i32 26}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/motu/motu-proc.c", i32 54, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/motu/motu-proc.c", i32 59, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/motu/motu-proc.c", i32 67, i32 2}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
