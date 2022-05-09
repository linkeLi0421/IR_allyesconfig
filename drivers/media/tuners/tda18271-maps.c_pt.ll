; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18271-maps.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-maps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tda18271_thermo_map = type { i8, i8, i8 }
%struct.tda18271_cid_target_map = type { i32, i8, i16 }
%struct.tda18271_map_layout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tda18271_pll_map = type { i32, i8, i8 }
%struct.tda18271_map = type { i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda18271_priv = type { [39 x i8], %struct.list_head, %struct.tuner_i2c_props, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, %struct.tda18271_std_map, [8 x %struct.tda18271_rf_tracking_filter_cal], %struct.mutex, i16, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@tda18271_thermometer = internal constant { [17 x %struct.tda18271_thermo_map], [45 x i8] } { [17 x %struct.tda18271_thermo_map] [%struct.tda18271_thermo_map { i8 0, i8 60, i8 92 }, %struct.tda18271_thermo_map { i8 1, i8 62, i8 94 }, %struct.tda18271_thermo_map { i8 2, i8 66, i8 98 }, %struct.tda18271_thermo_map { i8 3, i8 64, i8 96 }, %struct.tda18271_thermo_map { i8 4, i8 74, i8 106 }, %struct.tda18271_thermo_map { i8 5, i8 72, i8 104 }, %struct.tda18271_thermo_map { i8 6, i8 68, i8 100 }, %struct.tda18271_thermo_map { i8 7, i8 70, i8 102 }, %struct.tda18271_thermo_map { i8 8, i8 90, i8 122 }, %struct.tda18271_thermo_map { i8 9, i8 88, i8 120 }, %struct.tda18271_thermo_map { i8 10, i8 84, i8 116 }, %struct.tda18271_thermo_map { i8 11, i8 86, i8 118 }, %struct.tda18271_thermo_map { i8 12, i8 76, i8 108 }, %struct.tda18271_thermo_map { i8 13, i8 78, i8 110 }, %struct.tda18271_thermo_map { i8 14, i8 82, i8 114 }, %struct.tda18271_thermo_map { i8 15, i8 80, i8 112 }, %struct.tda18271_thermo_map zeroinitializer], [45 x i8] zeroinitializer }, align 32
@tda18271_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_lookup_thermometer = private unnamed_addr constant [28 x i8] c"tda18271_lookup_thermometer\00", align 1
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(%d) tm = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@tda18271_cid_target = internal constant { [13 x %struct.tda18271_cid_target_map], [56 x i8] } { [13 x %struct.tda18271_cid_target_map] [%struct.tda18271_cid_target_map { i32 46000, i8 4, i16 1800 }, %struct.tda18271_cid_target_map { i32 52200, i8 10, i16 1500 }, %struct.tda18271_cid_target_map { i32 70100, i8 1, i16 4000 }, %struct.tda18271_cid_target_map { i32 136800, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 156700, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 186250, i8 10, i16 4000 }, %struct.tda18271_cid_target_map { i32 230000, i8 10, i16 4000 }, %struct.tda18271_cid_target_map { i32 345000, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 426000, i8 14, i16 4000 }, %struct.tda18271_cid_target_map { i32 489500, i8 30, i16 4000 }, %struct.tda18271_cid_target_map { i32 697500, i8 50, i16 4000 }, %struct.tda18271_cid_target_map { i32 842000, i8 58, i16 4000 }, %struct.tda18271_cid_target_map zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__func__.tda18271_lookup_cid_target = private unnamed_addr constant [27 x i8] c"tda18271_lookup_cid_target\00", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(%d) cid_target = %02x, count_limit = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.tda18271_lookup_rf_band = private unnamed_addr constant [24 x i8] c"tda18271_lookup_rf_band\00", align 1
@.str.3 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"(%d) rfmax = %d < freq = %d, rf1_def = %d, rf2_def = %d, rf3_def = %d, rf1 = %d, rf2 = %d, rf3 = %d, rf_a1 = %d, rf_a2 = %d, rf_b1 = %d, rf_b2 = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(%d) rf_band = %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cal_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_lookup_pll_map = private unnamed_addr constant [24 x i8] c"tda18271_lookup_pll_map\00", align 1
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s map is not set!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: frequency (%d) out of range\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(%d) %s: post div = 0x%02x, div = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bp_filter\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"km\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_band\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gain_taper\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rf_cal\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ir_measure\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rf_cal_dc_over_dt\00", [46 x i8] zeroinitializer }, align 32
@__func__.tda18271_lookup_map = private unnamed_addr constant [20 x i8] c"tda18271_lookup_map\00", align 1
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(%d) %s: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@tda18271c1_map_layout = internal global { %struct.tda18271_map_layout, [60 x i8] } { %struct.tda18271_map_layout { ptr @tda18271c1_main_pll, ptr @tda18271c1_cal_pll, ptr @tda18271c1_rf_cal, ptr @tda18271c1_km, ptr null, ptr @tda18271_bp_filter, ptr @tda18271_rf_band, ptr @tda18271_gain_taper, ptr @tda18271_ir_measure }, [60 x i8] zeroinitializer }, align 32
@tda18271c2_map_layout = internal global { %struct.tda18271_map_layout, [60 x i8] } { %struct.tda18271_map_layout { ptr @tda18271c2_main_pll, ptr @tda18271c2_cal_pll, ptr @tda18271c2_rf_cal, ptr @tda18271c2_km, ptr @tda18271_rf_cal_dc_over_dt, ptr @tda18271_bp_filter, ptr @tda18271_rf_band, ptr @tda18271_gain_taper, ptr @tda18271_ir_measure }, [60 x i8] zeroinitializer }, align 32
@tda18271_rf_band_template = internal constant { [8 x %struct.tda18271_rf_tracking_filter_cal], [96 x i8] } { [8 x %struct.tda18271_rf_tracking_filter_cal] [%struct.tda18271_rf_tracking_filter_cal { i32 47900, i8 0, i32 46000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 61100, i8 1, i32 52200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 152600, i8 2, i32 70100, i32 136800, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 164700, i8 3, i32 156700, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 203500, i8 4, i32 186250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 457800, i8 5, i32 230000, i32 345000, i32 426000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 865000, i8 6, i32 489500, i32 697500, i32 842000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal zeroinitializer], [96 x i8] zeroinitializer }, align 32
@tda18271c1_main_pll = internal global { [41 x %struct.tda18271_pll_map], [88 x i8] } { [41 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 32000, i8 95, i8 -16 }, %struct.tda18271_pll_map { i32 35000, i8 94, i8 -32 }, %struct.tda18271_pll_map { i32 37000, i8 93, i8 -48 }, %struct.tda18271_pll_map { i32 41000, i8 92, i8 -64 }, %struct.tda18271_pll_map { i32 44000, i8 91, i8 -80 }, %struct.tda18271_pll_map { i32 49000, i8 90, i8 -96 }, %struct.tda18271_pll_map { i32 54000, i8 89, i8 -112 }, %struct.tda18271_pll_map { i32 61000, i8 88, i8 -128 }, %struct.tda18271_pll_map { i32 65000, i8 79, i8 120 }, %struct.tda18271_pll_map { i32 70000, i8 78, i8 112 }, %struct.tda18271_pll_map { i32 75000, i8 77, i8 104 }, %struct.tda18271_pll_map { i32 82000, i8 76, i8 96 }, %struct.tda18271_pll_map { i32 89000, i8 75, i8 88 }, %struct.tda18271_pll_map { i32 98000, i8 74, i8 80 }, %struct.tda18271_pll_map { i32 109000, i8 73, i8 72 }, %struct.tda18271_pll_map { i32 123000, i8 72, i8 64 }, %struct.tda18271_pll_map { i32 131000, i8 63, i8 60 }, %struct.tda18271_pll_map { i32 141000, i8 62, i8 56 }, %struct.tda18271_pll_map { i32 151000, i8 61, i8 52 }, %struct.tda18271_pll_map { i32 164000, i8 60, i8 48 }, %struct.tda18271_pll_map { i32 179000, i8 59, i8 44 }, %struct.tda18271_pll_map { i32 197000, i8 58, i8 40 }, %struct.tda18271_pll_map { i32 219000, i8 57, i8 36 }, %struct.tda18271_pll_map { i32 246000, i8 56, i8 32 }, %struct.tda18271_pll_map { i32 263000, i8 47, i8 30 }, %struct.tda18271_pll_map { i32 282000, i8 46, i8 28 }, %struct.tda18271_pll_map { i32 303000, i8 45, i8 26 }, %struct.tda18271_pll_map { i32 329000, i8 44, i8 24 }, %struct.tda18271_pll_map { i32 359000, i8 43, i8 22 }, %struct.tda18271_pll_map { i32 395000, i8 42, i8 20 }, %struct.tda18271_pll_map { i32 438000, i8 41, i8 18 }, %struct.tda18271_pll_map { i32 493000, i8 40, i8 16 }, %struct.tda18271_pll_map { i32 526000, i8 31, i8 15 }, %struct.tda18271_pll_map { i32 564000, i8 30, i8 14 }, %struct.tda18271_pll_map { i32 607000, i8 29, i8 13 }, %struct.tda18271_pll_map { i32 658000, i8 28, i8 12 }, %struct.tda18271_pll_map { i32 718000, i8 27, i8 11 }, %struct.tda18271_pll_map { i32 790000, i8 26, i8 10 }, %struct.tda18271_pll_map { i32 877000, i8 25, i8 9 }, %struct.tda18271_pll_map { i32 987000, i8 24, i8 8 }, %struct.tda18271_pll_map zeroinitializer], [88 x i8] zeroinitializer }, align 32
@tda18271c1_cal_pll = internal global { [36 x %struct.tda18271_pll_map], [64 x i8] } { [36 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33000, i8 -35, i8 -48 }, %struct.tda18271_pll_map { i32 36000, i8 -36, i8 -64 }, %struct.tda18271_pll_map { i32 40000, i8 -37, i8 -80 }, %struct.tda18271_pll_map { i32 44000, i8 -38, i8 -96 }, %struct.tda18271_pll_map { i32 49000, i8 -39, i8 -112 }, %struct.tda18271_pll_map { i32 55000, i8 -40, i8 -128 }, %struct.tda18271_pll_map { i32 63000, i8 -45, i8 112 }, %struct.tda18271_pll_map { i32 67000, i8 -51, i8 104 }, %struct.tda18271_pll_map { i32 73000, i8 -52, i8 96 }, %struct.tda18271_pll_map { i32 80000, i8 -53, i8 88 }, %struct.tda18271_pll_map { i32 88000, i8 -54, i8 80 }, %struct.tda18271_pll_map { i32 98000, i8 -55, i8 72 }, %struct.tda18271_pll_map { i32 110000, i8 -56, i8 64 }, %struct.tda18271_pll_map { i32 126000, i8 -61, i8 56 }, %struct.tda18271_pll_map { i32 135000, i8 -67, i8 52 }, %struct.tda18271_pll_map { i32 147000, i8 -68, i8 48 }, %struct.tda18271_pll_map { i32 160000, i8 -69, i8 44 }, %struct.tda18271_pll_map { i32 176000, i8 -70, i8 40 }, %struct.tda18271_pll_map { i32 196000, i8 -71, i8 36 }, %struct.tda18271_pll_map { i32 220000, i8 -72, i8 32 }, %struct.tda18271_pll_map { i32 252000, i8 -77, i8 28 }, %struct.tda18271_pll_map { i32 271000, i8 -83, i8 26 }, %struct.tda18271_pll_map { i32 294000, i8 -84, i8 24 }, %struct.tda18271_pll_map { i32 321000, i8 -85, i8 22 }, %struct.tda18271_pll_map { i32 353000, i8 -86, i8 20 }, %struct.tda18271_pll_map { i32 392000, i8 -87, i8 18 }, %struct.tda18271_pll_map { i32 441000, i8 -88, i8 16 }, %struct.tda18271_pll_map { i32 505000, i8 -93, i8 14 }, %struct.tda18271_pll_map { i32 543000, i8 -99, i8 13 }, %struct.tda18271_pll_map { i32 589000, i8 -100, i8 12 }, %struct.tda18271_pll_map { i32 642000, i8 -101, i8 11 }, %struct.tda18271_pll_map { i32 707000, i8 -102, i8 10 }, %struct.tda18271_pll_map { i32 785000, i8 -103, i8 9 }, %struct.tda18271_pll_map { i32 883000, i8 -104, i8 8 }, %struct.tda18271_pll_map { i32 1010000, i8 -109, i8 7 }, %struct.tda18271_pll_map zeroinitializer], [64 x i8] zeroinitializer }, align 32
@tda18271c1_rf_cal = internal global { [18 x %struct.tda18271_map], [48 x i8] } { [18 x %struct.tda18271_map] [%struct.tda18271_map { i32 41000, i8 30 }, %struct.tda18271_map { i32 43000, i8 48 }, %struct.tda18271_map { i32 45000, i8 67 }, %struct.tda18271_map { i32 46000, i8 77 }, %struct.tda18271_map { i32 47000, i8 84 }, %struct.tda18271_map { i32 47900, i8 100 }, %struct.tda18271_map { i32 49100, i8 32 }, %struct.tda18271_map { i32 50000, i8 34 }, %struct.tda18271_map { i32 51000, i8 42 }, %struct.tda18271_map { i32 53000, i8 50 }, %struct.tda18271_map { i32 55000, i8 53 }, %struct.tda18271_map { i32 56000, i8 60 }, %struct.tda18271_map { i32 57000, i8 63 }, %struct.tda18271_map { i32 58000, i8 72 }, %struct.tda18271_map { i32 59000, i8 77 }, %struct.tda18271_map { i32 60000, i8 88 }, %struct.tda18271_map { i32 61100, i8 95 }, %struct.tda18271_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda18271c1_km = internal global { [5 x %struct.tda18271_map], [56 x i8] } { [5 x %struct.tda18271_map] [%struct.tda18271_map { i32 61100, i8 116 }, %struct.tda18271_map { i32 350000, i8 64 }, %struct.tda18271_map { i32 720000, i8 48 }, %struct.tda18271_map { i32 865000, i8 64 }, %struct.tda18271_map zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tda18271_bp_filter = internal global { [8 x %struct.tda18271_map], [32 x i8] } { [8 x %struct.tda18271_map] [%struct.tda18271_map { i32 62000, i8 0 }, %struct.tda18271_map { i32 84000, i8 1 }, %struct.tda18271_map { i32 100000, i8 2 }, %struct.tda18271_map { i32 140000, i8 3 }, %struct.tda18271_map { i32 170000, i8 4 }, %struct.tda18271_map { i32 180000, i8 5 }, %struct.tda18271_map { i32 865000, i8 6 }, %struct.tda18271_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tda18271_rf_band = internal global { [8 x %struct.tda18271_map], [32 x i8] } { [8 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 0 }, %struct.tda18271_map { i32 61100, i8 1 }, %struct.tda18271_map { i32 152600, i8 2 }, %struct.tda18271_map { i32 164700, i8 3 }, %struct.tda18271_map { i32 203500, i8 4 }, %struct.tda18271_map { i32 457800, i8 5 }, %struct.tda18271_map { i32 865000, i8 6 }, %struct.tda18271_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tda18271_gain_taper = internal global { [86 x %struct.tda18271_map], [176 x i8] } { [86 x %struct.tda18271_map] [%struct.tda18271_map { i32 45400, i8 31 }, %struct.tda18271_map { i32 45800, i8 30 }, %struct.tda18271_map { i32 46200, i8 29 }, %struct.tda18271_map { i32 46700, i8 28 }, %struct.tda18271_map { i32 47100, i8 27 }, %struct.tda18271_map { i32 47500, i8 26 }, %struct.tda18271_map { i32 47900, i8 25 }, %struct.tda18271_map { i32 49600, i8 23 }, %struct.tda18271_map { i32 51200, i8 22 }, %struct.tda18271_map { i32 52900, i8 21 }, %struct.tda18271_map { i32 54500, i8 20 }, %struct.tda18271_map { i32 56200, i8 19 }, %struct.tda18271_map { i32 57800, i8 18 }, %struct.tda18271_map { i32 59500, i8 17 }, %struct.tda18271_map { i32 61100, i8 16 }, %struct.tda18271_map { i32 67600, i8 13 }, %struct.tda18271_map { i32 74200, i8 12 }, %struct.tda18271_map { i32 80700, i8 11 }, %struct.tda18271_map { i32 87200, i8 10 }, %struct.tda18271_map { i32 93800, i8 9 }, %struct.tda18271_map { i32 100300, i8 8 }, %struct.tda18271_map { i32 106900, i8 7 }, %struct.tda18271_map { i32 113400, i8 6 }, %struct.tda18271_map { i32 119900, i8 5 }, %struct.tda18271_map { i32 126500, i8 4 }, %struct.tda18271_map { i32 133000, i8 3 }, %struct.tda18271_map { i32 139500, i8 2 }, %struct.tda18271_map { i32 146100, i8 1 }, %struct.tda18271_map { i32 152600, i8 0 }, %struct.tda18271_map { i32 154300, i8 31 }, %struct.tda18271_map { i32 156100, i8 30 }, %struct.tda18271_map { i32 157800, i8 29 }, %struct.tda18271_map { i32 159500, i8 28 }, %struct.tda18271_map { i32 161200, i8 27 }, %struct.tda18271_map { i32 163000, i8 26 }, %struct.tda18271_map { i32 164700, i8 25 }, %struct.tda18271_map { i32 170200, i8 23 }, %struct.tda18271_map { i32 175800, i8 22 }, %struct.tda18271_map { i32 181300, i8 21 }, %struct.tda18271_map { i32 186900, i8 20 }, %struct.tda18271_map { i32 192400, i8 19 }, %struct.tda18271_map { i32 198000, i8 18 }, %struct.tda18271_map { i32 203500, i8 17 }, %struct.tda18271_map { i32 216200, i8 20 }, %struct.tda18271_map { i32 228900, i8 19 }, %struct.tda18271_map { i32 241600, i8 18 }, %struct.tda18271_map { i32 254400, i8 17 }, %struct.tda18271_map { i32 267100, i8 16 }, %struct.tda18271_map { i32 279800, i8 15 }, %struct.tda18271_map { i32 292500, i8 14 }, %struct.tda18271_map { i32 305200, i8 13 }, %struct.tda18271_map { i32 317900, i8 12 }, %struct.tda18271_map { i32 330700, i8 11 }, %struct.tda18271_map { i32 343400, i8 10 }, %struct.tda18271_map { i32 356100, i8 9 }, %struct.tda18271_map { i32 368800, i8 8 }, %struct.tda18271_map { i32 381500, i8 7 }, %struct.tda18271_map { i32 394200, i8 6 }, %struct.tda18271_map { i32 406900, i8 5 }, %struct.tda18271_map { i32 419700, i8 4 }, %struct.tda18271_map { i32 432400, i8 3 }, %struct.tda18271_map { i32 445100, i8 2 }, %struct.tda18271_map { i32 457800, i8 1 }, %struct.tda18271_map { i32 476300, i8 25 }, %struct.tda18271_map { i32 494800, i8 24 }, %struct.tda18271_map { i32 513300, i8 23 }, %struct.tda18271_map { i32 531800, i8 22 }, %struct.tda18271_map { i32 550300, i8 21 }, %struct.tda18271_map { i32 568900, i8 20 }, %struct.tda18271_map { i32 587400, i8 19 }, %struct.tda18271_map { i32 605900, i8 18 }, %struct.tda18271_map { i32 624400, i8 17 }, %struct.tda18271_map { i32 642900, i8 16 }, %struct.tda18271_map { i32 661400, i8 15 }, %struct.tda18271_map { i32 679900, i8 14 }, %struct.tda18271_map { i32 698400, i8 13 }, %struct.tda18271_map { i32 716900, i8 12 }, %struct.tda18271_map { i32 735400, i8 11 }, %struct.tda18271_map { i32 753900, i8 10 }, %struct.tda18271_map { i32 772500, i8 9 }, %struct.tda18271_map { i32 791000, i8 8 }, %struct.tda18271_map { i32 809500, i8 7 }, %struct.tda18271_map { i32 828000, i8 6 }, %struct.tda18271_map { i32 846500, i8 5 }, %struct.tda18271_map { i32 865000, i8 4 }, %struct.tda18271_map zeroinitializer], [176 x i8] zeroinitializer }, align 32
@tda18271_ir_measure = internal global { [5 x %struct.tda18271_map], [56 x i8] } { [5 x %struct.tda18271_map] [%struct.tda18271_map { i32 30000, i8 4 }, %struct.tda18271_map { i32 200000, i8 5 }, %struct.tda18271_map { i32 600000, i8 6 }, %struct.tda18271_map { i32 865000, i8 7 }, %struct.tda18271_map zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tda18271c1_std_map = internal constant { { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } }, [36 x i8] } { { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } } { { i16, i8, i8 } { i16 1250, i8 -60, i8 44 }, { i16, i8, i8 } { i16 6750, i8 112, i8 44 }, { i16, i8, i8 } { i16 7750, i8 120, i8 44 }, { i16, i8, i8 } { i16 7750, i8 120, i8 44 }, { i16, i8, i8 } { i16 7750, i8 120, i8 44 }, { i16, i8, i8 } { i16 7750, i8 120, i8 44 }, { i16, i8, i8 } { i16 1250, i8 120, i8 44 }, { i16, i8, i8 } { i16 5750, i8 104, i8 44 }, { i16, i8, i8 } { i16 3250, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3300, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3800, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4300, i8 -16, i8 -73 }, { i16, i8, i8 } { i16 4000, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4500, i8 -16, i8 -73 }, { i16, i8, i8 } { i16 5000, i8 -8, i8 -73 } }, [36 x i8] zeroinitializer }, align 32
@tda18271c2_main_pll = internal global { [41 x %struct.tda18271_pll_map], [88 x i8] } { [41 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33125, i8 87, i8 -16 }, %struct.tda18271_pll_map { i32 35500, i8 86, i8 -32 }, %struct.tda18271_pll_map { i32 38188, i8 85, i8 -48 }, %struct.tda18271_pll_map { i32 41375, i8 84, i8 -64 }, %struct.tda18271_pll_map { i32 45125, i8 83, i8 -80 }, %struct.tda18271_pll_map { i32 49688, i8 82, i8 -96 }, %struct.tda18271_pll_map { i32 55188, i8 81, i8 -112 }, %struct.tda18271_pll_map { i32 62125, i8 80, i8 -128 }, %struct.tda18271_pll_map { i32 66250, i8 71, i8 120 }, %struct.tda18271_pll_map { i32 71000, i8 70, i8 112 }, %struct.tda18271_pll_map { i32 76375, i8 69, i8 104 }, %struct.tda18271_pll_map { i32 82750, i8 68, i8 96 }, %struct.tda18271_pll_map { i32 90250, i8 67, i8 88 }, %struct.tda18271_pll_map { i32 99375, i8 66, i8 80 }, %struct.tda18271_pll_map { i32 110375, i8 65, i8 72 }, %struct.tda18271_pll_map { i32 124250, i8 64, i8 64 }, %struct.tda18271_pll_map { i32 132500, i8 55, i8 60 }, %struct.tda18271_pll_map { i32 142000, i8 54, i8 56 }, %struct.tda18271_pll_map { i32 152750, i8 53, i8 52 }, %struct.tda18271_pll_map { i32 165500, i8 52, i8 48 }, %struct.tda18271_pll_map { i32 180500, i8 51, i8 44 }, %struct.tda18271_pll_map { i32 198750, i8 50, i8 40 }, %struct.tda18271_pll_map { i32 220750, i8 49, i8 36 }, %struct.tda18271_pll_map { i32 248500, i8 48, i8 32 }, %struct.tda18271_pll_map { i32 265000, i8 39, i8 30 }, %struct.tda18271_pll_map { i32 284000, i8 38, i8 28 }, %struct.tda18271_pll_map { i32 305500, i8 37, i8 26 }, %struct.tda18271_pll_map { i32 331000, i8 36, i8 24 }, %struct.tda18271_pll_map { i32 361000, i8 35, i8 22 }, %struct.tda18271_pll_map { i32 397500, i8 34, i8 20 }, %struct.tda18271_pll_map { i32 441500, i8 33, i8 18 }, %struct.tda18271_pll_map { i32 497000, i8 32, i8 16 }, %struct.tda18271_pll_map { i32 530000, i8 23, i8 15 }, %struct.tda18271_pll_map { i32 568000, i8 22, i8 14 }, %struct.tda18271_pll_map { i32 611000, i8 21, i8 13 }, %struct.tda18271_pll_map { i32 662000, i8 20, i8 12 }, %struct.tda18271_pll_map { i32 722000, i8 19, i8 11 }, %struct.tda18271_pll_map { i32 795000, i8 18, i8 10 }, %struct.tda18271_pll_map { i32 883000, i8 17, i8 9 }, %struct.tda18271_pll_map { i32 994000, i8 16, i8 8 }, %struct.tda18271_pll_map zeroinitializer], [88 x i8] zeroinitializer }, align 32
@tda18271c2_cal_pll = internal global { [35 x %struct.tda18271_pll_map], [72 x i8] } { [35 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33813, i8 -35, i8 -48 }, %struct.tda18271_pll_map { i32 36625, i8 -36, i8 -64 }, %struct.tda18271_pll_map { i32 39938, i8 -37, i8 -80 }, %struct.tda18271_pll_map { i32 43938, i8 -38, i8 -96 }, %struct.tda18271_pll_map { i32 48813, i8 -39, i8 -112 }, %struct.tda18271_pll_map { i32 54938, i8 -40, i8 -128 }, %struct.tda18271_pll_map { i32 62813, i8 -45, i8 112 }, %struct.tda18271_pll_map { i32 67625, i8 -51, i8 104 }, %struct.tda18271_pll_map { i32 73250, i8 -52, i8 96 }, %struct.tda18271_pll_map { i32 79875, i8 -53, i8 88 }, %struct.tda18271_pll_map { i32 87875, i8 -54, i8 80 }, %struct.tda18271_pll_map { i32 97625, i8 -55, i8 72 }, %struct.tda18271_pll_map { i32 109875, i8 -56, i8 64 }, %struct.tda18271_pll_map { i32 125625, i8 -61, i8 56 }, %struct.tda18271_pll_map { i32 135250, i8 -67, i8 52 }, %struct.tda18271_pll_map { i32 146500, i8 -68, i8 48 }, %struct.tda18271_pll_map { i32 159750, i8 -69, i8 44 }, %struct.tda18271_pll_map { i32 175750, i8 -70, i8 40 }, %struct.tda18271_pll_map { i32 195250, i8 -71, i8 36 }, %struct.tda18271_pll_map { i32 219750, i8 -72, i8 32 }, %struct.tda18271_pll_map { i32 251250, i8 -77, i8 28 }, %struct.tda18271_pll_map { i32 270500, i8 -83, i8 26 }, %struct.tda18271_pll_map { i32 293000, i8 -84, i8 24 }, %struct.tda18271_pll_map { i32 319500, i8 -85, i8 22 }, %struct.tda18271_pll_map { i32 351500, i8 -86, i8 20 }, %struct.tda18271_pll_map { i32 390500, i8 -87, i8 18 }, %struct.tda18271_pll_map { i32 439500, i8 -88, i8 16 }, %struct.tda18271_pll_map { i32 502500, i8 -93, i8 14 }, %struct.tda18271_pll_map { i32 541000, i8 -99, i8 13 }, %struct.tda18271_pll_map { i32 586000, i8 -100, i8 12 }, %struct.tda18271_pll_map { i32 639000, i8 -101, i8 11 }, %struct.tda18271_pll_map { i32 703000, i8 -102, i8 10 }, %struct.tda18271_pll_map { i32 781000, i8 -103, i8 9 }, %struct.tda18271_pll_map { i32 879000, i8 -104, i8 8 }, %struct.tda18271_pll_map zeroinitializer], [72 x i8] zeroinitializer }, align 32
@tda18271c2_rf_cal = internal global { [438 x %struct.tda18271_map], [880 x i8] } { [438 x %struct.tda18271_map] [%struct.tda18271_map { i32 41000, i8 15 }, %struct.tda18271_map { i32 43000, i8 28 }, %struct.tda18271_map { i32 45000, i8 47 }, %struct.tda18271_map { i32 46000, i8 57 }, %struct.tda18271_map { i32 47000, i8 64 }, %struct.tda18271_map { i32 47900, i8 80 }, %struct.tda18271_map { i32 49100, i8 22 }, %struct.tda18271_map { i32 50000, i8 24 }, %struct.tda18271_map { i32 51000, i8 32 }, %struct.tda18271_map { i32 53000, i8 40 }, %struct.tda18271_map { i32 55000, i8 43 }, %struct.tda18271_map { i32 56000, i8 50 }, %struct.tda18271_map { i32 57000, i8 53 }, %struct.tda18271_map { i32 58000, i8 62 }, %struct.tda18271_map { i32 59000, i8 67 }, %struct.tda18271_map { i32 60000, i8 78 }, %struct.tda18271_map { i32 61100, i8 85 }, %struct.tda18271_map { i32 63000, i8 15 }, %struct.tda18271_map { i32 64000, i8 17 }, %struct.tda18271_map { i32 65000, i8 18 }, %struct.tda18271_map { i32 66000, i8 21 }, %struct.tda18271_map { i32 67000, i8 22 }, %struct.tda18271_map { i32 68000, i8 23 }, %struct.tda18271_map { i32 70000, i8 25 }, %struct.tda18271_map { i32 71000, i8 28 }, %struct.tda18271_map { i32 72000, i8 29 }, %struct.tda18271_map { i32 73000, i8 31 }, %struct.tda18271_map { i32 74000, i8 32 }, %struct.tda18271_map { i32 75000, i8 33 }, %struct.tda18271_map { i32 76000, i8 36 }, %struct.tda18271_map { i32 77000, i8 37 }, %struct.tda18271_map { i32 78000, i8 39 }, %struct.tda18271_map { i32 80000, i8 40 }, %struct.tda18271_map { i32 81000, i8 41 }, %struct.tda18271_map { i32 82000, i8 45 }, %struct.tda18271_map { i32 83000, i8 46 }, %struct.tda18271_map { i32 84000, i8 47 }, %struct.tda18271_map { i32 85000, i8 49 }, %struct.tda18271_map { i32 86000, i8 51 }, %struct.tda18271_map { i32 87000, i8 52 }, %struct.tda18271_map { i32 88000, i8 53 }, %struct.tda18271_map { i32 89000, i8 55 }, %struct.tda18271_map { i32 90000, i8 56 }, %struct.tda18271_map { i32 91000, i8 57 }, %struct.tda18271_map { i32 93000, i8 60 }, %struct.tda18271_map { i32 94000, i8 62 }, %struct.tda18271_map { i32 95000, i8 63 }, %struct.tda18271_map { i32 96000, i8 64 }, %struct.tda18271_map { i32 97000, i8 66 }, %struct.tda18271_map { i32 99000, i8 69 }, %struct.tda18271_map { i32 100000, i8 70 }, %struct.tda18271_map { i32 102000, i8 72 }, %struct.tda18271_map { i32 103000, i8 74 }, %struct.tda18271_map { i32 105000, i8 77 }, %struct.tda18271_map { i32 106000, i8 78 }, %struct.tda18271_map { i32 107000, i8 80 }, %struct.tda18271_map { i32 108000, i8 81 }, %struct.tda18271_map { i32 110000, i8 84 }, %struct.tda18271_map { i32 111000, i8 86 }, %struct.tda18271_map { i32 112000, i8 87 }, %struct.tda18271_map { i32 113000, i8 88 }, %struct.tda18271_map { i32 114000, i8 89 }, %struct.tda18271_map { i32 115000, i8 92 }, %struct.tda18271_map { i32 116000, i8 93 }, %struct.tda18271_map { i32 117000, i8 95 }, %struct.tda18271_map { i32 119000, i8 96 }, %struct.tda18271_map { i32 120000, i8 100 }, %struct.tda18271_map { i32 121000, i8 101 }, %struct.tda18271_map { i32 122000, i8 102 }, %struct.tda18271_map { i32 123000, i8 104 }, %struct.tda18271_map { i32 124000, i8 105 }, %struct.tda18271_map { i32 125000, i8 108 }, %struct.tda18271_map { i32 126000, i8 109 }, %struct.tda18271_map { i32 127000, i8 110 }, %struct.tda18271_map { i32 128000, i8 112 }, %struct.tda18271_map { i32 129000, i8 113 }, %struct.tda18271_map { i32 130000, i8 117 }, %struct.tda18271_map { i32 131000, i8 119 }, %struct.tda18271_map { i32 132000, i8 120 }, %struct.tda18271_map { i32 133000, i8 123 }, %struct.tda18271_map { i32 134000, i8 126 }, %struct.tda18271_map { i32 135000, i8 -127 }, %struct.tda18271_map { i32 136000, i8 -126 }, %struct.tda18271_map { i32 137000, i8 -121 }, %struct.tda18271_map { i32 138000, i8 -120 }, %struct.tda18271_map { i32 139000, i8 -115 }, %struct.tda18271_map { i32 140000, i8 -114 }, %struct.tda18271_map { i32 141000, i8 -111 }, %struct.tda18271_map { i32 142000, i8 -107 }, %struct.tda18271_map { i32 143000, i8 -102 }, %struct.tda18271_map { i32 144000, i8 -99 }, %struct.tda18271_map { i32 145000, i8 -95 }, %struct.tda18271_map { i32 146000, i8 -94 }, %struct.tda18271_map { i32 147000, i8 -92 }, %struct.tda18271_map { i32 148000, i8 -87 }, %struct.tda18271_map { i32 149000, i8 -82 }, %struct.tda18271_map { i32 150000, i8 -80 }, %struct.tda18271_map { i32 151000, i8 -79 }, %struct.tda18271_map { i32 152000, i8 -73 }, %struct.tda18271_map { i32 152600, i8 -67 }, %struct.tda18271_map { i32 154000, i8 32 }, %struct.tda18271_map { i32 155000, i8 34 }, %struct.tda18271_map { i32 156000, i8 36 }, %struct.tda18271_map { i32 157000, i8 37 }, %struct.tda18271_map { i32 158000, i8 39 }, %struct.tda18271_map { i32 159000, i8 41 }, %struct.tda18271_map { i32 160000, i8 44 }, %struct.tda18271_map { i32 161000, i8 45 }, %struct.tda18271_map { i32 163000, i8 46 }, %struct.tda18271_map { i32 164000, i8 47 }, %struct.tda18271_map { i32 164700, i8 48 }, %struct.tda18271_map { i32 166000, i8 17 }, %struct.tda18271_map { i32 167000, i8 18 }, %struct.tda18271_map { i32 168000, i8 19 }, %struct.tda18271_map { i32 169000, i8 20 }, %struct.tda18271_map { i32 170000, i8 21 }, %struct.tda18271_map { i32 172000, i8 22 }, %struct.tda18271_map { i32 173000, i8 23 }, %struct.tda18271_map { i32 174000, i8 24 }, %struct.tda18271_map { i32 175000, i8 26 }, %struct.tda18271_map { i32 176000, i8 27 }, %struct.tda18271_map { i32 178000, i8 29 }, %struct.tda18271_map { i32 179000, i8 30 }, %struct.tda18271_map { i32 180000, i8 31 }, %struct.tda18271_map { i32 181000, i8 32 }, %struct.tda18271_map { i32 182000, i8 33 }, %struct.tda18271_map { i32 183000, i8 34 }, %struct.tda18271_map { i32 184000, i8 36 }, %struct.tda18271_map { i32 185000, i8 37 }, %struct.tda18271_map { i32 186000, i8 38 }, %struct.tda18271_map { i32 187000, i8 39 }, %struct.tda18271_map { i32 188000, i8 41 }, %struct.tda18271_map { i32 189000, i8 42 }, %struct.tda18271_map { i32 190000, i8 44 }, %struct.tda18271_map { i32 191000, i8 45 }, %struct.tda18271_map { i32 192000, i8 46 }, %struct.tda18271_map { i32 193000, i8 47 }, %struct.tda18271_map { i32 194000, i8 48 }, %struct.tda18271_map { i32 195000, i8 51 }, %struct.tda18271_map { i32 196000, i8 53 }, %struct.tda18271_map { i32 198000, i8 54 }, %struct.tda18271_map { i32 200000, i8 56 }, %struct.tda18271_map { i32 201000, i8 60 }, %struct.tda18271_map { i32 202000, i8 61 }, %struct.tda18271_map { i32 203500, i8 62 }, %struct.tda18271_map { i32 206000, i8 14 }, %struct.tda18271_map { i32 208000, i8 15 }, %struct.tda18271_map { i32 212000, i8 16 }, %struct.tda18271_map { i32 216000, i8 17 }, %struct.tda18271_map { i32 217000, i8 18 }, %struct.tda18271_map { i32 218000, i8 19 }, %struct.tda18271_map { i32 220000, i8 20 }, %struct.tda18271_map { i32 222000, i8 21 }, %struct.tda18271_map { i32 225000, i8 22 }, %struct.tda18271_map { i32 228000, i8 23 }, %struct.tda18271_map { i32 231000, i8 24 }, %struct.tda18271_map { i32 234000, i8 25 }, %struct.tda18271_map { i32 235000, i8 26 }, %struct.tda18271_map { i32 236000, i8 27 }, %struct.tda18271_map { i32 237000, i8 28 }, %struct.tda18271_map { i32 240000, i8 29 }, %struct.tda18271_map { i32 242000, i8 30 }, %struct.tda18271_map { i32 244000, i8 31 }, %struct.tda18271_map { i32 247000, i8 32 }, %struct.tda18271_map { i32 249000, i8 33 }, %struct.tda18271_map { i32 252000, i8 34 }, %struct.tda18271_map { i32 253000, i8 35 }, %struct.tda18271_map { i32 254000, i8 36 }, %struct.tda18271_map { i32 256000, i8 37 }, %struct.tda18271_map { i32 259000, i8 38 }, %struct.tda18271_map { i32 262000, i8 39 }, %struct.tda18271_map { i32 264000, i8 40 }, %struct.tda18271_map { i32 267000, i8 41 }, %struct.tda18271_map { i32 269000, i8 42 }, %struct.tda18271_map { i32 271000, i8 43 }, %struct.tda18271_map { i32 273000, i8 44 }, %struct.tda18271_map { i32 275000, i8 45 }, %struct.tda18271_map { i32 277000, i8 46 }, %struct.tda18271_map { i32 279000, i8 47 }, %struct.tda18271_map { i32 282000, i8 48 }, %struct.tda18271_map { i32 284000, i8 49 }, %struct.tda18271_map { i32 286000, i8 50 }, %struct.tda18271_map { i32 287000, i8 51 }, %struct.tda18271_map { i32 290000, i8 52 }, %struct.tda18271_map { i32 293000, i8 53 }, %struct.tda18271_map { i32 295000, i8 54 }, %struct.tda18271_map { i32 297000, i8 55 }, %struct.tda18271_map { i32 300000, i8 56 }, %struct.tda18271_map { i32 303000, i8 57 }, %struct.tda18271_map { i32 305000, i8 58 }, %struct.tda18271_map { i32 306000, i8 59 }, %struct.tda18271_map { i32 307000, i8 60 }, %struct.tda18271_map { i32 310000, i8 61 }, %struct.tda18271_map { i32 312000, i8 62 }, %struct.tda18271_map { i32 315000, i8 63 }, %struct.tda18271_map { i32 318000, i8 64 }, %struct.tda18271_map { i32 320000, i8 65 }, %struct.tda18271_map { i32 323000, i8 66 }, %struct.tda18271_map { i32 324000, i8 67 }, %struct.tda18271_map { i32 325000, i8 68 }, %struct.tda18271_map { i32 327000, i8 69 }, %struct.tda18271_map { i32 331000, i8 70 }, %struct.tda18271_map { i32 334000, i8 71 }, %struct.tda18271_map { i32 337000, i8 72 }, %struct.tda18271_map { i32 339000, i8 73 }, %struct.tda18271_map { i32 340000, i8 74 }, %struct.tda18271_map { i32 341000, i8 75 }, %struct.tda18271_map { i32 343000, i8 76 }, %struct.tda18271_map { i32 345000, i8 77 }, %struct.tda18271_map { i32 349000, i8 78 }, %struct.tda18271_map { i32 352000, i8 79 }, %struct.tda18271_map { i32 353000, i8 80 }, %struct.tda18271_map { i32 355000, i8 81 }, %struct.tda18271_map { i32 357000, i8 82 }, %struct.tda18271_map { i32 359000, i8 83 }, %struct.tda18271_map { i32 361000, i8 84 }, %struct.tda18271_map { i32 362000, i8 85 }, %struct.tda18271_map { i32 364000, i8 86 }, %struct.tda18271_map { i32 368000, i8 87 }, %struct.tda18271_map { i32 370000, i8 88 }, %struct.tda18271_map { i32 372000, i8 89 }, %struct.tda18271_map { i32 375000, i8 90 }, %struct.tda18271_map { i32 376000, i8 91 }, %struct.tda18271_map { i32 377000, i8 92 }, %struct.tda18271_map { i32 379000, i8 93 }, %struct.tda18271_map { i32 382000, i8 94 }, %struct.tda18271_map { i32 384000, i8 95 }, %struct.tda18271_map { i32 385000, i8 96 }, %struct.tda18271_map { i32 386000, i8 97 }, %struct.tda18271_map { i32 388000, i8 98 }, %struct.tda18271_map { i32 390000, i8 99 }, %struct.tda18271_map { i32 393000, i8 100 }, %struct.tda18271_map { i32 394000, i8 101 }, %struct.tda18271_map { i32 396000, i8 102 }, %struct.tda18271_map { i32 397000, i8 103 }, %struct.tda18271_map { i32 398000, i8 104 }, %struct.tda18271_map { i32 400000, i8 105 }, %struct.tda18271_map { i32 402000, i8 106 }, %struct.tda18271_map { i32 403000, i8 107 }, %struct.tda18271_map { i32 407000, i8 108 }, %struct.tda18271_map { i32 408000, i8 109 }, %struct.tda18271_map { i32 409000, i8 110 }, %struct.tda18271_map { i32 410000, i8 111 }, %struct.tda18271_map { i32 411000, i8 112 }, %struct.tda18271_map { i32 412000, i8 113 }, %struct.tda18271_map { i32 413000, i8 114 }, %struct.tda18271_map { i32 414000, i8 115 }, %struct.tda18271_map { i32 417000, i8 116 }, %struct.tda18271_map { i32 418000, i8 117 }, %struct.tda18271_map { i32 420000, i8 118 }, %struct.tda18271_map { i32 422000, i8 119 }, %struct.tda18271_map { i32 423000, i8 120 }, %struct.tda18271_map { i32 424000, i8 121 }, %struct.tda18271_map { i32 427000, i8 122 }, %struct.tda18271_map { i32 428000, i8 123 }, %struct.tda18271_map { i32 429000, i8 125 }, %struct.tda18271_map { i32 432000, i8 127 }, %struct.tda18271_map { i32 434000, i8 -128 }, %struct.tda18271_map { i32 435000, i8 -127 }, %struct.tda18271_map { i32 436000, i8 -125 }, %struct.tda18271_map { i32 437000, i8 -124 }, %struct.tda18271_map { i32 438000, i8 -123 }, %struct.tda18271_map { i32 439000, i8 -122 }, %struct.tda18271_map { i32 440000, i8 -121 }, %struct.tda18271_map { i32 441000, i8 -120 }, %struct.tda18271_map { i32 442000, i8 -119 }, %struct.tda18271_map { i32 445000, i8 -118 }, %struct.tda18271_map { i32 446000, i8 -117 }, %struct.tda18271_map { i32 447000, i8 -116 }, %struct.tda18271_map { i32 448000, i8 -114 }, %struct.tda18271_map { i32 449000, i8 -113 }, %struct.tda18271_map { i32 450000, i8 -112 }, %struct.tda18271_map { i32 452000, i8 -111 }, %struct.tda18271_map { i32 453000, i8 -109 }, %struct.tda18271_map { i32 454000, i8 -108 }, %struct.tda18271_map { i32 456000, i8 -106 }, %struct.tda18271_map { i32 457800, i8 -104 }, %struct.tda18271_map { i32 461000, i8 17 }, %struct.tda18271_map { i32 468000, i8 18 }, %struct.tda18271_map { i32 472000, i8 19 }, %struct.tda18271_map { i32 473000, i8 20 }, %struct.tda18271_map { i32 474000, i8 21 }, %struct.tda18271_map { i32 481000, i8 22 }, %struct.tda18271_map { i32 486000, i8 23 }, %struct.tda18271_map { i32 491000, i8 24 }, %struct.tda18271_map { i32 498000, i8 25 }, %struct.tda18271_map { i32 499000, i8 26 }, %struct.tda18271_map { i32 501000, i8 27 }, %struct.tda18271_map { i32 506000, i8 28 }, %struct.tda18271_map { i32 511000, i8 29 }, %struct.tda18271_map { i32 516000, i8 30 }, %struct.tda18271_map { i32 520000, i8 31 }, %struct.tda18271_map { i32 521000, i8 32 }, %struct.tda18271_map { i32 525000, i8 33 }, %struct.tda18271_map { i32 529000, i8 34 }, %struct.tda18271_map { i32 533000, i8 35 }, %struct.tda18271_map { i32 539000, i8 36 }, %struct.tda18271_map { i32 541000, i8 37 }, %struct.tda18271_map { i32 547000, i8 38 }, %struct.tda18271_map { i32 549000, i8 39 }, %struct.tda18271_map { i32 551000, i8 40 }, %struct.tda18271_map { i32 556000, i8 41 }, %struct.tda18271_map { i32 561000, i8 42 }, %struct.tda18271_map { i32 563000, i8 43 }, %struct.tda18271_map { i32 565000, i8 44 }, %struct.tda18271_map { i32 569000, i8 45 }, %struct.tda18271_map { i32 571000, i8 46 }, %struct.tda18271_map { i32 577000, i8 47 }, %struct.tda18271_map { i32 580000, i8 48 }, %struct.tda18271_map { i32 582000, i8 49 }, %struct.tda18271_map { i32 584000, i8 50 }, %struct.tda18271_map { i32 588000, i8 51 }, %struct.tda18271_map { i32 591000, i8 52 }, %struct.tda18271_map { i32 596000, i8 53 }, %struct.tda18271_map { i32 598000, i8 54 }, %struct.tda18271_map { i32 603000, i8 55 }, %struct.tda18271_map { i32 604000, i8 56 }, %struct.tda18271_map { i32 606000, i8 57 }, %struct.tda18271_map { i32 612000, i8 58 }, %struct.tda18271_map { i32 615000, i8 59 }, %struct.tda18271_map { i32 617000, i8 60 }, %struct.tda18271_map { i32 621000, i8 61 }, %struct.tda18271_map { i32 622000, i8 62 }, %struct.tda18271_map { i32 625000, i8 63 }, %struct.tda18271_map { i32 632000, i8 64 }, %struct.tda18271_map { i32 633000, i8 65 }, %struct.tda18271_map { i32 634000, i8 66 }, %struct.tda18271_map { i32 642000, i8 67 }, %struct.tda18271_map { i32 643000, i8 68 }, %struct.tda18271_map { i32 647000, i8 69 }, %struct.tda18271_map { i32 650000, i8 70 }, %struct.tda18271_map { i32 652000, i8 71 }, %struct.tda18271_map { i32 657000, i8 72 }, %struct.tda18271_map { i32 661000, i8 73 }, %struct.tda18271_map { i32 662000, i8 74 }, %struct.tda18271_map { i32 665000, i8 75 }, %struct.tda18271_map { i32 667000, i8 76 }, %struct.tda18271_map { i32 670000, i8 77 }, %struct.tda18271_map { i32 673000, i8 78 }, %struct.tda18271_map { i32 676000, i8 79 }, %struct.tda18271_map { i32 677000, i8 80 }, %struct.tda18271_map { i32 681000, i8 81 }, %struct.tda18271_map { i32 683000, i8 82 }, %struct.tda18271_map { i32 686000, i8 83 }, %struct.tda18271_map { i32 688000, i8 84 }, %struct.tda18271_map { i32 689000, i8 85 }, %struct.tda18271_map { i32 691000, i8 86 }, %struct.tda18271_map { i32 695000, i8 87 }, %struct.tda18271_map { i32 698000, i8 88 }, %struct.tda18271_map { i32 703000, i8 89 }, %struct.tda18271_map { i32 704000, i8 90 }, %struct.tda18271_map { i32 705000, i8 91 }, %struct.tda18271_map { i32 707000, i8 92 }, %struct.tda18271_map { i32 710000, i8 93 }, %struct.tda18271_map { i32 712000, i8 94 }, %struct.tda18271_map { i32 717000, i8 95 }, %struct.tda18271_map { i32 718000, i8 96 }, %struct.tda18271_map { i32 721000, i8 97 }, %struct.tda18271_map { i32 722000, i8 98 }, %struct.tda18271_map { i32 723000, i8 99 }, %struct.tda18271_map { i32 725000, i8 100 }, %struct.tda18271_map { i32 727000, i8 101 }, %struct.tda18271_map { i32 730000, i8 102 }, %struct.tda18271_map { i32 732000, i8 103 }, %struct.tda18271_map { i32 735000, i8 104 }, %struct.tda18271_map { i32 740000, i8 105 }, %struct.tda18271_map { i32 741000, i8 106 }, %struct.tda18271_map { i32 742000, i8 107 }, %struct.tda18271_map { i32 743000, i8 108 }, %struct.tda18271_map { i32 745000, i8 109 }, %struct.tda18271_map { i32 747000, i8 110 }, %struct.tda18271_map { i32 748000, i8 111 }, %struct.tda18271_map { i32 750000, i8 112 }, %struct.tda18271_map { i32 752000, i8 113 }, %struct.tda18271_map { i32 754000, i8 114 }, %struct.tda18271_map { i32 757000, i8 115 }, %struct.tda18271_map { i32 758000, i8 116 }, %struct.tda18271_map { i32 760000, i8 117 }, %struct.tda18271_map { i32 763000, i8 118 }, %struct.tda18271_map { i32 764000, i8 119 }, %struct.tda18271_map { i32 766000, i8 120 }, %struct.tda18271_map { i32 767000, i8 121 }, %struct.tda18271_map { i32 768000, i8 122 }, %struct.tda18271_map { i32 773000, i8 123 }, %struct.tda18271_map { i32 774000, i8 124 }, %struct.tda18271_map { i32 776000, i8 125 }, %struct.tda18271_map { i32 777000, i8 126 }, %struct.tda18271_map { i32 778000, i8 127 }, %struct.tda18271_map { i32 779000, i8 -128 }, %struct.tda18271_map { i32 781000, i8 -127 }, %struct.tda18271_map { i32 783000, i8 -126 }, %struct.tda18271_map { i32 784000, i8 -125 }, %struct.tda18271_map { i32 785000, i8 -124 }, %struct.tda18271_map { i32 786000, i8 -123 }, %struct.tda18271_map { i32 793000, i8 -122 }, %struct.tda18271_map { i32 794000, i8 -121 }, %struct.tda18271_map { i32 795000, i8 -120 }, %struct.tda18271_map { i32 797000, i8 -119 }, %struct.tda18271_map { i32 799000, i8 -118 }, %struct.tda18271_map { i32 801000, i8 -117 }, %struct.tda18271_map { i32 802000, i8 -116 }, %struct.tda18271_map { i32 803000, i8 -115 }, %struct.tda18271_map { i32 804000, i8 -114 }, %struct.tda18271_map { i32 810000, i8 -112 }, %struct.tda18271_map { i32 811000, i8 -111 }, %struct.tda18271_map { i32 812000, i8 -110 }, %struct.tda18271_map { i32 814000, i8 -109 }, %struct.tda18271_map { i32 816000, i8 -108 }, %struct.tda18271_map { i32 817000, i8 -106 }, %struct.tda18271_map { i32 818000, i8 -105 }, %struct.tda18271_map { i32 820000, i8 -104 }, %struct.tda18271_map { i32 821000, i8 -103 }, %struct.tda18271_map { i32 822000, i8 -102 }, %struct.tda18271_map { i32 828000, i8 -101 }, %struct.tda18271_map { i32 829000, i8 -99 }, %struct.tda18271_map { i32 830000, i8 -97 }, %struct.tda18271_map { i32 831000, i8 -96 }, %struct.tda18271_map { i32 833000, i8 -95 }, %struct.tda18271_map { i32 835000, i8 -94 }, %struct.tda18271_map { i32 836000, i8 -93 }, %struct.tda18271_map { i32 837000, i8 -92 }, %struct.tda18271_map { i32 838000, i8 -90 }, %struct.tda18271_map { i32 840000, i8 -88 }, %struct.tda18271_map { i32 842000, i8 -87 }, %struct.tda18271_map { i32 845000, i8 -86 }, %struct.tda18271_map { i32 846000, i8 -85 }, %struct.tda18271_map { i32 847000, i8 -83 }, %struct.tda18271_map { i32 848000, i8 -82 }, %struct.tda18271_map { i32 852000, i8 -81 }, %struct.tda18271_map { i32 853000, i8 -80 }, %struct.tda18271_map { i32 858000, i8 -79 }, %struct.tda18271_map { i32 860000, i8 -78 }, %struct.tda18271_map { i32 861000, i8 -77 }, %struct.tda18271_map { i32 862000, i8 -76 }, %struct.tda18271_map { i32 863000, i8 -74 }, %struct.tda18271_map { i32 864000, i8 -72 }, %struct.tda18271_map { i32 865000, i8 -71 }, %struct.tda18271_map zeroinitializer], [880 x i8] zeroinitializer }, align 32
@tda18271c2_km = internal global { [6 x %struct.tda18271_map], [48 x i8] } { [6 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 56 }, %struct.tda18271_map { i32 61100, i8 68 }, %struct.tda18271_map { i32 350000, i8 48 }, %struct.tda18271_map { i32 720000, i8 36 }, %struct.tda18271_map { i32 865000, i8 60 }, %struct.tda18271_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda18271_rf_cal_dc_over_dt = internal global { [102 x %struct.tda18271_map], [208 x i8] } { [102 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 0 }, %struct.tda18271_map { i32 55000, i8 0 }, %struct.tda18271_map { i32 61100, i8 10 }, %struct.tda18271_map { i32 64000, i8 10 }, %struct.tda18271_map { i32 82000, i8 20 }, %struct.tda18271_map { i32 84000, i8 25 }, %struct.tda18271_map { i32 119000, i8 28 }, %struct.tda18271_map { i32 124000, i8 32 }, %struct.tda18271_map { i32 129000, i8 42 }, %struct.tda18271_map { i32 134000, i8 50 }, %struct.tda18271_map { i32 139000, i8 57 }, %struct.tda18271_map { i32 144000, i8 62 }, %struct.tda18271_map { i32 149000, i8 63 }, %struct.tda18271_map { i32 152600, i8 64 }, %struct.tda18271_map { i32 154000, i8 64 }, %struct.tda18271_map { i32 164700, i8 65 }, %struct.tda18271_map { i32 203500, i8 50 }, %struct.tda18271_map { i32 353000, i8 25 }, %struct.tda18271_map { i32 356000, i8 26 }, %struct.tda18271_map { i32 359000, i8 27 }, %struct.tda18271_map { i32 363000, i8 28 }, %struct.tda18271_map { i32 366000, i8 29 }, %struct.tda18271_map { i32 369000, i8 30 }, %struct.tda18271_map { i32 373000, i8 31 }, %struct.tda18271_map { i32 376000, i8 32 }, %struct.tda18271_map { i32 379000, i8 33 }, %struct.tda18271_map { i32 383000, i8 34 }, %struct.tda18271_map { i32 386000, i8 35 }, %struct.tda18271_map { i32 389000, i8 36 }, %struct.tda18271_map { i32 393000, i8 37 }, %struct.tda18271_map { i32 396000, i8 38 }, %struct.tda18271_map { i32 399000, i8 39 }, %struct.tda18271_map { i32 402000, i8 40 }, %struct.tda18271_map { i32 404000, i8 41 }, %struct.tda18271_map { i32 407000, i8 42 }, %struct.tda18271_map { i32 409000, i8 43 }, %struct.tda18271_map { i32 412000, i8 44 }, %struct.tda18271_map { i32 414000, i8 45 }, %struct.tda18271_map { i32 417000, i8 46 }, %struct.tda18271_map { i32 419000, i8 47 }, %struct.tda18271_map { i32 422000, i8 48 }, %struct.tda18271_map { i32 424000, i8 49 }, %struct.tda18271_map { i32 427000, i8 50 }, %struct.tda18271_map { i32 429000, i8 51 }, %struct.tda18271_map { i32 432000, i8 52 }, %struct.tda18271_map { i32 434000, i8 53 }, %struct.tda18271_map { i32 437000, i8 54 }, %struct.tda18271_map { i32 439000, i8 55 }, %struct.tda18271_map { i32 442000, i8 56 }, %struct.tda18271_map { i32 444000, i8 57 }, %struct.tda18271_map { i32 447000, i8 58 }, %struct.tda18271_map { i32 449000, i8 59 }, %struct.tda18271_map { i32 457800, i8 60 }, %struct.tda18271_map { i32 465000, i8 15 }, %struct.tda18271_map { i32 477000, i8 18 }, %struct.tda18271_map { i32 483000, i8 20 }, %struct.tda18271_map { i32 502000, i8 25 }, %struct.tda18271_map { i32 508000, i8 27 }, %struct.tda18271_map { i32 519000, i8 28 }, %struct.tda18271_map { i32 522000, i8 29 }, %struct.tda18271_map { i32 524000, i8 30 }, %struct.tda18271_map { i32 534000, i8 31 }, %struct.tda18271_map { i32 549000, i8 32 }, %struct.tda18271_map { i32 554000, i8 34 }, %struct.tda18271_map { i32 584000, i8 36 }, %struct.tda18271_map { i32 589000, i8 38 }, %struct.tda18271_map { i32 658000, i8 39 }, %struct.tda18271_map { i32 664000, i8 44 }, %struct.tda18271_map { i32 669000, i8 45 }, %struct.tda18271_map { i32 699000, i8 46 }, %struct.tda18271_map { i32 704000, i8 48 }, %struct.tda18271_map { i32 709000, i8 49 }, %struct.tda18271_map { i32 714000, i8 50 }, %struct.tda18271_map { i32 724000, i8 51 }, %struct.tda18271_map { i32 729000, i8 54 }, %struct.tda18271_map { i32 739000, i8 56 }, %struct.tda18271_map { i32 744000, i8 57 }, %struct.tda18271_map { i32 749000, i8 59 }, %struct.tda18271_map { i32 754000, i8 60 }, %struct.tda18271_map { i32 759000, i8 61 }, %struct.tda18271_map { i32 764000, i8 62 }, %struct.tda18271_map { i32 769000, i8 63 }, %struct.tda18271_map { i32 774000, i8 64 }, %struct.tda18271_map { i32 779000, i8 65 }, %struct.tda18271_map { i32 784000, i8 67 }, %struct.tda18271_map { i32 789000, i8 70 }, %struct.tda18271_map { i32 794000, i8 72 }, %struct.tda18271_map { i32 799000, i8 75 }, %struct.tda18271_map { i32 804000, i8 79 }, %struct.tda18271_map { i32 809000, i8 84 }, %struct.tda18271_map { i32 814000, i8 89 }, %struct.tda18271_map { i32 819000, i8 93 }, %struct.tda18271_map { i32 824000, i8 97 }, %struct.tda18271_map { i32 829000, i8 104 }, %struct.tda18271_map { i32 834000, i8 110 }, %struct.tda18271_map { i32 839000, i8 117 }, %struct.tda18271_map { i32 844000, i8 126 }, %struct.tda18271_map { i32 849000, i8 -126 }, %struct.tda18271_map { i32 854000, i8 -124 }, %struct.tda18271_map { i32 859000, i8 -113 }, %struct.tda18271_map { i32 865000, i8 -102 }, %struct.tda18271_map zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tda18271c2_std_map = internal constant { { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } }, [36 x i8] } { { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } } { { i16, i8, i8 } { i16 1250, i8 -60, i8 44 }, { i16, i8, i8 } { i16 6000, i8 104, i8 44 }, { i16, i8, i8 } { i16 6900, i8 112, i8 44 }, { i16, i8, i8 } { i16 7100, i8 112, i8 44 }, { i16, i8, i8 } { i16 7250, i8 112, i8 44 }, { i16, i8, i8 } { i16 6900, i8 112, i8 44 }, { i16, i8, i8 } { i16 1250, i8 112, i8 44 }, { i16, i8, i8 } { i16 5400, i8 96, i8 44 }, { i16, i8, i8 } { i16 3250, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3300, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3500, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 4000, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4000, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4500, i8 -16, i8 -73 }, { i16, i8, i8 } { i16 5000, i8 -8, i8 -73 } }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"tda18271_thermometer\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 900, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 937, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"tda18271_cid_target\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 950, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 980, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1015, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1028, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1066, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1070, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1074, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1079, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1086, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1096, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1117, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1121, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1125, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1129, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1133, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1137, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1141, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1166, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"tda18271c1_map_layout\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1241, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"tda18271c2_map_layout\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1254, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"tda18271_rf_band_template\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 988, i32 47 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"tda18271c1_main_pll\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 24, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"tda18271c1_cal_pll\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 112, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"tda18271c1_rf_cal\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 317, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"tda18271c1_km\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 200, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"tda18271_bp_filter\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 189, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"tda18271_rf_band\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 217, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"tda18271_gain_taper\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 228, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"tda18271_ir_measure\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 779, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"tda18271c1_std_map\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1173, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"tda18271c2_main_pll\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 68, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"tda18271c2_cal_pll\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 151, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"tda18271c2_rf_cal\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 338, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"tda18271c2_km\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 208, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"tda18271_rf_cal_dc_over_dt\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 787, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"tda18271c2_std_map\00", align 1
@___asan_gen_.143 = private constant [40 x i8] c"../drivers/media/tuners/tda18271-maps.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1206, i32 38 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @tda18271_thermometer, ptr @.str, ptr @.str.1, ptr @tda18271_cid_target, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @tda18271c1_map_layout, ptr @tda18271c2_map_layout, ptr @tda18271_rf_band_template, ptr @tda18271c1_main_pll, ptr @tda18271c1_cal_pll, ptr @tda18271c1_rf_cal, ptr @tda18271c1_km, ptr @tda18271_bp_filter, ptr @tda18271_rf_band, ptr @tda18271_gain_taper, ptr @tda18271_ir_measure, ptr @tda18271c1_std_map, ptr @tda18271c2_main_pll, ptr @tda18271c2_cal_pll, ptr @tda18271c2_rf_cal, ptr @tda18271c2_km, ptr @tda18271_rf_cal_dc_over_dt, ptr @tda18271c2_std_map], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_thermometer to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_cid_target to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_map_layout to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_map_layout to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_rf_band_template to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_main_pll to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_cal_pll to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_rf_cal to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_km to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_bp_filter to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_rf_band to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_gain_taper to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_ir_measure to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c1_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_main_pll to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_cal_pll to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_rf_cal to i32), i32 3504, i32 4384, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_km to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_rf_cal_dc_over_dt to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_thermometer(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, 15
  %trunc = trunc i8 %3 to i4
  %5 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %while.body.1 [
    i4 0, label %entry.while.end_crit_edge
    i4 1, label %while.end.fold.split
  ]

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.1:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.2 = icmp ugt i8 %4, 2
  br i1 %cmp.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp.3.not = icmp eq i8 %4, 3
  br i1 %cmp.3.not, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp.4 = icmp ugt i8 %4, 4
  br i1 %cmp.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.5.not = icmp eq i8 %4, 5
  br i1 %cmp.5.not, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp.6 = icmp ugt i8 %4, 6
  br i1 %cmp.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.7.not = icmp eq i8 %4, 7
  br i1 %cmp.7.not, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %cmp.8 = icmp ugt i8 %4, 8
  br i1 %cmp.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %4)
  %cmp.9.not = icmp eq i8 %4, 9
  br i1 %cmp.9.not, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp.10 = icmp ugt i8 %4, 10
  br i1 %cmp.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %4)
  %cmp.11.not = icmp eq i8 %4, 11
  br i1 %cmp.11.not, label %while.body.10.while.end_crit_edge, label %while.body.11

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.12 = icmp ugt i8 %4, 12
  br i1 %cmp.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 15
  %switch.select = select i1 %switch.selectcmp, i32 15, i32 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %4)
  %switch.selectcmp32 = icmp eq i8 %4, 13
  %switch.select33 = select i1 %switch.selectcmp32, i32 13, i32 %switch.select
  br label %while.end

while.end.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.end.fold.split, %while.body.12, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 8, %while.body.7.while.end_crit_edge ], [ 9, %while.body.8.while.end_crit_edge ], [ 10, %while.body.9.while.end_crit_edge ], [ 11, %while.body.10.while.end_crit_edge ], [ 12, %while.body.11.while.end_crit_edge ], [ 1, %while.end.fold.split ], [ %switch.select33, %while.body.12 ]
  %6 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp12.not = icmp eq i8 %6, 0
  %r1 = getelementptr [17 x %struct.tda18271_thermo_map], ptr @tda18271_thermometer, i32 0, i32 %i.0.lcssa, i32 2
  %r0 = getelementptr [17 x %struct.tda18271_thermo_map], ptr @tda18271_thermometer, i32 0, i32 %i.0.lcssa, i32 1
  %val.0.in.in = select i1 %cmp12.not, ptr %r0, ptr %r1
  %7 = ptrtoint ptr %val.0.in.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %val.0.in = load i8, ptr %val.0.in.in, align 1
  %val.0 = zext i8 %val.0.in to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %8 = load i32, ptr @tda18271_debug, align 4
  %and20 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %while.end.do.end_crit_edge, label %if.then21

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_thermometer, ptr noundef nonnull @.str.1, i32 noundef %i.0.lcssa, i32 noundef %val.0) #3
  br label %do.end

do.end:                                           ; preds = %if.then21, %while.end.do.end_crit_edge
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_tda_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_cid_target(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %freq, ptr nocapture noundef writeonly %cid_target, ptr nocapture noundef writeonly %count_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46000000, i32 %3)
  %cmp = icmp ugt i32 %3, 46000000
  br i1 %cmp, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 52200000, i32 %3)
  %cmp.1 = icmp ugt i32 %3, 52200000
  br i1 %cmp.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 70100000, i32 %3)
  %cmp.2 = icmp ugt i32 %3, 70100000
  br i1 %cmp.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 136800000, i32 %3)
  %cmp.3 = icmp ugt i32 %3, 136800000
  br i1 %cmp.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 156700000, i32 %3)
  %cmp.4 = icmp ugt i32 %3, 156700000
  br i1 %cmp.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 186250000, i32 %3)
  %cmp.5 = icmp ugt i32 %3, 186250000
  br i1 %cmp.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 230000000, i32 %3)
  %cmp.6 = icmp ugt i32 %3, 230000000
  br i1 %cmp.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 345000000, i32 %3)
  %cmp.7 = icmp ugt i32 %3, 345000000
  br i1 %cmp.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 426000000, i32 %3)
  %cmp.8 = icmp ugt i32 %3, 426000000
  br i1 %cmp.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 489500000, i32 %3)
  %cmp.9 = icmp ugt i32 %3, 489500000
  br i1 %cmp.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 697500000, i32 %3)
  %cmp.10 = icmp ugt i32 %3, 697500000
  %spec.select = select i1 %cmp.10, i32 11, i32 10
  br label %while.end

