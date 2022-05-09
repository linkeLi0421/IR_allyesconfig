; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-protocol-latter.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-protocol-latter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ff_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { ptr, i32, i32 }
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

@snd_ff_protocol_latter = dso_local constant { %struct.snd_ff_protocol, [32 x i8] } { %struct.snd_ff_protocol { ptr @latter_handle_midi_msg, ptr @latter_fill_midi_msg, ptr @latter_get_clock, ptr @latter_switch_fetching_mode, ptr @latter_allocate_resources, ptr @latter_begin_session, ptr @latter_finish_session, ptr @latter_dump_status }, [32 x i8] zeroinitializer }, align 32
@parse_clock_bits.rate_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_clock_bits.rate_entries = internal constant { [9 x %struct.anon.84], [56 x i8] } { [9 x %struct.anon.84] [%struct.anon.84 { i32 32000, i32 0 }, %struct.anon.84 { i32 44100, i32 1 }, %struct.anon.84 { i32 48000, i32 2 }, %struct.anon.84 { i32 64000, i32 4 }, %struct.anon.84 { i32 88200, i32 5 }, %struct.anon.84 { i32 96000, i32 6 }, %struct.anon.84 { i32 128000, i32 8 }, %struct.anon.84 { i32 176400, i32 9 }, %struct.anon.84 { i32 192000, i32 10 }], [56 x i8] zeroinitializer }, align 32
@parse_clock_bits.clk_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_clock_bits.clk_entries = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_clock_bits.ucx_clk_entries = internal constant { [4 x %struct.anon.85], [32 x i8] } { [4 x %struct.anon.85] [%struct.anon.85 { i32 1, i32 512 }, %struct.anon.85 { i32 2, i32 1024 }, %struct.anon.85 { i32 4, i32 1536 }, %struct.anon.85 { i32 0, i32 3584 }], [32 x i8] zeroinitializer }, align 32
@parse_clock_bits.ufx_ff802_clk_entries = internal constant { [5 x %struct.anon.85], [56 x i8] } { [5 x %struct.anon.85] [%struct.anon.85 { i32 4, i32 512 }, %struct.anon.85 { i32 1, i32 1024 }, %struct.anon.85 { i32 2, i32 1536 }, %struct.anon.85 { i32 3, i32 2048 }, %struct.anon.85 { i32 0, i32 3584 }], [56 x i8] zeroinitializer }, align 32
@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@latter_dump_status.clk_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@latter_dump_status.clk_entries = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@latter_dump_status.ucx_clk_entries = internal constant { [3 x %struct.anon.86], [60 x i8] } { [3 x %struct.anon.86] [%struct.anon.86 { ptr @.str, i32 1, i32 16 }, %struct.anon.86 { ptr @.str.1, i32 2, i32 32 }, %struct.anon.86 { ptr @.str.2, i32 4, i32 64 }], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WDClk\00", [26 x i8] zeroinitializer }, align 32
@latter_dump_status.ufx_ff802_clk_entries = internal constant { [4 x %struct.anon.86], [48 x i8] } { [4 x %struct.anon.86] [%struct.anon.86 { ptr @.str.2, i32 1, i32 16 }, %struct.anon.86 { ptr @.str.3, i32 2, i32 32 }, %struct.anon.86 { ptr @.str.4, i32 4, i32 64 }, %struct.anon.86 { ptr @.str.5, i32 8, i32 128 }], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AES/EBU\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-A\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-B\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"External source detection:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sync\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lock\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Referred clock: %s %d\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.latter_handle_midi_msg = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.latter_fill_midi_msg = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.latter_get_clock = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4, i32 5, i32 0, i32 6, i32 7, i32 8], [52 x i8] zeroinitializer }, align 32
@switch.table.latter_dump_status = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4, i32 5, i32 0, i32 6, i32 7, i32 8], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 1536]
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"snd_ff_protocol_latter\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 533, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"rate_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 80, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"rate_entries\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 80, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 94, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 94, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 94, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 99, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"clk_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"clk_entries\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ucx_clk_entries\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 321, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 322, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 323, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"ufx_ff802_clk_entries\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 324, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 326, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 327, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 328, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 345, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 357, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 360, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 362, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 364, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [48 x i8] c"../sound/firewire/fireface/ff-protocol-latter.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 375, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [36 x i8] c"switch.table.latter_handle_midi_msg\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [34 x i8] c"switch.table.latter_fill_midi_msg\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"switch.table.latter_get_clock\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"switch.table.latter_dump_status\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @snd_ff_protocol_latter, ptr @parse_clock_bits.rate_entry, ptr @parse_clock_bits.rate_entries, ptr @parse_clock_bits.clk_entry, ptr @parse_clock_bits.clk_entries, ptr @parse_clock_bits.ucx_clk_entries, ptr @parse_clock_bits.ufx_ff802_clk_entries, ptr @latter_dump_status.clk_entry, ptr @latter_dump_status.clk_entries, ptr @latter_dump_status.ucx_clk_entries, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @latter_dump_status.ufx_ff802_clk_entries, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch.table.latter_handle_midi_msg, ptr @switch.table.latter_fill_midi_msg, ptr @switch.table.latter_get_clock, ptr @switch.table.latter_dump_status], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_protocol_latter to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.rate_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.rate_entries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.clk_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.clk_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.ucx_clk_entries to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_clock_bits.ufx_ff802_clk_entries to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latter_dump_status.clk_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latter_dump_status.clk_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latter_dump_status.ucx_clk_entries to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latter_dump_status.ufx_ff802_clk_entries to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.latter_handle_midi_msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.latter_fill_midi_msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.latter_get_clock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.latter_dump_status to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @latter_handle_midi_msg(ptr noundef %ff, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %length) #0 align 64 {
entry:
  %byte = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = lshr i32 %2, 4
  %shr = and i32 %and, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %byte) #4
  %3 = getelementptr inbounds [3 x i8], ptr %byte, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %byte, i32 0, i32 2
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %5 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec, align 4
  %midi_in_ports = getelementptr inbounds %struct.snd_ff_spec, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %midi_in_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi_in_ports, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %8)
  %cmp.not = icmp ult i32 %shr, %8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %2, 15
  %switch.tableidx = add nsw i32 %and1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 7
  br i1 %9, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  %spec.store.select = select i1 %cmp4, i32 3, i32 %and3
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.latter_handle_midi_msg, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %len.0 = phi i32 [ %spec.store.select, %sw.default ], [ %switch.load, %switch.lookup ]
  %and7 = lshr i32 %2, 8
  %conv = trunc i32 %and7 to i8
  %11 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %byte, align 1
  %and9 = lshr i32 %2, 16
  %conv11 = trunc i32 %and9 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %3, align 1
  %shr14 = lshr i32 %2, 24
  %conv15 = trunc i32 %shr14 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15, ptr %4, align 1
  %arrayidx17 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 6, i32 %shr
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx17, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 @snd_rawmidi_receive(ptr noundef nonnull %15, ptr noundef nonnull %byte, i32 noundef %len.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %byte) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latter_fill_midi_msg(ptr nocapture noundef %ff, ptr noundef %substream, i32 noundef %port) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %port.tr = trunc i32 %port to i8
  %conv = shl i8 %port.tr, 4
  store i8 %conv, ptr %data, align 4
  %add.ptr = getelementptr inbounds i8, ptr %data, i32 1
  %call = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef %add.ptr, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 9, i32 %port
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx2, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  br i1 %tobool.not, label %if.then3, label %if.else21

