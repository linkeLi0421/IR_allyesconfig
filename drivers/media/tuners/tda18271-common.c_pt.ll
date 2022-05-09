; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18271-common.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_read_regs = private unnamed_addr constant [19 x i8] c"tda18271_read_regs\00", align 1
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR: i2c_transfer returned: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tda18271_debug = external dso_local local_unnamed_addr global i32, align 4
@__func__.tda18271_read_extended = private unnamed_addr constant [23 x i8] c"tda18271_read_extended\00", align 1
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_init_regs = private unnamed_addr constant [19 x i8] c"tda18271_init_regs\00", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"initializing registers for device @ %d-%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.tda18271_set_standby_mode = private unnamed_addr constant [26 x i8] c"tda18271_set_standby_mode\00", align 1
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sm = %d, sm_lt = %d, sm_xt = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.tda18271_calc_main_pll = private unnamed_addr constant [23 x i8] c"tda18271_calc_main_pll\00", align 1
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d on line %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.tda18271_calc_cal_pll = private unnamed_addr constant [22 x i8] c"tda18271_calc_cal_pll\00", align 1
@__func__.tda18271_calc_bp_filter = private unnamed_addr constant [24 x i8] c"tda18271_calc_bp_filter\00", align 1
@__func__.tda18271_calc_km = private unnamed_addr constant [17 x i8] c"tda18271_calc_km\00", align 1
@__func__.tda18271_calc_rf_band = private unnamed_addr constant [22 x i8] c"tda18271_calc_rf_band\00", align 1
@__func__.tda18271_calc_gain_taper = private unnamed_addr constant [25 x i8] c"tda18271_calc_gain_taper\00", align 1
@__func__.tda18271_calc_ir_measure = private unnamed_addr constant [25 x i8] c"tda18271_calc_ir_measure\00", align 1
@_tda_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s%s: [%d-%04x|%c] %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_tda_printk\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/tuners/tda18271-common.c\00", [57 x i8] zeroinitializer }, align 32
@_tda_printk._entry_ptr = internal global ptr @_tda_printk._entry, section ".printk_index", align 4
@_tda_printk._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%s: %pV\00", [22 x i8] zeroinitializer }, align 32
@_tda_printk._entry_ptr.11 = internal global ptr @_tda_printk._entry.9, section ".printk_index", align 4
@__func__.tda18271_dump_regs = private unnamed_addr constant [19 x i8] c"tda18271_dump_regs\00", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"=== TDA18271 REG DUMP ===\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ID_BYTE            = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"THERMO_BYTE        = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"POWER_LEVEL_BYTE   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EASY_PROG_BYTE_1   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EASY_PROG_BYTE_2   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EASY_PROG_BYTE_3   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EASY_PROG_BYTE_4   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EASY_PROG_BYTE_5   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CAL_POST_DIV_BYTE  = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CAL_DIV_BYTE_1     = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CAL_DIV_BYTE_2     = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CAL_DIV_BYTE_3     = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAIN_POST_DIV_BYTE = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAIN_DIV_BYTE_1    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAIN_DIV_BYTE_2    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAIN_DIV_BYTE_3    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_1    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_2    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_3    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_4    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_5    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_6    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_7    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_8    = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_9  W = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_10   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_11   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_12   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_13   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_14   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_15   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_16 W = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_17 W = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_18   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_19 W = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_20 W = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_21   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_22   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EXTENDED_BYTE_23   = 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.__tda18271_write_regs = private unnamed_addr constant [22 x i8] c"__tda18271_write_regs\00", align 1
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 24, i64 31, i64 32, i64 34, i64 35]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 8, i64 16]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 130, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 282, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 538, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 559, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 717, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 723, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 59, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 60, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 61, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 62, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 63, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 64, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 65, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 66, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 67, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 68, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 69, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 70, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 71, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 72, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 73, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 74, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 75, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 84, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 85, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 86, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 87, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 88, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 89, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 90, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 91, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 92, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 93, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 94, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 95, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 96, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 97, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 98, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 99, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 100, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 101, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 102, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 103, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 104, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 105, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 106, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [42 x i8] c"../drivers/media/tuners/tda18271-common.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 242, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @_tda_printk._entry, ptr @_tda_printk._entry.9, ptr @_tda_printk._entry_ptr, ptr @_tda_printk._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_tda_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_tda_printk._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_read_regs(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %12 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %13 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %14 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %buf9, align 4
  %gate1.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %gate1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gate1.i, align 4
  %.off.i = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.epilog7.i, label %sw.default.i

sw.default.i:                                     ; preds = %entry
  %mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cond.i = icmp eq i32 %18, 1
  br i1 %cond.i, label %sw.default.i.sw.bb12.i_crit_edge, label %sw.default.i.sw.bb8.i_crit_edge

sw.default.i.sw.bb8.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.default.i.sw.bb12.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i:                                     ; preds = %entry
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge [
    i32 1, label %sw.epilog7.i.sw.bb8.i_crit_edge
    i32 2, label %sw.epilog7.i.sw.bb12.i_crit_edge
  ]

sw.epilog7.i.sw.bb12.i_crit_edge:                 ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i.sw.bb8.i_crit_edge:                  ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge: ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb8.i:                                         ; preds = %sw.epilog7.i.sw.bb8.i_crit_edge, %sw.default.i.sw.bb8.i_crit_edge
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %20 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge

sw.bb8.i.sw.epilog22.sink.split.i_crit_edge:      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge:   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb12.i:                                        ; preds = %sw.epilog7.i.sw.bb12.i_crit_edge, %sw.default.i.sw.bb12.i_crit_edge
  %i2c_gate_ctrl14.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl14.i, align 4
  %tobool15.not.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i, label %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge

sw.bb12.i.sw.epilog22.sink.split.i_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.epilog22.sink.split.i:                         ; preds = %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %21, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge ], [ %23, %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef %fe, i32 noundef 1) #6
  br label %tda18271_i2c_gate_ctrl.exit

tda18271_i2c_gate_ctrl.exit:                      ; preds = %sw.epilog22.sink.split.i, %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 4
  %call12 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg, i32 noundef 2) #6
  %26 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_priv, align 4
  %gate1.i30 = getelementptr inbounds %struct.tda18271_priv, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %gate1.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gate1.i30, align 4
  %.off.i31 = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i31)
  %switch.i32 = icmp ult i32 %.off.i31, 2
  br i1 %switch.i32, label %sw.epilog7.i36, label %sw.default.i35

sw.default.i35:                                   ; preds = %tda18271_i2c_gate_ctrl.exit
  %mode.i33 = getelementptr inbounds %struct.tda18271_priv, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %mode.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cond.i34 = icmp eq i32 %31, 1
  br i1 %cond.i34, label %sw.default.i35.sw.bb12.i42_crit_edge, label %sw.default.i35.sw.bb8.i39_crit_edge

sw.default.i35.sw.bb8.i39_crit_edge:              ; preds = %sw.default.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i39

sw.default.i35.sw.bb12.i42_crit_edge:             ; preds = %sw.default.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i42

sw.epilog7.i36:                                   ; preds = %tda18271_i2c_gate_ctrl.exit
  %32 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %29, label %sw.epilog7.i36.tda18271_i2c_gate_ctrl.exit46_crit_edge [
    i32 1, label %sw.epilog7.i36.sw.bb8.i39_crit_edge
    i32 2, label %sw.epilog7.i36.sw.bb12.i42_crit_edge
  ]

sw.epilog7.i36.sw.bb12.i42_crit_edge:             ; preds = %sw.epilog7.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i42

sw.epilog7.i36.sw.bb8.i39_crit_edge:              ; preds = %sw.epilog7.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i39

sw.epilog7.i36.tda18271_i2c_gate_ctrl.exit46_crit_edge: ; preds = %sw.epilog7.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit46

sw.bb8.i39:                                       ; preds = %sw.epilog7.i36.sw.bb8.i39_crit_edge, %sw.default.i35.sw.bb8.i39_crit_edge
  %i2c_gate_ctrl.i37 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %33 = ptrtoint ptr %i2c_gate_ctrl.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_gate_ctrl.i37, align 4
  %tobool.not.i38 = icmp eq ptr %34, null
  br i1 %tobool.not.i38, label %sw.bb8.i39.tda18271_i2c_gate_ctrl.exit46_crit_edge, label %sw.bb8.i39.sw.epilog22.sink.split.i45_crit_edge

sw.bb8.i39.sw.epilog22.sink.split.i45_crit_edge:  ; preds = %sw.bb8.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i45

sw.bb8.i39.tda18271_i2c_gate_ctrl.exit46_crit_edge: ; preds = %sw.bb8.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit46

sw.bb12.i42:                                      ; preds = %sw.epilog7.i36.sw.bb12.i42_crit_edge, %sw.default.i35.sw.bb12.i42_crit_edge
  %i2c_gate_ctrl14.i40 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %35 = ptrtoint ptr %i2c_gate_ctrl14.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_gate_ctrl14.i40, align 4
  %tobool15.not.i41 = icmp eq ptr %36, null
  br i1 %tobool15.not.i41, label %sw.bb12.i42.tda18271_i2c_gate_ctrl.exit46_crit_edge, label %sw.bb12.i42.sw.epilog22.sink.split.i45_crit_edge