while.end:                                        ; preds = %while.body.9, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 8, %while.body.7.while.end_crit_edge ], [ 9, %while.body.8.while.end_crit_edge ], [ %spec.select, %while.body.9 ]
  %target = getelementptr [13 x %struct.tda18271_cid_target_map], ptr @tda18271_cid_target, i32 0, i32 %i.0.lcssa, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %target, align 4
  %6 = ptrtoint ptr %cid_target to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %cid_target, align 1
  %limit = getelementptr [13 x %struct.tda18271_cid_target_map], ptr @tda18271_cid_target, i32 0, i32 %i.0.lcssa, i32 2
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %limit, align 2
  %9 = ptrtoint ptr %count_limit to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %count_limit, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %10 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.do.end_crit_edge, label %if.then6

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then6:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %5 to i32
  %conv11 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_cid_target, ptr noundef nonnull @.str.2, i32 noundef %i.0.lcssa, i32 noundef %conv, i32 noundef %conv11) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %while.end.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_rf_band(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %freq, ptr noundef writeonly %rf_band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %rf_cal_state = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rf_cal_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rf_cal_state, align 4
  %mul75 = mul i32 %3, 1000
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul75, i32 %5)
  %cmp76 = icmp ult i32 %mul75, %5
  br i1 %cmp76, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi i32 [ %34, %if.end22.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %mul80 = phi i32 [ %mul, %if.end22.while.body_crit_edge ], [ %mul75, %entry.while.body_crit_edge ]
  %arrayidx79 = phi ptr [ %arrayidx, %if.end22.while.body_crit_edge ], [ %rf_cal_state, %entry.while.body_crit_edge ]
  %i.077 = phi i32 [ %inc, %if.end22.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %7 = load i32, ptr @tda18271_debug, align 4
  %8 = and i32 %7, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %.not = icmp eq i32 %8, 10
  br i1 %.not, label %if.then3, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %rf1_def = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 2
  %9 = ptrtoint ptr %rf1_def to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf1_def, align 4
  %rf2_def = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 3
  %11 = ptrtoint ptr %rf2_def to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf2_def, align 4
  %rf3_def = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 4
  %13 = ptrtoint ptr %rf3_def to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rf3_def, align 4
  %rf1 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 5
  %15 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rf1, align 4
  %rf2 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 6
  %17 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rf2, align 4
  %rf3 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 7
  %19 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rf3, align 4
  %rf_a1 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 8
  %21 = ptrtoint ptr %rf_a1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rf_a1, align 4
  %rf_a2 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 10
  %23 = ptrtoint ptr %rf_a2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rf_a2, align 4
  %rf_b1 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 9
  %25 = ptrtoint ptr %rf_b1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rf_b1, align 4
  %rf_b2 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.077, i32 11
  %27 = ptrtoint ptr %rf_b2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rf_b2, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_rf_band, ptr noundef nonnull @.str.3, i32 noundef %i.077, i32 noundef %mul80, i32 noundef %6, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28) #3
  br label %if.end17

if.end17:                                         ; preds = %if.then3, %while.body.if.end17_crit_edge
  %29 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp20 = icmp eq i32 %30, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %inc = add i32 %i.077, 1
  %arrayidx = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %inc
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %32, 1000
  %33 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %freq, align 4
  %cmp = icmp ult i32 %mul, %34
  br i1 %cmp, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.end22.while.end_crit_edge ]
  %tobool23.not = icmp eq ptr %rf_band, null
  br i1 %tobool23.not, label %while.end.do.body27_crit_edge, label %if.then24