if.then3:                                         ; preds = %if.end
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %sw.default.i [
    i8 -16, label %if.else
    i8 -10, label %if.then3.if.end17_crit_edge
    i8 -8, label %if.then3.if.end17_crit_edge81
    i8 -6, label %if.then3.if.end17_crit_edge82
    i8 -5, label %if.then3.if.end17_crit_edge83
    i8 -4, label %if.then3.if.end17_crit_edge84
    i8 -2, label %if.then3.if.end17_crit_edge85
    i8 -1, label %if.then3.if.end17_crit_edge86
    i8 -15, label %if.then3.calculate_message_bytes.exit_crit_edge
    i8 -13, label %if.then3.calculate_message_bytes.exit_crit_edge87
    i8 -14, label %sw.bb2.i
    i8 -3, label %if.then3.if.end17_crit_edge88
    i8 -9, label %if.then3.if.end17_crit_edge89
    i8 -12, label %if.then3.if.end17_crit_edge90
    i8 -11, label %if.then3.if.end17_crit_edge91
    i8 -7, label %if.then3.if.end17_crit_edge92
  ]

if.then3.if.end17_crit_edge92:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge91:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge90:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge89:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge88:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.calculate_message_bytes.exit_crit_edge87: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %calculate_message_bytes.exit

if.then3.calculate_message_bytes.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %calculate_message_bytes.exit

if.then3.if.end17_crit_edge86:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge85:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge84:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge83:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge82:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge81:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %calculate_message_bytes.exit

sw.default.i:                                     ; preds = %if.then3
  %6 = and i8 %4, -16
  %and.i = zext i8 %6 to i32
  %7 = add nsw i32 %and.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %7)
  %8 = icmp ult i32 %7, 112
  br i1 %8, label %switch.lookup, label %sw.default.i.if.end17_crit_edge

sw.default.i.if.end17_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

switch.lookup:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = lshr exact i32 %7, 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.latter_fill_midi_msg, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %calculate_message_bytes.exit

calculate_message_bytes.exit:                     ; preds = %switch.lookup, %sw.bb2.i, %if.then3.calculate_message_bytes.exit_crit_edge, %if.then3.calculate_message_bytes.exit_crit_edge87
  %retval.0.i = phi i32 [ 3, %sw.bb2.i ], [ 2, %if.then3.calculate_message_bytes.exit_crit_edge ], [ 2, %if.then3.calculate_message_bytes.exit_crit_edge87 ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %retval.0.i)
  %cmp11 = icmp ult i32 %call, %retval.0.i
  br i1 %cmp11, label %calculate_message_bytes.exit.cleanup_crit_edge, label %calculate_message_bytes.exit.if.end17_crit_edge

calculate_message_bytes.exit.if.end17_crit_edge:  ; preds = %calculate_message_bytes.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

calculate_message_bytes.exit.cleanup_crit_edge:   ; preds = %calculate_message_bytes.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx2, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %calculate_message_bytes.exit.if.end17_crit_edge, %sw.default.i.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %if.then3.if.end17_crit_edge81, %if.then3.if.end17_crit_edge82, %if.then3.if.end17_crit_edge83, %if.then3.if.end17_crit_edge84, %if.then3.if.end17_crit_edge85, %if.then3.if.end17_crit_edge86, %if.then3.if.end17_crit_edge88, %if.then3.if.end17_crit_edge89, %if.then3.if.end17_crit_edge90, %if.then3.if.end17_crit_edge91, %if.then3.if.end17_crit_edge92
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 4
  %14 = trunc i32 %call to i8
  %conv20 = or i8 %13, %14
  store i8 %conv20, ptr %data, align 4
  br label %if.end49