sw.bb12.i42.sw.epilog22.sink.split.i45_crit_edge: ; preds = %sw.bb12.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i45

sw.bb12.i42.tda18271_i2c_gate_ctrl.exit46_crit_edge: ; preds = %sw.bb12.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit46

sw.epilog22.sink.split.i45:                       ; preds = %sw.bb12.i42.sw.epilog22.sink.split.i45_crit_edge, %sw.bb8.i39.sw.epilog22.sink.split.i45_crit_edge
  %.sink.i43 = phi ptr [ %34, %sw.bb8.i39.sw.epilog22.sink.split.i45_crit_edge ], [ %36, %sw.bb12.i42.sw.epilog22.sink.split.i45_crit_edge ]
  %call19.i44 = call i32 %.sink.i43(ptr noundef %fe, i32 noundef 0) #6
  br label %tda18271_i2c_gate_ctrl.exit46

tda18271_i2c_gate_ctrl.exit46:                    ; preds = %sw.epilog22.sink.split.i45, %sw.bb12.i42.tda18271_i2c_gate_ctrl.exit46_crit_edge, %sw.bb8.i39.tda18271_i2c_gate_ctrl.exit46_crit_edge, %sw.epilog7.i36.tda18271_i2c_gate_ctrl.exit46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 2
  br i1 %cmp.not, label %tda18271_i2c_gate_ctrl.exit46.if.end_crit_edge, label %if.then

tda18271_i2c_gate_ctrl.exit46.if.end_crit_edge:   ; preds = %tda18271_i2c_gate_ctrl.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %tda18271_i2c_gate_ctrl.exit46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_read_regs, ptr noundef nonnull @.str.1, i32 noundef %call12)
  br label %if.end

if.end:                                           ; preds = %if.then, %tda18271_i2c_gate_ctrl.exit46.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %37 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tda18271_dump_regs(ptr noundef %fe)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %spec.select = select i1 %cmp.not, i32 0, i32 %call12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_tda_printk(ptr noundef readonly %state, ptr noundef %level, ptr noundef %func, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #6
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !131
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %do.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %state, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %state, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 4
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %8 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %9 to i32
  %role = getelementptr inbounds %struct.tda18271_priv, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %cond = select i1 %cmp, i32 77, i32 83
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %level, ptr noundef %func, i32 noundef %7, i32 noundef %conv, i32 noundef %cond, ptr noundef nonnull %vaf) #9
  br label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %level, ptr noundef %func, ptr noundef nonnull %vaf) #9
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda18271_dump_regs(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %2 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.12)
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %3 = load i32, ptr @tda18271_debug, align 4
  %and2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body1.do.body9_crit_edge, label %if.then4

do.body1.do.body9_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.13, i32 noundef %conv)
  br label %do.body9

do.body9:                                         ; preds = %if.then4, %do.body1.do.body9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %6 = load i32, ptr @tda18271_debug, align 4
  %and10 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.body19_crit_edge, label %if.then12

do.body9.do.body19_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr i8, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.14, i32 noundef %conv14)
  br label %do.body19

do.body19:                                        ; preds = %if.then12, %do.body9.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %9 = load i32, ptr @tda18271_debug, align 4
  %and20 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.body29_crit_edge, label %if.then22

do.body19.do.body29_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr i8, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.15, i32 noundef %conv24)
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %do.body19.do.body29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %12 = load i32, ptr @tda18271_debug, align 4
  %and30 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.body39_crit_edge, label %if.then32

do.body29.do.body39_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.then32:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx33 = getelementptr i8, ptr %1, i32 3
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.16, i32 noundef %conv34)
  br label %do.body39

do.body39:                                        ; preds = %if.then32, %do.body29.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %15 = load i32, ptr @tda18271_debug, align 4
  %and40 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.body49_crit_edge, label %if.then42

do.body39.do.body49_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43 = getelementptr i8, ptr %1, i32 4
  %16 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.17, i32 noundef %conv44)
  br label %do.body49

do.body49:                                        ; preds = %if.then42, %do.body39.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %18 = load i32, ptr @tda18271_debug, align 4
  %and50 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.body59_crit_edge, label %if.then52

do.body49.do.body59_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

if.then52:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53 = getelementptr i8, ptr %1, i32 5
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.18, i32 noundef %conv54)
  br label %do.body59

do.body59:                                        ; preds = %if.then52, %do.body49.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %21 = load i32, ptr @tda18271_debug, align 4
  %and60 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.body69_crit_edge, label %if.then62

do.body59.do.body69_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.then62:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx63 = getelementptr i8, ptr %1, i32 6
  %22 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.19, i32 noundef %conv64)
  br label %do.body69

do.body69:                                        ; preds = %if.then62, %do.body59.do.body69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %24 = load i32, ptr @tda18271_debug, align 4
  %and70 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.body79_crit_edge, label %if.then72

do.body69.do.body79_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then72:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx73 = getelementptr i8, ptr %1, i32 7
  %25 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.20, i32 noundef %conv74)
  br label %do.body79

do.body79:                                        ; preds = %if.then72, %do.body69.do.body79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %27 = load i32, ptr @tda18271_debug, align 4
  %and80 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.body89_crit_edge, label %if.then82

do.body79.do.body89_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

if.then82:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx83 = getelementptr i8, ptr %1, i32 8
  %28 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.21, i32 noundef %conv84)
  br label %do.body89

do.body89:                                        ; preds = %if.then82, %do.body79.do.body89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %30 = load i32, ptr @tda18271_debug, align 4
  %and90 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.do.body99_crit_edge, label %if.then92

do.body89.do.body99_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body99

if.then92:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx93 = getelementptr i8, ptr %1, i32 9
  %31 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.22, i32 noundef %conv94)
  br label %do.body99

do.body99:                                        ; preds = %if.then92, %do.body89.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %33 = load i32, ptr @tda18271_debug, align 4
  %and100 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.body109_crit_edge, label %if.then102

do.body99.do.body109_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

if.then102:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx103 = getelementptr i8, ptr %1, i32 10
  %34 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.23, i32 noundef %conv104)
  br label %do.body109

do.body109:                                       ; preds = %if.then102, %do.body99.do.body109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %36 = load i32, ptr @tda18271_debug, align 4
  %and110 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.do.body119_crit_edge, label %if.then112

do.body109.do.body119_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

if.then112:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx113 = getelementptr i8, ptr %1, i32 11
  %37 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.24, i32 noundef %conv114)
  br label %do.body119

do.body119:                                       ; preds = %if.then112, %do.body109.do.body119_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %39 = load i32, ptr @tda18271_debug, align 4
  %and120 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body119.do.body129_crit_edge, label %if.then122

do.body119.do.body129_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129

if.then122:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx123 = getelementptr i8, ptr %1, i32 12
  %40 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.25, i32 noundef %conv124)
  br label %do.body129

do.body129:                                       ; preds = %if.then122, %do.body119.do.body129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %42 = load i32, ptr @tda18271_debug, align 4
  %and130 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body129.do.body139_crit_edge, label %if.then132

do.body129.do.body139_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body139

if.then132:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx133 = getelementptr i8, ptr %1, i32 13
  %43 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.26, i32 noundef %conv134)
  br label %do.body139

do.body139:                                       ; preds = %if.then132, %do.body129.do.body139_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %45 = load i32, ptr @tda18271_debug, align 4
  %and140 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.do.body149_crit_edge, label %if.then142

do.body139.do.body149_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body149

if.then142:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx143 = getelementptr i8, ptr %1, i32 14
  %46 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.27, i32 noundef %conv144)
  br label %do.body149

do.body149:                                       ; preds = %if.then142, %do.body139.do.body149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %48 = load i32, ptr @tda18271_debug, align 4
  %and150 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.do.end158_crit_edge, label %if.then152

do.body149.do.end158_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

if.then152:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx153 = getelementptr i8, ptr %1, i32 15
  %49 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %50 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.28, i32 noundef %conv154)
  br label %do.end158

do.end158:                                        ; preds = %if.then152, %do.body149.do.end158_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %51 = load i32, ptr @tda18271_debug, align 4
  %and159 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.end158.cleanup_crit_edge, label %do.body163

do.end158.cleanup_crit_edge:                      ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body163:                                       ; preds = %do.end158
  %and164 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.body173_crit_edge, label %if.then166

do.body163.do.body173_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body173

if.then166:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx167 = getelementptr i8, ptr %1, i32 16
  %52 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.29, i32 noundef %conv168)
  br label %do.body173

do.body173:                                       ; preds = %if.then166, %do.body163.do.body173_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %54 = load i32, ptr @tda18271_debug, align 4
  %and174 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body173.do.body183_crit_edge, label %if.then176

do.body173.do.body183_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183

if.then176:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx177 = getelementptr i8, ptr %1, i32 17
  %55 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.30, i32 noundef %conv178)
  br label %do.body183

