; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_dg_mixer.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_dg_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.84 = type { [64 x i32] }
%struct.dg = type { [17 x i8], i8, [4 x [2 x i8]], i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"C-Media Oxygen HD Audio\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CMI8786\00", [24 x i8] zeroinitializer }, align 32
@model_xonar_dg = dso_local constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str, ptr @.str.1, ptr @dg_init, ptr @dg_control_filter, ptr @dg_mixer_init, ptr @dg_cleanup, ptr @dg_suspend, ptr @dg_resume, ptr null, ptr @set_cs4245_dac_params, ptr @set_cs4245_adc_params, ptr null, ptr null, ptr null, ptr @adjust_dg_dac_routing, ptr null, ptr null, ptr null, ptr @dump_cs4245_registers, ptr null, i32 27, i32 149, i8 6, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i16 8, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Master Playback \00", [47 x i8] zeroinitializer }, align 32
@dg_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @output_select_info, ptr @output_select_get, ptr @output_select_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @hp_stereo_volume_info, ptr @hp_stereo_volume_get, ptr @hp_stereo_volume_put, %union.anon.85 { ptr @hp_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @hp_mute_get, ptr @hp_mute_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @input_vol_info, ptr @input_vol_get, ptr @input_vol_put, %union.anon.85 { ptr @pga_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @input_vol_info, ptr @input_vol_get, ptr @input_vol_put, %union.anon.85 { ptr @pga_db_scale }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @input_vol_info, ptr @input_vol_get, ptr @input_vol_put, %union.anon.85 { ptr @pga_db_scale }, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @input_vol_info, ptr @input_vol_get, ptr @input_vol_put, %union.anon.85 { ptr @pga_db_scale }, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @input_sel_info, ptr @input_sel_get, ptr @input_sel_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @hpf_info, ptr @hpf_get, ptr @hpf_put, %union.anon.85 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Output Playback Enum\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hp_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -12550, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@pga_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -1200, i32 1200], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Front Mic Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADC High-pass Filter Capture Enum\00", [62 x i8] zeroinitializer }, align 32
@output_select_info.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo Headphones\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Stereo Headphones FP\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Multichannel\00", [19 x i8] zeroinitializer }, align 32
@input_sel_info.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Front Mic\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@hpf_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Active\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Frozen\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 443, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 444, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"model_xonar_dg\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 442, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 418, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"dg_controls\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 370, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 373, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 380, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"hp_db_scale\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 368, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 390, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 396, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"pga_db_scale\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 369, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 397, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 398, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 399, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 402, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 409, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 50, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 51, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 52, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 53, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 272, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 273, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 273, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 273, i32 23 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 273, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 322, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 322, i32 40 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [37 x i8] c"../sound/pci/oxygen/xonar_dg_mixer.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 322, i32 50 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @model_xonar_dg, ptr @.str.2, ptr @dg_controls, ptr @.str.3, ptr @.str.4, ptr @hp_db_scale, ptr @.str.5, ptr @.str.6, ptr @pga_db_scale, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @output_select_info.names, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @input_sel_info.names, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @hpf_info.names, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_dg to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dg_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_select_info.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_sel_info.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @dg_init(ptr noundef) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dg_control_filter(ptr nocapture noundef readonly %template) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(17) @.str.2, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dg_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, -97
  store i8 %4, ptr %arrayidx.i, align 1
  %output_sel.i = getelementptr inbounds %struct.dg, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %output_sel.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %output_sel.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.else13.i [
    i8 0, label %if.then.i
    i8 1, label %if.then8.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 166, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  br label %output_select_apply.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 166, i8 noundef zeroext 0, i8 noundef zeroext -128) #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = or i8 %9, 32
  store i8 %10, ptr %arrayidx.i, align 1
  br label %output_select_apply.exit

if.else13.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 166, i8 noundef zeroext 0, i8 noundef zeroext -128) #7
  br label %output_select_apply.exit