if.else21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %4)
  %cmp24.not = icmp eq i8 %4, -9
  br i1 %cmp24.not, label %if.else41, label %if.then26

if.then26:                                        ; preds = %if.else21
  %arrayidx27 = getelementptr inbounds i8, ptr %data, i32 2
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %16)
  %cmp29 = icmp eq i8 %16, -9
  br i1 %cmp29, label %if.then26.if.then35_crit_edge, label %lor.lhs.false

if.then26.if.then35_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.then26
  %arrayidx31 = getelementptr inbounds i8, ptr %data, i32 3
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %18)
  %cmp33 = icmp eq i8 %18, -9
  br i1 %cmp33, label %lor.lhs.false.if.then35_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.then26.if.then35_crit_edge
  %sub = add nsw i32 %call, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %lor.lhs.false.if.end36_crit_edge
  %consumed.0 = phi i32 [ %sub, %if.then35 ], [ %call, %lor.lhs.false.if.end36_crit_edge ]
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 4
  %21 = trunc i32 %consumed.0 to i8
  %conv40 = or i8 %20, %21
  store i8 %conv40, ptr %data, align 4
  br label %if.end49

if.else41:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx2, align 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 4
  %25 = or i8 %24, 15
  store i8 %25, ptr %data, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.end36, %if.end17
  %consumed.1 = phi i32 [ %consumed.0, %if.end36 ], [ 1, %if.else41 ], [ %call, %if.end17 ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx50 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 10, i32 %port
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 15, i32 %port
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %consumed.1, ptr %arrayidx52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %calculate_message_bytes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end49 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %calculate_message_bytes.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latter_get_clock(ptr nocapture noundef readonly %ff, ptr nocapture noundef writeonly %rate, ptr nocapture noundef writeonly %src) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !56
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 2149318656, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %unit_version = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 4
  %6 = ptrtoint ptr %unit_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unit_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp eq i32 %7, 4
  %shr2.i = lshr i32 %5, 28
  %and.i = lshr i32 %5, 24
  %shr.i = and i32 %and.i, 15
  %storemerge.i = select i1 %cmp.i, ptr @parse_clock_bits.ucx_clk_entries, ptr @parse_clock_bits.ufx_ff802_clk_entries
  %rate_bits.0.i = select i1 %cmp.i, i32 %shr.i, i32 %shr2.i
  %clk_entry_count.0.i = select i1 %cmp.i, i32 4, i32 5
  store ptr %storemerge.i, ptr @parse_clock_bits.clk_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %rate_bits.0.i)
  %8 = icmp ult i32 %rate_bits.0.i, 11
  br i1 %8, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %rate_bits.0.i to i16
  %switch.shifted = lshr i16 1911, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.latter_get_clock, i32 0, i32 %rate_bits.0.i
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr.le46.i = getelementptr %struct.anon.84, ptr @parse_clock_bits.rate_entries, i32 %switch.load
  store ptr %add.ptr.le46.i, ptr @parse_clock_bits.rate_entry, align 4
  %11 = ptrtoint ptr %add.ptr.le46.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.le46.i, align 4
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rate, align 4
  %and15.i = and i32 %5, 3584
  %14 = add nsw i32 %clk_entry_count.0.i, -1
  %15 = zext i32 %and15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and15.i, label %for.body13.i.3 [
    i32 512, label %switch.lookup.if.then18.i_crit_edge
    i32 1024, label %if.then18.i.fold.split
    i32 1536, label %if.then18.i.fold.split15
  ]

switch.lookup.if.then18.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

if.then18.i.fold.split:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

if.then18.i.fold.split15:                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

if.then18.i:                                      ; preds = %for.inc21.i.3.if.then18.i_crit_edge, %for.body13.i.3.if.then18.i_crit_edge, %if.then18.i.fold.split15, %if.then18.i.fold.split, %switch.lookup.if.then18.i_crit_edge
  %i.150.i.lcssa = phi i32 [ 0, %switch.lookup.if.then18.i_crit_edge ], [ 3, %for.body13.i.3.if.then18.i_crit_edge ], [ 1, %if.then18.i.fold.split ], [ 2, %if.then18.i.fold.split15 ], [ 4, %for.inc21.i.3.if.then18.i_crit_edge ]
  %add.ptr14.le51.i = getelementptr %struct.anon.85, ptr %storemerge.i, i32 %i.150.i.lcssa
  store ptr %add.ptr14.le51.i, ptr @parse_clock_bits.clk_entry, align 4
  %16 = ptrtoint ptr %add.ptr14.le51.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr14.le51.i, align 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %src, align 4
  br label %for.end23.i

for.body13.i.3:                                   ; preds = %switch.lookup
  %19 = select i1 %cmp.i, i32 3584, i32 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %19)
  %cmp17.i.3 = icmp eq i32 %and15.i, %19
  br i1 %cmp17.i.3, label %for.body13.i.3.if.then18.i_crit_edge, label %for.inc21.i.3

for.body13.i.3.if.then18.i_crit_edge:             ; preds = %for.body13.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

for.inc21.i.3:                                    ; preds = %for.body13.i.3
  %cmp.i.not = xor i1 %cmp.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %and15.i)
  %cmp17.i.4 = icmp eq i32 %and15.i, 3584
  %or.cond = select i1 %cmp.i.not, i1 %cmp17.i.4, i1 false
  br i1 %or.cond, label %for.inc21.i.3.if.then18.i_crit_edge, label %for.end23.loopexit.i

