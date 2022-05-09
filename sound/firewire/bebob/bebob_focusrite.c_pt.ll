; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_focusrite.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_focusrite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_bebob_clock_spec = type { i32, ptr, ptr, ptr }
%struct.snd_bebob_rate_spec = type { ptr, ptr }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.snd_bebob_meter_spec = type { i32, ptr, ptr }
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

@saffirepro_26_clk_spec = internal constant { %struct.snd_bebob_clock_spec, [16 x i8] } { %struct.snd_bebob_clock_spec { i32 5, ptr null, ptr @saffirepro_26_clk_src_types, ptr @saffirepro_both_clk_src_get }, [16 x i8] zeroinitializer }, align 32
@saffirepro_both_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @saffirepro_both_clk_freq_get, ptr @saffirepro_both_clk_freq_set }, [24 x i8] zeroinitializer }, align 32
@saffirepro_26_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @saffirepro_26_clk_spec, ptr @saffirepro_both_rate_spec, ptr null }, [20 x i8] zeroinitializer }, align 32
@saffirepro_10_clk_spec = internal constant { %struct.snd_bebob_clock_spec, [16 x i8] } { %struct.snd_bebob_clock_spec { i32 3, ptr null, ptr @saffirepro_10_clk_src_types, ptr @saffirepro_both_clk_src_get }, [16 x i8] zeroinitializer }, align 32
@saffirepro_10_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @saffirepro_10_clk_spec, ptr @saffirepro_both_rate_spec, ptr null }, [20 x i8] zeroinitializer }, align 32
@saffire_both_clk_spec = internal constant { %struct.snd_bebob_clock_spec, [16 x i8] } { %struct.snd_bebob_clock_spec { i32 2, ptr null, ptr @saffire_both_clk_src_types, ptr @saffire_both_clk_src_get }, [16 x i8] zeroinitializer }, align 32
@saffire_both_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @snd_bebob_stream_get_rate, ptr @snd_bebob_stream_set_rate }, [24 x i8] zeroinitializer }, align 32
@saffire_le_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 9, ptr @saffire_le_meter_labels, ptr @saffire_meter_get }, [20 x i8] zeroinitializer }, align 32
@saffire_le_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @saffire_both_clk_spec, ptr @saffire_both_rate_spec, ptr @saffire_le_meter_spec }, [20 x i8] zeroinitializer }, align 32
@saffire_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 7, ptr @saffire_meter_labels, ptr @saffire_meter_get }, [20 x i8] zeroinitializer }, align 32
@saffire_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @saffire_both_clk_spec, ptr @saffire_both_rate_spec, ptr @saffire_meter_spec }, [20 x i8] zeroinitializer }, align 32
@saffirepro_26_clk_src_types = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@saffirepro_10_clk_src_types = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@saffirepro_clk_maps = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\00\FF\01\FF\FF\02", [6 x i8] c"\00\FF\01\02\03\04"], [20 x i8] zeroinitializer }, align 32
@rates = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@saffire_both_clk_src_types = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@saffire_le_meter_labels = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.3], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Analog In\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Digital In\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Analog Out\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Stream In\00", [22 x i8] zeroinitializer }, align 32
@saffire_meter_labels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str, ptr @.str, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"saffirepro_26_clk_spec\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 270, i32 42 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"saffirepro_both_rate_spec\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 265, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"saffirepro_26_spec\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 275, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"saffirepro_10_clk_spec\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 281, i32 42 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"saffirepro_10_spec\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 286, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"saffire_both_clk_spec\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 296, i32 42 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"saffire_both_rate_spec\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 292, i32 41 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"saffire_le_meter_spec\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 302, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"saffire_le_spec\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 307, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"saffire_meter_spec\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 313, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"saffire_spec\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 318, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"saffirepro_26_clk_src_types\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 112, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"saffirepro_10_clk_src_types\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 107, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"saffirepro_clk_maps\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 120, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 46, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"saffire_both_clk_src_types\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 206, i32 40 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"saffire_le_meter_labels\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 222, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 223, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 223, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 224, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 225, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"saffire_meter_labels\00", align 1
@___asan_gen_.68 = private constant [42 x i8] c"../sound/firewire/bebob/bebob_focusrite.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 227, i32 26 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @saffirepro_26_clk_spec, ptr @saffirepro_both_rate_spec, ptr @saffirepro_26_spec, ptr @saffirepro_10_clk_spec, ptr @saffirepro_10_spec, ptr @saffire_both_clk_spec, ptr @saffire_both_rate_spec, ptr @saffire_le_meter_spec, ptr @saffire_le_spec, ptr @saffire_meter_spec, ptr @saffire_spec, ptr @saffirepro_26_clk_src_types, ptr @saffirepro_10_clk_src_types, ptr @saffirepro_clk_maps, ptr @rates, ptr @saffire_both_clk_src_types, ptr @saffire_le_meter_labels, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saffire_meter_labels], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_26_clk_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_both_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_26_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_10_clk_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_10_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_both_clk_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_both_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_le_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_le_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_26_clk_src_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_10_clk_src_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffirepro_clk_maps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_both_clk_src_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_le_meter_labels to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saffire_meter_labels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saffirepro_both_clk_src_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !53
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 4294967668, ptr noundef nonnull %tmp.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %saffire_read_quad.exit.thread, label %if.end