do.body183:                                       ; preds = %if.then176, %do.body173.do.body183_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %57 = load i32, ptr @tda18271_debug, align 4
  %and184 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.body183.do.body193_crit_edge, label %if.then186

do.body183.do.body193_crit_edge:                  ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

if.then186:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx187 = getelementptr i8, ptr %1, i32 18
  %58 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.31, i32 noundef %conv188)
  br label %do.body193

do.body193:                                       ; preds = %if.then186, %do.body183.do.body193_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %60 = load i32, ptr @tda18271_debug, align 4
  %and194 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %do.body193.do.body203_crit_edge, label %if.then196

do.body193.do.body203_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203

if.then196:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx197 = getelementptr i8, ptr %1, i32 19
  %61 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %62 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.32, i32 noundef %conv198)
  br label %do.body203

do.body203:                                       ; preds = %if.then196, %do.body193.do.body203_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %63 = load i32, ptr @tda18271_debug, align 4
  %and204 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %do.body203.do.body213_crit_edge, label %if.then206

do.body203.do.body213_crit_edge:                  ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body213

if.then206:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx207 = getelementptr i8, ptr %1, i32 20
  %64 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %65 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.33, i32 noundef %conv208)
  br label %do.body213

do.body213:                                       ; preds = %if.then206, %do.body203.do.body213_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %66 = load i32, ptr @tda18271_debug, align 4
  %and214 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.do.body223_crit_edge, label %if.then216

do.body213.do.body223_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body223

if.then216:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx217 = getelementptr i8, ptr %1, i32 21
  %67 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %68 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.34, i32 noundef %conv218)
  br label %do.body223

do.body223:                                       ; preds = %if.then216, %do.body213.do.body223_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %69 = load i32, ptr @tda18271_debug, align 4
  %and224 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %do.body223.do.body233_crit_edge, label %if.then226

do.body223.do.body233_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body233

if.then226:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx227 = getelementptr i8, ptr %1, i32 22
  %70 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %71 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.35, i32 noundef %conv228)
  br label %do.body233

do.body233:                                       ; preds = %if.then226, %do.body223.do.body233_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %72 = load i32, ptr @tda18271_debug, align 4
  %and234 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %do.body233.do.body243_crit_edge, label %if.then236

do.body233.do.body243_crit_edge:                  ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body243

if.then236:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx237 = getelementptr i8, ptr %1, i32 23
  %73 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %74 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.36, i32 noundef %conv238)
  br label %do.body243

do.body243:                                       ; preds = %if.then236, %do.body233.do.body243_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %75 = load i32, ptr @tda18271_debug, align 4
  %and244 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %do.body243.do.body253_crit_edge, label %if.then246

do.body243.do.body253_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body253

if.then246:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx247 = getelementptr i8, ptr %1, i32 24
  %76 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %77 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.37, i32 noundef %conv248)
  br label %do.body253

do.body253:                                       ; preds = %if.then246, %do.body243.do.body253_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %78 = load i32, ptr @tda18271_debug, align 4
  %and254 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %do.body253.do.body263_crit_edge, label %if.then256

do.body253.do.body263_crit_edge:                  ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body263

if.then256:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx257 = getelementptr i8, ptr %1, i32 25
  %79 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx257, align 1
  %conv258 = zext i8 %80 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.38, i32 noundef %conv258)
  br label %do.body263

do.body263:                                       ; preds = %if.then256, %do.body253.do.body263_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %81 = load i32, ptr @tda18271_debug, align 4
  %and264 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %do.body263.do.body273_crit_edge, label %if.then266

do.body263.do.body273_crit_edge:                  ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body273

if.then266:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx267 = getelementptr i8, ptr %1, i32 26
  %82 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx267, align 1
  %conv268 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.39, i32 noundef %conv268)
  br label %do.body273

do.body273:                                       ; preds = %if.then266, %do.body263.do.body273_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %84 = load i32, ptr @tda18271_debug, align 4
  %and274 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %do.body273.do.body283_crit_edge, label %if.then276

do.body273.do.body283_crit_edge:                  ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body283

if.then276:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx277 = getelementptr i8, ptr %1, i32 27
  %85 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %86 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.40, i32 noundef %conv278)
  br label %do.body283

do.body283:                                       ; preds = %if.then276, %do.body273.do.body283_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %87 = load i32, ptr @tda18271_debug, align 4
  %and284 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %do.body283.do.body293_crit_edge, label %if.then286

do.body283.do.body293_crit_edge:                  ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body293

if.then286:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx287 = getelementptr i8, ptr %1, i32 28
  %88 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.41, i32 noundef %conv288)
  br label %do.body293

do.body293:                                       ; preds = %if.then286, %do.body283.do.body293_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %90 = load i32, ptr @tda18271_debug, align 4
  %and294 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %do.body293.do.body303_crit_edge, label %if.then296

do.body293.do.body303_crit_edge:                  ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body303

if.then296:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx297 = getelementptr i8, ptr %1, i32 29
  %91 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx297, align 1
  %conv298 = zext i8 %92 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.42, i32 noundef %conv298)
  br label %do.body303

do.body303:                                       ; preds = %if.then296, %do.body293.do.body303_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %93 = load i32, ptr @tda18271_debug, align 4
  %and304 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %do.body303.do.body313_crit_edge, label %if.then306

do.body303.do.body313_crit_edge:                  ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body313

if.then306:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx307 = getelementptr i8, ptr %1, i32 30
  %94 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx307, align 1
  %conv308 = zext i8 %95 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.43, i32 noundef %conv308)
  br label %do.body313

do.body313:                                       ; preds = %if.then306, %do.body303.do.body313_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %96 = load i32, ptr @tda18271_debug, align 4
  %and314 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %do.body313.do.body323_crit_edge, label %if.then316

do.body313.do.body323_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body323

if.then316:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx317 = getelementptr i8, ptr %1, i32 31
  %97 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx317, align 1
  %conv318 = zext i8 %98 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.44, i32 noundef %conv318)
  br label %do.body323

do.body323:                                       ; preds = %if.then316, %do.body313.do.body323_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %99 = load i32, ptr @tda18271_debug, align 4
  %and324 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %do.body323.do.body333_crit_edge, label %if.then326

do.body323.do.body333_crit_edge:                  ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body333

if.then326:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx327 = getelementptr i8, ptr %1, i32 32
  %100 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx327, align 1
  %conv328 = zext i8 %101 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.45, i32 noundef %conv328)
  br label %do.body333

do.body333:                                       ; preds = %if.then326, %do.body323.do.body333_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %102 = load i32, ptr @tda18271_debug, align 4
  %and334 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %do.body333.do.body343_crit_edge, label %if.then336

do.body333.do.body343_crit_edge:                  ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body343

if.then336:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx337 = getelementptr i8, ptr %1, i32 33
  %103 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx337, align 1
  %conv338 = zext i8 %104 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.46, i32 noundef %conv338)
  br label %do.body343

do.body343:                                       ; preds = %if.then336, %do.body333.do.body343_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %105 = load i32, ptr @tda18271_debug, align 4
  %and344 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %do.body343.do.body353_crit_edge, label %if.then346

do.body343.do.body353_crit_edge:                  ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body353

if.then346:                                       ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx347 = getelementptr i8, ptr %1, i32 34
  %106 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %107 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.47, i32 noundef %conv348)
  br label %do.body353

do.body353:                                       ; preds = %if.then346, %do.body343.do.body353_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %108 = load i32, ptr @tda18271_debug, align 4
  %and354 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool355.not = icmp eq i32 %and354, 0
  br i1 %tobool355.not, label %do.body353.do.body363_crit_edge, label %if.then356

do.body353.do.body363_crit_edge:                  ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body363

if.then356:                                       ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx357 = getelementptr i8, ptr %1, i32 35
  %109 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx357, align 1
  %conv358 = zext i8 %110 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.48, i32 noundef %conv358)
  br label %do.body363

do.body363:                                       ; preds = %if.then356, %do.body353.do.body363_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %111 = load i32, ptr @tda18271_debug, align 4
  %and364 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364)
  %tobool365.not = icmp eq i32 %and364, 0
  br i1 %tobool365.not, label %do.body363.do.body373_crit_edge, label %if.then366

do.body363.do.body373_crit_edge:                  ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body373

if.then366:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx367 = getelementptr i8, ptr %1, i32 36
  %112 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx367, align 1
  %conv368 = zext i8 %113 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.49, i32 noundef %conv368)
  br label %do.body373

do.body373:                                       ; preds = %if.then366, %do.body363.do.body373_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %114 = load i32, ptr @tda18271_debug, align 4
  %and374 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374)
  %tobool375.not = icmp eq i32 %and374, 0
  br i1 %tobool375.not, label %do.body373.do.body383_crit_edge, label %if.then376

do.body373.do.body383_crit_edge:                  ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body383

if.then376:                                       ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx377 = getelementptr i8, ptr %1, i32 37
  %115 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx377, align 1
  %conv378 = zext i8 %116 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.50, i32 noundef %conv378)
  br label %do.body383

do.body383:                                       ; preds = %if.then376, %do.body373.do.body383_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %117 = load i32, ptr @tda18271_debug, align 4
  %and384 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %do.body383.cleanup_crit_edge, label %if.then386