for.inc21.i.3.if.then18.i_crit_edge:              ; preds = %for.inc21.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

for.end23.loopexit.i:                             ; preds = %for.inc21.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr14.le.i = getelementptr %struct.anon.85, ptr %storemerge.i, i32 %14
  store ptr %add.ptr14.le.i, ptr @parse_clock_bits.clk_entry, align 4
  br label %for.end23.i

for.end23.i:                                      ; preds = %for.end23.loopexit.i, %if.then18.i
  %i.140.i = phi i32 [ %clk_entry_count.0.i, %for.end23.loopexit.i ], [ %i.150.i.lcssa, %if.then18.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.140.i, i32 %clk_entry_count.0.i)
  %cmp24.i = icmp eq i32 %i.140.i, %clk_entry_count.0.i
  %..i = select i1 %cmp24.i, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end23.i, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %..i, %for.end23.i ], [ -5, %switch.hole_check.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latter_switch_fetching_mode(ptr nocapture noundef readonly %ff, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %not.enable = xor i1 %enable, true
  %. = sext i1 %not.enable to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %.)
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 0, i64 noundef 281470681743376, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latter_allocate_resources(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %mode = alloca i32, align 4
  %reg = alloca i32, align 4
  %curr_rate = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %rem = urem i32 %rate, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else:                                          ; preds = %entry
  %rem1 = urem i32 %rate, 44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.else.if.end10_crit_edge, label %if.else4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else4:                                         ; preds = %if.else
  %rem5 = urem i32 %rate, 32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5)
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.else4.if.end10_crit_edge, label %if.else4.cleanup66_crit_edge

if.else4.cleanup66_crit_edge:                     ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.else4.if.end10_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %if.else4.if.end10_crit_edge, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %code.0 = phi i32 [ 4, %entry.if.end10_crit_edge ], [ 2, %if.else.if.end10_crit_edge ], [ 0, %if.else4.if.end10_crit_edge ]
  %1 = add i32 %rate, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %1)
  %2 = icmp ult i32 %1, 64000
  %or = or i32 %code.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %rate)
  %cmp15 = icmp ugt i32 %rate, 127999
  %or17 = or i32 %code.0, 16
  %spec.select = select i1 %cmp15, i32 %or17, i32 %code.0
  %code.1 = select i1 %2, i32 %or, i32 %spec.select
  %3 = shl nuw nsw i32 %code.1, 24
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %6, i32 noundef 0, i64 noundef 281470681743364, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %if.end10.cleanup66_crit_edge, label %while.body.preheader

if.end10.cleanup66_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

while.body.preheader:                             ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %7 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %8 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %while.body.preheader.cleanup.thread_crit_edge, label %if.end27

while.body.preheader.cleanup.thread_crit_edge:    ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.8.cleanup.thread_crit_edge, %cleanup.7.cleanup.thread_crit_edge, %cleanup.6.cleanup.thread_crit_edge, %cleanup.5.cleanup.thread_crit_edge, %cleanup.4.cleanup.thread_crit_edge, %cleanup.3.cleanup.thread_crit_edge, %cleanup.2.cleanup.thread_crit_edge, %cleanup.1.cleanup.thread_crit_edge, %cleanup.cleanup.thread_crit_edge, %while.body.preheader.cleanup.thread_crit_edge
  %call24.lcssa = phi i32 [ %call24, %while.body.preheader.cleanup.thread_crit_edge ], [ %call24.1, %cleanup.cleanup.thread_crit_edge ], [ %call24.2, %cleanup.1.cleanup.thread_crit_edge ], [ %call24.3, %cleanup.2.cleanup.thread_crit_edge ], [ %call24.4, %cleanup.3.cleanup.thread_crit_edge ], [ %call24.5, %cleanup.4.cleanup.thread_crit_edge ], [ %call24.6, %cleanup.5.cleanup.thread_crit_edge ], [ %call24.7, %cleanup.6.cleanup.thread_crit_edge ], [ %call24.8, %cleanup.7.cleanup.thread_crit_edge ], [ %call24.9, %cleanup.8.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  br label %cleanup66

if.end27:                                         ; preds = %while.body.preheader
  %9 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %rate)
  %cmp28 = icmp eq i32 %10, %rate
  br i1 %cmp28, label %if.end27.for.body.preheader_crit_edge, label %cleanup

if.end27.for.body.preheader_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup:                                          ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %11 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.1 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %cmp25.1 = icmp slt i32 %call24.1, 0
  br i1 %cmp25.1, label %cleanup.cleanup.thread_crit_edge, label %if.end27.1

cleanup.cleanup.thread_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.1:                                       ; preds = %cleanup
  %13 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %rate)
  %cmp28.1 = icmp eq i32 %14, %rate
  br i1 %cmp28.1, label %if.end27.1.for.body.preheader_crit_edge, label %cleanup.1

if.end27.1.for.body.preheader_crit_edge:          ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.1:                                        ; preds = %if.end27.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %15 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.2 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2)
  %cmp25.2 = icmp slt i32 %call24.2, 0
  br i1 %cmp25.2, label %cleanup.1.cleanup.thread_crit_edge, label %if.end27.2

cleanup.1.cleanup.thread_crit_edge:               ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.2:                                       ; preds = %cleanup.1
  %17 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %rate)
  %cmp28.2 = icmp eq i32 %18, %rate
  br i1 %cmp28.2, label %if.end27.2.for.body.preheader_crit_edge, label %cleanup.2

