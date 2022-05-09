; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-protocol-former.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-protocol-former.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ff_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.87 = type { ptr, i32 }
%struct.anon.88 = type { i32, i32 }
%struct.snd_ff = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, ptr, [2 x ptr], %struct.fw_address_handler, [2 x ptr], [2 x i8], [2 x [9 x i32]], [2 x %struct.work_struct], [2 x %struct.fw_transaction], [2 x i64], [2 x i8], [2 x i32], i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, i8, %struct.wait_queue_head, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_ff_spec = type { [3 x i32], [3 x i32], i32, i32, ptr, i64, i8, [2 x i64] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@snd_ff_protocol_ff800 = dso_local constant { %struct.snd_ff_protocol, [32 x i8] } { %struct.snd_ff_protocol { ptr @ff800_handle_midi_msg, ptr @former_fill_midi_msg, ptr @former_get_clock, ptr @former_switch_fetching_mode, ptr @ff800_allocate_resources, ptr @ff800_begin_session, ptr @ff800_finish_session, ptr @former_dump_status }, [32 x i8] zeroinitializer }, align 32
@snd_ff_protocol_ff400 = dso_local constant { %struct.snd_ff_protocol, [32 x i8] } { %struct.snd_ff_protocol { ptr @ff400_handle_midi_msg, ptr @former_fill_midi_msg, ptr @former_get_clock, ptr @former_switch_fetching_mode, ptr @ff400_allocate_resources, ptr @ff400_begin_session, ptr @ff400_finish_session, ptr @former_dump_status }, [32 x i8] zeroinitializer }, align 32
@parse_clock_bits.rate_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_clock_bits.rate_entries = internal constant { [9 x %struct.anon.84], [56 x i8] } { [9 x %struct.anon.84] [%struct.anon.84 { i32 32000, i32 2 }, %struct.anon.84 { i32 44100, i32 0 }, %struct.anon.84 { i32 48000, i32 6 }, %struct.anon.84 { i32 64000, i32 10 }, %struct.anon.84 { i32 88200, i32 8 }, %struct.anon.84 { i32 96000, i32 14 }, %struct.anon.84 { i32 128000, i32 18 }, %struct.anon.84 { i32 176400, i32 16 }, %struct.anon.84 { i32 192000, i32 22 }], [56 x i8] zeroinitializer }, align 32
@parse_clock_bits.clk_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_clock_bits.clk_entries = internal constant { [5 x %struct.anon.85], [56 x i8] } { [5 x %struct.anon.85] [%struct.anon.85 { i32 2, i32 0 }, %struct.anon.85 { i32 3, i32 1024 }, %struct.anon.85 { i32 1, i32 3072 }, %struct.anon.85 { i32 4, i32 4096 }, %struct.anon.85 { i32 5, i32 6144 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Output S/PDIF format: %s (Emphasis: %s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Professional\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Consumer\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Optical output interface format: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Word output single speed: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S/PDIF input interface: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock configuration: %d %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WDClk\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT1\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT2\00", [26 x i8] zeroinitializer }, align 32
@dump_sync_status.referred_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dump_sync_status.referred_entries = internal constant { [5 x %struct.anon.87], [56 x i8] } { [5 x %struct.anon.87] [%struct.anon.87 { ptr @.str.14, i32 0 }, %struct.anon.87 { ptr @.str.15, i32 4194304 }, %struct.anon.87 { ptr @.str.6, i32 12582912 }, %struct.anon.87 { ptr @.str.16, i32 16777216 }, %struct.anon.87 { ptr @.str.17, i32 20971520 }], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WDclk\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCO\00", [28 x i8] zeroinitializer }, align 32
@dump_sync_status.rate_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dump_sync_status.rate_entries = internal constant { [9 x %struct.anon.88], [56 x i8] } { [9 x %struct.anon.88] [%struct.anon.88 { i32 32000, i32 33554432 }, %struct.anon.88 { i32 44100, i32 67108864 }, %struct.anon.88 { i32 48000, i32 100663296 }, %struct.anon.88 { i32 64000, i32 134217728 }, %struct.anon.88 { i32 88200, i32 167772160 }, %struct.anon.88 { i32 96000, i32 201326592 }, %struct.anon.88 { i32 128000, i32 234881024 }, %struct.anon.88 { i32 176400, i32 268435456 }, %struct.anon.88 { i32 192000, i32 301989888 }], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"External source detection:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Referred clock:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Internal\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@switch.table.former_get_clock = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 0, i32 0, i32 2, i32 4, i32 3, i32 0, i32 5, i32 7, i32 6, i32 0, i32 8], [48 x i8] zeroinitializer }, align 32
@switch.table.former_get_clock.26 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 0, i32 2, i32 3, i32 0, i32 4], [36 x i8] zeroinitializer }, align 32
@switch.table.former_dump_status = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 0, i32 0, i32 2, i32 4, i32 3, i32 0, i32 5, i32 7, i32 6, i32 0, i32 8], [48 x i8] zeroinitializer }, align 32
@switch.table.former_dump_status.27 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 0, i32 2, i32 3, i32 0, i32 4], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"snd_ff_protocol_ff800\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 422, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"snd_ff_protocol_ff400\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 596, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 23, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 23, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"clk_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 37, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"clk_entries\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 37, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 138, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 142, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 145, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 148, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 158, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 168, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 170, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 171, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"referred_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"referred_entries\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 180, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 181, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"rate_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"rate_entries\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 209, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 217, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 219, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 221, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 224, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 227, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 230, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [48 x i8] c"../sound/firewire/fireface/ff-protocol-former.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 255, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"switch.table.former_get_clock\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [33 x i8] c"switch.table.former_get_clock.26\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [32 x i8] c"switch.table.former_dump_status\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"switch.table.former_dump_status.27\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @snd_ff_protocol_ff800, ptr @snd_ff_protocol_ff400, ptr @parse_clock_bits.rate_entry, ptr @parse_clock_bits.rate_entries, ptr @parse_clock_bits.clk_entry, ptr @parse_clock_bits.clk_entries, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dump_sync_status.referred_entry, ptr @dump_sync_status.referred_entries, ptr @.str.16, ptr @.str.17, ptr @dump_sync_status.rate_entry, ptr @dump_sync_status.rate_entries, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.former_get_clock, ptr @switch.table.former_get_clock.26, ptr @switch.table.former_dump_status, ptr @switch.table.former_dump_status.27], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_protocol_ff800 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_protocol_ff400 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.rate_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.rate_entries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.clk_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.clk_entries to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sync_status.referred_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sync_status.referred_entries to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sync_status.rate_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sync_status.rate_entries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.former_get_clock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.former_get_clock.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.former_dump_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.former_dump_status.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff800_handle_midi_msg(ptr noundef %ff, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %length) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp6.not = icmp ult i32 %length, 4
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div5 = lshr i32 %length, 2
  %tx_midi_substreams = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #5
  %arrayidx = getelementptr i32, ptr %buf, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = lshr i32 %1, 24
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %byte, align 1
  %4 = ptrtoint ptr %tx_midi_substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tx_midi_substreams, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 @snd_rawmidi_receive(ptr noundef nonnull %5, ptr noundef nonnull %byte, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #5
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @former_fill_midi_msg(ptr noundef %ff, ptr noundef %substream, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 10, i32 %port
  %call = tail call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef %arrayidx, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023.in = phi i32 [ %i.023, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %i.023 = add nsw i32 %i.023.in, -1
  %arrayidx2 = getelementptr i8, ptr %arrayidx, i32 %i.023
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %1 to i32
  %2 = shl nuw i32 %conv, 24
  %arrayidx5 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 10, i32 %port, i32 %i.023
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx5, align 4
  %cmp1 = icmp sgt i32 %i.023.in, 1
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 15, i32 %port
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @former_get_clock(ptr nocapture noundef readonly %ff, ptr nocapture noundef writeonly %rate, ptr nocapture noundef writeonly %src) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !77
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 2149318660, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %and.i = lshr i32 %5, 1
  %6 = and i32 %and.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %7 = icmp ult i32 %6, 12
  br i1 %7, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %6 to i16
  %switch.shifted = lshr i16 3003, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.former_get_clock, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr.le42.i = getelementptr %struct.anon.84, ptr @parse_clock_bits.rate_entries, i32 %switch.load
  store ptr %add.ptr.le42.i, ptr @parse_clock_bits.rate_entry, align 4
  %10 = ptrtoint ptr %add.ptr.le42.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.le42.i, align 4
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rate, align 4
  %and6.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %for.cond8.preheader.i, label %switch.lookup.cleanup.sink.split_crit_edge

switch.lookup.cleanup.sink.split_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond8.preheader.i:                            ; preds = %switch.lookup
  %and12.i = lshr i32 %5, 10
  %13 = and i32 %and12.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %.not = icmp eq i32 %13, 7
  br i1 %.not, label %for.cond8.preheader.i.cleanup_crit_edge, label %switch.hole_check6

for.cond8.preheader.i.cleanup_crit_edge:          ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check6:                               ; preds = %for.cond8.preheader.i
  %switch.maskindex8 = trunc i32 %13 to i8
  %switch.shifted9 = lshr i8 91, %switch.maskindex8
  %14 = and i8 %switch.shifted9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit10.not = icmp eq i8 %14, 0
  br i1 %switch.lobit10.not, label %switch.hole_check6.cleanup_crit_edge, label %switch.lookup7

switch.hole_check6.cleanup_crit_edge:             ; preds = %switch.hole_check6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup7:                                   ; preds = %switch.hole_check6
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep11 = getelementptr inbounds [7 x i32], ptr @switch.table.former_get_clock.26, i32 0, i32 %13
  %15 = ptrtoint ptr %switch.gep11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load12 = load i32, ptr %switch.gep11, align 4
  %add.ptr11.le47.i = getelementptr %struct.anon.85, ptr @parse_clock_bits.clk_entries, i32 %switch.load12
  store ptr %add.ptr11.le47.i, ptr @parse_clock_bits.clk_entry, align 4
  %16 = ptrtoint ptr %add.ptr11.le47.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr11.le47.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup7, %switch.lookup.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %17, %switch.lookup7 ], [ 0, %switch.lookup.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.hole_check6.cleanup_crit_edge, %for.cond8.preheader.i.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %switch.hole_check.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %switch.hole_check6.cleanup_crit_edge ], [ -5, %for.cond8.preheader.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @former_switch_fetching_mode(ptr nocapture noundef readonly %ff, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 4
  %arrayidx = getelementptr %struct.snd_ff_spec, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.snd_ff_spec, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  %arrayidx.2 = getelementptr %struct.snd_ff_spec, ptr %1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #5
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !78

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %enable.not = xor i1 %enable, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp539 = icmp ne i32 %9, 0
  %or.cond = select i1 %enable.not, i1 %cmp539, i1 false
  br i1 %or.cond, label %if.end.for.body6_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.for.body6_crit_edge:                       ; preds = %if.end
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %if.end.for.body6_crit_edge
  %i.140 = phi i32 [ %inc9, %for.body6.for.body6_crit_edge ], [ 0, %if.end.for.body6_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %call8.i.i, i32 %i.140
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %arrayidx7, align 4
  %inc9 = add nuw i32 %i.140, 1
  %exitcond.not = icmp eq i32 %inc9, %9
  br i1 %exitcond.not, label %for.body6.if.end11_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.body6.if.end11_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %for.body6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %14 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit, align 4
  %mul = shl i32 %9, 2
  %call12 = tail call i32 @snd_fw_transaction(ptr noundef %15, i32 noundef 1, i64 noundef 2149318656, ptr noundef nonnull %call8.i.i, i32 noundef %mul, i32 noundef 0) #5
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff800_allocate_resources(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 0, i64 noundef 4236832768, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 100) #5
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %call1 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #5
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %max_speed = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed, align 8
  %call4 = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call1, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data_block_quadlets = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18, i32 12
  %10 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_block_quadlets, align 8
  %shl = shl i32 %11, 11
  %channel = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 3
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 8
  %or = or i32 %shl, %13
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg, align 4
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  %call12 = call i32 @snd_fw_transaction(ptr noundef %17, i32 noundef 0, i64 noundef 4236832772, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %data_block_quadlets.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17, i32 12
  %18 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_block_quadlets.i, align 8
  %20 = call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %reg.i, align 4
  %22 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unit, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %23, i32 noundef 0, i64 noundef 4236832776, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end15.allocate_tx_resources.exit_crit_edge, label %if.end15.while.body.i_crit_edge

if.end15.while.body.i_crit_edge:                  ; preds = %if.end15
  br label %while.body.i

if.end15.allocate_tx_resources.exit_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %allocate_tx_resources.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end15.while.body.i_crit_edge
  %inc36.i = phi i32 [ %inc.i, %cleanup.i.while.body.i_crit_edge ], [ 1, %if.end15.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unit, align 4
  %call3.i = call i32 @snd_fw_transaction(ptr noundef %25, i32 noundef 4, i64 noundef 2149318664, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %while.body.i.allocate_tx_resources.exit_crit_edge, label %if.end6.i

while.body.i.allocate_tx_resources.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %allocate_tx_resources.exit

if.end6.i:                                        ; preds = %while.body.i
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp7.not.i = icmp eq i32 %27, -1
  br i1 %cmp7.not.i, label %cleanup.i, label %while.end.i

cleanup.i:                                        ; preds = %if.end6.i
  call void @msleep(i32 noundef 50) #5
  %inc.i = add nuw nsw i32 %inc36.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %cleanup.i.allocate_tx_resources.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.i.allocate_tx_resources.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %allocate_tx_resources.exit

while.end.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc36.i)
  %cmp10.i = icmp ugt i32 %inc36.i, 9
  br i1 %cmp10.i, label %while.end.i.allocate_tx_resources.exit_crit_edge, label %if.end12.i

while.end.i.allocate_tx_resources.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %allocate_tx_resources.exit

if.end12.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = call i32 @llvm.bswap.i32(i32 %27) #5
  %channel.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19, i32 3
  %29 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %channel.i, align 8
  br label %allocate_tx_resources.exit

allocate_tx_resources.exit:                       ; preds = %if.end12.i, %while.end.i.allocate_tx_resources.exit_crit_edge, %cleanup.i.allocate_tx_resources.exit_crit_edge, %while.body.i.allocate_tx_resources.exit_crit_edge, %if.end15.allocate_tx_resources.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.end12.i ], [ %call.i, %if.end15.allocate_tx_resources.exit_crit_edge ], [ -110, %while.end.i.allocate_tx_resources.exit_crit_edge ], [ %call3.i, %while.body.i.allocate_tx_resources.exit_crit_edge ], [ -110, %cleanup.i.allocate_tx_resources.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %allocate_tx_resources.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i, %allocate_tx_resources.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff800_begin_session(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %generation1 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %generation2 = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp.not = icmp eq i32 %1, %9
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %call4 = tail call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.cleanup16_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %data_block_quadlets = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17, i32 12
  %10 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_block_quadlets, align 8
  %12 = or i32 %11, -2147483648
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg, align 4
  %15 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit, align 4
  %parent.i24 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i24, align 8
  %max_speed = getelementptr i8, ptr %18, i32 -8
  %19 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp10 = icmp eq i32 %20, 3
  br i1 %cmp10, label %if.then11, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or12 = or i32 %13, 524288
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or12, ptr %reg, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %call15 = call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 0, i64 noundef 4236832780, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ %call15, %if.end13 ], [ %call4, %if.then.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff800_finish_session(ptr nocapture noundef readonly %ff) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 0, i64 noundef 4236832784, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @former_dump_status(ptr nocapture noundef readonly %ff, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %reg.i3 = alloca [2 x i32], align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !77
  %unit.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 5, i64 noundef 2149318660, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.dump_clock_config.exit_crit_edge, label %if.end.i

entry.dump_clock_config.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #5
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.2, ptr @.str.1
  %and2.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, ptr @.str.4, ptr @.str.3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond4.i) #5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %and6.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond8.i) #5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %and10.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond12.i = select i1 %tobool11.not.i, ptr @.str.4, ptr @.str.3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond12.i) #5
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %and14.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %cond16.i = select i1 %tobool15.not.i, ptr @.str.11, ptr @.str.10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond16.i) #5
  %and.i.i = lshr i32 %5, 1
  %14 = and i32 %and.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp ult i32 %14, 12
  br i1 %15, label %switch.hole_check, label %if.end.i.dump_clock_config.exit_crit_edge

if.end.i.dump_clock_config.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %14 to i16
  %switch.shifted = lshr i16 3003, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.dump_clock_config.exit_crit_edge, label %switch.lookup

switch.hole_check.dump_clock_config.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.former_dump_status, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr.le42.i.i = getelementptr %struct.anon.84, ptr @parse_clock_bits.rate_entries, i32 %switch.load
  store ptr %add.ptr.le42.i.i, ptr @parse_clock_bits.rate_entry, align 4
  %18 = ptrtoint ptr %add.ptr.le42.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.le42.i.i, align 4
  %and6.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond8.preheader.i.i, label %switch.lookup.if.end20.i_crit_edge

switch.lookup.if.end20.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

for.cond8.preheader.i.i:                          ; preds = %switch.lookup
  %and12.i.i = lshr i32 %5, 10
  %20 = and i32 %and12.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %.not = icmp eq i32 %20, 7
  br i1 %.not, label %for.cond8.preheader.i.i.dump_clock_config.exit_crit_edge, label %switch.hole_check11

for.cond8.preheader.i.i.dump_clock_config.exit_crit_edge: ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

switch.hole_check11:                              ; preds = %for.cond8.preheader.i.i
  %switch.maskindex13 = trunc i32 %20 to i8
  %switch.shifted14 = lshr i8 91, %switch.maskindex13
  %21 = and i8 %switch.shifted14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit15.not = icmp eq i8 %21, 0
  br i1 %switch.lobit15.not, label %switch.hole_check11.dump_clock_config.exit_crit_edge, label %switch.lookup12

switch.hole_check11.dump_clock_config.exit_crit_edge: ; preds = %switch.hole_check11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

switch.lookup12:                                  ; preds = %switch.hole_check11
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep16 = getelementptr inbounds [7 x i32], ptr @switch.table.former_dump_status.27, i32 0, i32 %20
  %22 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  %add.ptr11.le47.i.i = getelementptr %struct.anon.85, ptr @parse_clock_bits.clk_entries, i32 %switch.load17
  store ptr %add.ptr11.le47.i.i, ptr @parse_clock_bits.clk_entry, align 4
  %23 = ptrtoint ptr %add.ptr11.le47.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr11.le47.i.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %switch.lookup12, %switch.lookup.if.end20.i_crit_edge
  %src.0.i = phi i32 [ %24, %switch.lookup12 ], [ 0, %switch.lookup.if.end20.i_crit_edge ]
  %call21.i = call ptr @snd_ff_proc_get_clk_label(i32 noundef %src.0.i) #5
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end20.i.dump_clock_config.exit_crit_edge, label %if.end24.i

if.end20.i.dump_clock_config.exit_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_clock_config.exit

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef %19, ptr noundef nonnull %call21.i) #5
  br label %dump_clock_config.exit

dump_clock_config.exit:                           ; preds = %if.end24.i, %if.end20.i.dump_clock_config.exit_crit_edge, %switch.hole_check11.dump_clock_config.exit_crit_edge, %for.cond8.preheader.i.i.dump_clock_config.exit_crit_edge, %switch.hole_check.dump_clock_config.exit_crit_edge, %if.end.i.dump_clock_config.exit_crit_edge, %entry.dump_clock_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i3) #5
  %27 = ptrtoint ptr %reg.i3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %reg.i3, align 4, !annotation !77
  %28 = getelementptr inbounds [2 x i32], ptr %reg.i3, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !77
  %30 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unit.i, align 4
  %call.i5 = call i32 @snd_fw_transaction(ptr noundef %31, i32 noundef 5, i64 noundef 2149318656, ptr noundef nonnull %reg.i3, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %dump_clock_config.exit.dump_sync_status.exit_crit_edge, label %if.end.i9

dump_clock_config.exit.dump_sync_status.exit_crit_edge: ; preds = %dump_clock_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_sync_status.exit

if.end.i9:                                        ; preds = %dump_clock_config.exit
  %32 = ptrtoint ptr %reg.i3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i3, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #5
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %28, align 4
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.18) #5
  %and.i7 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  %and9.i = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %.str.20..str.19.i = select i1 %tobool10.not.i, ptr @.str.20, ptr @.str.19
  %state.0.i = select i1 %tobool.not.i8, ptr @.str.21, ptr %.str.20..str.19.i
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, ptr noundef nonnull %state.0.i) #5
  %and.1.i = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  %and9.1.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1.i)
  %tobool10.not.1.i = icmp eq i32 %and9.1.i, 0
  %.str.20..str.19.1.i = select i1 %tobool10.not.1.i, ptr @.str.20, ptr @.str.19
  %state.0.1.i = select i1 %tobool.not.1.i, ptr @.str.21, ptr %.str.20..str.19.1.i
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6, ptr noundef nonnull %state.0.1.i) #5
  %and.2.i = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  %and9.2.i = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2.i)
  %tobool10.not.2.i = icmp eq i32 %and9.2.i, 0
  %.str.20..str.19.2.i = select i1 %tobool10.not.2.i, ptr @.str.20, ptr @.str.19
  %state.0.2.i = select i1 %tobool.not.2.i, ptr @.str.21, ptr %.str.20..str.19.2.i
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, ptr noundef nonnull %state.0.2.i) #5
  %and.3.i = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  %and9.3.i = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3.i)
  %tobool10.not.3.i = icmp eq i32 %and9.3.i, 0
  %.str.20..str.19.3.i = select i1 %tobool10.not.3.i, ptr @.str.20, ptr @.str.19
  %state.0.3.i = select i1 %tobool.not.3.i, ptr @.str.21, ptr %.str.20..str.19.3.i
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, ptr noundef nonnull %state.0.3.i) #5
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.23) #5
  %49 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool19.not.i = icmp eq i32 %49, 0
  br i1 %tobool19.not.i, label %for.cond24.preheader.i, label %if.then20.i