saffire_read_quad.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  br label %end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  %and = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp4 = icmp ugt i32 %and, 5
  br i1 %cmp4, label %if.end.end_crit_edge, label %lor.lhs.false

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %spec = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %5 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %types = getelementptr inbounds %struct.snd_bebob_clock_spec, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %types, align 4
  %cmp1 = icmp eq ptr %10, @saffirepro_10_clk_src_types
  %saffirepro_clk_maps. = select i1 %cmp1, ptr @saffirepro_clk_maps, ptr getelementptr inbounds ([2 x [6 x i8]], ptr @saffirepro_clk_maps, i32 0, i32 1)
  %arrayidx = getelementptr i8, ptr %saffirepro_clk_maps., i32 %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp5 = icmp slt i8 %12, 0
  br i1 %cmp5, label %lor.lhs.false.end_crit_edge, label %if.end8

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %conv15 = zext i8 %12 to i32
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv15, ptr %id, align 4
  br label %end

end:                                              ; preds = %if.end8, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge, %saffire_read_quad.exit.thread
  %err.0 = phi i32 [ %call.i, %if.end8 ], [ -5, %lor.lhs.false.end_crit_edge ], [ -5, %if.end.end_crit_edge ], [ %call.i, %saffire_read_quad.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saffirepro_both_clk_freq_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %rate) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !53
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 4294967756, ptr noundef nonnull %tmp.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %saffire_read_quad.exit.thread, label %if.end

saffire_read_quad.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  br label %end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1 = icmp ugt i32 %4, 6
  br i1 %cmp1, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [7 x i32], ptr @rates, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate, align 4
  br label %end