if.end27.2.for.body.preheader_crit_edge:          ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.2:                                        ; preds = %if.end27.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %19 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %20 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.3 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3)
  %cmp25.3 = icmp slt i32 %call24.3, 0
  br i1 %cmp25.3, label %cleanup.2.cleanup.thread_crit_edge, label %if.end27.3

cleanup.2.cleanup.thread_crit_edge:               ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.3:                                       ; preds = %cleanup.2
  %21 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %rate)
  %cmp28.3 = icmp eq i32 %22, %rate
  br i1 %cmp28.3, label %if.end27.3.for.body.preheader_crit_edge, label %cleanup.3

if.end27.3.for.body.preheader_crit_edge:          ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.3:                                        ; preds = %if.end27.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %23 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %24 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.4 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.4)
  %cmp25.4 = icmp slt i32 %call24.4, 0
  br i1 %cmp25.4, label %cleanup.3.cleanup.thread_crit_edge, label %if.end27.4

cleanup.3.cleanup.thread_crit_edge:               ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.4:                                       ; preds = %cleanup.3
  %25 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %rate)
  %cmp28.4 = icmp eq i32 %26, %rate
  br i1 %cmp28.4, label %if.end27.4.for.body.preheader_crit_edge, label %cleanup.4

if.end27.4.for.body.preheader_crit_edge:          ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.4:                                        ; preds = %if.end27.4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %27 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %28 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.5 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.5)
  %cmp25.5 = icmp slt i32 %call24.5, 0
  br i1 %cmp25.5, label %cleanup.4.cleanup.thread_crit_edge, label %if.end27.5

cleanup.4.cleanup.thread_crit_edge:               ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.5:                                       ; preds = %cleanup.4
  %29 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %rate)
  %cmp28.5 = icmp eq i32 %30, %rate
  br i1 %cmp28.5, label %if.end27.5.for.body.preheader_crit_edge, label %cleanup.5

if.end27.5.for.body.preheader_crit_edge:          ; preds = %if.end27.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.5:                                        ; preds = %if.end27.5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %31 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %32 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.6 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.6)
  %cmp25.6 = icmp slt i32 %call24.6, 0
  br i1 %cmp25.6, label %cleanup.5.cleanup.thread_crit_edge, label %if.end27.6

cleanup.5.cleanup.thread_crit_edge:               ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.6:                                       ; preds = %cleanup.5
  %33 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %rate)
  %cmp28.6 = icmp eq i32 %34, %rate
  br i1 %cmp28.6, label %if.end27.6.for.body.preheader_crit_edge, label %cleanup.6

if.end27.6.for.body.preheader_crit_edge:          ; preds = %if.end27.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.6:                                        ; preds = %if.end27.6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %35 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %36 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.7 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.7)
  %cmp25.7 = icmp slt i32 %call24.7, 0
  br i1 %cmp25.7, label %cleanup.6.cleanup.thread_crit_edge, label %if.end27.7

cleanup.6.cleanup.thread_crit_edge:               ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.7:                                       ; preds = %cleanup.6
  %37 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %rate)
  %cmp28.7 = icmp eq i32 %38, %rate
  br i1 %cmp28.7, label %if.end27.7.for.body.preheader_crit_edge, label %cleanup.7

if.end27.7.for.body.preheader_crit_edge:          ; preds = %if.end27.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.7:                                        ; preds = %if.end27.7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %39 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %40 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.8 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.8)
  %cmp25.8 = icmp slt i32 %call24.8, 0
  br i1 %cmp25.8, label %cleanup.7.cleanup.thread_crit_edge, label %if.end27.8

cleanup.7.cleanup.thread_crit_edge:               ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.8:                                       ; preds = %cleanup.7
  %41 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %rate)
  %cmp28.8 = icmp eq i32 %42, %rate
  br i1 %cmp28.8, label %if.end27.8.for.body.preheader_crit_edge, label %cleanup.8

if.end27.8.for.body.preheader_crit_edge:          ; preds = %if.end27.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

cleanup.8:                                        ; preds = %if.end27.8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %43 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %curr_rate, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %44 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %src, align 4, !annotation !56
  %call24.9 = call i32 @latter_get_clock(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.9)
  %cmp25.9 = icmp slt i32 %call24.9, 0
  br i1 %cmp25.9, label %cleanup.8.cleanup.thread_crit_edge, label %if.end27.9

cleanup.8.cleanup.thread_crit_edge:               ; preds = %cleanup.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27.9:                                       ; preds = %cleanup.8
  %45 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %rate)
  %cmp28.9 = icmp eq i32 %46, %rate
  br i1 %cmp28.9, label %if.end27.9.for.body.preheader_crit_edge, label %while.end.thread

if.end27.9.for.body.preheader_crit_edge:          ; preds = %if.end27.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

while.end.thread:                                 ; preds = %if.end27.9
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  br label %cleanup66

for.body.preheader:                               ; preds = %if.end27.9.for.body.preheader_crit_edge, %if.end27.8.for.body.preheader_crit_edge, %if.end27.7.for.body.preheader_crit_edge, %if.end27.6.for.body.preheader_crit_edge, %if.end27.5.for.body.preheader_crit_edge, %if.end27.4.for.body.preheader_crit_edge, %if.end27.3.for.body.preheader_crit_edge, %if.end27.2.for.body.preheader_crit_edge, %if.end27.1.for.body.preheader_crit_edge, %if.end27.for.body.preheader_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %47 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %rate)
  %cmp36 = icmp eq i32 %47, %rate
  br i1 %cmp36, label %for.body.preheader.if.end42_crit_edge, label %for.inc