for.cond24.preheader.i:                           ; preds = %if.end.i9
  %and29.i = and i32 %34, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %cmp30.i = icmp eq i32 %and29.i, 0
  %spec.select.i = select i1 %cmp30.i, ptr @dump_sync_status.referred_entries, ptr getelementptr inbounds ([5 x %struct.anon.87], ptr @dump_sync_status.referred_entries, i32 0, i32 4)
  %spec.select101.i = select i1 %cmp30.i, ptr @.str.14, ptr @.str.21
  store ptr %spec.select.i, ptr @dump_sync_status.referred_entry, align 4
  %and45.i = and i32 %34, 503316480
  %50 = add nsw i32 %and45.i, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 301989888, i32 %50)
  %switch = icmp ult i32 %50, 301989888
  br i1 %switch, label %for.end53.i, label %for.cond24.preheader.i._crit_edge

for.cond24.preheader.i._crit_edge:                ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %56

if.then20.i:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.24) #5
  br label %dump_sync_status.exit

for.end53.i:                                      ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = lshr exact i32 %50, 25
  %add.ptr43.le94.i = getelementptr %struct.anon.88, ptr @dump_sync_status.rate_entries, i32 %53
  store ptr %add.ptr43.le94.i, ptr @dump_sync_status.rate_entry, align 4
  %54 = ptrtoint ptr %add.ptr43.le94.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr43.le94.i, align 4
  br label %56