do.body383.cleanup_crit_edge:                     ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then386:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx387 = getelementptr i8, ptr %1, i32 38
  %118 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx387, align 1
  %conv388 = zext i8 %119 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.51, i32 noundef %conv388)
  br label %cleanup

cleanup:                                          ; preds = %if.then386, %do.body383.cleanup_crit_edge, %do.end158.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_read_extended(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %regdump = alloca [39 x i8], align 1
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %regdump) #6
  %2 = call ptr @memset(ptr %regdump, i32 255, i32 39)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 39, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regdump, ptr %buf9, align 4
  %gate1.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %gate1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gate1.i, align 4
  %.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.epilog7.i, label %sw.default.i

sw.default.i:                                     ; preds = %entry
  %mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cond.i = icmp eq i32 %19, 1
  br i1 %cond.i, label %sw.default.i.sw.bb12.i_crit_edge, label %sw.default.i.sw.bb8.i_crit_edge

sw.default.i.sw.bb8.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.default.i.sw.bb12.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i:                                     ; preds = %entry
  %20 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %17, label %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge [
    i32 1, label %sw.epilog7.i.sw.bb8.i_crit_edge
    i32 2, label %sw.epilog7.i.sw.bb12.i_crit_edge
  ]

sw.epilog7.i.sw.bb12.i_crit_edge:                 ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i.sw.bb8.i_crit_edge:                  ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge: ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb8.i:                                         ; preds = %sw.epilog7.i.sw.bb8.i_crit_edge, %sw.default.i.sw.bb8.i_crit_edge
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %21 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge

sw.bb8.i.sw.epilog22.sink.split.i_crit_edge:      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge:   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb12.i:                                        ; preds = %sw.epilog7.i.sw.bb12.i_crit_edge, %sw.default.i.sw.bb12.i_crit_edge
  %i2c_gate_ctrl14.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %23 = ptrtoint ptr %i2c_gate_ctrl14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl14.i, align 4
  %tobool15.not.i = icmp eq ptr %24, null
  br i1 %tobool15.not.i, label %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge

sw.bb12.i.sw.epilog22.sink.split.i_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.epilog22.sink.split.i:                         ; preds = %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %22, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge ], [ %24, %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef %fe, i32 noundef 1) #6
  br label %tda18271_i2c_gate_ctrl.exit

tda18271_i2c_gate_ctrl.exit:                      ; preds = %sw.epilog22.sink.split.i, %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg, i32 noundef 2) #6
  %27 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tuner_priv, align 4
  %gate1.i57 = getelementptr inbounds %struct.tda18271_priv, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %gate1.i57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gate1.i57, align 4
  %.off.i58 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i58)
  %switch.i59 = icmp ult i32 %.off.i58, 2
  br i1 %switch.i59, label %sw.epilog7.i63, label %sw.default.i62

sw.default.i62:                                   ; preds = %tda18271_i2c_gate_ctrl.exit
  %mode.i60 = getelementptr inbounds %struct.tda18271_priv, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %mode.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cond.i61 = icmp eq i32 %32, 1
  br i1 %cond.i61, label %sw.default.i62.sw.bb12.i69_crit_edge, label %sw.default.i62.sw.bb8.i66_crit_edge

sw.default.i62.sw.bb8.i66_crit_edge:              ; preds = %sw.default.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i66

sw.default.i62.sw.bb12.i69_crit_edge:             ; preds = %sw.default.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i69

sw.epilog7.i63:                                   ; preds = %tda18271_i2c_gate_ctrl.exit
  %33 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %30, label %sw.epilog7.i63.tda18271_i2c_gate_ctrl.exit73_crit_edge [
    i32 1, label %sw.epilog7.i63.sw.bb8.i66_crit_edge
    i32 2, label %sw.epilog7.i63.sw.bb12.i69_crit_edge
  ]

sw.epilog7.i63.sw.bb12.i69_crit_edge:             ; preds = %sw.epilog7.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i69

sw.epilog7.i63.sw.bb8.i66_crit_edge:              ; preds = %sw.epilog7.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i66

sw.epilog7.i63.tda18271_i2c_gate_ctrl.exit73_crit_edge: ; preds = %sw.epilog7.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit73

sw.bb8.i66:                                       ; preds = %sw.epilog7.i63.sw.bb8.i66_crit_edge, %sw.default.i62.sw.bb8.i66_crit_edge
  %i2c_gate_ctrl.i64 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %34 = ptrtoint ptr %i2c_gate_ctrl.i64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gate_ctrl.i64, align 4
  %tobool.not.i65 = icmp eq ptr %35, null
  br i1 %tobool.not.i65, label %sw.bb8.i66.tda18271_i2c_gate_ctrl.exit73_crit_edge, label %sw.bb8.i66.sw.epilog22.sink.split.i72_crit_edge

sw.bb8.i66.sw.epilog22.sink.split.i72_crit_edge:  ; preds = %sw.bb8.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i72

sw.bb8.i66.tda18271_i2c_gate_ctrl.exit73_crit_edge: ; preds = %sw.bb8.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit73

sw.bb12.i69:                                      ; preds = %sw.epilog7.i63.sw.bb12.i69_crit_edge, %sw.default.i62.sw.bb12.i69_crit_edge
  %i2c_gate_ctrl14.i67 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %36 = ptrtoint ptr %i2c_gate_ctrl14.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_gate_ctrl14.i67, align 4
  %tobool15.not.i68 = icmp eq ptr %37, null
  br i1 %tobool15.not.i68, label %sw.bb12.i69.tda18271_i2c_gate_ctrl.exit73_crit_edge, label %sw.bb12.i69.sw.epilog22.sink.split.i72_crit_edge

sw.bb12.i69.sw.epilog22.sink.split.i72_crit_edge: ; preds = %sw.bb12.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i72

sw.bb12.i69.tda18271_i2c_gate_ctrl.exit73_crit_edge: ; preds = %sw.bb12.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit73

sw.epilog22.sink.split.i72:                       ; preds = %sw.bb12.i69.sw.epilog22.sink.split.i72_crit_edge, %sw.bb8.i66.sw.epilog22.sink.split.i72_crit_edge
  %.sink.i70 = phi ptr [ %35, %sw.bb8.i66.sw.epilog22.sink.split.i72_crit_edge ], [ %37, %sw.bb12.i69.sw.epilog22.sink.split.i72_crit_edge ]
  %call19.i71 = call i32 %.sink.i70(ptr noundef %fe, i32 noundef 0) #6
  br label %tda18271_i2c_gate_ctrl.exit73

tda18271_i2c_gate_ctrl.exit73:                    ; preds = %sw.epilog22.sink.split.i72, %sw.bb12.i69.tda18271_i2c_gate_ctrl.exit73_crit_edge, %sw.bb8.i66.tda18271_i2c_gate_ctrl.exit73_crit_edge, %sw.epilog7.i63.tda18271_i2c_gate_ctrl.exit73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 2
  br i1 %cmp.not, label %tda18271_i2c_gate_ctrl.exit73.for.body.preheader_crit_edge, label %if.then

tda18271_i2c_gate_ctrl.exit73.for.body.preheader_crit_edge: ; preds = %tda18271_i2c_gate_ctrl.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %tda18271_i2c_gate_ctrl.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_read_extended, ptr noundef nonnull @.str.1, i32 noundef %call13)
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %tda18271_i2c_gate_ctrl.exit73.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.074 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %38 = zext i32 %i.074 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %i.074, label %if.then31 [
    i32 24, label %for.body.for.inc_crit_edge
    i32 31, label %for.body.for.inc_crit_edge76
    i32 32, label %for.body.for.inc_crit_edge77
    i32 34, label %for.body.for.inc_crit_edge78
    i32 35, label %for.body.for.inc_crit_edge79
  ]

for.body.for.inc_crit_edge79:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge78:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge77:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge76:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [39 x i8], ptr %regdump, i32 0, i32 %i.074
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %arrayidx32 = getelementptr i8, ptr %1, i32 %i.074
  %41 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge76, %for.body.for.inc_crit_edge77, %for.body.for.inc_crit_edge78, %for.body.for.inc_crit_edge79
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 39
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %42 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end35_crit_edge, label %if.then34

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tda18271_dump_regs(ptr noundef %fe)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.end.if.end35_crit_edge
  %spec.select = select i1 %cmp.not, i32 0, i32 %call13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %regdump) #6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef %idx, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef %idx, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef %idx, i32 noundef %len, i1 noundef zeroext %lock_i2c) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #6
  %2 = call ptr @memset(ptr %buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %add = add i32 %len, %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add)
  %cmp6 = icmp ugt i32 %add, 40
  %10 = or i1 %cmp, %cmp6
  br i1 %10, label %do.body9, label %do.end14, !prof !132

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #6, !srcloc !133
  unreachable

do.end14:                                         ; preds = %entry
  %small_i2c = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %small_i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %small_i2c, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %12, label %sw.default [
    i32 3, label %do.end14.sw.epilog_crit_edge
    i32 8, label %do.end14.sw.epilog_crit_edge118
    i32 16, label %do.end14.sw.epilog_crit_edge119
  ]