output_select_apply.exit:                         ; preds = %if.else13.i, %if.then8.i, %if.then.i
  %call.i = tail call i32 @cs4245_write_spi(ptr noundef %chip, i8 noundef zeroext 6) #7
  %11 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i14 = getelementptr [17 x i8], ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i14, align 1
  %15 = and i8 %14, -8
  store i8 %15, ptr %arrayidx.i14, align 1
  %input_sel.i = getelementptr inbounds %struct.dg, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %input_sel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %input_sel.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %17, label %if.then23.i [
    i8 1, label %output_select_apply.exit.if.end30.sink.split.i_crit_edge
    i8 2, label %if.then12.i
    i8 0, label %output_select_apply.exit.input_source_apply.exit_crit_edge
  ]

output_select_apply.exit.input_source_apply.exit_crit_edge: ; preds = %output_select_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_source_apply.exit

output_select_apply.exit.if.end30.sink.split.i_crit_edge: ; preds = %output_select_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.then12.i:                                      ; preds = %output_select_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.then23.i:                                      ; preds = %output_select_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.then23.i, %if.then12.i, %output_select_apply.exit.if.end30.sink.split.i_crit_edge
  %.sink38.i = phi i8 [ 4, %if.then12.i ], [ 1, %if.then23.i ], [ 2, %output_select_apply.exit.if.end30.sink.split.i_crit_edge ]
  %19 = or i8 %.sink38.i, %15
  %20 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i14, align 1
  br label %input_source_apply.exit