56:                                               ; preds = %for.end53.i, %for.cond24.preheader.i._crit_edge
  %57 = phi i32 [ %55, %for.end53.i ], [ 0, %for.cond24.preheader.i._crit_edge ]
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.25, ptr noundef nonnull %spec.select101.i, i32 noundef %57) #5
  br label %dump_sync_status.exit

dump_sync_status.exit:                            ; preds = %56, %if.then20.i, %dump_clock_config.exit.dump_sync_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff400_handle_midi_msg(ptr noundef %ff, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %length) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp39.not = icmp ult i32 %length, 4
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div38 = lshr i32 %length, 2
  %tx_midi_substreams = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 6
  %arrayidx17 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %buf, i32 %i.040
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = call i32 @llvm.bswap.i32(i32 %1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #5
  %3 = and i32 %2, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %for.body.if.end6_crit_edge, label %do.end

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %tx_midi_substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tx_midi_substreams, align 8
  %cmp3.not = icmp eq ptr %5, null
  br i1 %cmp3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %2 to i8
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %byte, align 1
  %call = call i32 @snd_rawmidi_receive(ptr noundef nonnull %5, ptr noundef nonnull %byte, i32 noundef 1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge, %for.body.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp9.not = icmp ult i32 %2, 16777216
  br i1 %cmp9.not, label %if.end6.if.end26_crit_edge, label %do.end14

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end14:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx17, align 4
  %cmp18.not = icmp eq ptr %8, null
  br i1 %cmp18.not, label %do.end14.if.end26_crit_edge, label %if.then20

do.end14.if.end26_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %shr21 = lshr i32 %2, 16
  %conv23 = trunc i32 %shr21 to i8
  %9 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %byte, align 1
  %call24 = call i32 @snd_rawmidi_receive(ptr noundef nonnull %8, ptr noundef nonnull %byte, i32 noundef 1) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.end14.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #5
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %div38
  br i1 %exitcond.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff400_allocate_resources(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %1 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp1 = icmp eq i32 %1, %rate
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp1.1 = icmp eq i32 %2, %rate
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1.2 = icmp eq i32 %3, %rate
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp1.3 = icmp eq i32 %4, %rate
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %5 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp1.4 = icmp eq i32 %5, %rate
  br i1 %cmp1.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %6 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp1.5 = icmp eq i32 %6, %rate
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %7 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp1.6 = icmp eq i32 %7, %rate
  br i1 %cmp1.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.059.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %10 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %11, i32 noundef 0, i64 noundef 2148533504, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @msleep(i32 noundef 100) #5
  %call8 = call i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %i.059.lcssa, ptr noundef nonnull %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  %12 = ptrtoint ptr %tx_resources to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 255, ptr %tx_resources, align 8
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  %call13 = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #5
  %13 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %max_speed = getelementptr i8, ptr %16, i32 -8
  %17 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_speed, align 8
  %call16 = call i32 @fw_iso_resources_allocate(ptr noundef %tx_resources, i32 noundef %call13, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %19 = ptrtoint ptr %rx_resources to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 255, ptr %rx_resources, align 8
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %call22 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #5
  %20 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit, align 4
  %parent.i55 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i55, align 8
  %max_speed25 = getelementptr i8, ptr %23, i32 -8
  %24 = ptrtoint ptr %max_speed25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_speed25, align 8
  %call26 = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call22, i32 noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call16, %if.end11.cleanup_crit_edge ], [ %call26, %if.then28 ], [ %call26, %if.end19.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff400_begin_session(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %generation1 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %generation2 = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp.not = icmp eq i32 %1, %9
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  %call3 = tail call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %data_block_quadlets = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18, i32 12
  %10 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_block_quadlets, align 8
  %shl = shl i32 %11, 11
  %channel = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 3
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 8
  %or = or i32 %shl, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg, align 4
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  %call15 = call i32 @snd_fw_transaction(ptr noundef %17, i32 noundef 0, i64 noundef 2148533508, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %channel20 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19, i32 3
  %18 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel20, align 8
  %shl21 = shl i32 %19, 5
  %data_block_quadlets23 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17, i32 12
  %20 = ptrtoint ptr %data_block_quadlets23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_block_quadlets23, align 8
  %or22 = or i32 %21, %shl21
  %or24 = or i32 %or22, -2147483648
  %22 = call i32 @llvm.bswap.i32(i32 %or24)
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reg, align 4
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unit, align 4
  %call26 = call i32 @snd_fw_transaction(ptr noundef %25, i32 noundef 0, i64 noundef 2148533516, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end18.cleanup_crit_edge, label %if.end29

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %reg, align 4
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unit, align 4
  %call31 = call i32 @snd_fw_transaction(ptr noundef %28, i32 noundef 0, i64 noundef 2148533512, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end29 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %call26, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff400_finish_session(ptr nocapture noundef readonly %ff) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 0, i64 noundef 2148533520, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ff_proc_get_clk_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @snd_ff_protocol_ff800, !1, !"snd_ff_protocol_ff800", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 422, i32 30}
!2 = !{ptr @snd_ff_protocol_ff400, !3, !"snd_ff_protocol_ff400", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 596, i32 30}
!4 = !{ptr @parse_clock_bits.rate_entry, !5, !"rate_entry", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 23, i32 5}
!6 = !{ptr @parse_clock_bits.rate_entries, !7, !"rate_entries", i1 false, i1 false}
!7 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 23, i32 17}
!8 = !{ptr @parse_clock_bits.clk_entry, !9, !"clk_entry", i1 false, i1 false}
!9 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 37, i32 5}
!10 = !{ptr @parse_clock_bits.clk_entries, !11, !"clk_entries", i1 false, i1 false}
!11 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 37, i32 16}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 138, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 142, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 145, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 148, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 158, i32 2}
!30 = distinct !{null, !31, !"clk_entry", i1 false, i1 false}
!31 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 167, i32 5}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 168, i32 5}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 170, i32 5}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 171, i32 5}
!38 = distinct !{null, !39, !"clk_entries", i1 false, i1 false}
!39 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 167, i32 16}
!40 = !{ptr @dump_sync_status.referred_entry, !41, !"referred_entry", i1 false, i1 false}
!41 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 176, i32 5}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 180, i32 5}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 181, i32 5}
!46 = !{ptr @dump_sync_status.referred_entries, !47, !"referred_entries", i1 false, i1 false}
!47 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 176, i32 21}
!48 = !{ptr @dump_sync_status.rate_entry, !49, !"rate_entry", i1 false, i1 false}
!49 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 186, i32 5}
!50 = !{ptr @dump_sync_status.rate_entries, !51, !"rate_entries", i1 false, i1 false}
!51 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 186, i32 17}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 209, i32 2}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 217, i32 13}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 219, i32 13}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 221, i32 12}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 224, i32 3}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 227, i32 2}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 230, i32 3}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/firewire/fireface/ff-protocol-former.c", i32 255, i32 3}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{!"branch_weights", i32 1, i32 2000}