do.end14.sw.epilog_crit_edge119:                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end14.sw.epilog_crit_edge118:                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end14.sw.epilog_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end14.sw.epilog_crit_edge, %do.end14.sw.epilog_crit_edge118, %do.end14.sw.epilog_crit_edge119
  %max.0 = phi i32 [ 39, %sw.default ], [ %12, %do.end14.sw.epilog_crit_edge ], [ %12, %do.end14.sw.epilog_crit_edge118 ], [ %12, %do.end14.sw.epilog_crit_edge119 ]
  br i1 %lock_i2c, label %if.then19, label %sw.epilog.while.body.lr.ph_crit_edge

sw.epilog.while.body.lr.ph_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

if.then19:                                        ; preds = %sw.epilog
  %gate1.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %gate1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gate1.i, align 4
  %.off.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.epilog7.i, label %sw.default.i

sw.default.i:                                     ; preds = %if.then19
  %mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cond.i = icmp eq i32 %17, 1
  br i1 %cond.i, label %sw.default.i.sw.bb12.i_crit_edge, label %sw.default.i.sw.bb8.i_crit_edge

sw.default.i.sw.bb8.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.default.i.sw.bb12.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i:                                     ; preds = %if.then19
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %15, label %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge [
    i32 1, label %sw.epilog7.i.sw.bb8.i_crit_edge
    i32 2, label %sw.epilog7.i.sw.bb12.i_crit_edge
  ]

sw.epilog7.i.sw.bb12.i_crit_edge:                 ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i.sw.bb8.i_crit_edge:                  ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge: ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb8.i:                                         ; preds = %sw.epilog7.i.sw.bb8.i_crit_edge, %sw.default.i.sw.bb8.i_crit_edge
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %19 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge

sw.bb8.i.sw.epilog22.sink.split.i_crit_edge:      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge:   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb12.i:                                        ; preds = %sw.epilog7.i.sw.bb12.i_crit_edge, %sw.default.i.sw.bb12.i_crit_edge
  %i2c_gate_ctrl14.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %i2c_gate_ctrl14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_gate_ctrl14.i, align 4
  %tobool15.not.i = icmp eq ptr %22, null
  br i1 %tobool15.not.i, label %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge

sw.bb12.i.sw.epilog22.sink.split.i_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.epilog22.sink.split.i:                         ; preds = %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %20, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge ], [ %22, %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef %fe, i32 noundef 1) #6
  br label %tda18271_i2c_gate_ctrl.exit

tda18271_i2c_gate_ctrl.exit:                      ; preds = %sw.epilog22.sink.split.i, %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 4
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock_ops.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  call void %28(ptr noundef %24, i32 noundef 2) #6
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %tda18271_i2c_gate_ctrl.exit, %sw.epilog.while.body.lr.ph_crit_edge
  %adap37 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %while.body.lr.ph
  %max.1112 = phi i32 [ %max.0, %while.body.lr.ph ], [ %29, %if.end42.while.body_crit_edge ]
  %idx.addr.0111 = phi i32 [ %idx, %while.body.lr.ph ], [ %add43, %if.end42.while.body_crit_edge ]
  %len.addr.0110 = phi i32 [ %len, %while.body.lr.ph ], [ %sub44, %if.end42.while.body_crit_edge ]
  %29 = call i32 @llvm.smin.i32(i32 %max.1112, i32 %len.addr.0110)
  %conv27 = trunc i32 %idx.addr.0111 to i8
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv27, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp28.not107 = icmp slt i32 %29, 1
  br i1 %cmp28.not107, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  %sub = add i32 %idx.addr.0111, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add30 = add i32 %sub, %i.0108
  %arrayidx31 = getelementptr i8, ptr %1, i32 %add30
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr [40 x i8], ptr %buf, i32 0, i32 %i.0108
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx32, align 1
  %inc = add i32 %i.0108, 1
  %cmp28.not = icmp sgt i32 %inc, %29
  br i1 %cmp28.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %34 = trunc i32 %29 to i16
  %conv34 = add i16 %34, 1
  %35 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv34, ptr %len2, align 4
  %36 = ptrtoint ptr %adap37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap37, align 4
  %call38 = call i32 @__i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 1
  br i1 %cmp39.not, label %if.end42, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end42:                                         ; preds = %for.end
  %add43 = add i32 %29, %idx.addr.0111
  %sub44 = sub i32 %len.addr.0110, %29
  %tobool22.not = icmp eq i32 %sub44, 0
  br i1 %tobool22.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %for.end.while.end_crit_edge
  %idx.addr.0.lcssa.ph = phi i32 [ %add43, %if.end42.while.end_crit_edge ], [ %idx.addr.0111, %for.end.while.end_crit_edge ]
  br i1 %lock_i2c, label %if.then46, label %while.end.if.end50_crit_edge

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then46:                                        ; preds = %while.end
  %adap48 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %adap48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adap48, align 4
  %lock_ops.i88 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %lock_ops.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock_ops.i88, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unlock_bus.i, align 4
  call void %43(ptr noundef %39, i32 noundef 2) #6
  %44 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tuner_priv, align 4
  %gate1.i90 = getelementptr inbounds %struct.tda18271_priv, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %gate1.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gate1.i90, align 4
  %.off.i91 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i91)
  %switch.i92 = icmp ult i32 %.off.i91, 2
  br i1 %switch.i92, label %sw.epilog7.i96, label %sw.default.i95

sw.default.i95:                                   ; preds = %if.then46
  %mode.i93 = getelementptr inbounds %struct.tda18271_priv, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %mode.i93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cond.i94 = icmp eq i32 %49, 1
  br i1 %cond.i94, label %sw.default.i95.sw.bb12.i102_crit_edge, label %sw.default.i95.sw.bb8.i99_crit_edge

sw.default.i95.sw.bb8.i99_crit_edge:              ; preds = %sw.default.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i99

sw.default.i95.sw.bb12.i102_crit_edge:            ; preds = %sw.default.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i102

sw.epilog7.i96:                                   ; preds = %if.then46
  %50 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %47, label %sw.epilog7.i96.if.end50_crit_edge [
    i32 1, label %sw.epilog7.i96.sw.bb8.i99_crit_edge
    i32 2, label %sw.epilog7.i96.sw.bb12.i102_crit_edge
  ]

sw.epilog7.i96.sw.bb12.i102_crit_edge:            ; preds = %sw.epilog7.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i102

sw.epilog7.i96.sw.bb8.i99_crit_edge:              ; preds = %sw.epilog7.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i99

sw.epilog7.i96.if.end50_crit_edge:                ; preds = %sw.epilog7.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

sw.bb8.i99:                                       ; preds = %sw.epilog7.i96.sw.bb8.i99_crit_edge, %sw.default.i95.sw.bb8.i99_crit_edge
  %i2c_gate_ctrl.i97 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %51 = ptrtoint ptr %i2c_gate_ctrl.i97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_gate_ctrl.i97, align 4
  %tobool.not.i98 = icmp eq ptr %52, null
  br i1 %tobool.not.i98, label %sw.bb8.i99.if.end50_crit_edge, label %sw.bb8.i99.sw.epilog22.sink.split.i105_crit_edge

sw.bb8.i99.sw.epilog22.sink.split.i105_crit_edge: ; preds = %sw.bb8.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i105

sw.bb8.i99.if.end50_crit_edge:                    ; preds = %sw.bb8.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

sw.bb12.i102:                                     ; preds = %sw.epilog7.i96.sw.bb12.i102_crit_edge, %sw.default.i95.sw.bb12.i102_crit_edge
  %i2c_gate_ctrl14.i100 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %53 = ptrtoint ptr %i2c_gate_ctrl14.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_gate_ctrl14.i100, align 4
  %tobool15.not.i101 = icmp eq ptr %54, null
  br i1 %tobool15.not.i101, label %sw.bb12.i102.if.end50_crit_edge, label %sw.bb12.i102.sw.epilog22.sink.split.i105_crit_edge

sw.bb12.i102.sw.epilog22.sink.split.i105_crit_edge: ; preds = %sw.bb12.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i105

sw.bb12.i102.if.end50_crit_edge:                  ; preds = %sw.bb12.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

sw.epilog22.sink.split.i105:                      ; preds = %sw.bb12.i102.sw.epilog22.sink.split.i105_crit_edge, %sw.bb8.i99.sw.epilog22.sink.split.i105_crit_edge
  %.sink.i103 = phi ptr [ %52, %sw.bb8.i99.sw.epilog22.sink.split.i105_crit_edge ], [ %54, %sw.bb12.i102.sw.epilog22.sink.split.i105_crit_edge ]
  %call19.i104 = call i32 %.sink.i103(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end50

if.end50:                                         ; preds = %sw.epilog22.sink.split.i105, %sw.bb12.i102.if.end50_crit_edge, %sw.bb8.i99.if.end50_crit_edge, %sw.epilog7.i96.if.end50_crit_edge, %while.end.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cond87 = icmp eq i32 %call38, 1
  br i1 %cond87, label %if.end50.cond.end_crit_edge, label %if.then53

if.end50.cond.end_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__tda18271_write_regs, ptr noundef nonnull @.str.52, i32 noundef %idx.addr.0.lcssa.ph, i32 noundef %29, i32 noundef %call38)
  br label %cond.end