end:                                              ; preds = %if.else, %if.end.end_crit_edge, %saffire_read_quad.exit.thread
  %err.0 = phi i32 [ %call.i, %if.else ], [ -5, %if.end.end_crit_edge ], [ %call.i, %saffire_read_quad.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saffirepro_both_clk_freq_set(ptr nocapture noundef readonly %bebob, i32 noundef %rate) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end4_crit_edge
    i32 44100, label %if.end4.fold.split
    i32 48000, label %if.end4.fold.split14
    i32 88200, label %if.end4.fold.split15
    i32 96000, label %if.end4.fold.split16
    i32 176400, label %if.end4.fold.split17
    i32 192000, label %if.end4.fold.split18
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %if.end4.fold.split18, %if.end4.fold.split17, %if.end4.fold.split16, %if.end4.fold.split15, %if.end4.fold.split14, %if.end4.fold.split, %entry.if.end4_crit_edge
  %id.012.lcssa = phi i32 [ %rate, %entry.if.end4_crit_edge ], [ 1, %if.end4.fold.split ], [ 2, %if.end4.fold.split14 ], [ 3, %if.end4.fold.split15 ], [ 4, %if.end4.fold.split16 ], [ 5, %if.end4.fold.split17 ], [ 6, %if.end4.fold.split18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id.012.lcssa, ptr %data.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 0, i64 noundef 4294967756, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saffire_both_clk_src_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !53
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 4294967544, ptr noundef nonnull %tmp.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %saffire_read_quad.exit, label %if.then

saffire_read_quad.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  %and = and i32 %4, 255
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %saffire_read_quad.exit
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_get_rate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_set_rate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saffire_meter_get(ptr nocapture noundef readonly %bebob, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %meter = getelementptr inbounds %struct.snd_bebob_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %meter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %meter, align 4
  %labels = getelementptr inbounds %struct.snd_bebob_meter_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul2 = shl i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2, i32 %size)
  %cmp3 = icmp ugt i32 %mul2, %size
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  %6 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %labels, align 4
  %cmp = icmp eq ptr %7, @saffire_le_meter_labels
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %8 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit.i, align 4
  %add.i = select i1 %cmp, i64 4294967656, i64 4294967552
  %call.i = tail call i32 @snd_fw_transaction(ptr noundef %9, i32 noundef 5, i64 noundef %add.i, ptr noundef %buf, i32 noundef %size, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6 = icmp sgt i32 %call.i, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %labels, align 4
  %cmp8 = icmp eq ptr %11, @saffire_le_meter_labels
  br i1 %cmp8, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr i32, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr i32, ptr %buf, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  store i32 %15, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr i32, ptr %buf, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  store i32 %13, ptr %arrayidx15, align 4
  %arrayidx24 = getelementptr i32, ptr %buf, i32 4
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24, align 4
  store i32 %19, ptr %arrayidx10, align 4
  store i32 %17, ptr %arrayidx24, align 4
  %arrayidx31 = getelementptr i32, ptr %buf, i32 7
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr i32, ptr %buf, i32 10
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx32, align 4
  store i32 %23, ptr %arrayidx31, align 4
  %arrayidx39 = getelementptr i32, ptr %buf, i32 8
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx39, align 4
  store i32 %21, ptr %arrayidx39, align 4
  store i32 %25, ptr %arrayidx32, align 4
  %arrayidx47 = getelementptr i32, ptr %buf, i32 9
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr i32, ptr %buf, i32 11
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48, align 4
  store i32 %29, ptr %arrayidx47, align 4
  %arrayidx56 = getelementptr i32, ptr %buf, i32 12
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx56, align 4
  store i32 %31, ptr %arrayidx48, align 4
  store i32 %27, ptr %arrayidx56, align 4
  %arrayidx63 = getelementptr i32, ptr %buf, i32 15
  %32 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx63, align 4
  %arrayidx64 = getelementptr i32, ptr %buf, i32 16
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx64, align 4
  store i32 %35, ptr %arrayidx63, align 4
  store i32 %33, ptr %arrayidx64, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!0 = !{ptr @saffirepro_26_spec, !1, !"saffirepro_26_spec", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 275, i32 29}
!2 = !{ptr @saffirepro_10_spec, !3, !"saffirepro_10_spec", i1 false, i1 false}
!3 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 286, i32 29}
!4 = !{ptr @saffire_le_spec, !5, !"saffire_le_spec", i1 false, i1 false}
!5 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 307, i32 29}
!6 = !{ptr @saffire_spec, !7, !"saffire_spec", i1 false, i1 false}
!7 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 318, i32 29}
!8 = !{ptr @saffirepro_26_clk_spec, !9, !"saffirepro_26_clk_spec", i1 false, i1 false}
!9 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 270, i32 42}
!10 = !{ptr @saffirepro_26_clk_src_types, !11, !"saffirepro_26_clk_src_types", i1 false, i1 false}
!11 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 112, i32 40}
!12 = !{ptr @saffirepro_10_clk_src_types, !13, !"saffirepro_10_clk_src_types", i1 false, i1 false}
!13 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 107, i32 40}
!14 = !{ptr @saffirepro_clk_maps, !15, !"saffirepro_clk_maps", i1 false, i1 false}
!15 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 120, i32 26}
!16 = !{ptr @saffirepro_both_rate_spec, !17, !"saffirepro_both_rate_spec", i1 false, i1 false}
!17 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 265, i32 41}
!18 = !{ptr @rates, !19, !"rates", i1 false, i1 false}
!19 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 46, i32 27}
!20 = !{ptr @saffirepro_10_clk_spec, !21, !"saffirepro_10_clk_spec", i1 false, i1 false}
!21 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 281, i32 42}
!22 = !{ptr @saffire_both_clk_spec, !23, !"saffire_both_clk_spec", i1 false, i1 false}
!23 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 296, i32 42}
!24 = !{ptr @saffire_both_clk_src_types, !25, !"saffire_both_clk_src_types", i1 false, i1 false}
!25 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 206, i32 40}
!26 = !{ptr @saffire_both_rate_spec, !27, !"saffire_both_rate_spec", i1 false, i1 false}
!27 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 292, i32 41}
!28 = !{ptr @saffire_le_meter_spec, !29, !"saffire_le_meter_spec", i1 false, i1 false}
!29 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 302, i32 42}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 223, i32 2}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 223, i32 18}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 224, i32 2}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 225, i32 2}
!38 = !{ptr @saffire_le_meter_labels, !39, !"saffire_le_meter_labels", i1 false, i1 false}
!39 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 222, i32 26}
!40 = !{ptr @saffire_meter_spec, !41, !"saffire_meter_spec", i1 false, i1 false}
!41 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 313, i32 42}
!42 = !{ptr @saffire_meter_labels, !43, !"saffire_meter_labels", i1 false, i1 false}
!43 = !{!"../sound/firewire/bebob/bebob_focusrite.c", i32 227, i32 26}
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