input_source_apply.exit:                          ; preds = %if.end30.sink.split.i, %output_select_apply.exit.input_source_apply.exit_crit_edge
  %call.i15 = tail call i32 @cs4245_write_spi(ptr noundef %chip, i8 noundef zeroext 9) #7
  tail call void @oxygen_update_dac_routing(ptr noundef %chip) #7
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %call2 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @dg_controls, ptr noundef %chip) #7
  %call3 = tail call i32 @snd_ctl_add(ptr noundef %22, ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %input_source_apply.exit.cleanup_crit_edge, label %for.cond

input_source_apply.exit.cleanup_crit_edge:        ; preds = %input_source_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %input_source_apply.exit
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call2.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 1), ptr noundef %chip) #7
  %call3.1 = tail call i32 @snd_ctl_add(ptr noundef %24, ptr noundef %call2.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %call2.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 2), ptr noundef %chip) #7
  %call3.2 = tail call i32 @snd_ctl_add(ptr noundef %26, ptr noundef %call2.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %call2.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 3), ptr noundef %chip) #7
  %call3.3 = tail call i32 @snd_ctl_add(ptr noundef %28, ptr noundef %call2.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %call2.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 4), ptr noundef %chip) #7
  %call3.4 = tail call i32 @snd_ctl_add(ptr noundef %30, ptr noundef %call2.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %call2.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 5), ptr noundef %chip) #7
  %call3.5 = tail call i32 @snd_ctl_add(ptr noundef %32, ptr noundef %call2.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp slt i32 %call3.5, 0
  br i1 %cmp4.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %call2.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 6), ptr noundef %chip) #7
  %call3.6 = tail call i32 @snd_ctl_add(ptr noundef %34, ptr noundef %call2.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp slt i32 %call3.6, 0
  br i1 %cmp4.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %call2.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 7), ptr noundef %chip) #7
  %call3.7 = tail call i32 @snd_ctl_add(ptr noundef %36, ptr noundef %call2.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %cmp4.7 = icmp slt i32 %call3.7, 0
  br i1 %cmp4.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %call2.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @dg_controls, i32 0, i32 8), ptr noundef %chip) #7
  %call3.8 = tail call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call2.8) #7
  %39 = call i32 @llvm.smin.i32(i32 %call3.8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.7, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %input_source_apply.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %input_source_apply.exit.cleanup_crit_edge ], [ %call3.1, %for.cond.cleanup_crit_edge ], [ %call3.2, %for.cond.1.cleanup_crit_edge ], [ %call3.3, %for.cond.2.cleanup_crit_edge ], [ %call3.4, %for.cond.3.cleanup_crit_edge ], [ %call3.5, %for.cond.4.cleanup_crit_edge ], [ %call3.6, %for.cond.5.cleanup_crit_edge ], [ %call3.7, %for.cond.6.cleanup_crit_edge ], [ %39, %for.cond.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dg_cleanup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dg_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dg_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cs4245_dac_params(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cs4245_adc_params(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_dg_dac_routing(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_cs4245_registers(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_update_dac_routing(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs4245_write_spi(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_select_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @output_select_info.names) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_select_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %output_sel = getelementptr inbounds %struct.dg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %output_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %output_sel, align 1
  %conv = zext i8 %5 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value1, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_select_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %output_sel = getelementptr inbounds %struct.dg, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %output_sel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %output_sel, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %conv3 = trunc i32 %5 to i8
  %8 = ptrtoint ptr %output_sel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %output_sel, align 1
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = and i8 %12, -97
  store i8 %13, ptr %arrayidx.i, align 1
  %output_sel.i = getelementptr inbounds %struct.dg, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %output_sel.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %output_sel.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %15, label %if.else13.i [
    i8 0, label %if.then.i
    i8 1, label %if.then8.i
  ]

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 166, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  br label %output_select_apply.exit

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 166, i8 noundef zeroext 0, i8 noundef zeroext -128) #7
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = or i8 %18, 32
  store i8 %19, ptr %arrayidx.i, align 1
  br label %output_select_apply.exit

if.else13.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 166, i8 noundef zeroext 0, i8 noundef zeroext -128) #7
  br label %output_select_apply.exit

output_select_apply.exit:                         ; preds = %if.else13.i, %if.then8.i, %if.then.i
  %call.i = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp5 = icmp sgt i32 %call.i, -1
  %spec.select = select i1 %cmp5, i32 1, i32 %call.i
  tail call void @oxygen_update_dac_routing(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %output_select_apply.exit, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ %spec.select, %output_select_apply.exit ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %changed.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hp_stereo_volume_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_stereo_volume_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr [17 x i8], ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = xor i8 %5, -1
  %and = zext i8 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %val, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value, align 8
  %arrayidx3 = getelementptr [17 x i8], ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %10 = xor i8 %9, -1
  %and6 = zext i8 %10 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and6, ptr %arrayidx8, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_stereo_volume_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %val, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %6 = icmp ugt i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp5 = icmp sgt i32 %5, 255
  %or.cond58 = select i1 %6, i1 true, i1 %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp slt i32 %5, 0
  %or.cond59 = select i1 %or.cond58, i1 true, i1 %cmp7
  br i1 %or.cond59, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx8 = getelementptr [17 x i8], ptr %8, i32 0, i32 10
  %9 = trunc i32 %3 to i8
  %conv20 = xor i8 %9, -1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv20, ptr %arrayidx8, align 1
  %11 = trunc i32 %5 to i8
  %conv24 = xor i8 %11, -1
  %arrayidx26 = getelementptr [17 x i8], ptr %8, i32 0, i32 11
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx26, align 1
  %call = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp27 = icmp sgt i32 %call, -1
  br i1 %cmp27, label %if.then29, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 11) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end.if.end31_crit_edge
  %ret.0 = phi i32 [ %call30, %if.then29 ], [ %call, %if.end.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp32 = icmp sgt i32 %ret.0, -1
  %spec.select = select i1 %cmp32, i32 1, i32 %ret.0
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_mute_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr [17 x i8], ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 2
  %.lobit = and i8 %6, 1
  %7 = xor i8 %.lobit, 1
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %val, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_mute_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %val, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx1 = getelementptr [17 x i8], ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %8 = and i8 %7, -5
  store i8 %8, ptr %arrayidx1, align 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %11 = trunc i32 %10 to i8
  %neg.tr = xor i8 %11, -1
  %12 = shl i8 %neg.tr, 2
  %13 = and i8 %12, 4
  %conv9 = or i8 %13, %8
  store i8 %conv9, ptr %arrayidx1, align 1
  %call = tail call i32 @cs4245_write_spi(ptr noundef %3, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp10 = icmp sgt i32 %call, -1
  %spec.select = select i1 %cmp10, i32 1, i32 %call
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @input_vol_info(ptr nocapture noundef readnone %ctl, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -24, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_vol_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value2, align 8
  %arrayidx6 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %arrayidx9 = getelementptr [128 x i32], ptr %value2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %arrayidx9, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_vol_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  %8 = add i32 %7, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49, i32 %8)
  %9 = icmp ult i32 %8, -49
  br i1 %9, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %arrayidx7 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %12 = add i32 %11, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49, i32 %12)
  %13 = icmp ult i32 %12, -49
  br i1 %13, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx13 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %5
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp17.not = icmp eq i32 %17, %conv
  br i1 %cmp17.not, label %lor.end, label %if.end.if.then27_crit_edge

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.end:                                          ; preds = %if.end
  %arrayidx21 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv22)
  %cmp25.not = icmp eq i32 %21, %conv22
  br i1 %cmp25.not, label %lor.end.if.end53_crit_edge, label %lor.end.if.then27_crit_edge

lor.end.if.then27_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.end.if.end53_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then27:                                        ; preds = %lor.end.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %conv30 = trunc i32 %17 to i8
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %arrayidx13, align 1
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7, align 4
  %conv36 = trunc i32 %24 to i8
  %arrayidx39 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv36, ptr %arrayidx39, align 1
  %input_sel = getelementptr inbounds %struct.dg, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %input_sel to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %input_sel, align 1
  %conv40 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv40)
  %cmp41 = icmp eq i32 %5, %conv40
  br i1 %cmp41, label %if.then43, label %if.then27.if.end50.thread_crit_edge

if.then27.if.end50.thread_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.thread

if.then43:                                        ; preds = %if.then27
  %28 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr [17 x i8], ptr %29, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv36, ptr %arrayidx2.i, align 1
  %call.i = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then43.if.end53_crit_edge, label %if.end50

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end50:                                         ; preds = %if.then43
  %call3.i = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp51 = icmp sgt i32 %call3.i, -1
  br i1 %cmp51, label %if.end50.if.end50.thread_crit_edge, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end50.if.end50.thread_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %if.end50.if.end50.thread_crit_edge, %if.then27.if.end50.thread_crit_edge
  br label %if.end53

if.end53:                                         ; preds = %if.end50.thread, %if.end50.if.end53_crit_edge, %if.then43.if.end53_crit_edge, %lor.end.if.end53_crit_edge
  %changed.0 = phi i32 [ 0, %lor.end.if.end53_crit_edge ], [ 1, %if.end50.thread ], [ %call3.i, %if.end50.if.end53_crit_edge ], [ %call.i, %if.then43.if.end53_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.0, %if.end53 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_sel_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @input_sel_info.names) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_sel_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %input_sel = getelementptr inbounds %struct.dg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %input_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %input_sel, align 1
  %conv = zext i8 %5 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value1, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_sel_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  %input_sel = getelementptr inbounds %struct.dg, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %input_sel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %input_sel, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp4.not = icmp eq i32 %7, %conv
  br i1 %cmp4.not, label %if.end.if.end26_crit_edge, label %if.then6

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then6:                                         ; preds = %if.end
  %conv9 = trunc i32 %7 to i8
  %10 = ptrtoint ptr %input_sel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv9, ptr %input_sel, align 1
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = and i8 %14, -8
  store i8 %15, ptr %arrayidx.i, align 1
  %input_sel.i = getelementptr inbounds %struct.dg, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %input_sel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %input_sel.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %17, label %if.then23.i [
    i8 1, label %if.then6.if.end30.sink.split.i_crit_edge
    i8 2, label %if.then12.i
    i8 0, label %if.then6.input_source_apply.exit_crit_edge
  ]

if.then6.input_source_apply.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_source_apply.exit

if.then6.if.end30.sink.split.i_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.then12.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.then23.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.then23.i, %if.then12.i, %if.then6.if.end30.sink.split.i_crit_edge
  %.sink38.i = phi i8 [ 4, %if.then12.i ], [ 1, %if.then23.i ], [ 2, %if.then6.if.end30.sink.split.i_crit_edge ]
  %19 = or i8 %.sink38.i, %15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i, align 1
  br label %input_source_apply.exit

input_source_apply.exit:                          ; preds = %if.end30.sink.split.i, %if.then6.input_source_apply.exit_crit_edge
  %call.i = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp11 = icmp sgt i32 %call.i, -1
  br i1 %cmp11, label %if.then13, label %input_source_apply.exit.if.end23_crit_edge

input_source_apply.exit.if.end23_crit_edge:       ; preds = %input_source_apply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then13:                                        ; preds = %input_source_apply.exit
  %21 = ptrtoint ptr %input_sel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %input_sel, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx15 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15, align 1
  %arrayidx21 = getelementptr %struct.dg, ptr %3, i32 0, i32 2, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21, align 1
  %27 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %model_data, align 4
  %arrayidx.i46 = getelementptr [17 x i8], ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %arrayidx.i46, align 1
  %arrayidx2.i = getelementptr [17 x i8], ptr %28, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %26, ptr %arrayidx2.i, align 1
  %call.i47 = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i = icmp slt i32 %call.i47, 0
  br i1 %cmp.i, label %if.then13.if.end23_crit_edge, label %if.end.i

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 7) #7
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %if.then13.if.end23_crit_edge, %input_source_apply.exit.if.end23_crit_edge
  %ret.0 = phi i32 [ %call.i, %input_source_apply.exit.if.end23_crit_edge ], [ %call3.i, %if.end.i ], [ %call.i47, %if.then13.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp24 = icmp sgt i32 %ret.0, -1
  %spec.select = select i1 %cmp24, i32 1, i32 %ret.0
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end.if.end26_crit_edge
  %changed.0 = phi i32 [ %spec.select, %if.end23 ], [ 0, %if.end.if.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @hpf_info.names) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hpf_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr [17 x i8], ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr [17 x i8], ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, -3
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %masksel = select i1 %tobool.not, i8 0, i8 2
  %spec.select = or i8 %masksel, %6
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %5)
  %cmp = icmp ne i8 %spec.select, %5
  br i1 %cmp, label %if.then12, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %arrayidx, align 1
  %call = tail call i32 @cs4245_write_spi(ptr noundef %1, i8 noundef zeroext 4) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %entry.if.end15_crit_edge
  %conv10 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %conv10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 443, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 444, i32 10}
!4 = !{ptr @model_xonar_dg, !5, !"model_xonar_dg", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 442, i32 27}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 418, i32 31}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 373, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 380, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 390, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 396, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 397, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 398, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 399, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 402, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 409, i32 11}
!26 = !{ptr @dg_controls, !27, !"dg_controls", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 370, i32 38}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 51, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 52, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 53, i32 3}
!34 = !{ptr @output_select_info.names, !35, !"names", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 50, i32 27}
!36 = !{ptr @hp_db_scale, !37, !"hp_db_scale", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 368, i32 14}
!38 = !{ptr @pga_db_scale, !39, !"pga_db_scale", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 369, i32 14}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 273, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 273, i32 10}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 273, i32 23}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 273, i32 31}
!48 = !{ptr @input_sel_info.names, !49, !"names", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 272, i32 27}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 322, i32 40}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 322, i32 50}
!54 = !{ptr @hpf_info.names, !55, !"names", i1 false, i1 false}
!55 = !{!"../sound/pci/oxygen/xonar_dg_mixer.c", i32 322, i32 27}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