while.end.do.body27_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body27

if.then24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %rfband = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.0.lcssa, i32 1
  %35 = ptrtoint ptr %rfband to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rfband, align 4
  %37 = ptrtoint ptr %rf_band to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %rf_band, align 1
  br label %do.body27

do.body27:                                        ; preds = %if.then24, %while.end.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %38 = load i32, ptr @tda18271_debug, align 4
  %and28 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %if.then30

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  %rfband32 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state, i32 %i.0.lcssa, i32 1
  %39 = ptrtoint ptr %rfband32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rfband32, align 4
  %conv = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_rf_band, ptr noundef nonnull @.str.4, i32 noundef %i.0.lcssa, i32 noundef %conv) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body27.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa, %if.then30 ], [ %i.0.lcssa, %do.body27.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_pll_map(ptr nocapture noundef readonly %fe, i32 noundef %map_type, ptr nocapture noundef readonly %freq, ptr nocapture noundef %post_div, ptr nocapture noundef writeonly %div) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %maps = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maps, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-maps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #3, !srcloc !94
  unreachable

do.end9:                                          ; preds = %entry
  %4 = zext i32 %map_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %map_type, label %do.end9.if.then14_crit_edge [
    i32 0, label %do.end9.sw.epilog_crit_edge
    i32 1, label %sw.bb11
  ]

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end9.if.then14_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

sw.bb11:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %cal_pll = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %do.end9.sw.epilog_crit_edge
  %map.0.in = phi ptr [ %cal_pll, %sw.bb11 ], [ %3, %do.end9.sw.epilog_crit_edge ]
  %map_name.0 = phi ptr [ @.str.6, %sw.bb11 ], [ @.str.5, %do.end9.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %tobool13.not = icmp eq ptr %map.0, null
  br i1 %tobool13.not, label %sw.epilog.if.then14_crit_edge, label %while.cond.preheader

sw.epilog.if.then14_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

while.cond.preheader:                             ; preds = %sw.epilog
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq, align 4
  br label %while.cond

if.then14:                                        ; preds = %sw.epilog.if.then14_crit_edge, %do.end9.if.then14_crit_edge
  %map_name.061 = phi ptr [ %map_name.0, %sw.epilog.if.then14_crit_edge ], [ @.str.7, %do.end9.if.then14_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.9, ptr noundef nonnull %map_name.061) #3
  br label %fail

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %arrayidx = getelementptr %struct.tda18271_pll_map, ptr %map.0, i32 %i.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %9, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp = icmp ult i32 %mul, %7
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add = add i32 %i.0, 1
  %arrayidx16 = getelementptr %struct.tda18271_pll_map, ptr %map.0, i32 %add
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %do.body20, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

do.body20:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %12 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.while.end_crit_edge, label %if.then22

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.then22:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.10, ptr noundef nonnull %map_name.0, i32 noundef %7) #3
  br label %while.end

while.end:                                        ; preds = %if.then22, %do.body20.while.end_crit_edge, %while.cond.while.end_crit_edge
  %ret.0 = phi i32 [ -34, %if.then22 ], [ -34, %do.body20.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  %pd = getelementptr %struct.tda18271_pll_map, ptr %map.0, i32 %i.0, i32 1
  %13 = ptrtoint ptr %pd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pd, align 4
  %15 = ptrtoint ptr %post_div to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %post_div, align 1
  %d = getelementptr %struct.tda18271_pll_map, ptr %map.0, i32 %i.0, i32 2
  %16 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %d, align 1
  %18 = ptrtoint ptr %div to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %div, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %19 = load i32, ptr @tda18271_debug, align 4
  %and30 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %while.end.fail_crit_edge, label %if.then32

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %post_div to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %post_div, align 1
  %conv = zext i8 %21 to i32
  %conv33 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.11, i32 noundef %i.0, ptr noundef nonnull %map_name.0, i32 noundef %conv, i32 noundef %conv33) #3
  br label %fail

fail:                                             ; preds = %if.then32, %while.end.fail_crit_edge, %if.then14
  %ret.1 = phi i32 [ %ret.0, %if.then32 ], [ %ret.0, %while.end.fail_crit_edge ], [ -22, %if.then14 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_map(ptr nocapture noundef readonly %fe, i32 noundef %map_type, ptr nocapture noundef readonly %freq, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %maps = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maps, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-maps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #3, !srcloc !95
  unreachable

do.end9:                                          ; preds = %entry
  %4 = zext i32 %map_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %map_type, label %do.end9.if.then24_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb11
    i32 6, label %sw.bb13
    i32 7, label %sw.bb15
    i32 2, label %sw.bb17
    i32 8, label %sw.bb19
    i32 4, label %sw.bb21
  ]

do.end9.if.then24_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %bp_filter = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 5
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %rf_cal_kmco = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 3
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %rf_band = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 6
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %gain_taper = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 7
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %rf_cal = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %ir_measure = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %rf_cal_dc_over_dt = getelementptr inbounds %struct.tda18271_map_layout, ptr %3, i32 0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  %map.0.in = phi ptr [ %rf_cal_dc_over_dt, %sw.bb21 ], [ %ir_measure, %sw.bb19 ], [ %rf_cal, %sw.bb17 ], [ %gain_taper, %sw.bb15 ], [ %rf_band, %sw.bb13 ], [ %rf_cal_kmco, %sw.bb11 ], [ %bp_filter, %sw.bb ]
  %map_name.0 = phi ptr [ @.str.18, %sw.bb21 ], [ @.str.17, %sw.bb19 ], [ @.str.16, %sw.bb17 ], [ @.str.15, %sw.bb15 ], [ @.str.14, %sw.bb13 ], [ @.str.13, %sw.bb11 ], [ @.str.12, %sw.bb ]
  %5 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %tobool23.not = icmp eq ptr %map.0, null
  br i1 %tobool23.not, label %sw.epilog.if.then24_crit_edge, label %while.cond.preheader

sw.epilog.if.then24_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24

while.cond.preheader:                             ; preds = %sw.epilog
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq, align 4
  br label %while.cond

if.then24:                                        ; preds = %sw.epilog.if.then24_crit_edge, %do.end9.if.then24_crit_edge
  %map_name.072 = phi ptr [ %map_name.0, %sw.epilog.if.then24_crit_edge ], [ @.str.7, %do.end9.if.then24_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.9, ptr noundef nonnull %map_name.072) #3
  br label %fail

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %arrayidx = getelementptr %struct.tda18271_map, ptr %map.0, i32 %i.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %9, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp = icmp ult i32 %mul, %7
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add = add i32 %i.0, 1
  %arrayidx26 = getelementptr %struct.tda18271_map, ptr %map.0, i32 %add
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx26, align 4
  %cmp28 = icmp eq i32 %11, 0
  br i1 %cmp28, label %do.body30, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

do.body30:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %12 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body30.while.end_crit_edge, label %if.then32

do.body30.while.end_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.10, ptr noundef nonnull %map_name.0, i32 noundef %7) #3
  br label %while.end

while.end:                                        ; preds = %if.then32, %do.body30.while.end_crit_edge, %while.cond.while.end_crit_edge
  %ret.0 = phi i32 [ -34, %if.then32 ], [ -34, %do.body30.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  %val38 = getelementptr %struct.tda18271_map, ptr %map.0, i32 %i.0, i32 1
  %13 = ptrtoint ptr %val38 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val38, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %val, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %16 = load i32, ptr @tda18271_debug, align 4
  %and40 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %while.end.fail_crit_edge, label %if.then42

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.then42:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.19, i32 noundef %i.0, ptr noundef nonnull %map_name.0, i32 noundef %conv) #3
  br label %fail

fail:                                             ; preds = %if.then42, %while.end.fail_crit_edge, %if.then24
  %ret.1 = phi i32 [ %ret.0, %if.then42 ], [ %ret.0, %while.end.fail_crit_edge ], [ -22, %if.then24 ]
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tda18271_assign_map_layout(ptr nocapture noundef readonly %fe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %id = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %maps = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tda18271c1_map_layout, ptr %maps, align 4
  %std = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13
  %6 = call ptr @memcpy(ptr %std, ptr @tda18271c1_std_map, i32 60)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %maps2 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %maps2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tda18271c2_map_layout, ptr %maps2, align 4
  %std3 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13
  %8 = call ptr @memcpy(ptr %std3, ptr @tda18271c2_std_map, i32 60)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  %rf_cal_state = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 14
  %9 = call ptr @memcpy(ptr %rf_cal_state, ptr @tda18271_rf_band_template, i32 384)
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 937, i32 2}
!2 = !{ptr @__func__.tda18271_lookup_thermometer, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.tda18271_lookup_cid_target, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 980, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.tda18271_lookup_rf_band, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1015, i32 4}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1028, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1066, i32 14}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1070, i32 14}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1074, i32 14}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1079, i32 3}
!20 = !{ptr @__func__.tda18271_lookup_pll_map, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1086, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1096, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1117, i32 14}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1121, i32 14}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1125, i32 14}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1129, i32 14}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1133, i32 14}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1137, i32 14}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1141, i32 14}
!40 = !{ptr @__func__.tda18271_lookup_map, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1150, i32 3}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1166, i32 2}
!44 = !{ptr @tda18271_thermometer, !45, !"tda18271_thermometer", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 900, i32 35}
!46 = !{ptr @tda18271_cid_target, !47, !"tda18271_cid_target", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 950, i32 39}
!48 = !{ptr @tda18271c1_map_layout, !49, !"tda18271c1_map_layout", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1241, i32 35}
!50 = !{ptr @tda18271c1_main_pll, !51, !"tda18271c1_main_pll", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 24, i32 32}
!52 = !{ptr @tda18271c1_cal_pll, !53, !"tda18271c1_cal_pll", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 112, i32 32}
!54 = !{ptr @tda18271c1_rf_cal, !55, !"tda18271c1_rf_cal", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 317, i32 28}
!56 = !{ptr @tda18271c1_km, !57, !"tda18271c1_km", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 200, i32 28}
!58 = !{ptr @tda18271_bp_filter, !59, !"tda18271_bp_filter", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 189, i32 28}
!60 = !{ptr @tda18271_rf_band, !61, !"tda18271_rf_band", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 217, i32 28}
!62 = !{ptr @tda18271_gain_taper, !63, !"tda18271_gain_taper", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 228, i32 28}
!64 = !{ptr @tda18271_ir_measure, !65, !"tda18271_ir_measure", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 779, i32 28}
!66 = !{ptr @tda18271c1_std_map, !67, !"tda18271c1_std_map", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1173, i32 38}
!68 = !{ptr @tda18271c2_map_layout, !69, !"tda18271c2_map_layout", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1254, i32 35}
!70 = !{ptr @tda18271c2_main_pll, !71, !"tda18271c2_main_pll", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 68, i32 32}
!72 = !{ptr @tda18271c2_cal_pll, !73, !"tda18271c2_cal_pll", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 151, i32 32}
!74 = !{ptr @tda18271c2_rf_cal, !75, !"tda18271c2_rf_cal", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 338, i32 28}
!76 = !{ptr @tda18271c2_km, !77, !"tda18271c2_km", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 208, i32 28}
!78 = !{ptr @tda18271_rf_cal_dc_over_dt, !79, !"tda18271_rf_cal_dc_over_dt", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 787, i32 28}
!80 = !{ptr @tda18271c2_std_map, !81, !"tda18271c2_std_map", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 1206, i32 38}
!82 = !{ptr @tda18271_rf_band_template, !83, !"tda18271_rf_band_template", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/tda18271-maps.c", i32 988, i32 47}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2155757510, i64 2155758012, i64 2155757547, i64 2155757603, i64 2155757637, i64 2155757661, i64 2155757702, i64 2155757723, i64 2155757751, i64 2155757785}
!95 = !{i64 2155760196, i64 2155760698, i64 2155760233, i64 2155760289, i64 2155760323, i64 2155760347, i64 2155760388, i64 2155760409, i64 2155760437, i64 2155760471}