for.body.preheader.if.end42_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc:                                          ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %48 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %rate)
  %cmp36.1 = icmp eq i32 %48, %rate
  br i1 %cmp36.1, label %for.inc.if.end42_crit_edge, label %for.inc.1

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %49 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %rate)
  %cmp36.2 = icmp eq i32 %49, %rate
  br i1 %cmp36.2, label %for.inc.1.if.end42_crit_edge, label %for.inc.2

for.inc.1.if.end42_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %50 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %rate)
  %cmp36.3 = icmp eq i32 %50, %rate
  br i1 %cmp36.3, label %for.inc.2.if.end42_crit_edge, label %for.inc.3

for.inc.2.if.end42_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %51 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %rate)
  %cmp36.4 = icmp eq i32 %51, %rate
  br i1 %cmp36.4, label %for.inc.3.if.end42_crit_edge, label %for.inc.4

for.inc.3.if.end42_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %52 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %rate)
  %cmp36.5 = icmp eq i32 %52, %rate
  br i1 %cmp36.5, label %for.inc.4.if.end42_crit_edge, label %for.inc.5

for.inc.4.if.end42_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %53 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %rate)
  %cmp36.6 = icmp eq i32 %53, %rate
  br i1 %cmp36.6, label %for.inc.5.if.end42_crit_edge, label %for.inc.5.cleanup66_crit_edge

for.inc.5.cleanup66_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

for.inc.5.if.end42_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end42:                                         ; preds = %for.inc.5.if.end42_crit_edge, %for.inc.4.if.end42_crit_edge, %for.inc.3.if.end42_crit_edge, %for.inc.2.if.end42_crit_edge, %for.inc.1.if.end42_crit_edge, %for.inc.if.end42_crit_edge, %for.body.preheader.if.end42_crit_edge
  %i.0120.lcssa = phi i32 [ 0, %for.body.preheader.if.end42_crit_edge ], [ 1, %for.inc.if.end42_crit_edge ], [ 2, %for.inc.1.if.end42_crit_edge ], [ 3, %for.inc.2.if.end42_crit_edge ], [ 4, %for.inc.3.if.end42_crit_edge ], [ 5, %for.inc.4.if.end42_crit_edge ], [ 6, %for.inc.5.if.end42_crit_edge ]
  %call43 = call i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %i.0120.lcssa, ptr noundef nonnull %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.cleanup66_crit_edge, label %if.end46

if.end42.cleanup66_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.end46:                                         ; preds = %if.end42
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  %54 = ptrtoint ptr %tx_resources to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 255, ptr %tx_resources, align 8
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  %call48 = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #4
  %55 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i, align 8
  %max_speed = getelementptr i8, ptr %58, i32 -8
  %59 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_speed, align 8
  %call51 = call i32 @fw_iso_resources_allocate(ptr noundef %tx_resources, i32 noundef %call48, i32 noundef %60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end46.cleanup66_crit_edge, label %if.end54

if.end46.cleanup66_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.end54:                                         ; preds = %if.end46
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %61 = ptrtoint ptr %rx_resources to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 255, ptr %rx_resources, align 8
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %call57 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #4
  %62 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unit, align 4
  %parent.i105 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %parent.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent.i105, align 8
  %max_speed60 = getelementptr i8, ptr %65, i32 -8
  %66 = ptrtoint ptr %max_speed60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_speed60, align 8
  %call61 = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call57, i32 noundef %67) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end54.cleanup66_crit_edge

if.end54.cleanup66_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #4
  br label %cleanup66

cleanup66:                                        ; preds = %if.then63, %if.end54.cleanup66_crit_edge, %if.end46.cleanup66_crit_edge, %if.end42.cleanup66_crit_edge, %for.inc.5.cleanup66_crit_edge, %while.end.thread, %cleanup.thread, %if.end10.cleanup66_crit_edge, %if.else4.cleanup66_crit_edge
  %retval.2 = phi i32 [ -22, %if.else4.cleanup66_crit_edge ], [ %call, %if.end10.cleanup66_crit_edge ], [ %call43, %if.end42.cleanup66_crit_edge ], [ %call51, %if.end46.cleanup66_crit_edge ], [ %call61, %if.then63 ], [ %call61, %if.end54.cleanup66_crit_edge ], [ %call24.lcssa, %cleanup.thread ], [ -110, %while.end.thread ], [ -22, %for.inc.5.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latter_begin_session(ptr noundef %ff, i32 noundef %rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %generation1 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %unit_version = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 4
  %2 = ptrtoint ptr %unit_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  %4 = add i32 %rate, -32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16001, i32 %4)
  %5 = icmp ult i32 %4, 16001
  br i1 %cmp, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  br i1 %5, label %if.then.if.end36_crit_edge, label %if.else

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else:                                          ; preds = %if.then
  %6 = add i32 %rate, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32001, i32 %6)
  %7 = icmp ult i32 %6, 32001
  br i1 %7, label %if.else.if.end36_crit_edge, label %if.else9

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else9:                                         ; preds = %if.else
  %8 = add i32 %rate, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64001, i32 %8)
  %9 = icmp ult i32 %8, 64001
  br i1 %9, label %if.else9.if.end36_crit_edge, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else9.if.end36_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else17:                                        ; preds = %entry
  br i1 %5, label %if.else17.if.end36_crit_edge, label %if.else22