cond.end:                                         ; preds = %if.then53, %if.end50.cond.end_crit_edge
  %cond = phi i32 [ %call38, %if.then53 ], [ 0, %if.end50.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef %pll, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pll)
  %cmp.i = icmp eq i32 %pll, 1
  %cond.i = select i1 %cmp.i, i32 22, i32 19
  %arrayidx.i = getelementptr i8, ptr %1, i32 %cond.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, -33
  %force.tr.i = trunc i32 %force to i8
  %5 = shl i8 %force.tr.i, 5
  %6 = and i8 %5, 32
  %conv5.i = or i8 %4, %6
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %call.i = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef %cond.i, i32 noundef 1, i1 noundef zeroext true) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_init_regs(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %2 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 4
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %7 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_init_regs, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %conv)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %9 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner_priv, align 4
  %gate1.i = getelementptr inbounds %struct.tda18271_priv, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %gate1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gate1.i, align 4
  %.off.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.epilog7.i, label %sw.default.i

sw.default.i:                                     ; preds = %do.end
  %mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cond.i = icmp eq i32 %14, 1
  br i1 %cond.i, label %sw.default.i.sw.bb12.i_crit_edge, label %sw.default.i.sw.bb8.i_crit_edge

sw.default.i.sw.bb8.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.default.i.sw.bb12.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i:                                     ; preds = %do.end
  %15 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %12, label %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge [
    i32 1, label %sw.epilog7.i.sw.bb8.i_crit_edge
    i32 2, label %sw.epilog7.i.sw.bb12.i_crit_edge
  ]

sw.epilog7.i.sw.bb12.i_crit_edge:                 ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

sw.epilog7.i.sw.bb8.i_crit_edge:                  ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge: ; preds = %sw.epilog7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb8.i:                                         ; preds = %sw.epilog7.i.sw.bb8.i_crit_edge, %sw.default.i.sw.bb8.i_crit_edge
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %16 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge

sw.bb8.i.sw.epilog22.sink.split.i_crit_edge:      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge:   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.bb12.i:                                        ; preds = %sw.epilog7.i.sw.bb12.i_crit_edge, %sw.default.i.sw.bb12.i_crit_edge
  %i2c_gate_ctrl14.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %18 = ptrtoint ptr %i2c_gate_ctrl14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl14.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, label %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge

sw.bb12.i.sw.epilog22.sink.split.i_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i

sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit

sw.epilog22.sink.split.i:                         ; preds = %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %17, %sw.bb8.i.sw.epilog22.sink.split.i_crit_edge ], [ %19, %sw.bb12.i.sw.epilog22.sink.split.i_crit_edge ]
  %call19.i = tail call i32 %.sink.i(ptr noundef %fe, i32 noundef 1) #6
  br label %tda18271_i2c_gate_ctrl.exit

tda18271_i2c_gate_ctrl.exit:                      ; preds = %sw.epilog22.sink.split.i, %sw.bb12.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.bb8.i.tda18271_i2c_gate_ctrl.exit_crit_edge, %sw.epilog7.i.tda18271_i2c_gate_ctrl.exit_crit_edge
  %adap4 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %adap4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap4, align 4
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock_ops.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void %25(ptr noundef %21, i32 noundef 2) #6
  %id = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %27, label %tda18271_i2c_gate_ctrl.exit.sw.epilog_crit_edge [
    i32 0, label %tda18271_i2c_gate_ctrl.exit.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb5
  ]

tda18271_i2c_gate_ctrl.exit.sw.epilog.sink.split_crit_edge: ; preds = %tda18271_i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

tda18271_i2c_gate_ctrl.exit.sw.epilog_crit_edge:  ; preds = %tda18271_i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %tda18271_i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %tda18271_i2c_gate_ctrl.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ -124, %sw.bb5 ], [ -125, %tda18271_i2c_gate_ctrl.exit.sw.epilog.sink.split_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %1, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %tda18271_i2c_gate_ctrl.exit.sw.epilog_crit_edge
  %arrayidx7 = getelementptr i8, ptr %1, i32 1
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %1, i32 2
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -128, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %1, i32 3
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -58, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %1, i32 4
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -33, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %1, i32 5
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 22, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %1, i32 6
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 96, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %1, i32 7
  %36 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr i8, ptr %1, i32 8
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %1, i32 9
  %arrayidx16 = getelementptr i8, ptr %1, i32 10
  %arrayidx17 = getelementptr i8, ptr %1, i32 11
  %arrayidx18 = getelementptr i8, ptr %1, i32 12
  %arrayidx19 = getelementptr i8, ptr %1, i32 13
  %arrayidx20 = getelementptr i8, ptr %1, i32 14
  %arrayidx21 = getelementptr i8, ptr %1, i32 15
  %38 = call ptr @memset(ptr %arrayidx15, i32 0, i32 7)
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %40, label %sw.epilog.sw.epilog27_crit_edge [
    i32 0, label %sw.epilog.sw.epilog27.sink.split_crit_edge
    i32 1, label %sw.bb25
  ]

sw.epilog.sw.epilog27.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.sink.split

sw.epilog.sw.epilog27_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.sink.split

sw.epilog27.sink.split:                           ; preds = %sw.bb25, %sw.epilog.sw.epilog27.sink.split_crit_edge
  %.sink303 = phi i8 [ -4, %sw.bb25 ], [ -1, %sw.epilog.sw.epilog27.sink.split_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %1, i32 16
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink303, ptr %arrayidx26, align 1
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.epilog27.sink.split, %sw.epilog.sw.epilog27_crit_edge
  %arrayidx28 = getelementptr i8, ptr %1, i32 17
  %43 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr i8, ptr %1, i32 18
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -124, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr i8, ptr %1, i32 19
  %45 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 65, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr i8, ptr %1, i32 20
  %46 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr i8, ptr %1, i32 21
  %47 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -124, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %1, i32 22
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 64, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %1, i32 23
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %1, i32 24
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %1, i32 25
  %51 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx37 = getelementptr i8, ptr %1, i32 26
  %52 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -106, ptr %arrayidx37, align 1
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %54, label %sw.epilog27.sw.epilog43_crit_edge [
    i32 0, label %sw.epilog27.sw.epilog43.sink.split_crit_edge
    i32 1, label %sw.bb41
  ]

sw.epilog27.sw.epilog43.sink.split_crit_edge:     ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43.sink.split

sw.epilog27.sw.epilog43_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43

sw.bb41:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43.sink.split

sw.epilog43.sink.split:                           ; preds = %sw.bb41, %sw.epilog27.sw.epilog43.sink.split_crit_edge
  %.sink304 = phi i8 [ 51, %sw.bb41 ], [ 15, %sw.epilog27.sw.epilog43.sink.split_crit_edge ]
  %arrayidx42 = getelementptr i8, ptr %1, i32 27
  %56 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink304, ptr %arrayidx42, align 1
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.epilog43.sink.split, %sw.epilog27.sw.epilog43_crit_edge
  %arrayidx44 = getelementptr i8, ptr %1, i32 28
  %57 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -63, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr i8, ptr %1, i32 29
  %58 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr i8, ptr %1, i32 30
  %59 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -113, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr i8, ptr %1, i32 31
  %60 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr i8, ptr %1, i32 32
  %61 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx48, align 1
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %63, label %sw.epilog54 [
    i32 0, label %sw.epilog54.thread
    i32 1, label %sw.epilog54.thread299
  ]

sw.epilog54.thread:                               ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx51 = getelementptr i8, ptr %1, i32 33
  %65 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx51, align 1
  %arrayidx55295 = getelementptr i8, ptr %1, i32 34
  %66 = ptrtoint ptr %arrayidx55295 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx55295, align 1
  %arrayidx56296 = getelementptr i8, ptr %1, i32 35
  %67 = ptrtoint ptr %arrayidx56296 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 32, ptr %arrayidx56296, align 1
  %arrayidx59 = getelementptr i8, ptr %1, i32 36
  %68 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 51, ptr %arrayidx59, align 1
  br label %sw.epilog62

sw.epilog54.thread299:                            ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53 = getelementptr i8, ptr %1, i32 33
  %69 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -116, ptr %arrayidx53, align 1
  %arrayidx55300 = getelementptr i8, ptr %1, i32 34
  %70 = ptrtoint ptr %arrayidx55300 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx55300, align 1
  %arrayidx56301 = getelementptr i8, ptr %1, i32 35
  %71 = ptrtoint ptr %arrayidx56301 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 32, ptr %arrayidx56301, align 1
  %arrayidx61 = getelementptr i8, ptr %1, i32 36
  %72 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -77, ptr %arrayidx61, align 1
  br label %sw.epilog62

sw.epilog54:                                      ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx55 = getelementptr i8, ptr %1, i32 34
  %73 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx55, align 1
  %arrayidx56 = getelementptr i8, ptr %1, i32 35
  %74 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 32, ptr %arrayidx56, align 1
  br label %sw.epilog62

sw.epilog62:                                      ; preds = %sw.epilog54, %sw.epilog54.thread299, %sw.epilog54.thread
  %arrayidx56298 = phi ptr [ %arrayidx56, %sw.epilog54 ], [ %arrayidx56301, %sw.epilog54.thread299 ], [ %arrayidx56296, %sw.epilog54.thread ]
  %arrayidx63 = getelementptr i8, ptr %1, i32 37
  %75 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 72, ptr %arrayidx63, align 1
  %arrayidx64 = getelementptr i8, ptr %1, i32 38
  %76 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -80, ptr %arrayidx64, align 1
  %call65 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 0, i32 noundef 39, i1 noundef zeroext false)
  %77 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx48, align 1
  %call67 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  %78 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %arrayidx48, align 1
  %call69 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  %79 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 67, ptr %arrayidx48, align 1
  %call71 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  %80 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 76, ptr %arrayidx48, align 1
  %call73 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  %81 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp = icmp eq i32 %82, 0
  br i1 %cmp, label %if.then76, label %sw.epilog62.if.end85_crit_edge

sw.epilog62.if.end85_crit_edge:                   ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then76:                                        ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %arrayidx56298 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -96, ptr %arrayidx56298, align 1
  %call78 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  %84 = ptrtoint ptr %arrayidx56298 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -89, ptr %arrayidx56298, align 1
  %call80 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  %85 = ptrtoint ptr %arrayidx56298 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -25, ptr %arrayidx56298, align 1
  %call82 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  %86 = ptrtoint ptr %arrayidx56298 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -20, ptr %arrayidx56298, align 1
  %call84 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %sw.epilog62.if.end85_crit_edge
  %87 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 31, ptr %arrayidx11, align 1
  %88 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 102, ptr %arrayidx12, align 1
  %89 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -127, ptr %arrayidx13, align 1
  %90 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -52, ptr %arrayidx14, align 1
  %91 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 108, ptr %arrayidx15, align 1
  %92 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx16, align 1
  %93 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx17, align 1
  %94 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -51, ptr %arrayidx18, align 1
  %95 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 119, ptr %arrayidx19, align 1
  %96 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 8, ptr %arrayidx20, align 1
  %97 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx21, align 1
  %call97 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  %98 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp99 = icmp eq i32 %99, 1
  br i1 %cmp99, label %if.then101, label %if.end85.if.end104_crit_edge

if.end85.if.end104_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then101:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i = getelementptr i8, ptr %101, i32 19
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i, align 1
  %conv5.i = or i8 %103, 32
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %call.i = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 19, i32 noundef 1, i1 noundef zeroext false) #6
  tail call void @msleep(i32 noundef 1) #6
  %104 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i274 = getelementptr i8, ptr %105, i32 19
  %106 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i274, align 1
  %108 = and i8 %107, -33
  store i8 %108, ptr %arrayidx.i274, align 1
  %call.i275 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 19, i32 noundef 1, i1 noundef zeroext false) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end85.if.end104_crit_edge
  tail call void @msleep(i32 noundef 5) #6
  %call105 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %109 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -123, ptr %arrayidx13, align 1
  %110 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -53, ptr %arrayidx14, align 1
  %111 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 102, ptr %arrayidx15, align 1
  %112 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 112, ptr %arrayidx16, align 1
  %call110 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %call111 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #6
  %113 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -126, ptr %arrayidx13, align 1
  %114 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -88, ptr %arrayidx14, align 1
  %115 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx16, align 1
  %116 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -87, ptr %arrayidx18, align 1
  %117 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 115, ptr %arrayidx19, align 1
  %118 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 26, ptr %arrayidx20, align 1
  %call118 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %call119 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %119 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -122, ptr %arrayidx13, align 1
  %120 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -88, ptr %arrayidx14, align 1
  %121 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 102, ptr %arrayidx15, align 1
  %122 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -96, ptr %arrayidx16, align 1
  %call124 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %call125 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #6
  %123 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -125, ptr %arrayidx13, align 1
  %124 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -104, ptr %arrayidx14, align 1
  %125 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 101, ptr %arrayidx15, align 1
  %126 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx16, align 1
  %127 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -103, ptr %arrayidx18, align 1
  %128 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 113, ptr %arrayidx19, align 1
  %129 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -51, ptr %arrayidx20, align 1
  %call133 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %call134 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %130 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -121, ptr %arrayidx13, align 1
  %131 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 101, ptr %arrayidx15, align 1
  %132 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 80, ptr %arrayidx16, align 1
  %call138 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #6
  %call139 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #6
  %133 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 100, ptr %arrayidx12, align 1
  %call141 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 1, i1 noundef zeroext false)
  %call142 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  %134 = ptrtoint ptr %adap4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %adap4, align 4
  %lock_ops.i276 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %lock_ops.i276 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %lock_ops.i276, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %139(ptr noundef %135, i32 noundef 2) #6
  %140 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tuner_priv, align 4
  %gate1.i278 = getelementptr inbounds %struct.tda18271_priv, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %gate1.i278 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %gate1.i278, align 4
  %.off.i279 = add i32 %143, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i279)
  %switch.i280 = icmp ult i32 %.off.i279, 2
  br i1 %switch.i280, label %sw.epilog7.i284, label %sw.default.i283

