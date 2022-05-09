; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_stream.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_bebob = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, ptr, i32, i32, i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, [7 x %struct.snd_bebob_stream_formation], [7 x %struct.snd_bebob_stream_formation], i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
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
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_bebob_clock_spec = type { i32, ptr, ptr, ptr }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.snd_bebob_rate_spec = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@snd_bebob_rate_table = dso_local constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@snd_bebob_stream_get_clock_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to get clock source: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_bebob_stream_get_clock_src\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/firewire/bebob/bebob_stream.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bebob_stream_get_clock_src._entry_ptr = internal global ptr @snd_bebob_stream_get_clock_src._entry, section ".printk_index", align 4
@snd_bebob_stream_get_clock_src._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clock source %d out of range 0..%d\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_bebob_stream_get_clock_src._entry_ptr.7 = internal global ptr @snd_bebob_stream_get_clock_src._entry.5, section ".printk_index", align 4
@snd_bebob_stream_get_clock_src._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fail to get an input for MSU in plug %d: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_bebob_stream_get_clock_src._entry_ptr.10 = internal global ptr @snd_bebob_stream_get_clock_src._entry.8, section ".printk_index", align 4
@snd_bebob_stream_reserve_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 563, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to set sampling rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_bebob_stream_reserve_duplex\00", [32 x i8] zeroinitializer }, align 32
@snd_bebob_stream_reserve_duplex._entry_ptr = internal global ptr @snd_bebob_stream_reserve_duplex._entry, section ".printk_index", align 4
@snd_bebob_stream_start_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to ensure sampling rate: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_bebob_stream_start_duplex\00", [34 x i8] zeroinitializer }, align 32
@snd_bebob_stream_start_duplex._entry_ptr = internal global ptr @snd_bebob_stream_start_duplex._entry, section ".printk_index", align 4
@snd_bebob_stream_discover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 919, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fail to get info for isoc/external in/out plugs: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_bebob_stream_discover\00", [38 x i8] zeroinitializer }, align 32
@snd_bebob_stream_discover._entry_ptr = internal global ptr @snd_bebob_stream_discover._entry, section ".printk_index", align 4
@check_connection_used_by_others._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Connection established by others: %cPCR[%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"check_connection_used_by_others\00", [32 x i8] zeroinitializer }, align 32
@check_connection_used_by_others._entry_ptr = internal global ptr @check_connection_used_by_others._entry, section ".printk_index", align 4
@map_data_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fail to get channel position for isoc %s plug 0: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"map_data_channels\00", [46 x i8] zeroinitializer }, align 32
@map_data_channels._entry_ptr = internal global ptr @map_data_channels._entry, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@map_data_channels._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fail to get section type for isoc %s plug 0: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@map_data_channels._entry_ptr.25 = internal global ptr @map_data_channels._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/firewire/bebob/../amdtp-stream.h\00", [57 x i8] zeroinitializer }, align 32
@fill_stream_formations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Fail to get type for isoc %d plug 0: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fill_stream_formations\00", [41 x i8] zeroinitializer }, align 32
@fill_stream_formations._entry_ptr = internal global ptr @fill_stream_formations._entry, section ".printk_index", align 4
@fill_stream_formations._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fail to get stream format %d for isoc %d plug %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@fill_stream_formations._entry_ptr.31 = internal global ptr @fill_stream_formations._entry.29, section ".printk_index", align 4
@detect_midi_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 850, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fail to get type for external %d plug %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"detect_midi_ports\00", [46 x i8] zeroinitializer }, align 32
@detect_midi_ports._entry_ptr = internal global ptr @detect_midi_ports._entry, section ".printk_index", align 4
@seek_msu_sync_input_plug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail to get info for MSU in/out plugs: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"seek_msu_sync_input_plug\00", [39 x i8] zeroinitializer }, align 32
@seek_msu_sync_input_plug._entry_ptr = internal global ptr @seek_msu_sync_input_plug._entry, section ".printk_index", align 4
@seek_msu_sync_input_plug._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 895, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fail to get type for MSU in plug %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@seek_msu_sync_input_plug._entry_ptr.38 = internal global ptr @seek_msu_sync_input_plug._entry.36, section ".printk_index", align 4
@switch.table.fill_stream_formations = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"snd_bebob_rate_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 24, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 132, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 138, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 166, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 561, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 654, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 917, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 390, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 279, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 301, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [42 x i8] c"../sound/firewire/bebob/../amdtp-stream.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 348, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 787, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 807, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 848, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 881, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [39 x i8] c"../sound/firewire/bebob/bebob_stream.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 893, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [36 x i8] c"switch.table.fill_stream_formations\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @check_connection_used_by_others._entry, ptr @check_connection_used_by_others._entry_ptr, ptr @detect_midi_ports._entry, ptr @detect_midi_ports._entry_ptr, ptr @fill_stream_formations._entry, ptr @fill_stream_formations._entry.29, ptr @fill_stream_formations._entry_ptr, ptr @fill_stream_formations._entry_ptr.31, ptr @map_data_channels._entry, ptr @map_data_channels._entry.23, ptr @map_data_channels._entry_ptr, ptr @map_data_channels._entry_ptr.25, ptr @seek_msu_sync_input_plug._entry, ptr @seek_msu_sync_input_plug._entry.36, ptr @seek_msu_sync_input_plug._entry_ptr, ptr @seek_msu_sync_input_plug._entry_ptr.38, ptr @snd_bebob_stream_discover._entry, ptr @snd_bebob_stream_discover._entry_ptr, ptr @snd_bebob_stream_get_clock_src._entry, ptr @snd_bebob_stream_get_clock_src._entry.5, ptr @snd_bebob_stream_get_clock_src._entry.8, ptr @snd_bebob_stream_get_clock_src._entry_ptr, ptr @snd_bebob_stream_get_clock_src._entry_ptr.10, ptr @snd_bebob_stream_get_clock_src._entry_ptr.7, ptr @snd_bebob_stream_reserve_duplex._entry, ptr @snd_bebob_stream_reserve_duplex._entry_ptr, ptr @snd_bebob_stream_start_duplex._entry, ptr @snd_bebob_stream_start_duplex._entry_ptr, ptr @snd_bebob_rate_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @switch.table.fill_stream_formations], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_rate_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_get_clock_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_get_clock_src._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_get_clock_src._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_reserve_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_start_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_stream_discover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_connection_used_by_others._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_data_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_data_channels._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_stream_formations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_stream_formations._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_midi_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_msu_sync_input_plug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_msu_sync_input_plug._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fill_stream_formations to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_get_rate(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %curr_rate) local_unnamed_addr #0 align 64 {
entry:
  %tx_rate = alloca i32, align 4
  %rx_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_rate) #5
  %0 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_rate, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_rate) #5
  %1 = ptrtoint ptr %rx_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rx_rate, align 4, !annotation !85
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_general_get_sig_fmt(ptr noundef %3, ptr noundef nonnull %tx_rate, i32 noundef 1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.1:                                        ; preds = %entry
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %call.1 = call i32 @avc_general_get_sig_fmt(ptr noundef %5, ptr noundef nonnull %tx_rate, i32 noundef 1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.1)
  %cmp.1 = icmp eq i32 %call.1, -11
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit, align 4
  %call.2 = call i32 @avc_general_get_sig_fmt(ptr noundef %7, ptr noundef nonnull %tx_rate, i32 noundef 1, i16 noundef zeroext 0) #5
  br label %do.end

do.end:                                           ; preds = %do.body.2, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %cmp2 = icmp slt i32 %call.lcssa, 0
  br i1 %cmp2, label %do.end.end_crit_edge, label %do.body3

do.end.end_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

do.body3:                                         ; preds = %do.end
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit, align 4
  %call5 = call i32 @avc_general_get_sig_fmt(ptr noundef %9, ptr noundef nonnull %rx_rate, i32 noundef 0, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5)
  %cmp7 = icmp eq i32 %call5, -11
  br i1 %cmp7, label %do.body3.1, label %do.body3.do.end12_crit_edge

do.body3.do.end12_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.body3.1:                                       ; preds = %do.body3
  %10 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unit, align 4
  %call5.1 = call i32 @avc_general_get_sig_fmt(ptr noundef %11, ptr noundef nonnull %rx_rate, i32 noundef 0, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.1)
  %cmp7.1 = icmp eq i32 %call5.1, -11
  br i1 %cmp7.1, label %do.body3.2, label %do.body3.1.do.end12_crit_edge

do.body3.1.do.end12_crit_edge:                    ; preds = %do.body3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.body3.2:                                       ; preds = %do.body3.1
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit, align 4
  %call5.2 = call i32 @avc_general_get_sig_fmt(ptr noundef %13, ptr noundef nonnull %rx_rate, i32 noundef 0, i16 noundef zeroext 0) #5
  br label %do.end12

do.end12:                                         ; preds = %do.body3.2, %do.body3.1.do.end12_crit_edge, %do.body3.do.end12_crit_edge
  %call5.lcssa = phi i32 [ %call5, %do.body3.do.end12_crit_edge ], [ %call5.1, %do.body3.1.do.end12_crit_edge ], [ %call5.2, %do.body3.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.lcssa)
  %cmp13 = icmp slt i32 %call5.lcssa, 0
  br i1 %cmp13, label %do.end12.end_crit_edge, label %if.end15

do.end12.end_crit_edge:                           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end15:                                         ; preds = %do.end12
  %14 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_rate, align 4
  %16 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %curr_rate, align 4
  %17 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp16 = icmp eq i32 %15, %18
  br i1 %cmp16, label %if.end15.end_crit_edge, label %if.end18

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unit, align 4
  %call20 = call i32 @avc_general_set_sig_fmt(ptr noundef %20, i32 noundef %15, i32 noundef 0, i16 noundef zeroext 0) #5
  br label %end

end:                                              ; preds = %if.end18, %if.end15.end_crit_edge, %do.end12.end_crit_edge, %do.end.end_crit_edge
  %err.0 = phi i32 [ %call.lcssa, %do.end.end_crit_edge ], [ %call5.lcssa, %do.end12.end_crit_edge ], [ %call5.lcssa, %if.end15.end_crit_edge ], [ %call20, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_rate) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_rate) #5
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_get_sig_fmt(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_set_sig_fmt(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_set_rate(ptr nocapture noundef readonly %bebob, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %call = tail call i32 @avc_general_set_sig_fmt(ptr noundef %1, i32 noundef %rate, i32 noundef 1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call2 = tail call i32 @avc_general_set_sig_fmt(ptr noundef %3, i32 noundef %rate, i32 noundef 0, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.end_crit_edge, label %if.end5

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 300) #5
  br label %end

end:                                              ; preds = %if.end5, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call2, %if.end.end_crit_edge ], [ %call2, %if.end5 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_get_clock_src(ptr noundef %bebob, ptr nocapture noundef writeonly %src) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %input = alloca [7 x i8], align 1
  %id = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #5
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %input) #5
  %9 = getelementptr inbounds [7 x i8], ptr %input, i32 0, i32 1
  %10 = getelementptr inbounds [7 x i8], ptr %input, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %input, i32 0, i32 3
  %12 = call ptr @memset(ptr %input, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %id, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #5
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %type, align 4, !annotation !85
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %get = getelementptr inbounds %struct.snd_bebob_clock_spec, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get, align 4
  %call = call i32 %16(ptr noundef %bebob, ptr noundef nonnull %id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %17 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %end

if.end:                                           ; preds = %if.then
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp2.not = icmp ult i32 %20, %22
  br i1 %cmp2.not, label %if.end10, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %unit7 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %23 = ptrtoint ptr %unit7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit7, align 4
  %sub = add i32 %22, -1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6, i32 noundef %20, i32 noundef %sub) #8
  br label %end

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %types = getelementptr inbounds %struct.snd_bebob_clock_spec, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %types, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %20
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %src, align 4
  br label %end

if.end11:                                         ; preds = %entry
  %sync_input_plug = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 16
  %30 = ptrtoint ptr %sync_input_plug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync_input_plug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp12 = icmp slt i32 %31, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %src, align 4
  br label %end

if.end14:                                         ; preds = %if.end11
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 96, ptr %addr, align 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %4, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %5, align 1
  %conv3.i = trunc i32 %31 to i8
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.i, ptr %6, align 1
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %7, align 1
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %8, align 1
  %unit16 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %39 = ptrtoint ptr %unit16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %unit16, align 4
  %call19 = call i32 @avc_bridgeco_get_plug_input(ptr noundef %40, ptr noundef nonnull %addr, ptr noundef nonnull %input) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %unit16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %unit16, align 4
  %43 = ptrtoint ptr %sync_input_plug to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sync_input_plug, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %44, i32 noundef %call19) #8
  br label %end

if.end28:                                         ; preds = %if.end14
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %input, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %46, label %if.else [
    i8 -1, label %if.then32
    i8 1, label %if.then38
  ]

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %src, align 4
  br label %end

if.then38:                                        ; preds = %if.end28
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp41 = icmp eq i8 %50, 1
  br i1 %cmp41, label %land.lhs.true, label %if.then38.end_crit_edge

if.then38.end_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

land.lhs.true:                                    ; preds = %if.then38
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %52)
  %cmp45 = icmp eq i8 %52, 12
  br i1 %cmp45, label %if.then47, label %land.lhs.true.end_crit_edge

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %src, align 4
  br label %end

if.else:                                          ; preds = %if.end28
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp51 = icmp eq i8 %55, 0
  br i1 %cmp51, label %if.then53, label %if.else.end_crit_edge

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then53:                                        ; preds = %if.else
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %10, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %57, label %if.then53.end_crit_edge [
    i8 0, label %if.then58
    i8 1, label %if.then70
  ]

if.then53.end_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then58:                                        ; preds = %if.then53
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp61 = icmp eq i8 %60, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %src, align 4
  br label %end

if.else64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %src, align 4
  br label %end

if.then70:                                        ; preds = %if.then53
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %11, align 1
  %65 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %addr, align 1
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %4, align 1
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %5, align 1
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %6, align 1
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %64, ptr %7, align 1
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %8, align 1
  %71 = ptrtoint ptr %unit16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %unit16, align 4
  %call76 = call i32 @avc_bridgeco_get_plug_type(ptr noundef %72, ptr noundef nonnull %addr, ptr noundef nonnull %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then70.end_crit_edge, label %if.end80

if.then70.end_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end80:                                         ; preds = %if.then70
  %73 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %74, label %if.end80.end_crit_edge [
    i32 5, label %if.then83
    i32 3, label %if.then87
    i32 6, label %if.then91
  ]

if.end80.end_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %src, align 4
  br label %end

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %src, align 4
  br label %end

if.then91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %src, align 4
  br label %end

end:                                              ; preds = %if.then91, %if.then87, %if.then83, %if.end80.end_crit_edge, %if.then70.end_crit_edge, %if.else64, %if.then63, %if.then53.end_crit_edge, %if.else.end_crit_edge, %if.then47, %land.lhs.true.end_crit_edge, %if.then38.end_crit_edge, %if.then32, %do.end24, %if.then13, %if.end10, %do.end6, %do.end
  %err.0 = phi i32 [ %call, %do.end ], [ -5, %do.end6 ], [ %call, %if.end10 ], [ 0, %if.then13 ], [ %call19, %do.end24 ], [ %call19, %if.then32 ], [ %call19, %if.then47 ], [ %call19, %if.then63 ], [ %call19, %if.else64 ], [ %call76, %if.then70.end_crit_edge ], [ %call76, %if.then83 ], [ %call76, %if.then87 ], [ %call76, %if.then91 ], [ -5, %if.end80.end_crit_edge ], [ -5, %if.then53.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -5, %if.then38.end_crit_edge ], [ -5, %land.lhs.true.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %input) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #5
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_init_duplex(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9
  %out_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  %quirks.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 6
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 8
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @cmp_connection_init(ptr noundef %out_conn.i, ptr noundef %3, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %entry.cleanup_crit_edge, label %if.end9.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %entry
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 33
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %call11.i = tail call i32 @amdtp_am824_init(ptr noundef %tx_stream, ptr noundef %5, i32 noundef 1, i32 noundef %spec.select.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end9.i.cleanup.sink.split_crit_edge, label %if.end

if.end9.i.cleanup.sink.split_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end9.i
  %rx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10
  %in_conn.i29 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call.i31 = tail call i32 @cmp_connection_init(ptr noundef %in_conn.i29, ptr noundef %7, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp7.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp7.i32, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end9.i35

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end9.i35:                                      ; preds = %if.end
  %8 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit.i, align 4
  %call11.i33 = tail call i32 @amdtp_am824_init(ptr noundef %rx_stream, ptr noundef %9, i32 noundef 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i33)
  %cmp12.i34 = icmp slt i32 %call11.i33, 0
  br i1 %cmp12.i34, label %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge, label %if.end5

if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end9.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.sink.split

if.end5:                                          ; preds = %if.end9.i35
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #5
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then8, %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge
  %in_conn.i29.sink = phi ptr [ %out_conn.i, %if.then8 ], [ %in_conn.i29, %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %tx_stream.sink.ph = phi ptr [ %rx_stream, %if.then8 ], [ %tx_stream, %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %out_conn.i.sink.ph.ph = phi ptr [ %in_conn.i29, %if.then8 ], [ %out_conn.i, %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %call6, %if.then8 ], [ %call11.i33, %if.end9.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i29.sink) #5
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %tx_stream.sink = phi ptr [ %tx_stream, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %tx_stream.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %out_conn.i.sink.ph = phi ptr [ %out_conn.i, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %out_conn.i.sink.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i31, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream.sink) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end9.i.cleanup.sink.split_crit_edge
  %out_conn.i.sink = phi ptr [ %out_conn.i, %if.end9.i.cleanup.sink.split_crit_edge ], [ %out_conn.i.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call11.i, %if.end9.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_reserve_duplex(ptr noundef %bebob, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %used.i = alloca i8, align 1
  %curr_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #5
  %0 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_rate, align 4, !annotation !85
  %rx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %used.i) #5
  %1 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %used.i, align 1, !annotation !85
  %in_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  %call.i = call i32 @cmp_connection_check_used(ptr noundef %in_conn.i, ptr noundef nonnull %used.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.check_connection_used_by_others.exit.thread_crit_edge

entry.check_connection_used_by_others.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_connection_used_by_others.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %context.i.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %land.lhs.true2.i.if.end_crit_edge

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %direction.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12, i32 7
  %8 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5.i = icmp eq i32 %9, 1
  %cond.i = select i1 %cmp5.i, i32 111, i32 105
  %pcr_index.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %pcr_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcr_index.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %cond.i, i32 noundef %11) #8
  br label %check_connection_used_by_others.exit.thread

check_connection_used_by_others.exit.thread:      ; preds = %do.end.i, %entry.check_connection_used_by_others.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call.i, %entry.check_connection_used_by_others.exit.thread_crit_edge ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #5
  br label %cleanup43

if.end:                                           ; preds = %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #5
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec, align 4
  %rate1 = getelementptr inbounds %struct.snd_bebob_spec, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rate1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call2 = call i32 %17(ptr noundef %bebob, ptr noundef nonnull %curr_rate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup43_crit_edge, label %if.end5

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp6 = icmp eq i32 %rate, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_rate, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %rate.addr.0 = phi i32 [ %19, %if.then7 ], [ %rate, %if.end5.if.end8_crit_edge ]
  %20 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %rate.addr.0)
  %cmp9.not = icmp eq i32 %21, %rate.addr.0
  br i1 %cmp9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  call void @amdtp_domain_stop(ptr noundef %domain) #5
  call void @cmp_connection_break(ptr noundef %in_conn.i) #5
  %out_conn.i85 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  call void @cmp_connection_break(ptr noundef %out_conn.i85) #5
  call void @cmp_connection_release(ptr noundef %out_conn.i85) #5
  call void @cmp_connection_release(ptr noundef %in_conn.i) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %substreams_counter = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 13
  %22 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.end11.if.then14_crit_edge, label %lor.lhs.false

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end11
  %24 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %rate.addr.0)
  %cmp13.not = icmp eq i32 %25, %rate.addr.0
  br i1 %cmp13.not, label %lor.lhs.false.cleanup43_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false.cleanup43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %26 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec, align 4
  %rate16 = getelementptr inbounds %struct.snd_bebob_spec, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %rate16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rate16, align 4
  %set = getelementptr inbounds %struct.snd_bebob_rate_spec, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set, align 4
  %call17 = call i32 %31(ptr noundef %bebob, i32 noundef %rate.addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %32 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %call17) #8
  br label %cleanup43

if.end20:                                         ; preds = %if.then14
  %34 = zext i32 %rate.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %rate.addr.0, label %if.end20.cleanup43_crit_edge [
    i32 32000, label %if.end20.if.end24_crit_edge
    i32 44100, label %if.then.fold.split.i
    i32 48000, label %if.then.fold.split8.i
    i32 88200, label %if.then.fold.split9.i
    i32 96000, label %if.then.fold.split10.i
    i32 176400, label %if.then.fold.split11.i
    i32 192000, label %if.then.fold.split12.i
  ]

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end20.cleanup43_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.then.fold.split.i:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then.fold.split8.i:                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then.fold.split9.i:                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then.fold.split10.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then.fold.split11.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then.fold.split12.i:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split8.i, %if.then.fold.split.i, %if.end20.if.end24_crit_edge
  %i.06.lcssa.i = phi i32 [ 0, %if.end20.if.end24_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split8.i ], [ 3, %if.then.fold.split9.i ], [ 4, %if.then.fold.split10.i ], [ 5, %if.then.fold.split11.i ], [ 6, %if.then.fold.split12.i ]
  %tx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9
  %arrayidx.i = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 %i.06.lcssa.i
  %midi_input_ports.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 7
  %35 = ptrtoint ptr %midi_input_ports.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %midi_ports.0.i = load i32, ptr %midi_input_ports.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %pcm_channels.0.i = load i32, ptr %arrayidx.i, align 4
  %call.i87 = call i32 @amdtp_am824_set_parameters(ptr noundef %tx_stream, i32 noundef %rate.addr.0, i32 noundef %pcm_channels.0.i, i32 noundef %midi_ports.0.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp3.i = icmp slt i32 %call.i87, 0
  br i1 %cmp3.i, label %if.end24.cleanup43_crit_edge, label %keep_resources.exit

if.end24.cleanup43_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

keep_resources.exit:                              ; preds = %if.end24
  %out_conn.i88 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  %call6.i = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #5
  %call7.i = call i32 @cmp_connection_reserve(ptr noundef %out_conn.i88, i32 noundef %call6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp26 = icmp slt i32 %call7.i, 0
  br i1 %cmp26, label %keep_resources.exit.cleanup43_crit_edge, label %if.end28

keep_resources.exit.cleanup43_crit_edge:          ; preds = %keep_resources.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.end28:                                         ; preds = %keep_resources.exit
  %arrayidx1.i94 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 %i.06.lcssa.i
  %midi_output_ports.i95 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 8
  %37 = ptrtoint ptr %midi_output_ports.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %midi_ports.0.i96 = load i32, ptr %midi_output_ports.i95, align 4
  %38 = ptrtoint ptr %arrayidx1.i94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %pcm_channels.0.i97 = load i32, ptr %arrayidx1.i94, align 4
  %call.i98 = call i32 @amdtp_am824_set_parameters(ptr noundef %rx_stream, i32 noundef %rate.addr.0, i32 noundef %pcm_channels.0.i97, i32 noundef %midi_ports.0.i96, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp3.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp3.i99, label %if.end28.if.then32_crit_edge, label %keep_resources.exit106

if.end28.if.then32_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

keep_resources.exit106:                           ; preds = %if.end28
  %call6.i102 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #5
  %call7.i103 = call i32 @cmp_connection_reserve(ptr noundef %in_conn.i, i32 noundef %call6.i102) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i103)
  %cmp31 = icmp slt i32 %call7.i103, 0
  br i1 %cmp31, label %keep_resources.exit106.if.then32_crit_edge, label %cleanup

keep_resources.exit106.if.then32_crit_edge:       ; preds = %keep_resources.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

if.then32:                                        ; preds = %keep_resources.exit106.if.then32_crit_edge, %if.end28.if.then32_crit_edge
  %retval.0.i105117 = phi i32 [ %call7.i103, %keep_resources.exit106.if.then32_crit_edge ], [ %call.i98, %if.end28.if.then32_crit_edge ]
  call void @cmp_connection_release(ptr noundef %out_conn.i88) #5
  br label %cleanup43

cleanup:                                          ; preds = %keep_resources.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %events_per_period1.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21, i32 1
  %39 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21, i32 2
  %40 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup, %if.then32, %keep_resources.exit.cleanup43_crit_edge, %if.end24.cleanup43_crit_edge, %if.end20.cleanup43_crit_edge, %do.end, %lor.lhs.false.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %check_connection_used_by_others.exit.thread
  %retval.1 = phi i32 [ %call2, %if.end.cleanup43_crit_edge ], [ %err.0.i.ph, %check_connection_used_by_others.exit.thread ], [ 0, %cleanup ], [ 0, %lor.lhs.false.cleanup43_crit_edge ], [ %call7.i, %keep_resources.exit.cleanup43_crit_edge ], [ %retval.0.i105117, %if.then32 ], [ %call17, %do.end ], [ -22, %if.end20.cleanup43_crit_edge ], [ %call.i87, %if.end24.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_start_duplex(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %src = alloca i32, align 4
  %curr_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 13
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10
  %packet_index.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10, i32 7
  %2 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i86 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9, i32 7
  %4 = ptrtoint ptr %packet_index.i86 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i87 = icmp slt i32 %5, 0
  br i1 %cmp.i87, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end3_crit_edge

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #5
  %in_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  tail call void @cmp_connection_break(ptr noundef %in_conn.i) #5
  %out_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  tail call void @cmp_connection_break(ptr noundef %out_conn.i) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %context.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then6, label %if.end3.cleanup53_crit_edge

if.end3.cleanup53_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #5
  %8 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %curr_rate, align 4, !annotation !85
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %9 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %maudio_special_quirk, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then6.if.end12_crit_edge, label %if.then7

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.then6
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %11 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec, align 4
  %rate = getelementptr inbounds %struct.snd_bebob_spec, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rate, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call8 = call i32 %16(ptr noundef %bebob, ptr noundef nonnull %curr_rate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.cleanup.thread96_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7.cleanup.thread96_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread96

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.then6.if.end12_crit_edge
  %call13 = call i32 @snd_bebob_stream_get_clock_src(ptr noundef %bebob, ptr noundef nonnull %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup.thread96_crit_edge, label %if.end16

if.end12.cleanup.thread96_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread96

if.end16:                                         ; preds = %if.end12
  %call18 = call fastcc i32 @start_stream(ptr noundef %bebob, ptr noundef %rx_stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.error_crit_edge, label %if.end21

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end21:                                         ; preds = %if.end16
  %tx_stream22 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9
  %call23 = call fastcc i32 @start_stream(ptr noundef %bebob, ptr noundef %tx_stream22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.error_crit_edge, label %if.end26

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end26:                                         ; preds = %if.end21
  %quirks = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 6
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  %. = select i1 %tobool27.not, i32 0, i32 16000
  %domain30 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  %call31 = call i32 @amdtp_domain_start(ptr noundef %domain30, i32 noundef %., i1 noundef zeroext true, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.error_crit_edge, label %if.end34

if.end26.error_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end34:                                         ; preds = %if.end26
  %19 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %maudio_special_quirk, align 4
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %if.end34.if.end44_crit_edge, label %if.then37

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then37:                                        ; preds = %if.end34
  %spec38 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %21 = ptrtoint ptr %spec38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec38, align 4
  %rate39 = getelementptr inbounds %struct.snd_bebob_spec, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %rate39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rate39, align 4
  %set = getelementptr inbounds %struct.snd_bebob_rate_spec, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set, align 4
  %27 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %curr_rate, align 4
  %call40 = call i32 %26(ptr noundef %bebob, i32 noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end:                                           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %29 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13, i32 noundef %call40) #8
  br label %error

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %31 = ptrtoint ptr %domain30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i107 = load ptr, ptr %domain30, align 4
  %cmp.not.i108 = icmp eq ptr %.pn.i107, %domain30
  br i1 %cmp.not.i108, label %if.end44.cleanup_crit_edge, label %if.end44.for.body.i_crit_edge

if.end44.for.body.i_crit_edge:                    ; preds = %if.end44
  br label %for.body.i

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %if.end44.for.body.i_crit_edge
  %.pn.i109 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i107, %if.end44.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 348) #5
  %ready_processing.i = getelementptr i8, ptr %.pn.i109, i32 -76
  %32 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ready_processing.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %34 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #5
  %ready_wait.i = getelementptr i8, ptr %.pn.i109, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #5
  %35 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ready_processing.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.not12.not.i = icmp eq i8 %36, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then12.i.if.end34.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then12.i.if.end34.i_crit_edge
  %__ret13.115.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 400, %if.then12.i.if.end34.i_crit_edge ]
  %call1514.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1511.i, %if.then12.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514.i)
  %tobool35.not.i = icmp eq i32 %call1514.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #5
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #5
  %37 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ready_processing.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool18.not.i = icmp eq i8 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %39 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %39, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 400, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #5
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %40 = ptrtoint ptr %.pn.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.i109, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain30
  br i1 %cmp.not.i, label %for.cond.i.backedge.cleanup_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.backedge.cleanup_crit_edge:            ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.thread96:                                 ; preds = %if.end12.cleanup.thread96_crit_edge, %if.then7.cleanup.thread96_crit_edge
  %retval.0.ph = phi i32 [ %call13, %if.end12.cleanup.thread96_crit_edge ], [ %call8, %if.then7.cleanup.thread96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #5
  br label %cleanup53

cleanup:                                          ; preds = %for.cond.i.backedge.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #5
  br label %cleanup53

error:                                            ; preds = %if.end41.i.error_crit_edge, %do.end, %if.end26.error_crit_edge, %if.end21.error_crit_edge, %if.end16.error_crit_edge
  %err.1.ph = phi i32 [ %call31, %if.end26.error_crit_edge ], [ %call23, %if.end21.error_crit_edge ], [ %call18, %if.end16.error_crit_edge ], [ %call40, %do.end ], [ -110, %if.end41.i.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #5
  %domain52 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  call void @amdtp_domain_stop(ptr noundef %domain52) #5
  %in_conn.i88 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  call void @cmp_connection_break(ptr noundef %in_conn.i88) #5
  %out_conn.i89 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  call void @cmp_connection_break(ptr noundef %out_conn.i89) #5
  br label %cleanup53

cleanup53:                                        ; preds = %error, %cleanup, %cleanup.thread96, %if.end3.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.1 = phi i32 [ %err.1.ph, %error ], [ -5, %entry.cleanup53_crit_edge ], [ %retval.0.ph, %cleanup.thread96 ], [ 0, %cleanup ], [ 0, %if.end3.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_stream(ptr noundef %bebob, ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10
  %cmp = icmp eq ptr %rx_stream, %stream
  %in_conn = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  %out_conn = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  %conn.0 = select i1 %cmp, ptr %in_conn, ptr %out_conn
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %0 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maudio_special_quirk, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #5
  %2 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #5
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %type.i, align 1, !annotation !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 256) #9
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %map_data_channels.exit.thread, label %if.end.i

map_data_channels.exit.thread:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %tx_stream.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9
  %cmp1.i = icmp eq ptr %tx_stream.i, %stream
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %addr.i, align 1
  %conv.i.i = zext i1 %cmp1.i to i8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i.i, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %6, align 1
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %call5.i = call i32 @avc_bridgeco_get_plug_ch_pos(ptr noundef %16, ptr noundef nonnull %addr.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit.i, align 4
  %cond.i = select i1 %cmp1.i, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond.i, i32 noundef %call5.i) #8
  br label %map_data_channels.exit.thread27

if.end10.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i.i.i, align 8
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp11146.not.i = icmp eq i8 %20, 0
  br i1 %cmp11146.not.i, label %map_data_channels.exit.thread30, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

map_data_channels.exit.thread30:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #5
  br label %if.end6

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %pos.0150.i = phi i32 [ %pos.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 1, %if.end10.i.for.body.i_crit_edge ]
  %midi.0149.i = phi i32 [ %midi.3.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %pcm.0148.i = phi i32 [ %pcm.1.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %sec.0147.i = phi i32 [ %inc74.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %addr.i, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i, ptr %2, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %3, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %4, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %5, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %6, align 1
  %27 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unit.i, align 4
  %call16.i = call i32 @avc_bridgeco_get_plug_section_type(ptr noundef %28, ptr noundef nonnull %addr.i, i32 noundef %sec.0147.i, ptr noundef nonnull %type.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end22.i, label %if.end28.i

do.end22.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unit.i, align 4
  %cond27.i = select i1 %cmp1.i, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond27.i, i32 noundef %call16.i) #8
  br label %map_data_channels.exit.thread27

if.end28.i:                                       ; preds = %for.body.i
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp30.i = icmp eq i8 %32, -1
  br i1 %cmp30.i, label %if.end28.i.map_data_channels.exit.thread27_crit_edge, label %if.end33.i

if.end28.i.map_data_channels.exit.thread27_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_data_channels.exit.thread27

if.end33.i:                                       ; preds = %if.end28.i
  %arrayidx35.i = getelementptr i8, ptr %call7.i.i.i, i32 %pos.0150.i
  %33 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %34 to i32
  %pos.1138.i = add i32 %pos.0150.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp38139.not.i = icmp eq i8 %34, 0
  br i1 %cmp38139.not.i, label %if.end33.i.for.end.i_crit_edge, label %if.end33.i.for.body40.i_crit_edge

if.end33.i.for.body40.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body40.i

if.end33.i.for.end.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body40.i:                                     ; preds = %for.inc.i.for.body40.i_crit_edge, %if.end33.i.for.body40.i_crit_edge
  %pos.1144.i = phi i32 [ %pos.1.i, %for.inc.i.for.body40.i_crit_edge ], [ %pos.1138.i, %if.end33.i.for.body40.i_crit_edge ]
  %pos.1.in143.i = phi i32 [ %inc41.i, %for.inc.i.for.body40.i_crit_edge ], [ %pos.0150.i, %if.end33.i.for.body40.i_crit_edge ]
  %midi.1142.i = phi i32 [ %midi.2.i, %for.inc.i.for.body40.i_crit_edge ], [ %midi.0149.i, %if.end33.i.for.body40.i_crit_edge ]
  %ch.0140.i = phi i32 [ %inc64.i, %for.inc.i.for.body40.i_crit_edge ], [ 0, %if.end33.i.for.body40.i_crit_edge ]
  %inc41.i = add i32 %pos.1.in143.i, 2
  %arrayidx42.i = getelementptr i8, ptr %call7.i.i.i, i32 %pos.1144.i
  %35 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %36 to i32
  %sub.i = add nsw i32 %conv43.i, -1
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %cond90.i = icmp eq i8 %38, 10
  br i1 %cond90.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %midi.1142.i)
  %cmp53.not.i = icmp eq i32 %midi.1142.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %midi.1142.i)
  %cmp55.not.i = icmp eq i32 %sub.i, %midi.1142.i
  %or.cond.i = select i1 %cmp53.not.i, i1 true, i1 %cmp55.not.i
  br i1 %or.cond.i, label %if.end58.i, label %sw.bb.i.map_data_channels.exit.thread27_crit_edge

sw.bb.i.map_data_channels.exit.thread27_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_data_channels.exit.thread27

if.end58.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @amdtp_am824_set_midi_position(ptr noundef %stream, i32 noundef %sub.i) #5
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body40.i
  %arrayidx45.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc41.i
  %39 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %40 to i32
  %sub47.i = add nsw i32 %conv46.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47.i, i32 %conv36.i)
  %cmp48.not.i = icmp ult i32 %sub47.i, %conv36.i
  %spec.select.i = select i1 %cmp48.not.i, i32 %sub47.i, i32 %ch.0140.i
  %add.i = add i32 %spec.select.i, %pcm.0148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i)
  %cmp60.i = icmp ugt i32 %add.i, 63
  br i1 %cmp60.i, label %sw.default.i.map_data_channels.exit.thread27_crit_edge, label %if.end63.i

sw.default.i.map_data_channels.exit.thread27_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_data_channels.exit.thread27

if.end63.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @amdtp_am824_set_pcm_position(ptr noundef %stream, i32 noundef %add.i, i32 noundef %sub.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end63.i, %if.end58.i
  %midi.2.i = phi i32 [ %sub.i, %if.end58.i ], [ %midi.1142.i, %if.end63.i ]
  %inc64.i = add nuw nsw i32 %ch.0140.i, 1
  %pos.1.i = add i32 %pos.1.in143.i, 3
  %exitcond.not.i = icmp eq i32 %inc64.i, %conv36.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body40.i_crit_edge

for.inc.i.for.body40.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end33.i.for.end.i_crit_edge
  %midi.1.lcssa.i = phi i32 [ %midi.0149.i, %if.end33.i.for.end.i_crit_edge ], [ %midi.2.i, %for.inc.i.for.end.i_crit_edge ]
  %pos.1.lcssa.i = phi i32 [ %pos.1138.i, %if.end33.i.for.end.i_crit_edge ], [ %pos.1.i, %for.inc.i.for.end.i_crit_edge ]
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %42)
  %cmp66.not.i = icmp eq i8 %42, 10
  %add69.i = select i1 %cmp66.not.i, i32 0, i32 %conv36.i
  %pcm.1.i = add i32 %add69.i, %pcm.0148.i
  %add71.i = select i1 %cmp66.not.i, i32 %conv36.i, i32 0
  %midi.3.i = add i32 %add71.i, %midi.1.lcssa.i
  %inc74.i = add nuw nsw i32 %sec.0147.i, 1
  %exitcond157.not.i = icmp eq i32 %inc74.i, %conv.i
  br i1 %exitcond157.not.i, label %map_data_channels.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

map_data_channels.exit.thread27:                  ; preds = %sw.default.i.map_data_channels.exit.thread27_crit_edge, %sw.bb.i.map_data_channels.exit.thread27_crit_edge, %if.end28.i.map_data_channels.exit.thread27_crit_edge, %do.end22.i, %do.end.i
  %err.1.i.ph = phi i32 [ %call16.i, %do.end22.i ], [ %call5.i, %do.end.i ], [ -38, %sw.default.i.map_data_channels.exit.thread27_crit_edge ], [ -38, %sw.bb.i.map_data_channels.exit.thread27_crit_edge ], [ -38, %if.end28.i.map_data_channels.exit.thread27_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #5
  br label %cleanup

map_data_channels.exit:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #5
  br label %if.end6

if.end6:                                          ; preds = %map_data_channels.exit, %map_data_channels.exit.thread30, %entry.if.end6_crit_edge
  %call7 = call i32 @cmp_connection_establish(ptr noundef %conn.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  %channel = getelementptr inbounds %struct.cmp_connection, ptr %conn.0, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel, align 8
  %45 = ptrtoint ptr %conn.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %conn.0, align 8
  %call11 = call i32 @amdtp_domain_add_stream(ptr noundef %domain, ptr noundef %stream, i32 noundef %44, i32 noundef %46) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %map_data_channels.exit.thread27, %map_data_channels.exit.thread
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %map_data_channels.exit.thread ], [ %err.1.i.ph, %map_data_channels.exit.thread27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_bebob_stream_stop_duplex(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 13
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #5
  %in_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  tail call void @cmp_connection_break(ptr noundef %in_conn.i) #5
  %out_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  tail call void @cmp_connection_break(ptr noundef %out_conn.i) #5
  tail call void @cmp_connection_release(ptr noundef %out_conn.i) #5
  tail call void @cmp_connection_release(ptr noundef %in_conn.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_bebob_stream_destroy_duplex(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 21
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #5
  %tx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #5
  %out_conn.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 11
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i) #5
  %rx_stream = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #5
  %in_conn.i6 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 12
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_discover(ptr nocapture noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  %plugs.i = alloca [4 x i8], align 4
  %addr.i = alloca [6 x i8], align 1
  %type.i = alloca i32, align 4
  %plugs = alloca [4 x i8], align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugs) #5
  %4 = getelementptr inbounds [4 x i8], ptr %plugs, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %plugs, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %plugs, i32 0, i32 3
  %7 = ptrtoint ptr %plugs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %plugs, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #5
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %8 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %9 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_general_get_plug_info(ptr noundef %10, i32 noundef 31, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %plugs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %call) #8
  br label %end

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %plugs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %plugs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp2 = icmp eq i8 %14, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %lor.lhs.false

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp6 = icmp eq i8 %16, 0
  br i1 %cmp6, label %lor.lhs.false.end_crit_edge, label %if.end9

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end9:                                          ; preds = %lor.lhs.false
  %rx_stream_formations = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 15
  %call12 = call fastcc i32 @fill_stream_formations(ptr noundef %bebob, ptr noundef nonnull %addr, i32 noundef 0, ptr noundef %rx_stream_formations)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.end_crit_edge, label %if.end16

if.end9.end_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end16:                                         ; preds = %if.end9
  %tx_stream_formations = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 14
  %call19 = call fastcc i32 @fill_stream_formations(ptr noundef %bebob, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef %tx_stream_formations)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.end_crit_edge, label %if.end23

if.end16.end_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end23:                                         ; preds = %if.end16
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 2
  %conv28 = zext i8 %18 to i32
  %midi_input_ports = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 7
  %call29 = call fastcc i32 @detect_midi_ports(ptr noundef %bebob, ptr noundef %tx_stream_formations, ptr noundef nonnull %addr, i32 noundef 0, i32 noundef %conv28, ptr noundef %midi_input_ports)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end23.end_crit_edge, label %if.end33

if.end23.end_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end33:                                         ; preds = %if.end23
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv38 = zext i8 %20 to i32
  %midi_output_ports = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 8
  %call39 = call fastcc i32 @detect_midi_ports(ptr noundef %bebob, ptr noundef %rx_stream_formations, ptr noundef nonnull %addr, i32 noundef 1, i32 noundef %conv38, ptr noundef %midi_output_ports)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp40 = icmp sgt i32 %call39, -1
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp40, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then44, label %if.end33.end_crit_edge

if.end33.end_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then44:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugs.i) #5
  %21 = ptrtoint ptr %plugs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %plugs.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #5
  %22 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %23 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %24 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %25 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %26 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #5
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %type.i, align 4, !annotation !85
  %28 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unit, align 4
  %call.i = call i32 @avc_general_get_plug_info(ptr noundef %29, i32 noundef 12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %plugs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %call.i) #8
  br label %seek_msu_sync_input_plug.exit

if.end.i:                                         ; preds = %if.then44
  %sync_input_plug.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 16
  %32 = ptrtoint ptr %sync_input_plug.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %sync_input_plug.i, align 4
  %33 = ptrtoint ptr %plugs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %plugs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp241.not.i = icmp eq i8 %34, 0
  br i1 %cmp241.not.i, label %if.end.i.seek_msu_sync_input_plug.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.seek_msu_sync_input_plug.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %seek_msu_sync_input_plug.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 96, ptr %addr.i, align 1
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %22, align 1
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %23, align 1
  %conv3.i.i = trunc i32 %i.042.i to i8
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv3.i.i, ptr %24, align 1
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %25, align 1
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %26, align 1
  %41 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %unit, align 4
  %call7.i = call i32 @avc_bridgeco_get_plug_type(ptr noundef %42, ptr noundef nonnull %addr.i, ptr noundef nonnull %type.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end13.i, label %if.end16.i

do.end13.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.37, i32 noundef %i.042.i, i32 noundef %call7.i) #8
  br label %seek_msu_sync_input_plug.exit

if.end16.i:                                       ; preds = %for.body.i
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp17.i = icmp eq i32 %46, 3
  br i1 %cmp17.i, label %if.then19.i, label %for.inc.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %sync_input_plug.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.042.i, ptr %sync_input_plug.i, align 4
  br label %seek_msu_sync_input_plug.exit

for.inc.i:                                        ; preds = %if.end16.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %48 = ptrtoint ptr %plugs.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %plugs.i, align 4
  %conv.i = zext i8 %49 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.seek_msu_sync_input_plug.exit_crit_edge

for.inc.i.seek_msu_sync_input_plug.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %seek_msu_sync_input_plug.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

seek_msu_sync_input_plug.exit:                    ; preds = %for.inc.i.seek_msu_sync_input_plug.exit_crit_edge, %if.then19.i, %do.end13.i, %if.end.i.seek_msu_sync_input_plug.exit_crit_edge, %do.end.i
  %err.1.i = phi i32 [ %call.i, %do.end.i ], [ %call7.i, %do.end13.i ], [ %call7.i, %if.then19.i ], [ %call.i, %if.end.i.seek_msu_sync_input_plug.exit_crit_edge ], [ %call7.i, %for.inc.i.seek_msu_sync_input_plug.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugs.i) #5
  br label %end

end:                                              ; preds = %seek_msu_sync_input_plug.exit, %if.end33.end_crit_edge, %if.end23.end_crit_edge, %if.end16.end_crit_edge, %if.end9.end_crit_edge, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge, %do.end
  %err.0 = phi i32 [ %call, %do.end ], [ %call12, %if.end9.end_crit_edge ], [ %call19, %if.end16.end_crit_edge ], [ %call29, %if.end23.end_crit_edge ], [ %call39, %if.end33.end_crit_edge ], [ %err.1.i, %seek_msu_sync_input_plug.exit ], [ -38, %lor.lhs.false.end_crit_edge ], [ -38, %if.end.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugs) #5
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_get_plug_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_stream_formations(ptr nocapture noundef readonly %bebob, ptr noundef %addr, i32 noundef %plug_dir, ptr nocapture noundef %formations) unnamed_addr #0 align 64 {
entry:
  %plug_type = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plug_type) #5
  %0 = ptrtoint ptr %plug_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %plug_type, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %addr, align 1
  %conv.i = trunc i32 %plug_dir to i8
  %arrayidx1.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %addr, i32 2
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %addr, i32 3
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %addr, i32 4
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %addr, i32 5
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %arrayidx7.i, align 1
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %7 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_bridgeco_get_plug_type(ptr noundef %8, ptr noundef %addr, ptr noundef nonnull %plug_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %plug_dir, i32 noundef %call) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %plug_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plug_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.not = icmp eq i32 %12, 0
  br i1 %cmp2.not, label %if.end4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 128) #9
  %cmp6 = icmp eq ptr %call7.i, null
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %for.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  %arrayidx2.i7 = getelementptr i8, ptr %call7.i, i32 1
  %arrayidx8.i = getelementptr i8, ptr %call7.i, i32 2
  %arrayidx21.i = getelementptr i8, ptr %call7.i, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %eid.014 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %addr, align 1
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx2.i, align 1
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx4.i, align 1
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx6.i, align 1
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx7.i, align 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %len, align 4
  %21 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit, align 4
  %call11 = call i32 @avc_bridgeco_get_plug_strm_fmt(ptr noundef %22, ptr noundef %addr, ptr noundef nonnull %call7.i, ptr noundef nonnull %len, i32 noundef %eid.014) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call11)
  %cmp12 = icmp ne i32 %call11, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eid.014)
  %cmp13.not = icmp eq i32 %eid.014, 0
  %or.cond = or i1 %cmp12, %cmp13.not
  br i1 %or.cond, label %if.else15, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp16 = icmp slt i32 %call11, 0
  br i1 %cmp16, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.30, i32 noundef %eid.014, i32 noundef %plug_dir, i32 noundef 0, i32 noundef %call11) #8
  br label %for.end

if.end24:                                         ; preds = %if.else15
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %26)
  %cmp.not.i = icmp eq i8 %26, -112
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false.i:                                  ; preds = %if.end24
  %27 = ptrtoint ptr %arrayidx2.i7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %cmp4.not.i = icmp eq i8 %28, 64
  br i1 %cmp4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.for.end_crit_edge

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx8.i, align 2
  %switch.tableidx = add i8 %30, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %31 = icmp ult i8 %switch.tableidx, 9
  br i1 %31, label %switch.hole_check, label %for.cond.preheader.i.for.end_crit_edge

for.cond.preheader.i.for.end_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

switch.hole_check:                                ; preds = %for.cond.preheader.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 319, %switch.maskindex
  %32 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %switch.lobit.not = icmp eq i16 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.end_crit_edge, label %switch.lookup

switch.hole_check.for.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

switch.lookup:                                    ; preds = %switch.hole_check
  %33 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.fill_stream_formations, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx19.i = getelementptr %struct.snd_bebob_stream_formation, ptr %formations, i32 %switch.load
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 0, ptr %arrayidx19.i, align 4
  %36 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp236.not.i = icmp eq i8 %37, 0
  br i1 %cmp236.not.i, label %switch.lookup.lor.lhs.false45.i_crit_edge, label %for.body25.lr.ph.i

switch.lookup.lor.lhs.false45.i_crit_edge:        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false45.i

for.body25.lr.ph.i:                               ; preds = %switch.lookup
  %midi.i = getelementptr %struct.snd_bebob_stream_formation, ptr %formations, i32 %switch.load, i32 1
  %conv22.i = zext i8 %37 to i32
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc38.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %e.07.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc39.i, %for.inc38.i.for.body25.i_crit_edge ]
  %mul.i = shl nuw i32 %e.07.i, 1
  %add.i = add nuw nsw i32 %mul.i, 5
  %arrayidx26.i = getelementptr i8, ptr %call7.i, i32 %add.i
  %38 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %39 to i32
  %add29.i = add nuw nsw i32 %mul.i, 6
  %arrayidx30.i = getelementptr i8, ptr %call7.i, i32 %add29.i
  %40 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx30.i, align 2
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %41, label %for.body25.i.for.end_crit_edge [
    i8 0, label %for.body25.i.for.inc38.i_crit_edge
    i8 6, label %for.body25.i.for.inc38.i_crit_edge40
    i8 13, label %sw.bb34.i
  ]

for.body25.i.for.inc38.i_crit_edge40:             ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

for.body25.i.for.inc38.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

for.body25.i.for.end_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sw.bb34.i:                                        ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %sw.bb34.i, %for.body25.i.for.inc38.i_crit_edge, %for.body25.i.for.inc38.i_crit_edge40
  %arrayidx19.sink15.i = phi ptr [ %midi.i, %sw.bb34.i ], [ %arrayidx19.i, %for.body25.i.for.inc38.i_crit_edge ], [ %arrayidx19.i, %for.body25.i.for.inc38.i_crit_edge40 ]
  %43 = ptrtoint ptr %arrayidx19.sink15.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19.sink15.i, align 4
  %add33.i = add i32 %44, %conv27.i
  store i32 %add33.i, ptr %arrayidx19.sink15.i, align 4
  %inc39.i = add nuw nsw i32 %e.07.i, 1
  %exitcond.not = icmp eq i32 %inc39.i, %conv22.i
  br i1 %exitcond.not, label %for.end40.i, label %for.inc38.i.for.body25.i_crit_edge

for.inc38.i.for.body25.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25.i

for.end40.i:                                      ; preds = %for.inc38.i
  %45 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %.pr.i)
  %cmp43.i = icmp ugt i32 %.pr.i, 64
  br i1 %cmp43.i, label %for.end40.i.for.end_crit_edge, label %for.end40.i.lor.lhs.false45.i_crit_edge

for.end40.i.lor.lhs.false45.i_crit_edge:          ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false45.i

for.end40.i.for.end_crit_edge:                    ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false45.i:                                ; preds = %for.end40.i.lor.lhs.false45.i_crit_edge, %switch.lookup.lor.lhs.false45.i_crit_edge
  %midi47.i = getelementptr %struct.snd_bebob_stream_formation, ptr %formations, i32 %switch.load, i32 1
  %46 = ptrtoint ptr %midi47.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %midi47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp48.i = icmp ugt i32 %47, 1
  br i1 %cmp48.i, label %lor.lhs.false45.i.for.end_crit_edge, label %for.inc

lor.lhs.false45.i.for.end_crit_edge:              ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false45.i
  %inc = add nuw nsw i32 %eid.014, 1
  %exitcond20.not = icmp eq i32 %inc, 7
  br i1 %exitcond20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false45.i.for.end_crit_edge, %for.end40.i.for.end_crit_edge, %for.body25.i.for.end_crit_edge, %switch.hole_check.for.end_crit_edge, %for.cond.preheader.i.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %if.end24.for.end_crit_edge, %do.end20, %for.body.for.end_crit_edge
  %err.1 = phi i32 [ %call11, %do.end20 ], [ -38, %for.body25.i.for.end_crit_edge ], [ -38, %switch.hole_check.for.end_crit_edge ], [ -38, %lor.lhs.false45.i.for.end_crit_edge ], [ -38, %for.cond.preheader.i.for.end_crit_edge ], [ -38, %for.end40.i.for.end_crit_edge ], [ -38, %if.end24.for.end_crit_edge ], [ -38, %lor.lhs.false.i.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.1, %for.end ], [ -6, %if.else.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plug_type) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detect_midi_ports(ptr nocapture noundef readonly %bebob, ptr nocapture noundef readonly %formats, ptr noundef %addr, i32 noundef %plug_dir, i32 noundef %plug_count, ptr nocapture noundef %midi_ports) unnamed_addr #0 align 64 {
entry:
  %plug_type = alloca i32, align 4
  %ch_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %midi_ports to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %midi_ports, align 4
  %midi = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 0, i32 1
  %1 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %for.cond, label %entry.for.cond5.preheader_crit_edge

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond:                                         ; preds = %entry
  %midi.1 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 1, i32 1
  %3 = ptrtoint ptr %midi.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %midi.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.1 = icmp eq i32 %4, 0
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.for.cond5.preheader_crit_edge

for.cond.for.cond5.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond.1:                                       ; preds = %for.cond
  %midi.2 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 2, i32 1
  %5 = ptrtoint ptr %midi.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midi.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.2 = icmp eq i32 %6, 0
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.for.cond5.preheader_crit_edge

for.cond.1.for.cond5.preheader_crit_edge:         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond.2:                                       ; preds = %for.cond.1
  %midi.3 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 3, i32 1
  %7 = ptrtoint ptr %midi.3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not.3 = icmp eq i32 %8, 0
  br i1 %cmp1.not.3, label %for.cond.3, label %for.cond.2.for.cond5.preheader_crit_edge

for.cond.2.for.cond5.preheader_crit_edge:         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond.3:                                       ; preds = %for.cond.2
  %midi.4 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 4, i32 1
  %9 = ptrtoint ptr %midi.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %midi.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.4 = icmp eq i32 %10, 0
  br i1 %cmp1.not.4, label %for.cond.4, label %for.cond.3.for.cond5.preheader_crit_edge

for.cond.3.for.cond5.preheader_crit_edge:         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond.4:                                       ; preds = %for.cond.3
  %midi.5 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 5, i32 1
  %11 = ptrtoint ptr %midi.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %midi.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.not.5 = icmp eq i32 %12, 0
  br i1 %cmp1.not.5, label %for.cond.5, label %for.cond.4.for.cond5.preheader_crit_edge

for.cond.4.for.cond5.preheader_crit_edge:         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.cond.5:                                       ; preds = %for.cond.4
  %midi.6 = getelementptr %struct.snd_bebob_stream_formation, ptr %formats, i32 6, i32 1
  %13 = ptrtoint ptr %midi.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %midi.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.not.6 = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plug_count)
  %cmp658.not = icmp eq i32 %plug_count, 0
  %or.cond = or i1 %cmp1.not.6, %cmp658.not
  br i1 %or.cond, label %for.cond.5.cleanup27_crit_edge, label %for.cond.5.for.body7.lr.ph_crit_edge

for.cond.5.for.body7.lr.ph_crit_edge:             ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.lr.ph

for.cond.5.cleanup27_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

for.cond5.preheader:                              ; preds = %for.cond.4.for.cond5.preheader_crit_edge, %for.cond.3.for.cond5.preheader_crit_edge, %for.cond.2.for.cond5.preheader_crit_edge, %for.cond.1.for.cond5.preheader_crit_edge, %for.cond.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plug_count)
  %cmp658.not.old = icmp eq i32 %plug_count, 0
  br i1 %cmp658.not.old, label %for.cond5.preheader.cleanup27_crit_edge, label %for.cond5.preheader.for.body7.lr.ph_crit_edge

for.cond5.preheader.for.body7.lr.ph_crit_edge:    ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.lr.ph

for.cond5.preheader.cleanup27_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader.for.body7.lr.ph_crit_edge, %for.cond.5.for.body7.lr.ph_crit_edge
  %conv.i = trunc i32 %plug_dir to i8
  %arrayidx1.i = getelementptr i8, ptr %addr, i32 1
  %arrayidx2.i = getelementptr i8, ptr %addr, i32 2
  %arrayidx4.i = getelementptr i8, ptr %addr, i32 3
  %arrayidx6.i = getelementptr i8, ptr %addr, i32 4
  %arrayidx7.i = getelementptr i8, ptr %addr, i32 5
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  br label %for.body7

for.body7:                                        ; preds = %for.inc24.for.body7_crit_edge, %for.body7.lr.ph
  %i.159 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc25, %for.inc24.for.body7_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plug_type) #5
  %15 = ptrtoint ptr %plug_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %plug_type, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_count) #5
  %16 = ptrtoint ptr %ch_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %ch_count, align 4, !annotation !85
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %addr, align 1
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx2.i, align 1
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx4.i, align 1
  %conv5.i = trunc i32 %i.159 to i8
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %arrayidx7.i, align 1
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_bridgeco_get_plug_type(ptr noundef %24, ptr noundef %addr, ptr noundef nonnull %plug_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %do.end, label %if.else

do.end:                                           ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.32, i32 noundef %plug_dir, i32 noundef %i.159, i32 noundef %call) #8
  br label %cleanup.thread

if.else:                                          ; preds = %for.body7
  %27 = ptrtoint ptr %plug_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plug_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp11.not = icmp eq i32 %28, 2
  br i1 %cmp11.not, label %if.end14, label %if.else.for.inc24_crit_edge

if.else.for.inc24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.end14:                                         ; preds = %if.else
  %29 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unit, align 4
  %call16 = call i32 @avc_bridgeco_get_plug_ch_count(ptr noundef %30, ptr noundef %addr, ptr noundef nonnull %ch_count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup.thread_crit_edge, label %if.end19

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end19:                                         ; preds = %if.end14
  %31 = ptrtoint ptr %ch_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp20 = icmp eq i32 %32, 0
  br i1 %cmp20, label %if.then21, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %ch_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %ch_count, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %34 = ptrtoint ptr %ch_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch_count, align 4
  %36 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %midi_ports, align 4
  %add = add i32 %37, %35
  store i32 %add, ptr %midi_ports, align 4
  br label %for.inc24

cleanup.thread:                                   ; preds = %if.end14.cleanup.thread_crit_edge, %do.end
  %err.1.ph = phi i32 [ %call, %do.end ], [ %call16, %if.end14.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plug_type) #5
  br label %cleanup27

for.inc24:                                        ; preds = %if.end22, %if.else.for.inc24_crit_edge
  %err.1 = phi i32 [ %call16, %if.end22 ], [ %call, %if.else.for.inc24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plug_type) #5
  %inc25 = add nuw i32 %i.159, 1
  %exitcond.not = icmp eq i32 %inc25, %plug_count
  br i1 %exitcond.not, label %for.inc24.cleanup27_crit_edge, label %for.inc24.for.body7_crit_edge

for.inc24.for.body7_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.inc24.cleanup27_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

cleanup27:                                        ; preds = %for.inc24.cleanup27_crit_edge, %cleanup.thread, %for.cond5.preheader.cleanup27_crit_edge, %for.cond.5.cleanup27_crit_edge
  %retval.0 = phi i32 [ %err.1.ph, %cleanup.thread ], [ 0, %for.cond5.preheader.cleanup27_crit_edge ], [ 0, %for.cond.5.cleanup27_crit_edge ], [ %err.1, %for.inc24.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_bebob_stream_lock_changed(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 18
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 4
  %hwdep_wait = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_stream_lock_try(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_count = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_bebob_stream_lock_release(ptr noundef %bebob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_count = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !87

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 990, i32 noundef 9, ptr noundef null) #5
  br label %end

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.end_crit_edge

if.end21.critedge.end_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_check_used(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_break(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_set_parameters(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_establish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_ch_pos(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_section_type(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_am824_set_midi_position(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_am824_set_pcm_position(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_strm_fmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_bridgeco_get_plug_ch_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @snd_bebob_rate_table, !1, !"snd_bebob_rate_table", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 24, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 132, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_bebob_stream_get_clock_src._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_bebob_stream_get_clock_src._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 138, i32 4}
!12 = !{ptr @snd_bebob_stream_get_clock_src._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @snd_bebob_stream_get_clock_src._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 166, i32 3}
!16 = !{ptr @snd_bebob_stream_get_clock_src._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_bebob_stream_get_clock_src._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 561, i32 4}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_bebob_stream_reserve_duplex._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @snd_bebob_stream_reserve_duplex._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 654, i32 5}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @snd_bebob_stream_start_duplex._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @snd_bebob_stream_start_duplex._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 917, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @snd_bebob_stream_discover._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @snd_bebob_stream_discover._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 390, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @check_connection_used_by_others._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @check_connection_used_by_others._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 279, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @map_data_channels._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @map_data_channels._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 301, i32 4}
!47 = !{ptr @map_data_channels._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @map_data_channels._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/firewire/bebob/../amdtp-stream.h", i32 348, i32 7}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 787, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fill_stream_formations._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fill_stream_formations._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 807, i32 4}
!58 = !{ptr @fill_stream_formations._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fill_stream_formations._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"bridgeco_freq_table", i1 false, i1 false}
!61 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 38, i32 27}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 848, i32 4}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @detect_midi_ports._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @detect_midi_ports._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 881, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @seek_msu_sync_input_plug._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @seek_msu_sync_input_plug._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/firewire/bebob/bebob_stream.c", i32 893, i32 4}
!74 = !{ptr @seek_msu_sync_input_plug._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @seek_msu_sync_input_plug._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 1, i32 2000}