if.else17.if.end36_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else22:                                        ; preds = %if.else17
  %10 = add i32 %rate, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32001, i32 %10)
  %11 = icmp ult i32 %10, 32001
  br i1 %11, label %if.else22.if.end36_crit_edge, label %if.else27

if.else22.if.end36_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else27:                                        ; preds = %if.else22
  %12 = add i32 %rate, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64001, i32 %12)
  %13 = icmp ult i32 %12, 64001
  br i1 %13, label %if.else27.if.end36_crit_edge, label %if.else27.cleanup_crit_edge

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else27.if.end36_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %if.else27.if.end36_crit_edge, %if.else22.if.end36_crit_edge, %if.else17.if.end36_crit_edge, %if.else9.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then.if.end36_crit_edge
  %flag.0 = phi i32 [ -1845493760, %if.then.if.end36_crit_edge ], [ -1912602624, %if.else.if.end36_crit_edge ], [ -1946157056, %if.else9.if.end36_crit_edge ], [ -1644167168, %if.else17.if.end36_crit_edge ], [ -1778384896, %if.else22.if.end36_crit_edge ], [ -1912602624, %if.else27.if.end36_crit_edge ]
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %14 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %17, i32 -4
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %generation37 = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %generation37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation37, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %21)
  %cmp38.not = icmp eq i32 %1, %21
  br i1 %cmp38.not, label %if.end36.if.end49_crit_edge, label %if.then39

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then39:                                        ; preds = %if.end36
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  %call40 = tail call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then39.cleanup_crit_edge, label %if.end43

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  %call45 = tail call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.cleanup_crit_edge, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end43.if.end49_crit_edge, %if.end36.if.end49_crit_edge
  %channel = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19, i32 3
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 8
  %shl = shl i32 %23, 8
  %channel52 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 3
  %24 = ptrtoint ptr %channel52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel52, align 8
  %or = or i32 %shl, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reg, align 4
  %28 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unit, align 4
  %call54 = call i32 @snd_fw_transaction(ptr noundef %29, i32 noundef 0, i64 noundef 281470681743368, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end49.cleanup_crit_edge, label %if.end57

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flag.0, ptr %reg, align 4
  %31 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unit, align 4
  %call59 = call i32 @snd_fw_transaction(ptr noundef %32, i32 noundef 0, i64 noundef 281470681743372, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.else27.cleanup_crit_edge, %if.else9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end57 ], [ -22, %if.else9.cleanup_crit_edge ], [ -22, %if.else27.cleanup_crit_edge ], [ %call40, %if.then39.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ], [ %call54, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @latter_finish_session(ptr nocapture noundef readonly %ff) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 0, i64 noundef 281470681743372, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @latter_dump_status(ptr nocapture noundef readonly %ff, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !56
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 2149318656, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.6) #4
  %unit_version = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 4
  %8 = ptrtoint ptr %unit_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2 = icmp eq i32 %9, 4
  %latter_dump_status.ucx_clk_entries.latter_dump_status.ufx_ff802_clk_entries = select i1 %cmp2, ptr @latter_dump_status.ucx_clk_entries, ptr @latter_dump_status.ufx_ff802_clk_entries
  %. = select i1 %cmp2, i32 3, i32 4
  store ptr %latter_dump_status.ucx_clk_entries.latter_dump_status.ufx_ff802_clk_entries, ptr @latter_dump_status.clk_entries, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.057 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = load ptr, ptr @latter_dump_status.clk_entries, align 4
  %add.ptr = getelementptr %struct.anon.86, ptr %10, i32 %i.057
  store ptr %add.ptr, ptr @latter_dump_status.clk_entry, align 4
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef %14) #4
  %15 = load ptr, ptr @latter_dump_status.clk_entry, align 4
  %locked_mask = getelementptr inbounds %struct.anon.86, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %locked_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %locked_mask, align 4
  %and = and i32 %17, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else16, label %if.then8

if.then8:                                         ; preds = %for.body
  %synced_mask = getelementptr inbounds %struct.anon.86, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %synced_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %synced_mask, align 4
  %and9 = and i32 %19, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.8) #4
  br label %for.inc

if.else13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.9) #4
  br label %for.inc

if.else16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.10) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else16, %if.else13, %if.then11
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %24 = ptrtoint ptr %unit_version to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unit_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i = icmp eq i32 %25, 4
  %shr2.i = lshr i32 %5, 28
  %and.i = lshr i32 %5, 24
  %shr.i = and i32 %and.i, 15
  %storemerge.i = select i1 %cmp.i, ptr @parse_clock_bits.ucx_clk_entries, ptr @parse_clock_bits.ufx_ff802_clk_entries
  %rate_bits.0.i = select i1 %cmp.i, i32 %shr.i, i32 %shr2.i
  %clk_entry_count.0.i = select i1 %cmp.i, i32 4, i32 5
  store ptr %storemerge.i, ptr @parse_clock_bits.clk_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %rate_bits.0.i)
  %26 = icmp ult i32 %rate_bits.0.i, 11
  br i1 %26, label %switch.hole_check, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %for.end
  %switch.maskindex = trunc i32 %rate_bits.0.i to i16
  %switch.shifted = lshr i16 1911, %switch.maskindex
  %27 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %switch.lobit.not = icmp eq i16 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.latter_dump_status, i32 0, i32 %rate_bits.0.i
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr.le46.i = getelementptr %struct.anon.84, ptr @parse_clock_bits.rate_entries, i32 %switch.load
  store ptr %add.ptr.le46.i, ptr @parse_clock_bits.rate_entry, align 4
  %29 = ptrtoint ptr %add.ptr.le46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.le46.i, align 4
  %and15.i = and i32 %5, 3584
  %31 = add nsw i32 %clk_entry_count.0.i, -1
  %32 = zext i32 %and15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and15.i, label %for.body13.i.3 [
    i32 512, label %switch.lookup.for.end23.i_crit_edge
    i32 1024, label %for.end23.i.fold.split
    i32 1536, label %for.end23.i.fold.split66
  ]