sw.default.i283:                                  ; preds = %if.end104
  %mode.i281 = getelementptr inbounds %struct.tda18271_priv, ptr %141, i32 0, i32 3
  %144 = ptrtoint ptr %mode.i281 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mode.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cond.i282 = icmp eq i32 %145, 1
  br i1 %cond.i282, label %sw.default.i283.sw.bb12.i290_crit_edge, label %sw.default.i283.sw.bb8.i287_crit_edge

sw.default.i283.sw.bb8.i287_crit_edge:            ; preds = %sw.default.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i287

sw.default.i283.sw.bb12.i290_crit_edge:           ; preds = %sw.default.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i290

sw.epilog7.i284:                                  ; preds = %if.end104
  %146 = zext i32 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %143, label %sw.epilog7.i284.tda18271_i2c_gate_ctrl.exit294_crit_edge [
    i32 1, label %sw.epilog7.i284.sw.bb8.i287_crit_edge
    i32 2, label %sw.epilog7.i284.sw.bb12.i290_crit_edge
  ]

sw.epilog7.i284.sw.bb12.i290_crit_edge:           ; preds = %sw.epilog7.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i290

sw.epilog7.i284.sw.bb8.i287_crit_edge:            ; preds = %sw.epilog7.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i287

sw.epilog7.i284.tda18271_i2c_gate_ctrl.exit294_crit_edge: ; preds = %sw.epilog7.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit294

sw.bb8.i287:                                      ; preds = %sw.epilog7.i284.sw.bb8.i287_crit_edge, %sw.default.i283.sw.bb8.i287_crit_edge
  %i2c_gate_ctrl.i285 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %147 = ptrtoint ptr %i2c_gate_ctrl.i285 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c_gate_ctrl.i285, align 4
  %tobool.not.i286 = icmp eq ptr %148, null
  br i1 %tobool.not.i286, label %sw.bb8.i287.tda18271_i2c_gate_ctrl.exit294_crit_edge, label %sw.bb8.i287.sw.epilog22.sink.split.i293_crit_edge

sw.bb8.i287.sw.epilog22.sink.split.i293_crit_edge: ; preds = %sw.bb8.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i293

sw.bb8.i287.tda18271_i2c_gate_ctrl.exit294_crit_edge: ; preds = %sw.bb8.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit294

sw.bb12.i290:                                     ; preds = %sw.epilog7.i284.sw.bb12.i290_crit_edge, %sw.default.i283.sw.bb12.i290_crit_edge
  %i2c_gate_ctrl14.i288 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %149 = ptrtoint ptr %i2c_gate_ctrl14.i288 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c_gate_ctrl14.i288, align 4
  %tobool15.not.i289 = icmp eq ptr %150, null
  br i1 %tobool15.not.i289, label %sw.bb12.i290.tda18271_i2c_gate_ctrl.exit294_crit_edge, label %sw.bb12.i290.sw.epilog22.sink.split.i293_crit_edge

sw.bb12.i290.sw.epilog22.sink.split.i293_crit_edge: ; preds = %sw.bb12.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22.sink.split.i293

sw.bb12.i290.tda18271_i2c_gate_ctrl.exit294_crit_edge: ; preds = %sw.bb12.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda18271_i2c_gate_ctrl.exit294

sw.epilog22.sink.split.i293:                      ; preds = %sw.bb12.i290.sw.epilog22.sink.split.i293_crit_edge, %sw.bb8.i287.sw.epilog22.sink.split.i293_crit_edge
  %.sink.i291 = phi ptr [ %148, %sw.bb8.i287.sw.epilog22.sink.split.i293_crit_edge ], [ %150, %sw.bb12.i290.sw.epilog22.sink.split.i293_crit_edge ]
  %call19.i292 = tail call i32 %.sink.i291(ptr noundef %fe, i32 noundef 0) #6
  br label %tda18271_i2c_gate_ctrl.exit294

tda18271_i2c_gate_ctrl.exit294:                   ; preds = %sw.epilog22.sink.split.i293, %sw.bb12.i290.tda18271_i2c_gate_ctrl.exit294_crit_edge, %sw.bb8.i287.tda18271_i2c_gate_ctrl.exit294_crit_edge, %sw.epilog7.i284.tda18271_i2c_gate_ctrl.exit294_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_set_standby_mode(ptr noundef %fe, i32 noundef %sm, i32 noundef %sm_lt, i32 noundef %sm_xt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tda18271_debug to i32))
  %2 = load i32, ptr @tda18271_debug, align 4
  %3 = and i32 %2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %.not = icmp eq i32 %3, 9
  br i1 %.not, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_set_standby_mode, ptr noundef nonnull @.str.4, i32 noundef %sm, i32 noundef %sm_lt, i32 noundef %sm_xt)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %arrayidx = getelementptr i8, ptr %1, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sm)
  %tobool7.not = icmp eq i32 %sm, 0
  %cond = select i1 %tobool7.not, i8 0, i8 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sm_lt)
  %tobool8.not = icmp eq i32 %sm_lt, 0
  %cond9 = select i1 %tobool8.not, i8 0, i8 64
  %or = or i8 %cond9, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sm_xt)
  %tobool10.not = icmp eq i32 %sm_xt, 0
  %cond11 = select i1 %tobool10.not, i8 0, i8 32
  %or12 = or i8 %or, %cond11
  %or15 = or i8 %or12, %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or15, ptr %arrayidx, align 1
  %call.i = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 1, i1 noundef zeroext true) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %freq.addr = alloca i32, align 4
  %d = alloca i8, align 1
  %pd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %freq.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %freq, ptr %freq.addr, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %d, align 1, !annotation !131
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pd) #6
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pd, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_pll_map(ptr noundef %fe, i32 noundef 0, ptr noundef nonnull %freq.addr, ptr noundef nonnull %pd, ptr noundef nonnull %d) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_main_pll, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 559)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pd, align 1
  %7 = and i8 %6, 127
  %arrayidx = getelementptr i8, ptr %2, i32 12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %d, align 1
  %conv6 = zext i8 %10 to i32
  %11 = ptrtoint ptr %freq.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freq.addr, align 4
  %div7 = udiv i32 %12, 1000
  %mul = shl nuw nsw i32 %conv6, 7
  %shl = mul i32 %mul, %div7
  %div8 = udiv i32 %shl, 125
  %shr = lshr i32 %div8, 16
  %13 = trunc i32 %shr to i8
  %conv10 = and i8 %13, 127
  %arrayidx11 = getelementptr i8, ptr %2, i32 13
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %arrayidx11, align 1
  %shr12 = lshr i32 %div8, 8
  %conv14 = trunc i32 %shr12 to i8
  %arrayidx15 = getelementptr i8, ptr %2, i32 14
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %arrayidx15, align 1
  %conv17 = trunc i32 %div8 to i8
  %arrayidx18 = getelementptr i8, ptr %2, i32 15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %arrayidx18, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pd) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_pll_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_cal_pll(ptr noundef %fe, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %freq.addr = alloca i32, align 4
  %d = alloca i8, align 1
  %pd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %freq.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %freq, ptr %freq.addr, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %d, align 1, !annotation !131
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pd) #6
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pd, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_pll_map(ptr noundef %fe, i32 noundef 1, ptr noundef nonnull %freq.addr, ptr noundef nonnull %pd, ptr noundef nonnull %d) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_cal_pll, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 582)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pd, align 1
  %arrayidx = getelementptr i8, ptr %2, i32 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %d, align 1
  %conv4 = zext i8 %9 to i32
  %10 = ptrtoint ptr %freq.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq.addr, align 4
  %div5 = udiv i32 %11, 1000
  %mul = shl nuw nsw i32 %conv4, 7
  %shl = mul i32 %mul, %div5
  %div6 = udiv i32 %shl, 125
  %shr = lshr i32 %div6, 16
  %12 = trunc i32 %shr to i8
  %conv7 = and i8 %12, 127
  %arrayidx8 = getelementptr i8, ptr %2, i32 9
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %arrayidx8, align 1
  %shr9 = lshr i32 %div6, 8
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx12 = getelementptr i8, ptr %2, i32 10
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %arrayidx12, align 1
  %conv14 = trunc i32 %div6 to i8
  %arrayidx15 = getelementptr i8, ptr %2, i32 11
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %arrayidx15, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pd) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_bp_filter(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 5, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_bp_filter, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 606)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, -8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, 7
  %or17 = or i8 %8, %5
  store i8 %or17, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_km(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 3, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_km, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 623)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 28
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, -125
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, 124
  %or17 = or i8 %8, %5
  store i8 %or17, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_rf_band(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 6, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_rf_band, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 640)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 31
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %shl = shl i8 %7, 5
  %or = or i8 %shl, %5
  store i8 %or, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_gain_taper(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 7, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_gain_taper, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 657)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, -32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, 31
  %or17 = or i8 %8, %5
  store i8 %or17, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_ir_measure(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 8, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_ir_measure, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 674)
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %1, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, -8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, 7
  %or17 = or i8 %8, %5
  store i8 %or17, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end3.critedge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_rf_cal(ptr noundef %fe, ptr noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !131
  %call = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 2, ptr noundef %freq, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %arrayidx = getelementptr i8, ptr %1, i32 29
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %fail

fail:                                             ; preds = %if.end, %entry.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18271-common.c", i32 130, i32 3}
!2 = !{ptr @__func__.tda18271_read_regs, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.tda18271_read_extended, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/tuners/tda18271-common.c", i32 160, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/tuners/tda18271-common.c", i32 282, i32 2}
!8 = !{ptr @__func__.tda18271_init_regs, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.tda18271_set_standby_mode, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda18271-common.c", i32 538, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.tda18271_calc_main_pll, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/tda18271-common.c", i32 559, i32 6}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.tda18271_calc_cal_pll, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tda18271-common.c", i32 582, i32 6}
!18 = !{ptr @__func__.tda18271_calc_bp_filter, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tda18271-common.c", i32 606, i32 6}
!20 = !{ptr @__func__.tda18271_calc_km, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tda18271-common.c", i32 623, i32 6}
!22 = !{ptr @__func__.tda18271_calc_rf_band, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/tda18271-common.c", i32 640, i32 6}
!24 = !{ptr @__func__.tda18271_calc_gain_taper, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/tda18271-common.c", i32 657, i32 6}
!26 = !{ptr @__func__.tda18271_calc_ir_measure, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda18271-common.c", i32 674, i32 6}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda18271-common.c", i32 717, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @_tda_printk._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @_tda_printk._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda18271-common.c", i32 723, i32 3}
!36 = !{ptr @_tda_printk._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @_tda_printk._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__func__.tda18271_dump_regs, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tda18271-common.c", i32 59, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/tda18271-common.c", i32 60, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tda18271-common.c", i32 61, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/tda18271-common.c", i32 62, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/tda18271-common.c", i32 63, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/tda18271-common.c", i32 64, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/tda18271-common.c", i32 65, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/tda18271-common.c", i32 66, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/tuners/tda18271-common.c", i32 67, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tda18271-common.c", i32 68, i32 2}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/tda18271-common.c", i32 69, i32 2}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/tda18271-common.c", i32 70, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/tda18271-common.c", i32 71, i32 2}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/tda18271-common.c", i32 72, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/tda18271-common.c", i32 73, i32 2}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tda18271-common.c", i32 74, i32 2}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/tda18271-common.c", i32 75, i32 2}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/tda18271-common.c", i32 84, i32 2}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/tda18271-common.c", i32 85, i32 2}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/tuners/tda18271-common.c", i32 86, i32 2}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tda18271-common.c", i32 87, i32 2}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/tuners/tda18271-common.c", i32 88, i32 2}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/tda18271-common.c", i32 89, i32 2}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/tda18271-common.c", i32 90, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/tuners/tda18271-common.c", i32 91, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/tuners/tda18271-common.c", i32 92, i32 2}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/tda18271-common.c", i32 93, i32 2}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/tda18271-common.c", i32 94, i32 2}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/tda18271-common.c", i32 95, i32 2}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/tuners/tda18271-common.c", i32 96, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/tda18271-common.c", i32 97, i32 2}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/tda18271-common.c", i32 98, i32 2}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/tuners/tda18271-common.c", i32 99, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/tda18271-common.c", i32 100, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/tuners/tda18271-common.c", i32 101, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/tda18271-common.c", i32 102, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/tda18271-common.c", i32 103, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/tda18271-common.c", i32 104, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/tuners/tda18271-common.c", i32 105, i32 2}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/tda18271-common.c", i32 106, i32 2}
!119 = !{ptr @__func__.__tda18271_write_regs, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/tuners/tda18271-common.c", i32 242, i32 3}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2155745098, i64 2155745601, i64 2155745135, i64 2155745191, i64 2155745225, i64 2155745249, i64 2155745290, i64 2155745311, i64 2155745339, i64 2155745373}