switch.lookup.for.end23.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23.i

for.body13.i.3:                                   ; preds = %switch.lookup
  %33 = select i1 %cmp.i, i32 3584, i32 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %33)
  %cmp17.i.3 = icmp eq i32 %and15.i, %33
  br i1 %cmp17.i.3, label %for.body13.i.3.for.end23.i_crit_edge, label %for.inc21.i.3

for.body13.i.3.for.end23.i_crit_edge:             ; preds = %for.body13.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23.i

for.inc21.i.3:                                    ; preds = %for.body13.i.3
  %cmp.i.not = xor i1 %cmp.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %and15.i)
  %cmp17.i.4 = icmp eq i32 %and15.i, 3584
  %or.cond = select i1 %cmp.i.not, i1 %cmp17.i.4, i1 false
  br i1 %or.cond, label %for.inc21.i.3.for.end23.i_crit_edge, label %for.end23.i.thread

for.inc21.i.3.for.end23.i_crit_edge:              ; preds = %for.inc21.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23.i

for.end23.i.thread:                               ; preds = %for.inc21.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr14.le.i = getelementptr %struct.anon.85, ptr %storemerge.i, i32 %31
  store ptr %add.ptr14.le.i, ptr @parse_clock_bits.clk_entry, align 4
  br label %cleanup

for.end23.i.fold.split:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23.i

for.end23.i.fold.split66:                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23.i

for.end23.i:                                      ; preds = %for.end23.i.fold.split66, %for.end23.i.fold.split, %for.inc21.i.3.for.end23.i_crit_edge, %for.body13.i.3.for.end23.i_crit_edge, %switch.lookup.for.end23.i_crit_edge
  %i.150.i.lcssa = phi i32 [ 0, %switch.lookup.for.end23.i_crit_edge ], [ 3, %for.body13.i.3.for.end23.i_crit_edge ], [ 1, %for.end23.i.fold.split ], [ 2, %for.end23.i.fold.split66 ], [ 4, %for.inc21.i.3.for.end23.i_crit_edge ]
  %add.ptr14.le51.i = getelementptr %struct.anon.85, ptr %storemerge.i, i32 %i.150.i.lcssa
  store ptr %add.ptr14.le51.i, ptr @parse_clock_bits.clk_entry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.150.i.lcssa, i32 %clk_entry_count.0.i)
  %cmp24.i = icmp eq i32 %i.150.i.lcssa, %clk_entry_count.0.i
  br i1 %cmp24.i, label %for.end23.i.cleanup_crit_edge, label %if.end23

for.end23.i.cleanup_crit_edge:                    ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %for.end23.i
  %34 = ptrtoint ptr %add.ptr14.le51.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr14.le51.i, align 4
  %call24 = call ptr @snd_ff_proc_get_clk_label(i32 noundef %35) #4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef nonnull %call24, i32 noundef %30) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %for.end23.i.cleanup_crit_edge, %for.end23.i.thread, %switch.hole_check.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
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
declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ff_proc_get_clk_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @snd_ff_protocol_latter, !1, !"snd_ff_protocol_latter", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 533, i32 30}
!2 = !{ptr @parse_clock_bits.rate_entry, !3, !"rate_entry", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 80, i32 5}
!4 = !{ptr @parse_clock_bits.rate_entries, !5, !"rate_entries", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 80, i32 17}
!6 = !{ptr @parse_clock_bits.clk_entry, !7, !"clk_entry", i1 false, i1 false}
!7 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 94, i32 5}
!8 = !{ptr @parse_clock_bits.clk_entries, !9, !"clk_entries", i1 false, i1 false}
!9 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 94, i32 17}
!10 = !{ptr @parse_clock_bits.ucx_clk_entries, !11, !"ucx_clk_entries", i1 false, i1 false}
!11 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 94, i32 30}
!12 = !{ptr @parse_clock_bits.ufx_ff802_clk_entries, !13, !"ufx_ff802_clk_entries", i1 false, i1 false}
!13 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 99, i32 5}
!14 = !{ptr @latter_dump_status.clk_entry, !15, !"clk_entry", i1 false, i1 false}
!15 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 320, i32 5}
!16 = !{ptr @latter_dump_status.clk_entries, !17, !"clk_entries", i1 false, i1 false}
!17 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 320, i32 17}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 321, i32 5}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 322, i32 5}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 323, i32 5}
!24 = !{ptr @latter_dump_status.ucx_clk_entries, !25, !"ucx_clk_entries", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 320, i32 30}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 326, i32 5}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 327, i32 5}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 328, i32 5}
!32 = !{ptr @latter_dump_status.ufx_ff802_clk_entries, !33, !"ufx_ff802_clk_entries", i1 false, i1 false}
!33 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 324, i32 5}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 345, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 357, i32 3}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 360, i32 5}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 362, i32 5}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 364, i32 4}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/firewire/fireface/ff-protocol-latter.c", i32 375, i32 2}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"auto-init"}
