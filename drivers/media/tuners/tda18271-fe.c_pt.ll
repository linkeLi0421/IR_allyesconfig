; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18271-fe.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tda18271_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda18271_attach\09\09\09\09"
module asm "\09.long\09__crc_tda18271_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18271_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18271_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18271_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tda18271_priv = type { [39 x i8], %struct.list_head, %struct.tuner_i2c_props, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, %struct.tda18271_std_map, [8 x %struct.tda18271_rf_tracking_filter_cal], %struct.mutex, i16, i32, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [15 x i8] c"tda18271.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tda18271_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tda18271_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"tda18271.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [84 x i8] c"tda18271.parm=debug:set debug level (info=1, map=2, reg=4, adv=8, cal=16 (or-able))\00", section ".modinfo", align 1
@__param_str_cal = internal constant [13 x i8] c"tda18271.cal\00", align 1
@tda18271_cal_on_startup = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cal = internal constant %struct.kernel_param { ptr @__param_str_cal, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tda18271_cal_on_startup } }, section "__param", align 4
@__UNIQUE_ID_caltype292 = internal constant [26 x i8] c"tda18271.parmtype=cal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cal293 = internal constant [68 x i8] c"tda18271.parm=cal:perform RF tracking filter calibration on startup\00", section ".modinfo", align 1
@tda18271_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tda18271_list_mutex, i64 52), ptr getelementptr (i8, ptr @tda18271_list_mutex, i64 52) }, ptr @tda18271_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@tda18271_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/tuners/tda18271-fe.c\00", [61 x i8] zeroinitializer }, align 32
@tda18271_attach._entry_ptr = internal global ptr @tda18271_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18271\00", [23 x i8] zeroinitializer }, align 32
@tda18271_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@tda18271_attach._entry_ptr.6 = internal global ptr @tda18271_attach._entry.4, section ".printk_index", align 4
@tda18271_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d on line %d\0A\00", [43 x i8] zeroinitializer }, align 32
@tda18271_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18271HD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 864000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @tda18271_release, ptr @tda18271_init, ptr @tda18271_sleep, ptr null, ptr null, ptr @tda18271_set_params, ptr @tda18271_set_analog_params, ptr @tda18271_set_config, ptr @tda18271_get_frequency, ptr @tda18271_get_bandwidth, ptr @tda18271_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tda18271_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18271_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18271_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18271_attach to i32), ptr @__kstrtab_tda18271_attach, ptr @__kstrtabns_tda18271_attach }, section "___ksymtab_gpl+tda18271_attach", align 4
@__UNIQUE_ID_description294 = internal constant [66 x i8] c"tda18271.description=NXP TDA18271HD analog / digital tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [53 x i8] c"tda18271.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [44 x i8] c"tda18271.file=drivers/media/tuners/tda18271\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"tda18271.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version298 = internal constant [21 x i8] c"tda18271.version=0.4\00", section ".modinfo", align 1
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.4\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.11 }, section "__modver", align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda18271_list_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18271_list_mutex\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda18271_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016tda18271: Error reading device ID @ %d-%04x, bailing out.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_get_id\00", [16 x i8] zeroinitializer }, align 32
@tda18271_get_id._entry_ptr = internal global ptr @tda18271_get_id._entry, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TDA18271HD/C1\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TDA18271HD/C2\00", [18 x i8] zeroinitializer }, align 32
@tda18271_get_id._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016tda18271: Unknown device (%i) detected @ %d-%04x, device not supported.\0A\00", [53 x i8] zeroinitializer }, align 32
@tda18271_get_id._entry_ptr.20 = internal global ptr @tda18271_get_id._entry.18, section ".printk_index", align 4
@tda18271_get_id._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016tda18271: %s detected @ %d-%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@tda18271_get_id._entry_ptr.23 = internal global ptr @tda18271_get_id._entry.21, section ".printk_index", align 4
@__func__.tda18271c2_rf_cal_init = private unnamed_addr constant [23 x i8] c"tda18271c2_rf_cal_init\00", align 1
@tda18271c2_rf_cal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.tda18271c2_rf_cal_init, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016tda18271: RF tracking filter calibration complete\0A\00", [43 x i8] zeroinitializer }, align 32
@tda18271c2_rf_cal_init._entry_ptr = internal global ptr @tda18271c2_rf_cal_init._entry, section ".printk_index", align 4
@tda18271c2_rf_cal_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.tda18271c2_rf_cal_init, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tda18271: RF tracking filter calibration failed!\0A\00", [44 x i8] zeroinitializer }, align 32
@tda18271c2_rf_cal_init._entry_ptr.27 = internal global ptr @tda18271c2_rf_cal_init._entry.25, section ".printk_index", align 4
@tda18271_calc_rf_filter_curve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016tda18271: performing RF tracking filter calibration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda18271_calc_rf_filter_curve\00", [34 x i8] zeroinitializer }, align 32
@tda18271_calc_rf_filter_curve._entry_ptr = internal global ptr @tda18271_calc_rf_filter_curve._entry, section ".printk_index", align 4
@__func__.tda18271_powerscan_init = private unnamed_addr constant [24 x i8] c"tda18271_powerscan_init\00", align 1
@__func__.tda18271_rf_tracking_filters_init = private unnamed_addr constant [34 x i8] c"tda18271_rf_tracking_filters_init\00", align 1
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"freq = %d, rf = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.tda18271_powerscan = private unnamed_addr constant [19 x i8] c"tda18271_powerscan\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bcal = %d, freq_in = %d, freq_out = %d (freq = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.tda18271_por = private unnamed_addr constant [13 x i8] c"tda18271_por\00", align 1
@__func__.tda18271_toggle_output = private unnamed_addr constant [23 x i8] c"tda18271_toggle_output\00", align 1
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s mode: xtal oscillator %s, slave tuner loop through %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_update_std_map = private unnamed_addr constant [24 x i8] c"tda18271_update_std_map\00", align 1
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using custom std config for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fm\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atv b\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv dk\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv gh\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atv i\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atv l\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv l'\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv mn\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atsc 6\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvbt 6\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvbt 7\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvbt 8\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qam 6\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qam 7\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qam 8\00", [26 x i8] zeroinitializer }, align 32
@__func__.tda18271_init = private unnamed_addr constant [14 x i8] c"tda18271_init\00", align 1
@__func__.tda18271_ir_cal_init = private unnamed_addr constant [21 x i8] c"tda18271_ir_cal_init\00", align 1
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_set_params = private unnamed_addr constant [20 x i8] c"tda18271_set_params\00", align 1
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"modulation type not supported!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.tda18271_tune = private unnamed_addr constant [14 x i8] c"tda18271_tune\00", align 1
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"freq = %d, ifc = %d, bw = %d, agc_mode = %d, std = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure agc\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.tda18271_agc = private unnamed_addr constant [13 x i8] c"tda18271_agc\00", align 1
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no agc configuration provided\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invoking callback\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported configuration: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.tda18271c1_rf_tracking_filter_calibration = private unnamed_addr constant [42 x i8] c"tda18271c1_rf_tracking_filter_calibration\00", align 1
@__func__.tda18271c2_rf_tracking_filters_correction = private unnamed_addr constant [42 x i8] c"tda18271c2_rf_tracking_filters_correction\00", align 1
@__func__.tda18271_channel_configuration = private unnamed_addr constant [31 x i8] c"tda18271_channel_configuration\00", align 1
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GH\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DK\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L'\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xx\00", [29 x i8] zeroinitializer }, align 32
@__func__.tda18271_set_analog_params = private unnamed_addr constant [27 x i8] c"tda18271_set_analog_params\00", align 1
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting tda18271 to system %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.tda18271_dump_std_map = private unnamed_addr constant [22 x i8] c"tda18271_dump_std_map\00", align 1
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"========== STANDARD MAP SETTINGS ==========\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"  fm  \00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv b \00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv i \00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atv l \00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qam 6 \00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qam 7 \00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qam 8 \00", [25 x i8] zeroinitializer }, align 32
@tda18271_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda18271_release\00", [47 x i8] zeroinitializer }, align 32
@tda18271_release._entry_ptr = internal global ptr @tda18271_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 8, i64 11, i64 16, i64 18]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"tda18271_debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 15, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"tda18271_cal_on_startup\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 19, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c"tda18271_list_mutex\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 24, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1255, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1268, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1271, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"tda18271_tuner_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1228, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1343, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 23, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1158, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1166, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1170, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1174, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1180, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 683, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 688, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 637, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 586, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 517, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 39, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1127, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1128, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1129, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1130, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1131, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1132, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1133, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1134, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1135, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1136, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1137, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1138, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1139, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1140, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1141, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 963, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 890, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 895, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 862, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 866, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 877, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1001, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1004, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1007, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1010, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1013, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1016, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1019, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1022, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1025, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1098, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1099, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1100, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1103, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1104, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1111, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1112, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1113, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [38 x i8] c"../drivers/media/tuners/tda18271-fe.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1046, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_cal293, ptr @__UNIQUE_ID_caltype292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version298, ptr @__ksymtab_tda18271_attach, ptr @__modver_attr, ptr @__param_cal, ptr @__param_debug, ptr @tda18271_attach._entry, ptr @tda18271_attach._entry.4, ptr @tda18271_attach._entry_ptr, ptr @tda18271_attach._entry_ptr.6, ptr @tda18271_calc_rf_filter_curve._entry, ptr @tda18271_calc_rf_filter_curve._entry_ptr, ptr @tda18271_get_id._entry, ptr @tda18271_get_id._entry.18, ptr @tda18271_get_id._entry.21, ptr @tda18271_get_id._entry_ptr, ptr @tda18271_get_id._entry_ptr.20, ptr @tda18271_get_id._entry_ptr.23, ptr @tda18271_release._entry, ptr @tda18271_release._entry_ptr, ptr @tda18271c2_rf_cal_init._entry, ptr @tda18271c2_rf_cal_init._entry.25, ptr @tda18271c2_rf_cal_init._entry_ptr, ptr @tda18271c2_rf_cal_init._entry_ptr.27, ptr @tda18271_debug, ptr @tda18271_cal_on_startup, ptr @tda18271_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @tda18271_attach.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tda18271_tuner_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_cal_on_startup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_get_id._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_get_id._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_rf_cal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271c2_rf_cal_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_calc_rf_filter_curve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda18271_attach(ptr noundef %fe, i8 noundef zeroext %addr, ptr noundef %i2c, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tda18271_list_mutex, i32 noundef 0) #7
  %.pn353 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp.not354 = icmp eq ptr %.pn353, @hybrid_tuner_instance_list
  br i1 %cmp.not354, label %entry.if.then40_crit_edge, label %for.body.lr.ph

entry.if.then40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %i2c, null
  %nr.i285 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn355 = phi ptr [ %.pn353, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i2c_props = getelementptr i8, ptr %.pn355, i32 8
  %adap = getelementptr i8, ptr %.pn355, i32 12
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true2:                                   ; preds = %land.lhs.true
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  %4 = ptrtoint ptr %nr.i285 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i285, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6 = icmp eq i32 %3, %5
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true2.for.inc_crit_edge

land.lhs.true2.for.inc_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %6 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_props, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %addr)
  %cmp11 = icmp eq i8 %7, %addr
  br i1 %cmp11, label %for.end, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true2.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn355 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn355, align 4
  %cmp.not = icmp eq ptr %.pn, @hybrid_tuner_instance_list
  br i1 %cmp.not, label %for.inc.if.then40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

for.end:                                          ; preds = %land.lhs.true7
  %priv.0.le = getelementptr i8, ptr %.pn355, i32 -40
  %name = getelementptr i8, ptr %.pn355, i32 20
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %conv25 = zext i8 %addr to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef %3, i32 noundef %conv25) #10
  %count = getelementptr i8, ptr %.pn355, i32 16
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp38 = icmp eq i32 %inc, 0
  br i1 %cmp38, label %for.end.if.then40_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fail

for.end.if.then40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.then40:                                        ; preds = %for.end.if.then40_crit_edge, %for.inc.if.then40_crit_edge, %entry.if.then40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 648) #11
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.then40.sw.default_crit_edge, label %if.end44

if.then40.sw.default_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end44:                                         ; preds = %if.then40
  %i2c_props45 = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_props45 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %addr, ptr %i2c_props45, align 8
  %adap48 = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %adap48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i2c, ptr %adap48, align 4
  %name50 = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %name50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.3, ptr %name50, align 4
  %tobool61.not = icmp eq ptr %i2c, null
  br i1 %tobool61.not, label %if.end44.cond.end67_crit_edge, label %cond.true62

if.end44.cond.end67_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end67

cond.true62:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i287 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i287 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i287, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.true62, %if.end44.cond.end67_crit_edge
  %cond68 = phi i32 [ %18, %cond.true62 ], [ -1, %if.end44.cond.end67_crit_edge ]
  %conv71 = zext i8 %addr to i32
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %cond68, i32 noundef %conv71) #10
  %hybrid_tuner_instance_list77 = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list77, ptr noundef %19, ptr noundef nonnull @hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end67.list_add_tail.exit_crit_edge

cond.end67.list_add_tail.exit_crit_edge:          ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %hybrid_tuner_instance_list77, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %hybrid_tuner_instance_list77 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list77, align 8
  %prev3.i.i = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hybrid_tuner_instance_list77, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end67.list_add_tail.exit_crit_edge
  %count79 = getelementptr inbounds %struct.tda18271_priv, ptr %call7.i.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %count79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count79, align 8
  %inc80 = add i32 %24, 1
  store i32 %inc80, ptr %count79, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc80, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0.le, %for.end.__fail_crit_edge ]
  %25 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.default_crit_edge [
    i32 0, label %__fail.fail_crit_edge
    i32 1, label %sw.bb85
  ]

__fail.fail_crit_edge:                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

__fail.sw.default_crit_edge:                      ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb85:                                          ; preds = %__fail
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %26 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv.1, ptr %tuner_priv, align 4
  %tobool.not.i = icmp eq ptr %cfg, null
  br i1 %tobool.not.i, label %cond.end5.critedge.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  %gate.i = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 2
  %27 = ptrtoint ptr %gate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gate.i, align 4
  %gate1.c1.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 5
  %29 = ptrtoint ptr %gate1.c1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %gate1.c1.i, align 4
  %role.i = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 1
  %30 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %role.i, align 4
  %role7.c2.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 4
  %32 = ptrtoint ptr %role7.c2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %role7.c2.i, align 4
  %config.i = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 6
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %config.i, align 4
  %config13.c3.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 9
  %35 = ptrtoint ptr %config13.c3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %config13.c3.i, align 4
  %small_i2c.i = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 4
  %36 = ptrtoint ptr %small_i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %small_i2c.i, align 4
  %small_i2c19.c4.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 8
  %38 = ptrtoint ptr %small_i2c19.c4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %small_i2c19.c4.i, align 4
  %output_opt.i = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 3
  %39 = ptrtoint ptr %output_opt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %output_opt.i, align 4
  br label %tda18271_setup_configuration.exit

cond.end5.critedge.i:                             ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  %gate1.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 5
  %41 = ptrtoint ptr %gate1.c.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %gate1.c.i, align 4
  %role7.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 4
  %42 = ptrtoint ptr %role7.c.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %role7.c.i, align 4
  %config13.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 9
  %43 = ptrtoint ptr %config13.c.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %config13.c.i, align 4
  %small_i2c19.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 8
  %44 = ptrtoint ptr %small_i2c19.c.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %small_i2c19.c.i, align 4
  br label %tda18271_setup_configuration.exit

tda18271_setup_configuration.exit:                ; preds = %cond.end5.critedge.i, %cond.true.i
  %cond24.i = phi i32 [ %40, %cond.true.i ], [ 0, %cond.end5.critedge.i ]
  %output_opt25.i = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 7
  %45 = ptrtoint ptr %output_opt25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond24.i, ptr %output_opt25.i, align 4
  %cal_initialized = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 10
  %46 = ptrtoint ptr %cal_initialized to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %cal_initialized, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %cal_initialized, align 4
  %lock = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tda18271_attach.__key) #7
  %47 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner_priv, align 4
  %lock.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %call.i = tail call i32 @tda18271_read_regs(ptr noundef %fe) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i289 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i289, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %tda18271_setup_configuration.exit
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_props.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2
  %adap.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adap.i, align 4
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr.i.i, align 4
  %53 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i2c_props.i, align 4
  %conv.i = zext i8 %54 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %52, i32 noundef %conv.i) #10
  br label %if.then95

if.end.i:                                         ; preds = %tda18271_setup_configuration.exit
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %48, align 1
  %conv5.i = zext i8 %56 to i32
  %and.i = and i32 %conv5.i, 127
  %57 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i, label %do.end10.i [
    i32 3, label %if.end.i.if.end100.critedge_crit_edge
    i32 4, label %sw.bb6.i
  ]

if.end.i.if.end100.critedge_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.critedge

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.critedge

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_props14.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2
  %adap15.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %adap15.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adap15.i, align 4
  %nr.i47.i = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %nr.i47.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr.i47.i, align 4
  %62 = ptrtoint ptr %i2c_props14.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_props14.i, align 4
  %conv19.i = zext i8 %63 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv5.i, i32 noundef %61, i32 noundef %conv19.i) #10
  br label %if.then95

if.then95:                                        ; preds = %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end10.i ], [ -5, %do.end.i ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %priv.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph, i32 noundef 1271) #7
  br label %fail

if.end100.critedge:                               ; preds = %sw.bb6.i, %if.end.i.if.end100.critedge_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb6.i ], [ 0, %if.end.i.if.end100.critedge_crit_edge ]
  %name.0.i = phi ptr [ @.str.17, %sw.bb6.i ], [ @.str.16, %if.end.i.if.end100.critedge_crit_edge ]
  %id.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 6
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i, ptr %id.i, align 4
  %i2c_props25.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2
  %adap26.i = getelementptr inbounds %struct.tda18271_priv, ptr %48, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %adap26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adap26.i, align 4
  %nr.i48.i = getelementptr inbounds %struct.i2c_adapter, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %nr.i48.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr.i48.i, align 4
  %69 = ptrtoint ptr %i2c_props25.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i2c_props25.i, align 4
  %conv30.i = zext i8 %70 to i32
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %name.0.i, i32 noundef %68, i32 noundef %conv30.i) #10
  %call101 = tail call i32 @tda18271_assign_map_layout(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp103 = icmp slt i32 %call101, 0
  br i1 %cmp103, label %if.then106, label %if.end111.critedge

if.then106:                                       ; preds = %if.end100.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %priv.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %call101, i32 noundef 1275) #7
  br label %fail

if.end111.critedge:                               ; preds = %if.end100.critedge
  %delay_cal = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 5
  %71 = ptrtoint ptr %delay_cal to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load112 = load i8, ptr %delay_cal, align 4
  %72 = and i8 %bf.load112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool114.not = icmp eq i8 %72, 0
  br i1 %tobool114.not, label %if.end111.critedge.if.end119_crit_edge, label %land.lhs.true115

if.end111.critedge.if.end119_crit_edge:           ; preds = %if.end111.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

land.lhs.true115:                                 ; preds = %if.end111.critedge
  %73 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i = icmp eq i32 %73, -1
  br i1 %cmp.i, label %cond.true.i291, label %land.lhs.true115.tda18271_need_cal_on_startup.exit_crit_edge

land.lhs.true115.tda18271_need_cal_on_startup.exit_crit_edge: ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit

cond.true.i291:                                   ; preds = %land.lhs.true115
  br i1 %tobool.not.i, label %cond.true.i291.if.end186_crit_edge, label %land.rhs.i

cond.true.i291.if.end186_crit_edge:               ; preds = %cond.true.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

land.rhs.i:                                       ; preds = %cond.true.i291
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr.i = lshr i8 %bf.load112, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  br label %tda18271_need_cal_on_startup.exit

tda18271_need_cal_on_startup.exit:                ; preds = %land.rhs.i, %land.lhs.true115.tda18271_need_cal_on_startup.exit_crit_edge
  %cond.i = phi i32 [ %bf.cast.i, %land.rhs.i ], [ %73, %land.lhs.true115.tda18271_need_cal_on_startup.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool2.not.i.not = icmp eq i32 %cond.i, 0
  br i1 %tobool2.not.i.not, label %tda18271_need_cal_on_startup.exit.sw.epilog_crit_edge, label %tda18271_need_cal_on_startup.exit.if.end119_crit_edge

tda18271_need_cal_on_startup.exit.if.end119_crit_edge: ; preds = %tda18271_need_cal_on_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

tda18271_need_cal_on_startup.exit.sw.epilog_crit_edge: ; preds = %tda18271_need_cal_on_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end119:                                        ; preds = %tda18271_need_cal_on_startup.exit.if.end119_crit_edge, %if.end111.critedge.if.end119_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call121 = tail call i32 @tda18271_init_regs(ptr noundef %fe) #7
  %74 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i292 = icmp eq i32 %74, -1
  br i1 %cmp.i292, label %cond.true.i294, label %if.end119.tda18271_need_cal_on_startup.exit303_crit_edge

if.end119.tda18271_need_cal_on_startup.exit303_crit_edge: ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit303

cond.true.i294:                                   ; preds = %if.end119
  br i1 %tobool.not.i, label %cond.true.i294.if.end129_crit_edge, label %land.rhs.i299

cond.true.i294.if.end129_crit_edge:               ; preds = %cond.true.i294
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

land.rhs.i299:                                    ; preds = %cond.true.i294
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %delay_cal to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i296 = load i8, ptr %delay_cal, align 4
  %bf.lshr.i297 = lshr i8 %bf.load.i296, 7
  %bf.cast.i298 = zext i8 %bf.lshr.i297 to i32
  br label %tda18271_need_cal_on_startup.exit303

tda18271_need_cal_on_startup.exit303:             ; preds = %land.rhs.i299, %if.end119.tda18271_need_cal_on_startup.exit303_crit_edge
  %cond.i300 = phi i32 [ %bf.cast.i298, %land.rhs.i299 ], [ %74, %if.end119.tda18271_need_cal_on_startup.exit303_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i300)
  %tobool2.not.i301.not = icmp eq i32 %cond.i300, 0
  br i1 %tobool2.not.i301.not, label %tda18271_need_cal_on_startup.exit303.if.end129_crit_edge, label %land.lhs.true124

tda18271_need_cal_on_startup.exit303.if.end129_crit_edge: ; preds = %tda18271_need_cal_on_startup.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

land.lhs.true124:                                 ; preds = %tda18271_need_cal_on_startup.exit303
  %id = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1, i32 0, i32 6
  %76 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp125 = icmp eq i32 %77, 1
  br i1 %cmp125, label %if.then127, label %land.lhs.true124.if.end129_crit_edge

land.lhs.true124.if.end129_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then127:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tda18271c2_rf_cal_init(ptr noundef %fe)
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %land.lhs.true124.if.end129_crit_edge, %tda18271_need_cal_on_startup.exit303.if.end129_crit_edge, %cond.true.i294.if.end129_crit_edge
  %call130 = tail call fastcc i32 @tda18271_toggle_output(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp132 = icmp slt i32 %call130, 0
  br i1 %cmp132, label %if.then135, label %if.end129.if.end136_crit_edge

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %priv.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %call130, i32 noundef 1292) #7
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end129.if.end136_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %sw.epilog

sw.default:                                       ; preds = %__fail.sw.default_crit_edge, %if.then40.sw.default_crit_edge
  %priv.1327 = phi ptr [ %priv.1, %__fail.sw.default_crit_edge ], [ null, %if.then40.sw.default_crit_edge ]
  %tuner_priv139 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %78 = ptrtoint ptr %tuner_priv139 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %priv.1327, ptr %tuner_priv139, align 4
  %tobool140.not = icmp eq ptr %cfg, null
  br i1 %tobool140.not, label %if.end173.thread, label %if.then141

if.then141:                                       ; preds = %sw.default
  %gate = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 2
  %79 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp142.not = icmp eq i32 %80, 1
  br i1 %cmp142.not, label %if.then141.if.end147_crit_edge, label %if.then144

if.then141.if.end147_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then144:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  %gate146 = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1327, i32 0, i32 5
  %81 = ptrtoint ptr %gate146 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %gate146, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.then141.if.end147_crit_edge
  %role = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 1
  %82 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool148.not = icmp eq i32 %83, 0
  br i1 %tobool148.not, label %if.end147.if.end152_crit_edge, label %if.then149

if.end147.if.end152_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then149:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %role151 = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1327, i32 0, i32 4
  %84 = ptrtoint ptr %role151 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %role151, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end147.if.end152_crit_edge
  %config = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 6
  %85 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool153.not = icmp eq i32 %86, 0
  br i1 %tobool153.not, label %if.end152.if.end157_crit_edge, label %if.then154

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %config156 = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1327, i32 0, i32 9
  %87 = ptrtoint ptr %config156 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %config156, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.end152.if.end157_crit_edge
  %small_i2c = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 4
  %88 = ptrtoint ptr %small_i2c to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %small_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool158.not = icmp eq i32 %89, 0
  br i1 %tobool158.not, label %if.end157.if.end162_crit_edge, label %if.then159

if.end157.if.end162_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %small_i2c161 = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1327, i32 0, i32 8
  %90 = ptrtoint ptr %small_i2c161 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %small_i2c161, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end157.if.end162_crit_edge
  %output_opt = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 3
  %91 = ptrtoint ptr %output_opt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %output_opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool163.not = icmp eq i32 %92, 0
  br i1 %tobool163.not, label %if.end162.if.end167_crit_edge, label %if.then164

if.end162.if.end167_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then164:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %output_opt166 = getelementptr inbounds %struct.tda18271_priv, ptr %priv.1327, i32 0, i32 7
  %93 = ptrtoint ptr %output_opt166 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %output_opt166, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end162.if.end167_crit_edge
  %94 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg, align 4
  %tobool168.not = icmp eq ptr %95, null
  br i1 %tobool168.not, label %if.end167.if.end173_crit_edge, label %if.then169

if.end167.if.end173_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

if.then169:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tda18271_update_std_map(ptr noundef %fe, ptr noundef nonnull %95)
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %if.end167.if.end173_crit_edge
  %96 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i304 = icmp eq i32 %96, -1
  br i1 %cmp.i304, label %land.rhs.i311, label %if.end173.tda18271_need_cal_on_startup.exit315_crit_edge

if.end173.tda18271_need_cal_on_startup.exit315_crit_edge: ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit315

if.end173.thread:                                 ; preds = %sw.default
  %97 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i304344 = icmp eq i32 %97, -1
  br i1 %cmp.i304344, label %if.end173.thread.if.end186_crit_edge, label %if.end173.thread.tda18271_need_cal_on_startup.exit315_crit_edge

if.end173.thread.tda18271_need_cal_on_startup.exit315_crit_edge: ; preds = %if.end173.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit315

if.end173.thread.if.end186_crit_edge:             ; preds = %if.end173.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

land.rhs.i311:                                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  %rf_cal_on_startup.i307 = getelementptr inbounds %struct.tda18271_config, ptr %cfg, i32 0, i32 5
  %98 = ptrtoint ptr %rf_cal_on_startup.i307 to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load.i308 = load i8, ptr %rf_cal_on_startup.i307, align 4
  %bf.lshr.i309 = lshr i8 %bf.load.i308, 7
  %bf.cast.i310 = zext i8 %bf.lshr.i309 to i32
  br label %tda18271_need_cal_on_startup.exit315

tda18271_need_cal_on_startup.exit315:             ; preds = %land.rhs.i311, %if.end173.thread.tda18271_need_cal_on_startup.exit315_crit_edge, %if.end173.tda18271_need_cal_on_startup.exit315_crit_edge
  %cond.i312 = phi i32 [ %bf.cast.i310, %land.rhs.i311 ], [ %96, %if.end173.tda18271_need_cal_on_startup.exit315_crit_edge ], [ %97, %if.end173.thread.tda18271_need_cal_on_startup.exit315_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i312)
  %tobool2.not.i313.not = icmp eq i32 %cond.i312, 0
  br i1 %tobool2.not.i313.not, label %tda18271_need_cal_on_startup.exit315.sw.epilog_crit_edge, label %if.then176

tda18271_need_cal_on_startup.exit315.sw.epilog_crit_edge: ; preds = %tda18271_need_cal_on_startup.exit315
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then176:                                       ; preds = %tda18271_need_cal_on_startup.exit315
  call void @__sanitizer_cov_trace_pc() #9
  %call177 = tail call i32 @tda18271_init(ptr noundef %fe)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then176, %tda18271_need_cal_on_startup.exit315.sw.epilog_crit_edge, %if.end136, %tda18271_need_cal_on_startup.exit.sw.epilog_crit_edge
  %tobool179.not = icmp eq ptr %cfg, null
  br i1 %tobool179.not, label %sw.epilog.if.end186_crit_edge, label %land.lhs.true180

sw.epilog.if.end186_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

land.lhs.true180:                                 ; preds = %sw.epilog
  %99 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg, align 4
  %tobool182.not = icmp eq ptr %100, null
  br i1 %tobool182.not, label %land.lhs.true180.if.end186_crit_edge, label %if.then183

land.lhs.true180.if.end186_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then183:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tda18271_update_std_map(ptr noundef %fe, ptr noundef nonnull %100)
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %land.lhs.true180.if.end186_crit_edge, %sw.epilog.if.end186_crit_edge, %if.end173.thread.if.end186_crit_edge, %cond.true.i291.if.end186_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #7
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %101 = call ptr @memcpy(ptr %tuner_ops, ptr @tda18271_tuner_ops, i32 220)
  %102 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %102, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool187.not = icmp eq i32 %and, 0
  br i1 %tobool187.not, label %if.end186.cleanup_crit_edge, label %if.then188

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then188:                                       ; preds = %if.end186
  %tuner_priv.i316 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %103 = ptrtoint ptr %tuner_priv.i316 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tuner_priv.i316, align 4
  %std1.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13
  %and.i317 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.not.i318 = icmp eq i32 %and.i317, 0
  br i1 %tobool.not.i318, label %if.then188.do.body3.i_crit_edge, label %if.then.i

if.then188.do.body3.i_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3.i

if.then.i:                                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.70) #7
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.then188.do.body3.i_crit_edge
  %105 = load i32, ptr @tda18271_debug, align 4
  %and4.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.do.body28.i_crit_edge, label %if.then6.i

do.body3.i.do.body28.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28.i

if.then6.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %std1.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %std1.i, align 4
  %conv.i319 = zext i16 %107 to i32
  %agc_mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 0, i32 1
  %108 = ptrtoint ptr %agc_mode.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i320 = load i16, ptr %agc_mode.i, align 2
  %bf.lshr.i321 = lshr i16 %bf.load.i320, 14
  %bf.cast.i322 = zext i16 %bf.lshr.i321 to i32
  %bf.lshr11.i = lshr i16 %bf.load.i320, 11
  %bf.clear.i = and i16 %bf.lshr11.i, 7
  %bf.cast12.i = zext i16 %bf.clear.i to i32
  %bf.lshr15.i = lshr i16 %bf.load.i320, 7
  %bf.clear16.i = and i16 %bf.lshr15.i, 7
  %bf.cast17.i = zext i16 %bf.clear16.i to i32
  %bf.clear20.i = and i16 %bf.load.i320, 127
  %bf.cast21.i = zext i16 %bf.clear20.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv.i319, i32 noundef %bf.cast.i322, i32 noundef %bf.cast12.i, i32 noundef %bf.cast17.i, i32 noundef %bf.cast21.i) #7
  br label %do.body28.i

do.body28.i:                                      ; preds = %if.then6.i, %do.body3.i.do.body28.i_crit_edge
  %109 = load i32, ptr @tda18271_debug, align 4
  %and29.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.do.body62.i_crit_edge, label %if.then31.i

do.body28.i.do.body62.i_crit_edge:                ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62.i

if.then31.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_b.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 1
  %110 = ptrtoint ptr %atv_b.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %atv_b.i, align 4
  %conv33.i = zext i16 %111 to i32
  %agc_mode35.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 1, i32 1
  %112 = ptrtoint ptr %agc_mode35.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load36.i = load i16, ptr %agc_mode35.i, align 2
  %bf.lshr37.i = lshr i16 %bf.load36.i, 14
  %bf.cast38.i = zext i16 %bf.lshr37.i to i32
  %bf.lshr42.i = lshr i16 %bf.load36.i, 11
  %bf.clear43.i = and i16 %bf.lshr42.i, 7
  %bf.cast44.i = zext i16 %bf.clear43.i to i32
  %bf.lshr48.i = lshr i16 %bf.load36.i, 7
  %bf.clear49.i = and i16 %bf.lshr48.i, 7
  %bf.cast50.i = zext i16 %bf.clear49.i to i32
  %bf.clear54.i = and i16 %bf.load36.i, 127
  %bf.cast55.i = zext i16 %bf.clear54.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv33.i, i32 noundef %bf.cast38.i, i32 noundef %bf.cast44.i, i32 noundef %bf.cast50.i, i32 noundef %bf.cast55.i) #7
  br label %do.body62.i

do.body62.i:                                      ; preds = %if.then31.i, %do.body28.i.do.body62.i_crit_edge
  %113 = load i32, ptr @tda18271_debug, align 4
  %and63.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %do.body62.i.do.body96.i_crit_edge, label %if.then65.i

do.body62.i.do.body96.i_crit_edge:                ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96.i

if.then65.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_dk.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 2
  %114 = ptrtoint ptr %atv_dk.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %atv_dk.i, align 4
  %conv67.i = zext i16 %115 to i32
  %agc_mode69.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 2, i32 1
  %116 = ptrtoint ptr %agc_mode69.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load70.i = load i16, ptr %agc_mode69.i, align 2
  %bf.lshr71.i = lshr i16 %bf.load70.i, 14
  %bf.cast72.i = zext i16 %bf.lshr71.i to i32
  %bf.lshr76.i = lshr i16 %bf.load70.i, 11
  %bf.clear77.i = and i16 %bf.lshr76.i, 7
  %bf.cast78.i = zext i16 %bf.clear77.i to i32
  %bf.lshr82.i = lshr i16 %bf.load70.i, 7
  %bf.clear83.i = and i16 %bf.lshr82.i, 7
  %bf.cast84.i = zext i16 %bf.clear83.i to i32
  %bf.clear88.i = and i16 %bf.load70.i, 127
  %bf.cast89.i = zext i16 %bf.clear88.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.41, i32 noundef %conv67.i, i32 noundef %bf.cast72.i, i32 noundef %bf.cast78.i, i32 noundef %bf.cast84.i, i32 noundef %bf.cast89.i) #7
  br label %do.body96.i

do.body96.i:                                      ; preds = %if.then65.i, %do.body62.i.do.body96.i_crit_edge
  %117 = load i32, ptr @tda18271_debug, align 4
  %and97.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %do.body96.i.do.body130.i_crit_edge, label %if.then99.i

do.body96.i.do.body130.i_crit_edge:               ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130.i

if.then99.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_gh.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 3
  %118 = ptrtoint ptr %atv_gh.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %atv_gh.i, align 4
  %conv101.i = zext i16 %119 to i32
  %agc_mode103.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 3, i32 1
  %120 = ptrtoint ptr %agc_mode103.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load104.i = load i16, ptr %agc_mode103.i, align 2
  %bf.lshr105.i = lshr i16 %bf.load104.i, 14
  %bf.cast106.i = zext i16 %bf.lshr105.i to i32
  %bf.lshr110.i = lshr i16 %bf.load104.i, 11
  %bf.clear111.i = and i16 %bf.lshr110.i, 7
  %bf.cast112.i = zext i16 %bf.clear111.i to i32
  %bf.lshr116.i = lshr i16 %bf.load104.i, 7
  %bf.clear117.i = and i16 %bf.lshr116.i, 7
  %bf.cast118.i = zext i16 %bf.clear117.i to i32
  %bf.clear122.i = and i16 %bf.load104.i, 127
  %bf.cast123.i = zext i16 %bf.clear122.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.42, i32 noundef %conv101.i, i32 noundef %bf.cast106.i, i32 noundef %bf.cast112.i, i32 noundef %bf.cast118.i, i32 noundef %bf.cast123.i) #7
  br label %do.body130.i

do.body130.i:                                     ; preds = %if.then99.i, %do.body96.i.do.body130.i_crit_edge
  %121 = load i32, ptr @tda18271_debug, align 4
  %and131.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %do.body130.i.do.body164.i_crit_edge, label %if.then133.i

do.body130.i.do.body164.i_crit_edge:              ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body164.i

if.then133.i:                                     ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_i.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 4
  %122 = ptrtoint ptr %atv_i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %atv_i.i, align 4
  %conv135.i = zext i16 %123 to i32
  %agc_mode137.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 4, i32 1
  %124 = ptrtoint ptr %agc_mode137.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load138.i = load i16, ptr %agc_mode137.i, align 2
  %bf.lshr139.i = lshr i16 %bf.load138.i, 14
  %bf.cast140.i = zext i16 %bf.lshr139.i to i32
  %bf.lshr144.i = lshr i16 %bf.load138.i, 11
  %bf.clear145.i = and i16 %bf.lshr144.i, 7
  %bf.cast146.i = zext i16 %bf.clear145.i to i32
  %bf.lshr150.i = lshr i16 %bf.load138.i, 7
  %bf.clear151.i = and i16 %bf.lshr150.i, 7
  %bf.cast152.i = zext i16 %bf.clear151.i to i32
  %bf.clear156.i = and i16 %bf.load138.i, 127
  %bf.cast157.i = zext i16 %bf.clear156.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.74, i32 noundef %conv135.i, i32 noundef %bf.cast140.i, i32 noundef %bf.cast146.i, i32 noundef %bf.cast152.i, i32 noundef %bf.cast157.i) #7
  br label %do.body164.i

do.body164.i:                                     ; preds = %if.then133.i, %do.body130.i.do.body164.i_crit_edge
  %125 = load i32, ptr @tda18271_debug, align 4
  %and165.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165.i)
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %do.body164.i.do.body198.i_crit_edge, label %if.then167.i

do.body164.i.do.body198.i_crit_edge:              ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body198.i

if.then167.i:                                     ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_l.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 5
  %126 = ptrtoint ptr %atv_l.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %atv_l.i, align 4
  %conv169.i = zext i16 %127 to i32
  %agc_mode171.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 5, i32 1
  %128 = ptrtoint ptr %agc_mode171.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load172.i = load i16, ptr %agc_mode171.i, align 2
  %bf.lshr173.i = lshr i16 %bf.load172.i, 14
  %bf.cast174.i = zext i16 %bf.lshr173.i to i32
  %bf.lshr178.i = lshr i16 %bf.load172.i, 11
  %bf.clear179.i = and i16 %bf.lshr178.i, 7
  %bf.cast180.i = zext i16 %bf.clear179.i to i32
  %bf.lshr184.i = lshr i16 %bf.load172.i, 7
  %bf.clear185.i = and i16 %bf.lshr184.i, 7
  %bf.cast186.i = zext i16 %bf.clear185.i to i32
  %bf.clear190.i = and i16 %bf.load172.i, 127
  %bf.cast191.i = zext i16 %bf.clear190.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.75, i32 noundef %conv169.i, i32 noundef %bf.cast174.i, i32 noundef %bf.cast180.i, i32 noundef %bf.cast186.i, i32 noundef %bf.cast191.i) #7
  br label %do.body198.i

do.body198.i:                                     ; preds = %if.then167.i, %do.body164.i.do.body198.i_crit_edge
  %129 = load i32, ptr @tda18271_debug, align 4
  %and199.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199.i)
  %tobool200.not.i = icmp eq i32 %and199.i, 0
  br i1 %tobool200.not.i, label %do.body198.i.do.body232.i_crit_edge, label %if.then201.i

do.body198.i.do.body232.i_crit_edge:              ; preds = %do.body198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body232.i

if.then201.i:                                     ; preds = %do.body198.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_lc.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 6
  %130 = ptrtoint ptr %atv_lc.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %atv_lc.i, align 4
  %conv203.i = zext i16 %131 to i32
  %agc_mode205.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 6, i32 1
  %132 = ptrtoint ptr %agc_mode205.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load206.i = load i16, ptr %agc_mode205.i, align 2
  %bf.lshr207.i = lshr i16 %bf.load206.i, 14
  %bf.cast208.i = zext i16 %bf.lshr207.i to i32
  %bf.lshr212.i = lshr i16 %bf.load206.i, 11
  %bf.clear213.i = and i16 %bf.lshr212.i, 7
  %bf.cast214.i = zext i16 %bf.clear213.i to i32
  %bf.lshr218.i = lshr i16 %bf.load206.i, 7
  %bf.clear219.i = and i16 %bf.lshr218.i, 7
  %bf.cast220.i = zext i16 %bf.clear219.i to i32
  %bf.clear224.i = and i16 %bf.load206.i, 127
  %bf.cast225.i = zext i16 %bf.clear224.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.45, i32 noundef %conv203.i, i32 noundef %bf.cast208.i, i32 noundef %bf.cast214.i, i32 noundef %bf.cast220.i, i32 noundef %bf.cast225.i) #7
  br label %do.body232.i

do.body232.i:                                     ; preds = %if.then201.i, %do.body198.i.do.body232.i_crit_edge
  %133 = load i32, ptr @tda18271_debug, align 4
  %and233.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233.i)
  %tobool234.not.i = icmp eq i32 %and233.i, 0
  br i1 %tobool234.not.i, label %do.body232.i.do.body266.i_crit_edge, label %if.then235.i

do.body232.i.do.body266.i_crit_edge:              ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body266.i

if.then235.i:                                     ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #9
  %atv_mn.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 7
  %134 = ptrtoint ptr %atv_mn.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %atv_mn.i, align 4
  %conv237.i = zext i16 %135 to i32
  %agc_mode239.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 7, i32 1
  %136 = ptrtoint ptr %agc_mode239.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load240.i = load i16, ptr %agc_mode239.i, align 2
  %bf.lshr241.i = lshr i16 %bf.load240.i, 14
  %bf.cast242.i = zext i16 %bf.lshr241.i to i32
  %bf.lshr246.i = lshr i16 %bf.load240.i, 11
  %bf.clear247.i = and i16 %bf.lshr246.i, 7
  %bf.cast248.i = zext i16 %bf.clear247.i to i32
  %bf.lshr252.i = lshr i16 %bf.load240.i, 7
  %bf.clear253.i = and i16 %bf.lshr252.i, 7
  %bf.cast254.i = zext i16 %bf.clear253.i to i32
  %bf.clear258.i = and i16 %bf.load240.i, 127
  %bf.cast259.i = zext i16 %bf.clear258.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.46, i32 noundef %conv237.i, i32 noundef %bf.cast242.i, i32 noundef %bf.cast248.i, i32 noundef %bf.cast254.i, i32 noundef %bf.cast259.i) #7
  br label %do.body266.i

do.body266.i:                                     ; preds = %if.then235.i, %do.body232.i.do.body266.i_crit_edge
  %137 = load i32, ptr @tda18271_debug, align 4
  %and267.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267.i)
  %tobool268.not.i = icmp eq i32 %and267.i, 0
  br i1 %tobool268.not.i, label %do.body266.i.do.body300.i_crit_edge, label %if.then269.i

do.body266.i.do.body300.i_crit_edge:              ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body300.i

if.then269.i:                                     ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #9
  %atsc_6.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 8
  %138 = ptrtoint ptr %atsc_6.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %atsc_6.i, align 4
  %conv271.i = zext i16 %139 to i32
  %agc_mode273.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 8, i32 1
  %140 = ptrtoint ptr %agc_mode273.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load274.i = load i16, ptr %agc_mode273.i, align 2
  %bf.lshr275.i = lshr i16 %bf.load274.i, 14
  %bf.cast276.i = zext i16 %bf.lshr275.i to i32
  %bf.lshr280.i = lshr i16 %bf.load274.i, 11
  %bf.clear281.i = and i16 %bf.lshr280.i, 7
  %bf.cast282.i = zext i16 %bf.clear281.i to i32
  %bf.lshr286.i = lshr i16 %bf.load274.i, 7
  %bf.clear287.i = and i16 %bf.lshr286.i, 7
  %bf.cast288.i = zext i16 %bf.clear287.i to i32
  %bf.clear292.i = and i16 %bf.load274.i, 127
  %bf.cast293.i = zext i16 %bf.clear292.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.47, i32 noundef %conv271.i, i32 noundef %bf.cast276.i, i32 noundef %bf.cast282.i, i32 noundef %bf.cast288.i, i32 noundef %bf.cast293.i) #7
  br label %do.body300.i

do.body300.i:                                     ; preds = %if.then269.i, %do.body266.i.do.body300.i_crit_edge
  %141 = load i32, ptr @tda18271_debug, align 4
  %and301.i = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301.i)
  %tobool302.not.i = icmp eq i32 %and301.i, 0
  br i1 %tobool302.not.i, label %do.body300.i.do.body334.i_crit_edge, label %if.then303.i

do.body300.i.do.body334.i_crit_edge:              ; preds = %do.body300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body334.i

if.then303.i:                                     ; preds = %do.body300.i
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_6.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 9
  %142 = ptrtoint ptr %dvbt_6.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %dvbt_6.i, align 4
  %conv305.i = zext i16 %143 to i32
  %agc_mode307.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 9, i32 1
  %144 = ptrtoint ptr %agc_mode307.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load308.i = load i16, ptr %agc_mode307.i, align 2
  %bf.lshr309.i = lshr i16 %bf.load308.i, 14
  %bf.cast310.i = zext i16 %bf.lshr309.i to i32
  %bf.lshr314.i = lshr i16 %bf.load308.i, 11
  %bf.clear315.i = and i16 %bf.lshr314.i, 7
  %bf.cast316.i = zext i16 %bf.clear315.i to i32
  %bf.lshr320.i = lshr i16 %bf.load308.i, 7
  %bf.clear321.i = and i16 %bf.lshr320.i, 7
  %bf.cast322.i = zext i16 %bf.clear321.i to i32
  %bf.clear326.i = and i16 %bf.load308.i, 127
  %bf.cast327.i = zext i16 %bf.clear326.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.48, i32 noundef %conv305.i, i32 noundef %bf.cast310.i, i32 noundef %bf.cast316.i, i32 noundef %bf.cast322.i, i32 noundef %bf.cast327.i) #7
  br label %do.body334.i

do.body334.i:                                     ; preds = %if.then303.i, %do.body300.i.do.body334.i_crit_edge
  %145 = load i32, ptr @tda18271_debug, align 4
  %and335.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335.i)
  %tobool336.not.i = icmp eq i32 %and335.i, 0
  br i1 %tobool336.not.i, label %do.body334.i.do.body368.i_crit_edge, label %if.then337.i

do.body334.i.do.body368.i_crit_edge:              ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body368.i

if.then337.i:                                     ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_7.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 10
  %146 = ptrtoint ptr %dvbt_7.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %dvbt_7.i, align 4
  %conv339.i = zext i16 %147 to i32
  %agc_mode341.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 10, i32 1
  %148 = ptrtoint ptr %agc_mode341.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load342.i = load i16, ptr %agc_mode341.i, align 2
  %bf.lshr343.i = lshr i16 %bf.load342.i, 14
  %bf.cast344.i = zext i16 %bf.lshr343.i to i32
  %bf.lshr348.i = lshr i16 %bf.load342.i, 11
  %bf.clear349.i = and i16 %bf.lshr348.i, 7
  %bf.cast350.i = zext i16 %bf.clear349.i to i32
  %bf.lshr354.i = lshr i16 %bf.load342.i, 7
  %bf.clear355.i = and i16 %bf.lshr354.i, 7
  %bf.cast356.i = zext i16 %bf.clear355.i to i32
  %bf.clear360.i = and i16 %bf.load342.i, 127
  %bf.cast361.i = zext i16 %bf.clear360.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.49, i32 noundef %conv339.i, i32 noundef %bf.cast344.i, i32 noundef %bf.cast350.i, i32 noundef %bf.cast356.i, i32 noundef %bf.cast361.i) #7
  br label %do.body368.i

do.body368.i:                                     ; preds = %if.then337.i, %do.body334.i.do.body368.i_crit_edge
  %149 = load i32, ptr @tda18271_debug, align 4
  %and369.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369.i)
  %tobool370.not.i = icmp eq i32 %and369.i, 0
  br i1 %tobool370.not.i, label %do.body368.i.do.body402.i_crit_edge, label %if.then371.i

do.body368.i.do.body402.i_crit_edge:              ; preds = %do.body368.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body402.i

if.then371.i:                                     ; preds = %do.body368.i
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_8.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 11
  %150 = ptrtoint ptr %dvbt_8.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %dvbt_8.i, align 4
  %conv373.i = zext i16 %151 to i32
  %agc_mode375.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 11, i32 1
  %152 = ptrtoint ptr %agc_mode375.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load376.i = load i16, ptr %agc_mode375.i, align 2
  %bf.lshr377.i = lshr i16 %bf.load376.i, 14
  %bf.cast378.i = zext i16 %bf.lshr377.i to i32
  %bf.lshr382.i = lshr i16 %bf.load376.i, 11
  %bf.clear383.i = and i16 %bf.lshr382.i, 7
  %bf.cast384.i = zext i16 %bf.clear383.i to i32
  %bf.lshr388.i = lshr i16 %bf.load376.i, 7
  %bf.clear389.i = and i16 %bf.lshr388.i, 7
  %bf.cast390.i = zext i16 %bf.clear389.i to i32
  %bf.clear394.i = and i16 %bf.load376.i, 127
  %bf.cast395.i = zext i16 %bf.clear394.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.50, i32 noundef %conv373.i, i32 noundef %bf.cast378.i, i32 noundef %bf.cast384.i, i32 noundef %bf.cast390.i, i32 noundef %bf.cast395.i) #7
  br label %do.body402.i

do.body402.i:                                     ; preds = %if.then371.i, %do.body368.i.do.body402.i_crit_edge
  %153 = load i32, ptr @tda18271_debug, align 4
  %and403.i = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403.i)
  %tobool404.not.i = icmp eq i32 %and403.i, 0
  br i1 %tobool404.not.i, label %do.body402.i.do.body436.i_crit_edge, label %if.then405.i

do.body402.i.do.body436.i_crit_edge:              ; preds = %do.body402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body436.i

if.then405.i:                                     ; preds = %do.body402.i
  call void @__sanitizer_cov_trace_pc() #9
  %qam_6.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 12
  %154 = ptrtoint ptr %qam_6.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %qam_6.i, align 4
  %conv407.i = zext i16 %155 to i32
  %agc_mode409.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 12, i32 1
  %156 = ptrtoint ptr %agc_mode409.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %bf.load410.i = load i16, ptr %agc_mode409.i, align 2
  %bf.lshr411.i = lshr i16 %bf.load410.i, 14
  %bf.cast412.i = zext i16 %bf.lshr411.i to i32
  %bf.lshr416.i = lshr i16 %bf.load410.i, 11
  %bf.clear417.i = and i16 %bf.lshr416.i, 7
  %bf.cast418.i = zext i16 %bf.clear417.i to i32
  %bf.lshr422.i = lshr i16 %bf.load410.i, 7
  %bf.clear423.i = and i16 %bf.lshr422.i, 7
  %bf.cast424.i = zext i16 %bf.clear423.i to i32
  %bf.clear428.i = and i16 %bf.load410.i, 127
  %bf.cast429.i = zext i16 %bf.clear428.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.76, i32 noundef %conv407.i, i32 noundef %bf.cast412.i, i32 noundef %bf.cast418.i, i32 noundef %bf.cast424.i, i32 noundef %bf.cast429.i) #7
  br label %do.body436.i

do.body436.i:                                     ; preds = %if.then405.i, %do.body402.i.do.body436.i_crit_edge
  %157 = load i32, ptr @tda18271_debug, align 4
  %and437.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437.i)
  %tobool438.not.i = icmp eq i32 %and437.i, 0
  br i1 %tobool438.not.i, label %do.body436.i.do.body470.i_crit_edge, label %if.then439.i

do.body436.i.do.body470.i_crit_edge:              ; preds = %do.body436.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body470.i

if.then439.i:                                     ; preds = %do.body436.i
  call void @__sanitizer_cov_trace_pc() #9
  %qam_7.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 13
  %158 = ptrtoint ptr %qam_7.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %qam_7.i, align 4
  %conv441.i = zext i16 %159 to i32
  %agc_mode443.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 13, i32 1
  %160 = ptrtoint ptr %agc_mode443.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load444.i = load i16, ptr %agc_mode443.i, align 2
  %bf.lshr445.i = lshr i16 %bf.load444.i, 14
  %bf.cast446.i = zext i16 %bf.lshr445.i to i32
  %bf.lshr450.i = lshr i16 %bf.load444.i, 11
  %bf.clear451.i = and i16 %bf.lshr450.i, 7
  %bf.cast452.i = zext i16 %bf.clear451.i to i32
  %bf.lshr456.i = lshr i16 %bf.load444.i, 7
  %bf.clear457.i = and i16 %bf.lshr456.i, 7
  %bf.cast458.i = zext i16 %bf.clear457.i to i32
  %bf.clear462.i = and i16 %bf.load444.i, 127
  %bf.cast463.i = zext i16 %bf.clear462.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.77, i32 noundef %conv441.i, i32 noundef %bf.cast446.i, i32 noundef %bf.cast452.i, i32 noundef %bf.cast458.i, i32 noundef %bf.cast463.i) #7
  br label %do.body470.i

do.body470.i:                                     ; preds = %if.then439.i, %do.body436.i.do.body470.i_crit_edge
  %161 = load i32, ptr @tda18271_debug, align 4
  %and471.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and471.i)
  %tobool472.not.i = icmp eq i32 %and471.i, 0
  br i1 %tobool472.not.i, label %do.body470.i.cleanup_crit_edge, label %if.then473.i

do.body470.i.cleanup_crit_edge:                   ; preds = %do.body470.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then473.i:                                     ; preds = %do.body470.i
  call void @__sanitizer_cov_trace_pc() #9
  %qam_8.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 14
  %162 = ptrtoint ptr %qam_8.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %qam_8.i, align 4
  %conv475.i = zext i16 %163 to i32
  %agc_mode477.i = getelementptr inbounds %struct.tda18271_priv, ptr %104, i32 0, i32 13, i32 14, i32 1
  %164 = ptrtoint ptr %agc_mode477.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load478.i = load i16, ptr %agc_mode477.i, align 2
  %bf.lshr479.i = lshr i16 %bf.load478.i, 14
  %bf.cast480.i = zext i16 %bf.lshr479.i to i32
  %bf.lshr484.i = lshr i16 %bf.load478.i, 11
  %bf.clear485.i = and i16 %bf.lshr484.i, 7
  %bf.cast486.i = zext i16 %bf.clear485.i to i32
  %bf.lshr490.i = lshr i16 %bf.load478.i, 7
  %bf.clear491.i = and i16 %bf.lshr490.i, 7
  %bf.cast492.i = zext i16 %bf.clear491.i to i32
  %bf.clear496.i = and i16 %bf.load478.i, 127
  %bf.cast497.i = zext i16 %bf.clear496.i to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %104, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.78, i32 noundef %conv475.i, i32 noundef %bf.cast480.i, i32 noundef %bf.cast486.i, i32 noundef %bf.cast492.i, i32 noundef %bf.cast497.i) #7
  br label %cleanup

fail:                                             ; preds = %if.then106, %if.then95, %__fail.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #7
  tail call void @tda18271_release(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then473.i, %do.body470.i.cleanup_crit_edge, %if.end186.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %fe, %if.end186.cleanup_crit_edge ], [ %fe, %do.body470.i.cleanup_crit_edge ], [ %fe, %if.then473.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_tda_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_assign_map_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_init_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda18271c2_rf_cal_init(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %freq.addr.i.i.i = alloca i32, align 4
  %cid_target.i.i.i = alloca i8, align 1
  %count_limit.i.i.i = alloca i16, align 2
  %freq.i.i.i = alloca i32, align 4
  %freq.addr.i.i = alloca i32, align 4
  %rf_default.i.i = alloca [3 x i32], align 4
  %rf_freq.i.i = alloca [3 x i32], align 4
  %prog_cal.i.i = alloca [3 x i32], align 4
  %prog_tab.i.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cal_initialized = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %cal_initialized to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %cal_initialized, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %cal_initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cal_initialized2 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %cal_initialized2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load3 = load i8, ptr %cal_initialized2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3)
  %tobool.not = icmp sgt i8 %bf.load3, -1
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_priv, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  tail call void @msleep(i32 noundef 200) #7
  %9 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 5
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %13 = and i8 %12, -32
  %14 = or i8 %13, 18
  store i8 %14, ptr %arrayidx.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %10, i32 6
  %15 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5.i.i, align 1
  %17 = and i8 %16, -32
  store i8 %17, ptr %arrayidx5.i.i, align 1
  %call.i.i = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end16.critedge.i.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_powerscan_init, ptr noundef nonnull @.str.9, i32 noundef %call.i.i, i32 noundef 540) #7
  br label %if.then.i

if.end16.critedge.i.i:                            ; preds = %if.end5
  %arrayidx17.i.i = getelementptr i8, ptr %10, i32 33
  %18 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17.i.i, align 1
  %20 = and i8 %19, -4
  store i8 %20, ptr %arrayidx17.i.i, align 1
  %call21.i.i = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 33, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp23.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp23.i.i, label %if.then26.i.i, label %tda18271_powerscan_init.exit.i

if.then26.i.i:                                    ; preds = %if.end16.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_powerscan_init, ptr noundef nonnull @.str.9, i32 noundef %call21.i.i, i32 noundef 545) #7
  br label %if.then.i

tda18271_powerscan_init.exit.i:                   ; preds = %if.end16.critedge.i.i
  %arrayidx32.i.i = getelementptr i8, ptr %10, i32 36
  %21 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx32.i.i, align 1
  %23 = and i8 %22, -4
  store i8 %23, ptr %arrayidx32.i.i, align 1
  %arrayidx36.i.i = getelementptr i8, ptr %10, i32 38
  %24 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx36.i.i, align 1
  %26 = or i8 %25, 6
  store i8 %26, ptr %arrayidx36.i.i, align 1
  %call44.i.i = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 36, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %cmp.i = icmp slt i32 %call44.i.i, 0
  br i1 %cmp.i, label %tda18271_powerscan_init.exit.i.if.then.i_crit_edge, label %for.cond.preheader.i

tda18271_powerscan_init.exit.i.if.then.i_crit_edge: ; preds = %tda18271_powerscan_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.preheader.i:                             ; preds = %tda18271_powerscan_init.exit.i
  %arrayidx82.i = getelementptr %struct.tda18271_priv, ptr %8, i32 0, i32 14, i32 0
  %27 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.not83.i = icmp eq i32 %28, 0
  br i1 %cmp6.not83.i, label %for.cond.preheader.i.if.end13.critedge_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end13.critedge_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.critedge

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %29 = getelementptr inbounds [3 x i32], ptr %rf_freq.i.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i32], ptr %rf_freq.i.i, i32 0, i32 2
  %31 = getelementptr inbounds [3 x i32], ptr %prog_cal.i.i, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i32], ptr %prog_cal.i.i, i32 0, i32 2
  %33 = getelementptr inbounds [3 x i32], ptr %prog_tab.i.i, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i32], ptr %prog_tab.i.i, i32 0, i32 2
  %35 = getelementptr inbounds [3 x i32], ptr %rf_default.i.i, i32 0, i32 2
  %36 = getelementptr inbounds [3 x i32], ptr %rf_default.i.i, i32 0, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %tda18271_powerscan_init.exit.i.if.then.i_crit_edge, %if.then26.i.i, %if.then.i.i
  %ret.0.i46.i = phi i32 [ %call44.i.i, %tda18271_powerscan_init.exit.i.if.then.i_crit_edge ], [ %call21.i.i, %if.then26.i.i ], [ %call.i.i, %if.then.i.i ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.9, i32 noundef %ret.0.i46.i, i32 noundef 643) #7
  br label %if.then9

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %37 = phi i32 [ %28, %for.body.lr.ph.i ], [ %193, %for.inc.critedge.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %37, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.addr.i.i) #7
  %38 = ptrtoint ptr %freq.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.i, ptr %freq.addr.i.i, align 4
  %39 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf_default.i.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf_freq.i.i) #7
  %41 = ptrtoint ptr %rf_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %rf_freq.i.i, align 4, !annotation !216
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %29, align 4, !annotation !216
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %30, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %prog_cal.i.i) #7
  %44 = ptrtoint ptr %prog_cal.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %prog_cal.i.i, align 4, !annotation !216
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %31, align 4, !annotation !216
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %32, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %prog_tab.i.i) #7
  %47 = ptrtoint ptr %prog_tab.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %prog_tab.i.i, align 4, !annotation !216
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %33, align 4, !annotation !216
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %34, align 4, !annotation !216
  %call.i41.i = call i32 @tda18271_lookup_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.addr.i.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i42.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp.i42.i, label %if.then.i43.i, label %if.end4.i.i

if.then.i43.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.9, i32 noundef %call.i41.i, i32 noundef 576) #7
  br label %if.then16.i

if.end4.i.i:                                      ; preds = %for.body.i
  %rf_cal_state.i.i = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 14
  %rf1_def.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 2
  %50 = ptrtoint ptr %rf1_def.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rf1_def.i.i, align 4
  %mul.i.i = mul i32 %51, 1000
  %52 = ptrtoint ptr %rf_default.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i.i, ptr %rf_default.i.i, align 4
  %rf2_def.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 3
  %53 = ptrtoint ptr %rf2_def.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rf2_def.i.i, align 4
  %mul7.i.i = mul i32 %54, 1000
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul7.i.i, ptr %36, align 4
  %rf3_def.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 4
  %56 = ptrtoint ptr %rf3_def.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rf3_def.i.i, align 4
  %mul10.i.i = mul i32 %57, 1000
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul10.i.i, ptr %35, align 4
  %arrayidx37.i.i = getelementptr i8, ptr %40, i32 29
  %rf_a2.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 10
  %rf_b2.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 11
  %rf3.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 7
  %rf_a168.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 8
  %rf2.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 6
  %rf_b1.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 9
  %rf1.i.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i.i, i32 %call.i41.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp15.i80.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp15.i80.i, label %if.end4.i.i.for.inc.critedge.i_crit_edge, label %if.end4.i.i.do.body.i.i_crit_edge

if.end4.i.i.do.body.i.i_crit_edge:                ; preds = %if.end4.i.i
  br label %do.body.i.i

if.end4.i.i.for.inc.critedge.i_crit_edge:         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end4.i.i.do.body.i.i_crit_edge
  %59 = phi i32 [ %191, %for.inc.i.i.do.body.i.i_crit_edge ], [ %mul.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %rf.0186.i81.i = phi i32 [ %inc.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ 0, %if.end4.i.i.do.body.i.i_crit_edge ]
  %60 = load i32, ptr @tda18271_debug, align 4
  %and.i.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool19.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then20.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then20.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %freq.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %freq.addr.i.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %40, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.31, i32 noundef %62, i32 noundef %rf.0186.i81.i) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then20.i.i, %do.body.i.i.do.end.i.i_crit_edge
  %arrayidx23.i.i = getelementptr [3 x i32], ptr %rf_freq.i.i, i32 0, i32 %rf.0186.i81.i
  %63 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cid_target.i.i.i) #7
  %65 = ptrtoint ptr %cid_target.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %cid_target.i.i.i, align 1, !annotation !216
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %count_limit.i.i.i) #7
  %66 = ptrtoint ptr %count_limit.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %count_limit.i.i.i, align 2, !annotation !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i.i.i) #7
  %67 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %59, ptr %freq.i.i.i, align 4
  %call.i.i.i = call i32 @tda18271_calc_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.i.i.i) #7
  %call1.i.i.i = call i32 @tda18271_calc_rf_cal(ptr noundef %fe, ptr noundef nonnull %freq.i.i.i) #7
  %call2.i.i.i = call i32 @tda18271_calc_gain_taper(ptr noundef %fe, ptr noundef nonnull %freq.i.i.i) #7
  %call3.i.i.i = call i32 @tda18271_lookup_cid_target(ptr noundef %fe, ptr noundef nonnull %freq.i.i.i, ptr noundef nonnull %cid_target.i.i.i, ptr noundef nonnull %count_limit.i.i.i) #7
  %call4.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call5.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 29, i32 noundef 1) #7
  %68 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %freq.i.i.i, align 4
  %add.i.i.i = add i32 %69, 1000000
  store i32 %add.i.i.i, ptr %freq.i.i.i, align 4
  %call6.i.i.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %add.i.i.i) #7
  %call7.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 12, i32 noundef 4) #7
  call void @msleep(i32 noundef 5) #7
  %arrayidx.i.i.i = getelementptr i8, ptr %64, i32 6
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.i, align 1
  %72 = and i8 %71, -4
  %73 = or i8 %72, 1
  store i8 %73, ptr %arrayidx.i.i.i, align 1
  %call12.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 1) #7
  %call13.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call14.i.i.i = call i32 @tda18271_read_extended(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call14.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end18.i.i.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %64, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.9, i32 noundef %call14.i.i.i, i32 noundef 467) #7
  br label %if.then29.i.i

if.end18.i.i.i:                                   ; preds = %do.end.i.i
  %74 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %59, ptr %arrayidx23.i.i, align 4
  %arrayidx19.i.i.i = getelementptr i8, ptr %64, i32 25
  %add25.i.i.i = add i32 %59, 1000000
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end43.i.i.i.while.cond.i.i.i_crit_edge, %if.end18.i.i.i
  %count.0.i.i.i = phi i32 [ %add44.i.i.i, %if.end43.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %if.end18.i.i.i ]
  %75 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.i.i.i, align 1
  %77 = and i8 %76, 63
  %78 = ptrtoint ptr %cid_target.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cid_target.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp23.i.i.i = icmp ult i8 %77, %79
  br i1 %cmp23.i.i.i, label %if.end31.i.i.i, label %while.cond.i.i.i.while.end.i.i.i_crit_edge

while.cond.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

if.end31.i.i.i:                                   ; preds = %while.cond.i.i.i
  %add26.i.i.i = add i32 %add25.i.i.i, %count.0.i.i.i
  %80 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add26.i.i.i, ptr %freq.i.i.i, align 4
  %call27.i.i.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %add26.i.i.i) #7
  %call28.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 12, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 21474800) #7
  %call32.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call33.i.i.i = call i32 @tda18271_read_extended(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %cmp35.i.i.i = icmp slt i32 %call33.i.i.i, 0
  br i1 %cmp35.i.i.i, label %if.end31.i.i.i.if.then38.i.i.i_crit_edge, label %if.end43.i.i.i

if.end31.i.i.i.if.then38.i.i.i_crit_edge:         ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i.i

if.then38.i.i.i:                                  ; preds = %if.end31.1.i.i.i.if.then38.i.i.i_crit_edge, %if.end31.i.i.i.if.then38.i.i.i_crit_edge
  %call33.lcssa.i.i.i = phi i32 [ %call33.1.i.i.i, %if.end31.1.i.i.i.if.then38.i.i.i_crit_edge ], [ %call33.i.i.i, %if.end31.i.i.i.if.then38.i.i.i_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %64, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.9, i32 noundef %call33.lcssa.i.i.i, i32 noundef 495) #7
  br label %if.then29.i.i

if.end43.i.i.i:                                   ; preds = %if.end31.i.i.i
  %add44.i.i.i = add nuw nsw i32 %count.0.i.i.i, 200
  %82 = ptrtoint ptr %count_limit.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %count_limit.i.i.i, align 2
  %conv45.i.i.i = zext i16 %83 to i32
  %cmp46.not.i.i.i = icmp ugt i32 %add44.i.i.i, %conv45.i.i.i
  br i1 %cmp46.not.i.i.i, label %if.end43.i.i.i.while.cond.1.i.i.i_crit_edge, label %if.end43.i.i.i.while.cond.i.i.i_crit_edge

if.end43.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

if.end43.i.i.i.while.cond.1.i.i.i_crit_edge:      ; preds = %if.end43.i.i.i
  br label %while.cond.1.i.i.i

while.cond.1.i.i.i:                               ; preds = %if.end43.1.i.i.i.while.cond.1.i.i.i_crit_edge, %if.end43.i.i.i.while.cond.1.i.i.i_crit_edge
  %count.0.1.i.i.i = phi i32 [ %add44.1.i.i.i, %if.end43.1.i.i.i.while.cond.1.i.i.i_crit_edge ], [ 200, %if.end43.i.i.i.while.cond.1.i.i.i_crit_edge ]
  %tobool29.not.1.i.i.i = phi i1 [ true, %if.end43.1.i.i.i.while.cond.1.i.i.i_crit_edge ], [ false, %if.end43.i.i.i.while.cond.1.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx19.i.i.i, align 1
  %86 = and i8 %85, 63
  %87 = ptrtoint ptr %cid_target.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %cid_target.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp23.1.i.i.i = icmp ult i8 %86, %88
  br i1 %cmp23.1.i.i.i, label %while.body.1.i.i.i, label %while.cond.1.i.i.i.while.end.i.i.i_crit_edge

while.cond.1.i.i.i.while.end.i.i.i_crit_edge:     ; preds = %while.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

while.body.1.i.i.i:                               ; preds = %while.cond.1.i.i.i
  %add25.1.i.i.i = sub nuw nsw i32 1000000, %count.0.1.i.i.i
  %add26.1.i.i.i = add i32 %add25.1.i.i.i, %59
  %89 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add26.1.i.i.i, ptr %freq.i.i.i, align 4
  %call27.1.i.i.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %add26.1.i.i.i) #7
  %call28.1.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 12, i32 noundef 4) #7
  br i1 %tobool29.not.1.i.i.i, label %if.else.1.i.i.i, label %if.then30.1.i.i.i

if.then30.1.i.i.i:                                ; preds = %while.body.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 5) #7
  br label %if.end31.1.i.i.i

if.else.1.i.i.i:                                  ; preds = %while.body.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 21474800) #7
  br label %if.end31.1.i.i.i

if.end31.1.i.i.i:                                 ; preds = %if.else.1.i.i.i, %if.then30.1.i.i.i
  %call32.1.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call33.1.i.i.i = call i32 @tda18271_read_extended(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.1.i.i.i)
  %cmp35.1.i.i.i = icmp slt i32 %call33.1.i.i.i, 0
  br i1 %cmp35.1.i.i.i, label %if.end31.1.i.i.i.if.then38.i.i.i_crit_edge, label %if.end43.1.i.i.i

if.end31.1.i.i.i.if.then38.i.i.i_crit_edge:       ; preds = %if.end31.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i.i

if.end43.1.i.i.i:                                 ; preds = %if.end31.1.i.i.i
  %add44.1.i.i.i = add nuw nsw i32 %count.0.1.i.i.i, 200
  %91 = ptrtoint ptr %count_limit.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %count_limit.i.i.i, align 2
  %conv45.1.i.i.i = zext i16 %92 to i32
  %cmp46.not.1.i.i.i = icmp ugt i32 %add44.1.i.i.i, %conv45.1.i.i.i
  br i1 %cmp46.not.1.i.i.i, label %if.end43.1.i.i.i.while.end.i.i.i_crit_edge, label %if.end43.1.i.i.i.while.cond.1.i.i.i_crit_edge

if.end43.1.i.i.i.while.cond.1.i.i.i_crit_edge:    ; preds = %if.end43.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.1.i.i.i

if.end43.1.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %if.end43.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end43.1.i.i.i.while.end.i.i.i_crit_edge, %while.cond.1.i.i.i.while.end.i.i.i_crit_edge, %while.cond.i.i.i.while.end.i.i.i_crit_edge
  %93 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx19.i.i.i, align 1
  %95 = and i8 %94, 63
  %96 = ptrtoint ptr %cid_target.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cid_target.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp59.not.i.i.i = icmp ult i8 %95, %97
  br i1 %cmp59.not.i.i.i, label %while.end.i.i.i.do.body.i.i.i_crit_edge, label %if.then61.i.i.i

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

if.then61.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %freq.i.i.i, align 4
  %sub.i.i.i = add i32 %99, -1000000
  %100 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub.i.i.i, ptr %arrayidx23.i.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then61.i.i.i, %while.end.i.i.i.do.body.i.i.i_crit_edge
  %bcal.0.i.i.i = phi i32 [ 1, %if.then61.i.i.i ], [ 0, %while.end.i.i.i.do.body.i.i.i_crit_edge ]
  %101 = load i32, ptr @tda18271_debug, align 4
  %and64.i.i.i = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i.i)
  %tobool65.not.i.i.i = icmp eq i32 %and64.i.i.i, 0
  br i1 %tobool65.not.i.i.i, label %do.body.i.i.i.if.end34.i.i_crit_edge, label %if.then66.i.i.i

do.body.i.i.i.if.end34.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.then66.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx23.i.i, align 4
  %104 = ptrtoint ptr %freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %freq.i.i.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %64, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.32, i32 noundef %bcal.0.i.i.i, i32 noundef %59, i32 noundef %103, i32 noundef %105) #7
  br label %if.end34.i.i

if.then29.i.i:                                    ; preds = %if.then38.i.i.i, %if.then.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ %call33.lcssa.i.i.i, %if.then38.i.i.i ], [ %call14.i.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count_limit.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cid_target.i.i.i) #7
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph.i.i, i32 noundef 590) #7
  br label %if.then16.i

if.end34.i.i:                                     ; preds = %if.then66.i.i.i, %do.body.i.i.i.if.end34.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count_limit.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cid_target.i.i.i) #7
  %call36.i.i = call i32 @tda18271_calc_rf_cal(ptr noundef %fe, ptr noundef %arrayidx23.i.i) #7
  %106 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx37.i.i, align 1
  %conv38.i.i = zext i8 %107 to i32
  %arrayidx39.i.i = getelementptr [3 x i32], ptr %prog_tab.i.i, i32 0, i32 %rf.0186.i81.i
  %108 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv38.i.i, ptr %arrayidx39.i.i, align 4
  br i1 %cmp59.not.i.i.i, label %if.end34.i.i.if.end48.i.i_crit_edge, label %if.then42.i.i

if.end34.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then42.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx23.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.addr.i.i.i) #7
  %111 = ptrtoint ptr %freq.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %freq.addr.i.i.i, align 4
  %112 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i161.i.i = getelementptr i8, ptr %113, i32 6
  %114 = ptrtoint ptr %arrayidx.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i161.i.i, align 1
  %116 = and i8 %115, -4
  store i8 %116, ptr %arrayidx.i161.i.i, align 1
  %call.i162.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 1) #7
  %arrayidx2.i.i.i = getelementptr i8, ptr %113, i32 5
  %117 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx2.i.i.i, align 1
  %119 = or i8 %118, 64
  store i8 %119, ptr %arrayidx2.i.i.i, align 1
  %arrayidx5.i.i.i = getelementptr i8, ptr %113, i32 33
  %120 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx5.i.i.i, align 1
  %122 = or i8 %121, 3
  store i8 %122, ptr %arrayidx5.i.i.i, align 1
  %call9.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 33, i32 noundef 1) #7
  %call10.i.i.i = call i32 @tda18271_calc_bp_filter(ptr noundef %fe, ptr noundef nonnull %freq.addr.i.i.i) #7
  %call11.i.i.i = call i32 @tda18271_calc_gain_taper(ptr noundef %fe, ptr noundef nonnull %freq.addr.i.i.i) #7
  %call12.i163.i.i = call i32 @tda18271_calc_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.addr.i.i.i) #7
  %call13.i164.i.i = call i32 @tda18271_calc_km(ptr noundef %fe, ptr noundef nonnull %freq.addr.i.i.i) #7
  %call14.i165.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 3) #7
  %call15.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 28, i32 noundef 1) #7
  %call16.i.i.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef 0, i32 noundef 1) #7
  %call17.i.i.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef 1, i32 noundef 1) #7
  %arrayidx18.i.i.i = getelementptr i8, ptr %113, i32 29
  %123 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx18.i.i.i, align 1
  %call19.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 29, i32 noundef 1) #7
  %arrayidx20.i.i.i = getelementptr i8, ptr %113, i32 35
  %124 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx20.i.i.i, align 1
  %126 = and i8 %125, -33
  store i8 %126, ptr %arrayidx20.i.i.i, align 1
  %call24.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1) #7
  %127 = ptrtoint ptr %arrayidx.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i161.i.i, align 1
  %129 = or i8 %128, 3
  store i8 %129, ptr %arrayidx.i161.i.i, align 1
  %call29.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 2) #7
  %130 = ptrtoint ptr %freq.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %freq.addr.i.i.i, align 4
  %call30.i.i.i = call i32 @tda18271_calc_cal_pll(ptr noundef %fe, i32 noundef %131) #7
  %call31.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 8, i32 noundef 4) #7
  %add.i166.i.i = add i32 %131, 1000000
  %call32.i167.i.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %add.i166.i.i) #7
  %call33.i168.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 12, i32 noundef 4) #7
  call void @msleep(i32 noundef 5) #7
  %call34.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call35.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %call36.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call37.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %call38.i.i.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef 0, i32 noundef 0) #7
  %call39.i.i.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef 1, i32 noundef 0) #7
  call void @msleep(i32 noundef 10) #7
  %132 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx20.i.i.i, align 1
  %134 = or i8 %133, 32
  store i8 %134, ptr %arrayidx20.i.i.i, align 1
  %call44.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1) #7
  call void @msleep(i32 noundef 60) #7
  %135 = ptrtoint ptr %arrayidx.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i161.i.i, align 1
  %137 = and i8 %136, -4
  store i8 %137, ptr %arrayidx.i161.i.i, align 1
  %138 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx2.i.i.i, align 1
  %140 = and i8 %139, -65
  store i8 %140, ptr %arrayidx2.i.i.i, align 1
  %141 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx5.i.i.i, align 1
  %143 = and i8 %142, -4
  store i8 %143, ptr %arrayidx5.i.i.i, align 1
  %call57.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 33, i32 noundef 1) #7
  %call58.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 2) #7
  %call59.i.i.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %call60.i.i.i = call i32 @tda18271_read_extended(ptr noundef %fe) #7
  %144 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx18.i.i.i, align 1
  %conv62.i.i.i = zext i8 %145 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i.i.i) #7
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then42.i.i, %if.end34.i.i.if.end48.i.i_crit_edge
  %conv62.i.sink.i.i = phi i32 [ %conv62.i.i.i, %if.then42.i.i ], [ %conv38.i.i, %if.end34.i.i.if.end48.i.i_crit_edge ]
  %146 = getelementptr [3 x i32], ptr %prog_cal.i.i, i32 0, i32 %rf.0186.i81.i
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv62.i.sink.i.i, ptr %146, align 4
  %148 = zext i32 %rf.0186.i81.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %rf.0186.i81.i, label %do.body93.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb55.i.i
    i32 2, label %for.inc.thread.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %rf_a168.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %rf_a168.i.i, align 4
  %150 = ptrtoint ptr %prog_cal.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %prog_cal.i.i, align 4
  %152 = ptrtoint ptr %prog_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %prog_tab.i.i, align 4
  %sub.i.i = sub i32 %151, %153
  %154 = ptrtoint ptr %rf_b1.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub.i.i, ptr %rf_b1.i.i, align 4
  %155 = ptrtoint ptr %rf_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rf_freq.i.i, align 4
  br label %for.inc.i.i

sw.bb55.i.i:                                      ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %31, align 4
  %159 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %33, align 4
  %161 = ptrtoint ptr %prog_cal.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %prog_cal.i.i, align 4
  %163 = ptrtoint ptr %prog_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %prog_tab.i.i, align 4
  %165 = add i32 %160, %162
  %sub60.i.i = sub i32 %158, %165
  %add.i.i = add i32 %sub60.i.i, %164
  %166 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %29, align 4
  %168 = ptrtoint ptr %rf_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rf_freq.i.i, align 4
  %sub64.i.i = sub i32 %167, %169
  %div65.i.i = sdiv i32 %sub64.i.i, 1000
  %div66.i.i = sdiv i32 %add.i.i, %div65.i.i
  %170 = ptrtoint ptr %rf_a168.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %div66.i.i, ptr %rf_a168.i.i, align 4
  %171 = load i32, ptr %29, align 4
  br label %for.inc.i.i

for.inc.thread.i.i:                               ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %32, align 4
  %174 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %34, align 4
  %176 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %31, align 4
  %178 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %33, align 4
  %180 = add i32 %175, %177
  %sub77.i.i = sub i32 %173, %180
  %add79.i.i = add i32 %sub77.i.i, %179
  %181 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %30, align 4
  %183 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %29, align 4
  %sub82.i.i = sub i32 %182, %184
  %div83.i.i = sdiv i32 %sub82.i.i, 1000
  %div84.i.i = sdiv i32 %add79.i.i, %div83.i.i
  %185 = ptrtoint ptr %rf_a2.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %div84.i.i, ptr %rf_a2.i.i, align 4
  %sub88.i.i = sub i32 %177, %179
  %186 = ptrtoint ptr %rf_b2.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub88.i.i, ptr %rf_b2.i.i, align 4
  %187 = load i32, ptr %30, align 4
  %div91.i.i = udiv i32 %187, 1000
  %188 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %div91.i.i, ptr %rf3.i.i, align 4
  br label %for.inc.critedge.i

do.body93.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-fe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #7, !srcloc !217
  unreachable

for.inc.i.i:                                      ; preds = %sw.bb55.i.i, %sw.bb.i.i
  %.sink.i.i = phi i32 [ %156, %sw.bb.i.i ], [ %171, %sw.bb55.i.i ]
  %rf1.sink.i.i = phi ptr [ %rf1.i.i, %sw.bb.i.i ], [ %rf2.i.i, %sw.bb55.i.i ]
  %div.i.i = udiv i32 %.sink.i.i, 1000
  %189 = ptrtoint ptr %rf1.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %div.i.i, ptr %rf1.sink.i.i, align 4
  %inc.i.i = add nuw nsw i32 %rf.0186.i81.i, 1
  %arrayidx14.i.i = getelementptr [3 x i32], ptr %rf_default.i.i, i32 0, i32 %inc.i.i
  %190 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx14.i.i, align 4
  %cmp15.i.i = icmp eq i32 %191, 0
  br i1 %cmp15.i.i, label %for.inc.i.i.for.inc.critedge.i_crit_edge, label %for.inc.i.i.do.body.i.i_crit_edge

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.inc.i.i.for.inc.critedge.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i

if.then16.i:                                      ; preds = %if.then29.i.i, %if.then.i43.i
  %retval.0.i.ph.i = phi i32 [ %retval.0.i.ph.i.i, %if.then29.i.i ], [ %call.i41.i, %if.then.i43.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prog_tab.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prog_cal.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf_freq.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf_default.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i.i) #7
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph.i, i32 noundef 651) #7
  br label %if.then9

for.inc.critedge.i:                               ; preds = %for.inc.i.i.for.inc.critedge.i_crit_edge, %for.inc.thread.i.i, %if.end4.i.i.for.inc.critedge.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prog_tab.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prog_cal.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf_freq.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf_default.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i.i) #7
  %inc.i = add i32 %i.084.i, 1
  %arrayidx.i = getelementptr %struct.tda18271_priv, ptr %8, i32 0, i32 14, i32 %inc.i
  %192 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i, align 4
  %cmp6.not.i = icmp eq i32 %193, 0
  br i1 %cmp6.not.i, label %for.inc.critedge.i.if.end13.critedge_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.critedge.i.if.end13.critedge_crit_edge:   ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.critedge

if.then9:                                         ; preds = %if.then16.i, %if.then.i
  %ret.1.i.ph = phi i32 [ %retval.0.i.ph.i, %if.then16.i ], [ %ret.0.i46.i, %if.then.i ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271c2_rf_cal_init, ptr noundef nonnull @.str.9, i32 noundef %ret.1.i.ph, i32 noundef 676) #7
  br label %do.end33

if.end13.critedge:                                ; preds = %for.inc.critedge.i.if.end13.critedge_crit_edge, %for.cond.preheader.i.if.end13.critedge_crit_edge
  %call22.i = call fastcc i32 @tda18271_read_thermometer(ptr noundef %fe) #7
  %conv23.i = trunc i32 %call22.i to i8
  %tm_rfcal.i = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 11
  %194 = ptrtoint ptr %tm_rfcal.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv23.i, ptr %tm_rfcal.i, align 1
  %195 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i3 = getelementptr i8, ptr %196, i32 27
  %197 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i3, align 1
  %199 = and i8 %198, -33
  store i8 %199, ptr %arrayidx.i3, align 1
  %call.i4 = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i5 = icmp slt i32 %call.i4, 0
  br i1 %cmp.i5, label %if.then.i6, label %if.end5.critedge.i

if.then.i6:                                       ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %196, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.9, i32 noundef %call.i4, i32 noundef 302) #7
  br label %if.then19

if.end5.critedge.i:                               ; preds = %if.end13.critedge
  %arrayidx6.i = getelementptr i8, ptr %196, i32 33
  %200 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx6.i, align 1
  %202 = and i8 %201, 124
  store i8 %202, ptr %arrayidx6.i, align 1
  %call14.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 33, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp16.i = icmp slt i32 %call14.i, 0
  br i1 %cmp16.i, label %if.then19.i, label %if.end24.critedge.i

if.then19.i:                                      ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %196, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.9, i32 noundef %call14.i, i32 noundef 308) #7
  br label %if.then19

if.end24.critedge.i:                              ; preds = %if.end5.critedge.i
  %arrayidx25.i = getelementptr i8, ptr %196, i32 36
  %203 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx25.i, align 1
  %205 = or i8 %204, 3
  store i8 %205, ptr %arrayidx25.i, align 1
  %call28.i = call i32 @tda18271_set_standby_mode(ptr noundef %fe, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp30.i = icmp slt i32 %call28.i, 0
  br i1 %cmp30.i, label %if.then33.i, label %tda18271_por.exit

if.then33.i:                                      ; preds = %if.end24.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %196, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.9, i32 noundef %call28.i, i32 noundef 315) #7
  br label %if.then19

tda18271_por.exit:                                ; preds = %if.end24.critedge.i
  %arrayidx39.i = getelementptr i8, ptr %196, i32 38
  %206 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx39.i, align 1
  %208 = and i8 %207, -7
  store i8 %208, ptr %arrayidx39.i, align 1
  %call47.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 36, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp16 = icmp slt i32 %call47.i, 0
  br i1 %cmp16, label %tda18271_por.exit.if.then19_crit_edge, label %do.end.critedge

tda18271_por.exit.if.then19_crit_edge:            ; preds = %tda18271_por.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %tda18271_por.exit.if.then19_crit_edge, %if.then33.i, %if.then19.i, %if.then.i6
  %ret.0.i12 = phi i32 [ %call47.i, %tda18271_por.exit.if.then19_crit_edge ], [ %call28.i, %if.then33.i ], [ %call14.i, %if.then19.i ], [ %call.i4, %if.then.i6 ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271c2_rf_cal_init, ptr noundef nonnull @.str.9, i32 noundef %ret.0.i12, i32 noundef 680) #7
  br label %do.end33

do.end.critedge:                                  ; preds = %tda18271_por.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  %209 = ptrtoint ptr %cal_initialized2 to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load28 = load i8, ptr %cal_initialized2, align 4
  %bf.set30 = or i8 %bf.load28, -128
  store i8 %bf.set30, ptr %cal_initialized2, align 4
  br label %cleanup

do.end33:                                         ; preds = %if.then19, %if.then9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end.critedge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_toggle_output(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %output_opt = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %output_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_opt, align 4
  %and = and i32 %3, 1
  %and4 = lshr i32 %3, 1
  %and4.lobit = and i32 %and4, 1
  %call = tail call i32 @tda18271_set_standby_mode(ptr noundef %fe, i32 noundef 1, i32 noundef %and, i32 noundef %and4.lobit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_toggle_output, ptr noundef nonnull @.str.9, i32 noundef %call, i32 noundef 36) #7
  br label %fail

do.body.critedge:                                 ; preds = %entry
  %4 = load i32, ptr @tda18271_debug, align 4
  %and11 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.critedge.fail_crit_edge, label %if.then13

do.body.critedge.fail_crit_edge:                  ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then13:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %output_opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_opt, align 4
  %and17 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.37, ptr @.str.36
  %and21 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_toggle_output, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23) #7
  br label %fail

fail:                                             ; preds = %if.then13, %do.body.critedge.fail_crit_edge, %if.then
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda18271_update_std_map(ptr nocapture noundef readonly %fe, ptr noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %std1 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %map, align 4
  %conv = zext i16 %3 to i32
  %agc_mode = getelementptr inbounds %struct.tda18271_std_map_item, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %agc_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %agc_mode, align 2
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.cast = zext i16 %bf.lshr to i32
  %add = add nuw nsw i32 %bf.cast, %conv
  %bf.lshr6 = lshr i16 %bf.load, 11
  %bf.clear = and i16 %bf.lshr6, 7
  %bf.cast7 = zext i16 %bf.clear to i32
  %add8 = add nuw nsw i32 %add, %bf.cast7
  %bf.lshr11 = lshr i16 %bf.load, 7
  %bf.clear12 = and i16 %bf.lshr11, 7
  %bf.cast13 = zext i16 %bf.clear12 to i32
  %add14 = add nuw nsw i32 %add8, %bf.cast13
  %bf.clear17 = and i16 %bf.load, 127
  %bf.cast18 = zext i16 %bf.clear17 to i32
  %add19 = sub nsw i32 0, %bf.cast18
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %add19)
  %cmp.not = icmp eq i32 %add14, %add19
  br i1 %cmp.not, label %do.body.do.body31_crit_edge, label %do.body22

do.body.do.body31_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

do.body22:                                        ; preds = %do.body
  %5 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.body22.do.end_crit_edge, label %if.then24

do.body22.do.end_crit_edge:                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then24:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body22.do.end_crit_edge
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map, align 4
  %8 = ptrtoint ptr %std1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %std1, align 4
  br label %do.body31

do.body31:                                        ; preds = %do.end, %do.body.do.body31_crit_edge
  %atv_b = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 1
  %9 = ptrtoint ptr %atv_b to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %atv_b, align 4
  %conv33 = zext i16 %10 to i32
  %agc_mode35 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %agc_mode35 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load36 = load i16, ptr %agc_mode35, align 2
  %bf.lshr37 = lshr i16 %bf.load36, 14
  %bf.cast38 = zext i16 %bf.lshr37 to i32
  %add39 = add nuw nsw i32 %bf.cast38, %conv33
  %bf.lshr43 = lshr i16 %bf.load36, 11
  %bf.clear44 = and i16 %bf.lshr43, 7
  %bf.cast45 = zext i16 %bf.clear44 to i32
  %add46 = add nuw nsw i32 %add39, %bf.cast45
  %bf.lshr50 = lshr i16 %bf.load36, 7
  %bf.clear51 = and i16 %bf.lshr50, 7
  %bf.cast52 = zext i16 %bf.clear51 to i32
  %add53 = add nuw nsw i32 %add46, %bf.cast52
  %bf.clear57 = and i16 %bf.load36, 127
  %bf.cast58 = zext i16 %bf.clear57 to i32
  %add59 = sub nsw i32 0, %bf.cast58
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %add59)
  %cmp60.not = icmp eq i32 %add53, %add59
  br i1 %cmp60.not, label %do.body31.do.body75_crit_edge, label %do.body63

do.body31.do.body75_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body75

do.body63:                                        ; preds = %do.body31
  %12 = load i32, ptr @tda18271_debug, align 4
  %and64 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.do.end69_crit_edge, label %if.then66

do.body63.do.end69_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.then66:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body63.do.end69_crit_edge
  %atv_b70 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %atv_b to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %atv_b, align 4
  %15 = ptrtoint ptr %atv_b70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %atv_b70, align 4
  br label %do.body75

do.body75:                                        ; preds = %do.end69, %do.body31.do.body75_crit_edge
  %atv_dk = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 2
  %16 = ptrtoint ptr %atv_dk to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %atv_dk, align 4
  %conv77 = zext i16 %17 to i32
  %agc_mode79 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %agc_mode79 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load80 = load i16, ptr %agc_mode79, align 2
  %bf.lshr81 = lshr i16 %bf.load80, 14
  %bf.cast82 = zext i16 %bf.lshr81 to i32
  %add83 = add nuw nsw i32 %bf.cast82, %conv77
  %bf.lshr87 = lshr i16 %bf.load80, 11
  %bf.clear88 = and i16 %bf.lshr87, 7
  %bf.cast89 = zext i16 %bf.clear88 to i32
  %add90 = add nuw nsw i32 %add83, %bf.cast89
  %bf.lshr94 = lshr i16 %bf.load80, 7
  %bf.clear95 = and i16 %bf.lshr94, 7
  %bf.cast96 = zext i16 %bf.clear95 to i32
  %add97 = add nuw nsw i32 %add90, %bf.cast96
  %bf.clear101 = and i16 %bf.load80, 127
  %bf.cast102 = zext i16 %bf.clear101 to i32
  %add103 = sub nsw i32 0, %bf.cast102
  call void @__sanitizer_cov_trace_cmp4(i32 %add97, i32 %add103)
  %cmp104.not = icmp eq i32 %add97, %add103
  br i1 %cmp104.not, label %do.body75.do.body119_crit_edge, label %do.body107

do.body75.do.body119_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body107:                                       ; preds = %do.body75
  %19 = load i32, ptr @tda18271_debug, align 4
  %and108 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body107.do.end113_crit_edge, label %if.then110

do.body107.do.end113_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

if.then110:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41) #7
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %do.body107.do.end113_crit_edge
  %atv_dk114 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %atv_dk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %atv_dk, align 4
  %22 = ptrtoint ptr %atv_dk114 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %atv_dk114, align 4
  br label %do.body119

do.body119:                                       ; preds = %do.end113, %do.body75.do.body119_crit_edge
  %atv_gh = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 3
  %23 = ptrtoint ptr %atv_gh to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %atv_gh, align 4
  %conv121 = zext i16 %24 to i32
  %agc_mode123 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %agc_mode123 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load124 = load i16, ptr %agc_mode123, align 2
  %bf.lshr125 = lshr i16 %bf.load124, 14
  %bf.cast126 = zext i16 %bf.lshr125 to i32
  %add127 = add nuw nsw i32 %bf.cast126, %conv121
  %bf.lshr131 = lshr i16 %bf.load124, 11
  %bf.clear132 = and i16 %bf.lshr131, 7
  %bf.cast133 = zext i16 %bf.clear132 to i32
  %add134 = add nuw nsw i32 %add127, %bf.cast133
  %bf.lshr138 = lshr i16 %bf.load124, 7
  %bf.clear139 = and i16 %bf.lshr138, 7
  %bf.cast140 = zext i16 %bf.clear139 to i32
  %add141 = add nuw nsw i32 %add134, %bf.cast140
  %bf.clear145 = and i16 %bf.load124, 127
  %bf.cast146 = zext i16 %bf.clear145 to i32
  %add147 = sub nsw i32 0, %bf.cast146
  call void @__sanitizer_cov_trace_cmp4(i32 %add141, i32 %add147)
  %cmp148.not = icmp eq i32 %add141, %add147
  br i1 %cmp148.not, label %do.body119.do.body163_crit_edge, label %do.body151

do.body119.do.body163_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body163

do.body151:                                       ; preds = %do.body119
  %26 = load i32, ptr @tda18271_debug, align 4
  %and152 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.do.end157_crit_edge, label %if.then154

do.body151.do.end157_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end157

if.then154:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.42) #7
  br label %do.end157

do.end157:                                        ; preds = %if.then154, %do.body151.do.end157_crit_edge
  %atv_gh158 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 3
  %27 = ptrtoint ptr %atv_gh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %atv_gh, align 4
  %29 = ptrtoint ptr %atv_gh158 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %atv_gh158, align 4
  br label %do.body163

do.body163:                                       ; preds = %do.end157, %do.body119.do.body163_crit_edge
  %atv_i = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 4
  %30 = ptrtoint ptr %atv_i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %atv_i, align 4
  %conv165 = zext i16 %31 to i32
  %agc_mode167 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %agc_mode167 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load168 = load i16, ptr %agc_mode167, align 2
  %bf.lshr169 = lshr i16 %bf.load168, 14
  %bf.cast170 = zext i16 %bf.lshr169 to i32
  %add171 = add nuw nsw i32 %bf.cast170, %conv165
  %bf.lshr175 = lshr i16 %bf.load168, 11
  %bf.clear176 = and i16 %bf.lshr175, 7
  %bf.cast177 = zext i16 %bf.clear176 to i32
  %add178 = add nuw nsw i32 %add171, %bf.cast177
  %bf.lshr182 = lshr i16 %bf.load168, 7
  %bf.clear183 = and i16 %bf.lshr182, 7
  %bf.cast184 = zext i16 %bf.clear183 to i32
  %add185 = add nuw nsw i32 %add178, %bf.cast184
  %bf.clear189 = and i16 %bf.load168, 127
  %bf.cast190 = zext i16 %bf.clear189 to i32
  %add191 = sub nsw i32 0, %bf.cast190
  call void @__sanitizer_cov_trace_cmp4(i32 %add185, i32 %add191)
  %cmp192.not = icmp eq i32 %add185, %add191
  br i1 %cmp192.not, label %do.body163.do.body207_crit_edge, label %do.body195

do.body163.do.body207_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body207

do.body195:                                       ; preds = %do.body163
  %33 = load i32, ptr @tda18271_debug, align 4
  %and196 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %do.body195.do.end201_crit_edge, label %if.then198

do.body195.do.end201_crit_edge:                   ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end201

if.then198:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.43) #7
  br label %do.end201

do.end201:                                        ; preds = %if.then198, %do.body195.do.end201_crit_edge
  %atv_i202 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 4
  %34 = ptrtoint ptr %atv_i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %atv_i, align 4
  %36 = ptrtoint ptr %atv_i202 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %atv_i202, align 4
  br label %do.body207

do.body207:                                       ; preds = %do.end201, %do.body163.do.body207_crit_edge
  %atv_l = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 5
  %37 = ptrtoint ptr %atv_l to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %atv_l, align 4
  %conv209 = zext i16 %38 to i32
  %agc_mode211 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %agc_mode211 to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load212 = load i16, ptr %agc_mode211, align 2
  %bf.lshr213 = lshr i16 %bf.load212, 14
  %bf.cast214 = zext i16 %bf.lshr213 to i32
  %add215 = add nuw nsw i32 %bf.cast214, %conv209
  %bf.lshr219 = lshr i16 %bf.load212, 11
  %bf.clear220 = and i16 %bf.lshr219, 7
  %bf.cast221 = zext i16 %bf.clear220 to i32
  %add222 = add nuw nsw i32 %add215, %bf.cast221
  %bf.lshr226 = lshr i16 %bf.load212, 7
  %bf.clear227 = and i16 %bf.lshr226, 7
  %bf.cast228 = zext i16 %bf.clear227 to i32
  %add229 = add nuw nsw i32 %add222, %bf.cast228
  %bf.clear233 = and i16 %bf.load212, 127
  %bf.cast234 = zext i16 %bf.clear233 to i32
  %add235 = sub nsw i32 0, %bf.cast234
  call void @__sanitizer_cov_trace_cmp4(i32 %add229, i32 %add235)
  %cmp236.not = icmp eq i32 %add229, %add235
  br i1 %cmp236.not, label %do.body207.do.body251_crit_edge, label %do.body239

do.body207.do.body251_crit_edge:                  ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body251

do.body239:                                       ; preds = %do.body207
  %40 = load i32, ptr @tda18271_debug, align 4
  %and240 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %do.body239.do.end245_crit_edge, label %if.then242

do.body239.do.end245_crit_edge:                   ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end245

if.then242:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.44) #7
  br label %do.end245

do.end245:                                        ; preds = %if.then242, %do.body239.do.end245_crit_edge
  %atv_l246 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 5
  %41 = ptrtoint ptr %atv_l to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %atv_l, align 4
  %43 = ptrtoint ptr %atv_l246 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %atv_l246, align 4
  br label %do.body251

do.body251:                                       ; preds = %do.end245, %do.body207.do.body251_crit_edge
  %atv_lc = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 6
  %44 = ptrtoint ptr %atv_lc to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %atv_lc, align 4
  %conv253 = zext i16 %45 to i32
  %agc_mode255 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %agc_mode255 to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load256 = load i16, ptr %agc_mode255, align 2
  %bf.lshr257 = lshr i16 %bf.load256, 14
  %bf.cast258 = zext i16 %bf.lshr257 to i32
  %add259 = add nuw nsw i32 %bf.cast258, %conv253
  %bf.lshr263 = lshr i16 %bf.load256, 11
  %bf.clear264 = and i16 %bf.lshr263, 7
  %bf.cast265 = zext i16 %bf.clear264 to i32
  %add266 = add nuw nsw i32 %add259, %bf.cast265
  %bf.lshr270 = lshr i16 %bf.load256, 7
  %bf.clear271 = and i16 %bf.lshr270, 7
  %bf.cast272 = zext i16 %bf.clear271 to i32
  %add273 = add nuw nsw i32 %add266, %bf.cast272
  %bf.clear277 = and i16 %bf.load256, 127
  %bf.cast278 = zext i16 %bf.clear277 to i32
  %add279 = sub nsw i32 0, %bf.cast278
  call void @__sanitizer_cov_trace_cmp4(i32 %add273, i32 %add279)
  %cmp280.not = icmp eq i32 %add273, %add279
  br i1 %cmp280.not, label %do.body251.do.body295_crit_edge, label %do.body283

do.body251.do.body295_crit_edge:                  ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body295

do.body283:                                       ; preds = %do.body251
  %47 = load i32, ptr @tda18271_debug, align 4
  %and284 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %do.body283.do.end289_crit_edge, label %if.then286

do.body283.do.end289_crit_edge:                   ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end289

if.then286:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.45) #7
  br label %do.end289

do.end289:                                        ; preds = %if.then286, %do.body283.do.end289_crit_edge
  %atv_lc290 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 6
  %48 = ptrtoint ptr %atv_lc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %atv_lc, align 4
  %50 = ptrtoint ptr %atv_lc290 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %atv_lc290, align 4
  br label %do.body295

do.body295:                                       ; preds = %do.end289, %do.body251.do.body295_crit_edge
  %atv_mn = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 7
  %51 = ptrtoint ptr %atv_mn to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %atv_mn, align 4
  %conv297 = zext i16 %52 to i32
  %agc_mode299 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %agc_mode299 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load300 = load i16, ptr %agc_mode299, align 2
  %bf.lshr301 = lshr i16 %bf.load300, 14
  %bf.cast302 = zext i16 %bf.lshr301 to i32
  %add303 = add nuw nsw i32 %bf.cast302, %conv297
  %bf.lshr307 = lshr i16 %bf.load300, 11
  %bf.clear308 = and i16 %bf.lshr307, 7
  %bf.cast309 = zext i16 %bf.clear308 to i32
  %add310 = add nuw nsw i32 %add303, %bf.cast309
  %bf.lshr314 = lshr i16 %bf.load300, 7
  %bf.clear315 = and i16 %bf.lshr314, 7
  %bf.cast316 = zext i16 %bf.clear315 to i32
  %add317 = add nuw nsw i32 %add310, %bf.cast316
  %bf.clear321 = and i16 %bf.load300, 127
  %bf.cast322 = zext i16 %bf.clear321 to i32
  %add323 = sub nsw i32 0, %bf.cast322
  call void @__sanitizer_cov_trace_cmp4(i32 %add317, i32 %add323)
  %cmp324.not = icmp eq i32 %add317, %add323
  br i1 %cmp324.not, label %do.body295.do.body339_crit_edge, label %do.body327

do.body295.do.body339_crit_edge:                  ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body339

do.body327:                                       ; preds = %do.body295
  %54 = load i32, ptr @tda18271_debug, align 4
  %and328 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %do.body327.do.end333_crit_edge, label %if.then330

do.body327.do.end333_crit_edge:                   ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end333

if.then330:                                       ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.46) #7
  br label %do.end333

do.end333:                                        ; preds = %if.then330, %do.body327.do.end333_crit_edge
  %atv_mn334 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 7
  %55 = ptrtoint ptr %atv_mn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %atv_mn, align 4
  %57 = ptrtoint ptr %atv_mn334 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %atv_mn334, align 4
  br label %do.body339

do.body339:                                       ; preds = %do.end333, %do.body295.do.body339_crit_edge
  %atsc_6 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 8
  %58 = ptrtoint ptr %atsc_6 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %atsc_6, align 4
  %conv341 = zext i16 %59 to i32
  %agc_mode343 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %agc_mode343 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load344 = load i16, ptr %agc_mode343, align 2
  %bf.lshr345 = lshr i16 %bf.load344, 14
  %bf.cast346 = zext i16 %bf.lshr345 to i32
  %add347 = add nuw nsw i32 %bf.cast346, %conv341
  %bf.lshr351 = lshr i16 %bf.load344, 11
  %bf.clear352 = and i16 %bf.lshr351, 7
  %bf.cast353 = zext i16 %bf.clear352 to i32
  %add354 = add nuw nsw i32 %add347, %bf.cast353
  %bf.lshr358 = lshr i16 %bf.load344, 7
  %bf.clear359 = and i16 %bf.lshr358, 7
  %bf.cast360 = zext i16 %bf.clear359 to i32
  %add361 = add nuw nsw i32 %add354, %bf.cast360
  %bf.clear365 = and i16 %bf.load344, 127
  %bf.cast366 = zext i16 %bf.clear365 to i32
  %add367 = sub nsw i32 0, %bf.cast366
  call void @__sanitizer_cov_trace_cmp4(i32 %add361, i32 %add367)
  %cmp368.not = icmp eq i32 %add361, %add367
  br i1 %cmp368.not, label %do.body339.do.body383_crit_edge, label %do.body371

do.body339.do.body383_crit_edge:                  ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body383

do.body371:                                       ; preds = %do.body339
  %61 = load i32, ptr @tda18271_debug, align 4
  %and372 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %do.body371.do.end377_crit_edge, label %if.then374

do.body371.do.end377_crit_edge:                   ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end377

if.then374:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.47) #7
  br label %do.end377

do.end377:                                        ; preds = %if.then374, %do.body371.do.end377_crit_edge
  %atsc_6378 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 8
  %62 = ptrtoint ptr %atsc_6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %atsc_6, align 4
  %64 = ptrtoint ptr %atsc_6378 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %atsc_6378, align 4
  br label %do.body383

do.body383:                                       ; preds = %do.end377, %do.body339.do.body383_crit_edge
  %dvbt_6 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 9
  %65 = ptrtoint ptr %dvbt_6 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %dvbt_6, align 4
  %conv385 = zext i16 %66 to i32
  %agc_mode387 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %agc_mode387 to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load388 = load i16, ptr %agc_mode387, align 2
  %bf.lshr389 = lshr i16 %bf.load388, 14
  %bf.cast390 = zext i16 %bf.lshr389 to i32
  %add391 = add nuw nsw i32 %bf.cast390, %conv385
  %bf.lshr395 = lshr i16 %bf.load388, 11
  %bf.clear396 = and i16 %bf.lshr395, 7
  %bf.cast397 = zext i16 %bf.clear396 to i32
  %add398 = add nuw nsw i32 %add391, %bf.cast397
  %bf.lshr402 = lshr i16 %bf.load388, 7
  %bf.clear403 = and i16 %bf.lshr402, 7
  %bf.cast404 = zext i16 %bf.clear403 to i32
  %add405 = add nuw nsw i32 %add398, %bf.cast404
  %bf.clear409 = and i16 %bf.load388, 127
  %bf.cast410 = zext i16 %bf.clear409 to i32
  %add411 = sub nsw i32 0, %bf.cast410
  call void @__sanitizer_cov_trace_cmp4(i32 %add405, i32 %add411)
  %cmp412.not = icmp eq i32 %add405, %add411
  br i1 %cmp412.not, label %do.body383.do.body427_crit_edge, label %do.body415

do.body383.do.body427_crit_edge:                  ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body427

do.body415:                                       ; preds = %do.body383
  %68 = load i32, ptr @tda18271_debug, align 4
  %and416 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %do.body415.do.end421_crit_edge, label %if.then418

do.body415.do.end421_crit_edge:                   ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end421

if.then418:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.48) #7
  br label %do.end421

do.end421:                                        ; preds = %if.then418, %do.body415.do.end421_crit_edge
  %dvbt_6422 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 9
  %69 = ptrtoint ptr %dvbt_6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dvbt_6, align 4
  %71 = ptrtoint ptr %dvbt_6422 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %dvbt_6422, align 4
  br label %do.body427

do.body427:                                       ; preds = %do.end421, %do.body383.do.body427_crit_edge
  %dvbt_7 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 10
  %72 = ptrtoint ptr %dvbt_7 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dvbt_7, align 4
  %conv429 = zext i16 %73 to i32
  %agc_mode431 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %agc_mode431 to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load432 = load i16, ptr %agc_mode431, align 2
  %bf.lshr433 = lshr i16 %bf.load432, 14
  %bf.cast434 = zext i16 %bf.lshr433 to i32
  %add435 = add nuw nsw i32 %bf.cast434, %conv429
  %bf.lshr439 = lshr i16 %bf.load432, 11
  %bf.clear440 = and i16 %bf.lshr439, 7
  %bf.cast441 = zext i16 %bf.clear440 to i32
  %add442 = add nuw nsw i32 %add435, %bf.cast441
  %bf.lshr446 = lshr i16 %bf.load432, 7
  %bf.clear447 = and i16 %bf.lshr446, 7
  %bf.cast448 = zext i16 %bf.clear447 to i32
  %add449 = add nuw nsw i32 %add442, %bf.cast448
  %bf.clear453 = and i16 %bf.load432, 127
  %bf.cast454 = zext i16 %bf.clear453 to i32
  %add455 = sub nsw i32 0, %bf.cast454
  call void @__sanitizer_cov_trace_cmp4(i32 %add449, i32 %add455)
  %cmp456.not = icmp eq i32 %add449, %add455
  br i1 %cmp456.not, label %do.body427.do.body471_crit_edge, label %do.body459

do.body427.do.body471_crit_edge:                  ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body471

do.body459:                                       ; preds = %do.body427
  %75 = load i32, ptr @tda18271_debug, align 4
  %and460 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460)
  %tobool461.not = icmp eq i32 %and460, 0
  br i1 %tobool461.not, label %do.body459.do.end465_crit_edge, label %if.then462

do.body459.do.end465_crit_edge:                   ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end465

if.then462:                                       ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.49) #7
  br label %do.end465

do.end465:                                        ; preds = %if.then462, %do.body459.do.end465_crit_edge
  %dvbt_7466 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 10
  %76 = ptrtoint ptr %dvbt_7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dvbt_7, align 4
  %78 = ptrtoint ptr %dvbt_7466 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %dvbt_7466, align 4
  br label %do.body471

do.body471:                                       ; preds = %do.end465, %do.body427.do.body471_crit_edge
  %dvbt_8 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 11
  %79 = ptrtoint ptr %dvbt_8 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dvbt_8, align 4
  %conv473 = zext i16 %80 to i32
  %agc_mode475 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 11, i32 1
  %81 = ptrtoint ptr %agc_mode475 to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load476 = load i16, ptr %agc_mode475, align 2
  %bf.lshr477 = lshr i16 %bf.load476, 14
  %bf.cast478 = zext i16 %bf.lshr477 to i32
  %add479 = add nuw nsw i32 %bf.cast478, %conv473
  %bf.lshr483 = lshr i16 %bf.load476, 11
  %bf.clear484 = and i16 %bf.lshr483, 7
  %bf.cast485 = zext i16 %bf.clear484 to i32
  %add486 = add nuw nsw i32 %add479, %bf.cast485
  %bf.lshr490 = lshr i16 %bf.load476, 7
  %bf.clear491 = and i16 %bf.lshr490, 7
  %bf.cast492 = zext i16 %bf.clear491 to i32
  %add493 = add nuw nsw i32 %add486, %bf.cast492
  %bf.clear497 = and i16 %bf.load476, 127
  %bf.cast498 = zext i16 %bf.clear497 to i32
  %add499 = sub nsw i32 0, %bf.cast498
  call void @__sanitizer_cov_trace_cmp4(i32 %add493, i32 %add499)
  %cmp500.not = icmp eq i32 %add493, %add499
  br i1 %cmp500.not, label %do.body471.do.body515_crit_edge, label %do.body503

do.body471.do.body515_crit_edge:                  ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body515

do.body503:                                       ; preds = %do.body471
  %82 = load i32, ptr @tda18271_debug, align 4
  %and504 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and504)
  %tobool505.not = icmp eq i32 %and504, 0
  br i1 %tobool505.not, label %do.body503.do.end509_crit_edge, label %if.then506

do.body503.do.end509_crit_edge:                   ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end509

if.then506:                                       ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.50) #7
  br label %do.end509

do.end509:                                        ; preds = %if.then506, %do.body503.do.end509_crit_edge
  %dvbt_8510 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 11
  %83 = ptrtoint ptr %dvbt_8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dvbt_8, align 4
  %85 = ptrtoint ptr %dvbt_8510 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %dvbt_8510, align 4
  br label %do.body515

do.body515:                                       ; preds = %do.end509, %do.body471.do.body515_crit_edge
  %qam_6 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 12
  %86 = ptrtoint ptr %qam_6 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %qam_6, align 4
  %conv517 = zext i16 %87 to i32
  %agc_mode519 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 12, i32 1
  %88 = ptrtoint ptr %agc_mode519 to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load520 = load i16, ptr %agc_mode519, align 2
  %bf.lshr521 = lshr i16 %bf.load520, 14
  %bf.cast522 = zext i16 %bf.lshr521 to i32
  %add523 = add nuw nsw i32 %bf.cast522, %conv517
  %bf.lshr527 = lshr i16 %bf.load520, 11
  %bf.clear528 = and i16 %bf.lshr527, 7
  %bf.cast529 = zext i16 %bf.clear528 to i32
  %add530 = add nuw nsw i32 %add523, %bf.cast529
  %bf.lshr534 = lshr i16 %bf.load520, 7
  %bf.clear535 = and i16 %bf.lshr534, 7
  %bf.cast536 = zext i16 %bf.clear535 to i32
  %add537 = add nuw nsw i32 %add530, %bf.cast536
  %bf.clear541 = and i16 %bf.load520, 127
  %bf.cast542 = zext i16 %bf.clear541 to i32
  %add543 = sub nsw i32 0, %bf.cast542
  call void @__sanitizer_cov_trace_cmp4(i32 %add537, i32 %add543)
  %cmp544.not = icmp eq i32 %add537, %add543
  br i1 %cmp544.not, label %do.body515.do.body559_crit_edge, label %do.body547

do.body515.do.body559_crit_edge:                  ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body559

do.body547:                                       ; preds = %do.body515
  %89 = load i32, ptr @tda18271_debug, align 4
  %and548 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and548)
  %tobool549.not = icmp eq i32 %and548, 0
  br i1 %tobool549.not, label %do.body547.do.end553_crit_edge, label %if.then550

do.body547.do.end553_crit_edge:                   ; preds = %do.body547
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end553

if.then550:                                       ; preds = %do.body547
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.51) #7
  br label %do.end553

do.end553:                                        ; preds = %if.then550, %do.body547.do.end553_crit_edge
  %qam_6554 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 12
  %90 = ptrtoint ptr %qam_6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qam_6, align 4
  %92 = ptrtoint ptr %qam_6554 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %qam_6554, align 4
  br label %do.body559

do.body559:                                       ; preds = %do.end553, %do.body515.do.body559_crit_edge
  %qam_7 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 13
  %93 = ptrtoint ptr %qam_7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %qam_7, align 4
  %conv561 = zext i16 %94 to i32
  %agc_mode563 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 13, i32 1
  %95 = ptrtoint ptr %agc_mode563 to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load564 = load i16, ptr %agc_mode563, align 2
  %bf.lshr565 = lshr i16 %bf.load564, 14
  %bf.cast566 = zext i16 %bf.lshr565 to i32
  %add567 = add nuw nsw i32 %bf.cast566, %conv561
  %bf.lshr571 = lshr i16 %bf.load564, 11
  %bf.clear572 = and i16 %bf.lshr571, 7
  %bf.cast573 = zext i16 %bf.clear572 to i32
  %add574 = add nuw nsw i32 %add567, %bf.cast573
  %bf.lshr578 = lshr i16 %bf.load564, 7
  %bf.clear579 = and i16 %bf.lshr578, 7
  %bf.cast580 = zext i16 %bf.clear579 to i32
  %add581 = add nuw nsw i32 %add574, %bf.cast580
  %bf.clear585 = and i16 %bf.load564, 127
  %bf.cast586 = zext i16 %bf.clear585 to i32
  %add587 = sub nsw i32 0, %bf.cast586
  call void @__sanitizer_cov_trace_cmp4(i32 %add581, i32 %add587)
  %cmp588.not = icmp eq i32 %add581, %add587
  br i1 %cmp588.not, label %do.body559.do.body603_crit_edge, label %do.body591

do.body559.do.body603_crit_edge:                  ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body603

do.body591:                                       ; preds = %do.body559
  %96 = load i32, ptr @tda18271_debug, align 4
  %and592 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and592)
  %tobool593.not = icmp eq i32 %and592, 0
  br i1 %tobool593.not, label %do.body591.do.end597_crit_edge, label %if.then594

do.body591.do.end597_crit_edge:                   ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end597

if.then594:                                       ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.52) #7
  br label %do.end597

do.end597:                                        ; preds = %if.then594, %do.body591.do.end597_crit_edge
  %qam_7598 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 13
  %97 = ptrtoint ptr %qam_7 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qam_7, align 4
  %99 = ptrtoint ptr %qam_7598 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %qam_7598, align 4
  br label %do.body603

do.body603:                                       ; preds = %do.end597, %do.body559.do.body603_crit_edge
  %qam_8 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 14
  %100 = ptrtoint ptr %qam_8 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %qam_8, align 4
  %conv605 = zext i16 %101 to i32
  %agc_mode607 = getelementptr inbounds %struct.tda18271_std_map, ptr %map, i32 0, i32 14, i32 1
  %102 = ptrtoint ptr %agc_mode607 to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load608 = load i16, ptr %agc_mode607, align 2
  %bf.lshr609 = lshr i16 %bf.load608, 14
  %bf.cast610 = zext i16 %bf.lshr609 to i32
  %add611 = add nuw nsw i32 %bf.cast610, %conv605
  %bf.lshr615 = lshr i16 %bf.load608, 11
  %bf.clear616 = and i16 %bf.lshr615, 7
  %bf.cast617 = zext i16 %bf.clear616 to i32
  %add618 = add nuw nsw i32 %add611, %bf.cast617
  %bf.lshr622 = lshr i16 %bf.load608, 7
  %bf.clear623 = and i16 %bf.lshr622, 7
  %bf.cast624 = zext i16 %bf.clear623 to i32
  %add625 = add nuw nsw i32 %add618, %bf.cast624
  %bf.clear629 = and i16 %bf.load608, 127
  %bf.cast630 = zext i16 %bf.clear629 to i32
  %add631 = sub nsw i32 0, %bf.cast630
  call void @__sanitizer_cov_trace_cmp4(i32 %add625, i32 %add631)
  %cmp632.not = icmp eq i32 %add625, %add631
  br i1 %cmp632.not, label %do.body603.cleanup_crit_edge, label %do.body635

do.body603.cleanup_crit_edge:                     ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body635:                                       ; preds = %do.body603
  %103 = load i32, ptr @tda18271_debug, align 4
  %and636 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and636)
  %tobool637.not = icmp eq i32 %and636, 0
  br i1 %tobool637.not, label %do.body635.do.end641_crit_edge, label %if.then638

do.body635.do.end641_crit_edge:                   ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end641

if.then638:                                       ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.53) #7
  br label %do.end641

do.end641:                                        ; preds = %if.then638, %do.body635.do.end641_crit_edge
  %qam_8642 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 14
  %104 = ptrtoint ptr %qam_8 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qam_8, align 4
  %106 = ptrtoint ptr %qam_8642 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %qam_8642, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end641, %do.body603.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18271_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lock = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call = tail call i32 @tda18271_set_standby_mode(ptr noundef %fe, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_init, ptr noundef nonnull @.str.9, i32 noundef %call, i32 noundef 820) #7
  br label %fail

if.end3.critedge:                                 ; preds = %entry
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %call.i = tail call i32 @tda18271_read_regs(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tda18271_ir_cal_init.exit.thread, label %if.end3.critedge.i

tda18271_ir_cal_init.exit.thread:                 ; preds = %if.end3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_ir_cal_init, ptr noundef nonnull @.str.9, i32 noundef %call.i, i32 noundef 801) #7
  br label %if.then9

if.end3.critedge.i:                               ; preds = %if.end3.critedge
  %arrayidx.i = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp5.i = icmp eq i8 %6, 0
  br i1 %cmp5.i, label %tda18271_ir_cal_init.exit, label %if.end3.critedge.i.if.end14.critedge_crit_edge

if.end3.critedge.i.if.end14.critedge_crit_edge:   ; preds = %if.end3.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.critedge

tda18271_ir_cal_init.exit:                        ; preds = %if.end3.critedge.i
  %call8.i = tail call i32 @tda18271_init_regs(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp6 = icmp slt i32 %call8.i, 0
  br i1 %cmp6, label %tda18271_ir_cal_init.exit.if.then9_crit_edge, label %tda18271_ir_cal_init.exit.if.end14.critedge_crit_edge

tda18271_ir_cal_init.exit.if.end14.critedge_crit_edge: ; preds = %tda18271_ir_cal_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.critedge

tda18271_ir_cal_init.exit.if.then9_crit_edge:     ; preds = %tda18271_ir_cal_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %tda18271_ir_cal_init.exit.if.then9_crit_edge, %tda18271_ir_cal_init.exit.thread
  %ret.0.i37 = phi i32 [ %call.i, %tda18271_ir_cal_init.exit.thread ], [ %call8.i, %tda18271_ir_cal_init.exit.if.then9_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_init, ptr noundef nonnull @.str.9, i32 noundef %ret.0.i37, i32 noundef 825) #7
  br label %fail

if.end14.critedge:                                ; preds = %tda18271_ir_cal_init.exit.if.end14.critedge_crit_edge, %if.end3.critedge.i.if.end14.critedge_crit_edge
  %ret.0.i41 = phi i32 [ %call8.i, %tda18271_ir_cal_init.exit.if.end14.critedge_crit_edge ], [ %call.i, %if.end3.critedge.i.if.end14.critedge_crit_edge ]
  %id = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp15 = icmp eq i32 %8, 1
  br i1 %cmp15, label %if.then17, label %if.end14.critedge.fail_crit_edge

if.end14.critedge.fail_crit_edge:                 ; preds = %if.end14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then17:                                        ; preds = %if.end14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tda18271c2_rf_cal_init(ptr noundef %fe)
  br label %fail

fail:                                             ; preds = %if.then17, %if.end14.critedge.fail_crit_edge, %if.then9, %if.then
  %ret.0 = phi i32 [ %ret.0.i41, %if.then17 ], [ %ret.0.i41, %if.end14.critedge.fail_crit_edge ], [ %call, %if.then ], [ %ret.0.i37, %if.then9 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda18271_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tda18271_list_mutex, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2
  %count = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %5, i32 noundef %cond, i32 noundef %conv) #10
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end21

if.end21:                                         ; preds = %list_del.exit, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #7
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_read_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_read_thermometer(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 16
  store i8 %4, ptr %arrayidx, align 1
  %call = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 1, i32 noundef 1) #7
  %call2 = tail call i32 @tda18271_read_regs(ptr noundef %fe) #7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = trunc i8 %6 to i6
  %trunc = and i6 %7, -17
  %8 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i6 %trunc, label %entry.if.end38_crit_edge [
    i6 -32, label %entry.if.then_crit_edge
    i6 8, label %entry.if.then_crit_edge68
  ]

entry.if.then_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge68
  %storemerge = xor i8 %6, 32
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %arrayidx, align 1
  %call36 = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 1, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 10) #7
  %call37 = tail call i32 @tda18271_read_regs(ptr noundef %fe) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then, %entry.if.end38_crit_edge
  %call39 = tail call i32 @tda18271_lookup_thermometer(ptr noundef %fe) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, -17
  store i8 %12, ptr %arrayidx, align 1
  %call44 = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 1, i32 noundef 1) #7
  %arrayidx45 = getelementptr i8, ptr %1, i32 6
  %13 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx45, align 1
  %15 = and i8 %14, -4
  store i8 %15, ptr %arrayidx45, align 1
  %call49 = tail call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 1) #7
  ret i32 %call39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_write_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_rf_band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_rf_cal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_rf_band(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_gain_taper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_cid_target(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_main_pll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_read_extended(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_bp_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_km(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_charge_pump_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_cal_pll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_thermometer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_set_standby_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18271_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lock = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @tda18271_toggle_output(ptr noundef %fe)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18271_set_params(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %mode = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mode, align 4
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %sw.default [
    i32 11, label %sw.bb
    i32 8, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge70
    i32 16, label %entry.sw.bb1_crit_edge71
    i32 2, label %entry.if.then9_crit_edge
    i32 1, label %entry.sw.bb7_crit_edge
    i32 18, label %entry.sw.bb7_crit_edge72
  ]

entry.sw.bb7_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

entry.sw.bb1_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %atsc_6 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge70, %entry.sw.bb1_crit_edge71
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp = icmp ult i32 %3, 6000001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_6 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp2 = icmp ult i32 %3, 7000001
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_7 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 10
  br label %sw.epilog

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dvbt_8 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge72
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp8 = icmp ult i32 %3, 6000001
  br i1 %cmp8, label %sw.bb7.if.then9_crit_edge, label %if.else10

sw.bb7.if.then9_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %sw.bb7.if.then9_crit_edge, %entry.if.then9_crit_edge
  %bw.069 = phi i32 [ %3, %sw.bb7.if.then9_crit_edge ], [ 6000000, %entry.if.then9_crit_edge ]
  %qam_6 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 12
  br label %sw.epilog

if.else10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp11 = icmp ult i32 %3, 7000001
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %qam_7 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 13
  br label %sw.epilog

if.else13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %qam_8 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 13, i32 14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.tda18271_set_params, ptr noundef nonnull @.str.55) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.else13, %if.then12, %if.then9, %if.else4, %if.then3, %if.then, %sw.bb
  %bw.1 = phi i32 [ %bw.069, %if.then9 ], [ %3, %if.then12 ], [ %3, %if.else13 ], [ %3, %if.then ], [ %3, %if.then3 ], [ %3, %if.else4 ], [ 6000000, %sw.bb ]
  %map.0 = phi ptr [ %qam_6, %if.then9 ], [ %qam_7, %if.then12 ], [ %qam_8, %if.else13 ], [ %dvbt_6, %if.then ], [ %dvbt_7, %if.then3 ], [ %dvbt_8, %if.else4 ], [ %atsc_6, %sw.bb ]
  %standby = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 5
  %10 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %standby, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %sw.epilog.if.end20_crit_edge, label %if.then16

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %fe) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %sw.epilog.if.end20_crit_edge
  %call = tail call fastcc i32 @tda18271_tune(ptr noundef %fe, ptr noundef %map.0, i32 noundef %5, i32 noundef %bw.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %if.then23, label %if.end27.critedge

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_set_params, ptr noundef nonnull @.str.9, i32 noundef %call, i32 noundef 973) #7
  br label %cleanup

if.end27.critedge:                                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %map.0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %map.0, align 4
  %if_freq28 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %if_freq28 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %if_freq28, align 4
  %frequency29 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 17
  %15 = ptrtoint ptr %frequency29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %frequency29, align 4
  %bandwidth = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bw.1, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27.critedge, %if.then23, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call, %if.then23 ], [ %call, %if.end27.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18271_set_analog_params(ptr noundef %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 8
  %mul = mul i32 %3, 125
  %mode1 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %cond = select i1 %cmp, i32 1, i32 1000
  %mul2 = mul i32 %mul, %cond
  %div89 = lshr i32 %mul2, 1
  %mode3 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode3, align 4
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %std = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13
  br label %do.body

if.else:                                          ; preds = %entry
  %std6 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %std6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %std6, align 8
  %and = and i64 %10, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %atv_mn = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 7
  br label %do.body

if.else8:                                         ; preds = %if.else
  %and10 = and i64 %10, 65539
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  %atv_b = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 1
  br label %do.body

if.else13:                                        ; preds = %if.else8
  %and15 = and i64 %10, 786444
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %atv_gh = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 3
  br label %do.body

if.else18:                                        ; preds = %if.else13
  %and20 = and i64 %10, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %atv_i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 4
  br label %do.body

if.else23:                                        ; preds = %if.else18
  %and25 = and i64 %10, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %atv_dk = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 2
  br label %do.body

if.else28:                                        ; preds = %if.else23
  %and30 = and i64 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  %atv_l = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 5
  br label %do.body

if.else33:                                        ; preds = %if.else28
  %and35 = and i64 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %atv_lc = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 6
  br label %do.body

if.else38:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %atv_i39 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 13, i32 4
  br label %do.body

do.body:                                          ; preds = %if.else38, %if.then37, %if.then32, %if.then27, %if.then22, %if.then17, %if.then12, %if.then7, %if.then
  %map.0 = phi ptr [ %std, %if.then ], [ %atv_mn, %if.then7 ], [ %atv_b, %if.then12 ], [ %atv_gh, %if.then17 ], [ %atv_i, %if.then22 ], [ %atv_dk, %if.then27 ], [ %atv_l, %if.then32 ], [ %atv_lc, %if.then37 ], [ %atv_i39, %if.else38 ]
  %mode.0 = phi ptr [ @.str.39, %if.then ], [ @.str.61, %if.then7 ], [ @.str.62, %if.then12 ], [ @.str.63, %if.then17 ], [ @.str.64, %if.then22 ], [ @.str.65, %if.then27 ], [ @.str.66, %if.then32 ], [ @.str.67, %if.then37 ], [ @.str.68, %if.else38 ]
  %11 = load i32, ptr @tda18271_debug, align 4
  %and47 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body.do.end_crit_edge, label %if.then49

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_set_analog_params, ptr noundef nonnull @.str.69, ptr noundef nonnull %mode.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then49, %do.body.do.end_crit_edge
  %call = tail call fastcc i32 @tda18271_tune(ptr noundef %fe, ptr noundef %map.0, i32 noundef %div89, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp51 = icmp slt i32 %call, 0
  br i1 %cmp51, label %if.then53, label %if.end57.critedge

if.then53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_set_analog_params, ptr noundef nonnull @.str.9, i32 noundef %call, i32 noundef 1029) #7
  br label %fail

if.end57.critedge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %map.0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %map.0, align 4
  %if_freq58 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %if_freq58 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %if_freq58, align 4
  %frequency59 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %frequency59 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div89, ptr %frequency59, align 4
  %bandwidth = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bandwidth, align 4
  br label %fail

fail:                                             ; preds = %if.end57.critedge, %if.then53
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18271_set_config(ptr noundef %fe, ptr noundef readonly %priv_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %tobool.not.i = icmp eq ptr %priv_cfg, null
  br i1 %tobool.not.i, label %tda18271_setup_configuration.exit, label %tda18271_setup_configuration.exit.thread

tda18271_setup_configuration.exit:                ; preds = %entry
  %gate1.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gate1.c.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gate1.c.i, align 4
  %role7.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %role7.c.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %role7.c.i, align 4
  %config13.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %config13.c.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %config13.c.i, align 4
  %small_i2c19.c.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %small_i2c19.c.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %small_i2c19.c.i, align 4
  %output_opt25.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %output_opt25.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %output_opt25.i, align 4
  %7 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %tda18271_setup_configuration.exit.if.end8_crit_edge, label %tda18271_setup_configuration.exit.tda18271_need_cal_on_startup.exit_crit_edge

tda18271_setup_configuration.exit.tda18271_need_cal_on_startup.exit_crit_edge: ; preds = %tda18271_setup_configuration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit

tda18271_setup_configuration.exit.if.end8_crit_edge: ; preds = %tda18271_setup_configuration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

tda18271_setup_configuration.exit.thread:         ; preds = %entry
  %gate.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 2
  %8 = ptrtoint ptr %gate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gate.i, align 4
  %gate1.c1.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %gate1.c1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gate1.c1.i, align 4
  %role.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 1
  %11 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %role.i, align 4
  %role7.c2.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %role7.c2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %role7.c2.i, align 4
  %config.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 6
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config.i, align 4
  %config13.c3.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %config13.c3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %config13.c3.i, align 4
  %small_i2c.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 4
  %17 = ptrtoint ptr %small_i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %small_i2c.i, align 4
  %small_i2c19.c4.i = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %small_i2c19.c4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %small_i2c19.c4.i, align 4
  %output_opt.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 3
  %20 = ptrtoint ptr %output_opt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %output_opt.i, align 4
  %output_opt25.i18 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %output_opt25.i18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %output_opt25.i18, align 4
  %23 = load i32, ptr @tda18271_cal_on_startup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i19 = icmp eq i32 %23, -1
  br i1 %cmp.i19, label %land.rhs.i, label %tda18271_setup_configuration.exit.thread.tda18271_need_cal_on_startup.exit_crit_edge

tda18271_setup_configuration.exit.thread.tda18271_need_cal_on_startup.exit_crit_edge: ; preds = %tda18271_setup_configuration.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_need_cal_on_startup.exit

land.rhs.i:                                       ; preds = %tda18271_setup_configuration.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %rf_cal_on_startup.i = getelementptr inbounds %struct.tda18271_config, ptr %priv_cfg, i32 0, i32 5
  %24 = ptrtoint ptr %rf_cal_on_startup.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %rf_cal_on_startup.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  br label %tda18271_need_cal_on_startup.exit

tda18271_need_cal_on_startup.exit:                ; preds = %land.rhs.i, %tda18271_setup_configuration.exit.thread.tda18271_need_cal_on_startup.exit_crit_edge, %tda18271_setup_configuration.exit.tda18271_need_cal_on_startup.exit_crit_edge
  %cond.i = phi i32 [ %bf.cast.i, %land.rhs.i ], [ %7, %tda18271_setup_configuration.exit.tda18271_need_cal_on_startup.exit_crit_edge ], [ %23, %tda18271_setup_configuration.exit.thread.tda18271_need_cal_on_startup.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool2.not.i.not = icmp eq i32 %cond.i, 0
  br i1 %tobool2.not.i.not, label %tda18271_need_cal_on_startup.exit.if.end_crit_edge, label %if.then

tda18271_need_cal_on_startup.exit.if.end_crit_edge: ; preds = %tda18271_need_cal_on_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %tda18271_need_cal_on_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @tda18271_init(ptr noundef %fe)
  br label %if.end

if.end:                                           ; preds = %if.then, %tda18271_need_cal_on_startup.exit.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %25 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv_cfg, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tda18271_update_std_map(ptr noundef %fe, ptr noundef nonnull %26)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge, %tda18271_setup_configuration.exit.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %if_freq = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %if_freq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %if_freq, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_tune(ptr noundef %fe, ptr nocapture noundef readonly %map, i32 noundef %freq, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %freq.addr.i65 = alloca i32, align 4
  %freq.addr.i56 = alloca i32, align 4
  %dc_over_dt.i = alloca i8, align 1
  %freq.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @tda18271_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %map, align 4
  %conv = zext i16 %4 to i32
  %agc_mode = getelementptr inbounds %struct.tda18271_std_map_item, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %agc_mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %agc_mode, align 2
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.cast = zext i16 %bf.lshr to i32
  %bf.lshr2 = lshr i16 %bf.load, 11
  %bf.clear = and i16 %bf.lshr2, 7
  %bf.cast3 = zext i16 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.56, i32 noundef %freq, i32 noundef %conv, i32 noundef %bw, i32 noundef %bf.cast, i32 noundef %bf.cast3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %config.i = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %9, label %tda18271_agc.exit.thread78 [
    i32 0, label %sw.bb.i
    i32 3, label %do.body6.i
  ]

sw.bb.i:                                          ; preds = %do.end
  %11 = load i32, ptr @tda18271_debug, align 4
  %12 = and i32 %11, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %.not.i = icmp eq i32 %12, 9
  br i1 %.not.i, label %if.then3.i, label %sw.bb.i.if.end10_crit_edge

sw.bb.i.if.end10_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.58) #7
  br label %if.end10

do.body6.i:                                       ; preds = %do.end
  %13 = load i32, ptr @tda18271_debug, align 4
  %and7.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body6.i.do.end12.i_crit_edge, label %if.then9.i

do.body6.i.do.end12.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

if.then9.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.59) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %do.body6.i.do.end12.i_crit_edge
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %14 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %callback.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %do.end12.i.if.end10_crit_edge, label %tda18271_agc.exit

do.end12.i.if.end10_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

tda18271_agc.exit.thread78:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.60, i32 noundef %9) #7
  br label %if.then6

tda18271_agc.exit:                                ; preds = %do.end12.i
  %adap.i = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap.i, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo_data.i, align 4
  %mode.i = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode.i, align 4
  %call.i = tail call i32 %15(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %tda18271_agc.exit.if.then6_crit_edge, label %tda18271_agc.exit.if.end10_crit_edge

tda18271_agc.exit.if.end10_crit_edge:             ; preds = %tda18271_agc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

tda18271_agc.exit.if.then6_crit_edge:             ; preds = %tda18271_agc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %tda18271_agc.exit.if.then6_crit_edge, %tda18271_agc.exit.thread78
  %ret.0.i81 = phi i32 [ -22, %tda18271_agc.exit.thread78 ], [ %call.i, %tda18271_agc.exit.if.then6_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.9, i32 noundef %ret.0.i81, i32 noundef 894) #7
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.57) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %tda18271_agc.exit.if.end10_crit_edge, %do.end12.i.if.end10_crit_edge, %if.then3.i, %sw.bb.i.if.end10_crit_edge
  %call11 = tail call i32 @tda18271_init(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.then16, label %if.end21.critedge

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.9, i32 noundef %call11, i32 noundef 898) #7
  br label %fail

if.end21.critedge:                                ; preds = %if.end10
  %lock = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %id = getelementptr inbounds %struct.tda18271_priv, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %23, label %if.end21.critedge.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

if.end21.critedge.sw.epilog_crit_edge:            ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21.critedge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.addr.i)
  %25 = ptrtoint ptr %freq.addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %freq, ptr %freq.addr.i, align 4
  %26 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_priv, align 4
  %call.i53 = call i32 @tda18271_calc_bp_filter(ptr noundef %fe, ptr noundef nonnull %freq.addr.i) #7
  %call1.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %arrayidx.i = getelementptr i8, ptr %27, i32 19
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = and i8 %29, 7
  %31 = or i8 %30, 96
  store i8 %31, ptr %arrayidx.i, align 1
  %call6.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 19, i32 noundef 1) #7
  %arrayidx7.i = getelementptr i8, ptr %27, i32 22
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 96, ptr %arrayidx7.i, align 1
  %call8.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 22, i32 noundef 1) #7
  %arrayidx9.i = getelementptr i8, ptr %27, i32 29
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx9.i, align 1
  %call10.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 29, i32 noundef 1) #7
  %arrayidx11.i = getelementptr i8, ptr %27, i32 35
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -52, ptr %arrayidx11.i, align 1
  %call12.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1) #7
  %arrayidx13.i = getelementptr i8, ptr %27, i32 6
  %35 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx13.i, align 1
  %37 = or i8 %36, 3
  store i8 %37, ptr %arrayidx13.i, align 1
  %mode.i54 = getelementptr inbounds %struct.tda18271_priv, ptr %27, i32 0, i32 3
  %38 = ptrtoint ptr %mode.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode.i54, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %39, label %sw.bb.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i55
    i32 1, label %sw.bb17.i
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i55:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %freq.addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %freq.addr.i, align 4
  %sub.i = add i32 %42, -1250000
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %freq.addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %freq.addr.i, align 4
  %div1.i = lshr i32 %bw, 1
  %add.i = add i32 %44, %div1.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb.i55, %sw.bb.sw.epilog.i_crit_edge
  %N.0.i = phi i32 [ 0, %sw.bb.sw.epilog.i_crit_edge ], [ %add.i, %sw.bb17.i ], [ %sub.i, %sw.bb.i55 ]
  %call18.i = call i32 @tda18271_calc_cal_pll(ptr noundef %fe, i32 noundef %N.0.i) #7
  %45 = ptrtoint ptr %mode.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode.i54, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %46, label %sw.epilog.i.sw.epilog26.i_crit_edge [
    i32 0, label %sw.bb20.i
    i32 1, label %sw.bb22.i
  ]

sw.epilog.i.sw.epilog26.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog26.i

sw.bb20.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %freq.addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %freq.addr.i, align 4
  %sub21.i = add i32 %49, -250000
  br label %sw.epilog26.i

sw.bb22.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %freq.addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %freq.addr.i, align 4
  %div232.i = lshr i32 %bw, 1
  %add24.i = add nuw i32 %div232.i, 1000000
  %add25.i = add i32 %add24.i, %51
  br label %sw.epilog26.i

sw.epilog26.i:                                    ; preds = %sw.bb22.i, %sw.bb20.i, %sw.epilog.i.sw.epilog26.i_crit_edge
  %N.1.i = phi i32 [ %N.0.i, %sw.epilog.i.sw.epilog26.i_crit_edge ], [ %add25.i, %sw.bb22.i ], [ %sub21.i, %sw.bb20.i ]
  %call27.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %N.1.i) #7
  %call28.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp slt i32 %call28.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end32.i

if.then.i:                                        ; preds = %sw.epilog26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271c1_rf_tracking_filter_calibration, ptr noundef nonnull @.str.9, i32 noundef %call28.i, i32 noundef 748) #7
  br label %tda18271c1_rf_tracking_filter_calibration.exit

if.end32.i:                                       ; preds = %sw.epilog26.i
  call void @msleep(i32 noundef 5) #7
  %call33.i = call i32 @tda18271_calc_km(ptr noundef %fe, ptr noundef nonnull %freq.addr.i) #7
  %call34.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 28, i32 noundef 1) #7
  %call35.i = call i32 @tda18271_calc_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.addr.i) #7
  %call36.i = call i32 @tda18271_calc_gain_taper(ptr noundef %fe, ptr noundef nonnull %freq.addr.i) #7
  %call37.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call38.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %call39.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 4, i32 noundef 1) #7
  %call40.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i, align 1
  %54 = and i8 %53, 7
  %55 = or i8 %54, 64
  store i8 %55, ptr %arrayidx.i, align 1
  %call49.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 19, i32 noundef 1) #7
  %56 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 64, ptr %arrayidx7.i, align 1
  %call51.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 22, i32 noundef 1) #7
  call void @msleep(i32 noundef 10) #7
  %57 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -20, ptr %arrayidx11.i, align 1
  %call53.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 35, i32 noundef 1) #7
  call void @msleep(i32 noundef 60) #7
  %58 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx13.i, align 1
  %60 = and i8 %59, -4
  store i8 %60, ptr %arrayidx13.i, align 1
  %call58.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 6, i32 noundef 1) #7
  %call59.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 3, i32 noundef 1) #7
  %call60.i = call i32 @tda18271_calc_rf_cal(ptr noundef %fe, ptr noundef nonnull %freq.addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp eq i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.end32.i.tda18271c1_rf_tracking_filter_calibration.exit_crit_edge

if.end32.i.tda18271c1_rf_tracking_filter_calibration.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271c1_rf_tracking_filter_calibration.exit

if.then63.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %call64.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 29, i32 noundef 1) #7
  br label %tda18271c1_rf_tracking_filter_calibration.exit

tda18271c1_rf_tracking_filter_calibration.exit:   ; preds = %if.then63.i, %if.end32.i.tda18271c1_rf_tracking_filter_calibration.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end21.critedge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.addr.i56)
  %61 = ptrtoint ptr %freq.addr.i56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %freq, ptr %freq.addr.i56, align 4
  %62 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tuner_priv, align 4
  %rf_cal_state.i = getelementptr inbounds %struct.tda18271_priv, ptr %63, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dc_over_dt.i) #7
  %64 = ptrtoint ptr %dc_over_dt.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %dc_over_dt.i, align 1, !annotation !216
  %call.i58 = tail call i32 @tda18271_set_standby_mode(ptr noundef %fe, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %if.then.i60, label %if.end4.critedge.i

if.then.i60:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %63, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271c2_rf_tracking_filters_correction, ptr noundef nonnull @.str.9, i32 noundef %call.i58, i32 noundef 254) #7
  br label %tda18271c2_rf_tracking_filters_correction.exit

if.end4.critedge.i:                               ; preds = %sw.bb23
  %call5.i = tail call fastcc i32 @tda18271_read_thermometer(ptr noundef %fe) #7
  %call7.i = call i32 @tda18271_calc_rf_cal(ptr noundef %fe, ptr noundef nonnull %freq.addr.i56) #7
  %arrayidx.i61 = getelementptr i8, ptr %63, i32 29
  %65 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i61, align 1
  %call8.i62 = call i32 @tda18271_lookup_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.addr.i56, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i62)
  %cmp10.i = icmp slt i32 %call8.i62, 0
  br i1 %cmp10.i, label %if.then13.i, label %if.end18.i

if.then13.i:                                      ; preds = %if.end4.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %63, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271c2_rf_tracking_filters_correction, ptr noundef nonnull @.str.9, i32 noundef %call8.i62, i32 noundef 266) #7
  br label %tda18271c2_rf_tracking_filters_correction.exit

if.end18.i:                                       ; preds = %if.end4.critedge.i
  %rf3.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 7
  %67 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rf3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp20.i = icmp eq i32 %68, 0
  br i1 %cmp20.i, label %if.end18.i.if.then25.i_crit_edge, label %lor.lhs.false.i

if.end18.i.if.then25.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

lor.lhs.false.i:                                  ; preds = %if.end18.i
  %69 = ptrtoint ptr %freq.addr.i56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %freq.addr.i56, align 4
  %div.i = udiv i32 %70, 1000
  %rf2.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 6
  %71 = ptrtoint ptr %rf2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rf2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %72)
  %cmp23.i = icmp ult i32 %div.i, %72
  br i1 %cmp23.i, label %lor.lhs.false.i.if.then25.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.i:                                      ; preds = %lor.lhs.false.i.if.then25.i_crit_edge, %if.end18.i.if.then25.i_crit_edge
  %rf_a1.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 8
  %73 = ptrtoint ptr %rf_a1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rf_a1.i, align 4
  %75 = ptrtoint ptr %freq.addr.i56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %freq.addr.i56, align 4
  %div27.i = udiv i32 %76, 1000
  %rf1.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 5
  %77 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rf1.i, align 4
  %sub.i63 = sub i32 %div27.i, %78
  %mul.i = mul i32 %sub.i63, %74
  %rf_b1.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 9
  br label %if.end42.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %rf_a2.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 10
  %79 = ptrtoint ptr %rf_a2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rf_a2.i, align 4
  %sub36.i = sub i32 %div.i, %72
  %mul37.i = mul i32 %80, %sub36.i
  %rf_b2.i = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %rf_cal_state.i, i32 %call8.i62, i32 11
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then25.i
  %rf_b2.sink.i = phi ptr [ %rf_b2.i, %if.else.i ], [ %rf_b1.i, %if.then25.i ]
  %mul37.sink.i = phi i32 [ %mul37.i, %if.else.i ], [ %mul.i, %if.then25.i ]
  %81 = ptrtoint ptr %rf_b2.sink.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rf_b2.sink.i, align 4
  %conv40.i = zext i8 %66 to i32
  %add39.i = add i32 %mul37.sink.i, %conv40.i
  %add41.i = add i32 %add39.i, %82
  %83 = call i32 @llvm.smax.i32(i32 %add41.i, i32 0) #7
  %84 = call i32 @llvm.umin.i32(i32 %83, i32 255) #7
  %call51.i64 = call i32 @tda18271_lookup_map(ptr noundef %fe, i32 noundef 4, ptr noundef nonnull %freq.addr.i56, ptr noundef nonnull %dc_over_dt.i) #7
  %85 = ptrtoint ptr %dc_over_dt.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dc_over_dt.i, align 1
  %conv52.i = zext i8 %86 to i32
  %conv53.i = and i32 %call5.i, 255
  %tm_rfcal.i = getelementptr inbounds %struct.tda18271_priv, ptr %63, i32 0, i32 11
  %87 = ptrtoint ptr %tm_rfcal.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tm_rfcal.i, align 1
  %conv54.i = zext i8 %88 to i32
  %sub55.i = sub nsw i32 %conv53.i, %conv54.i
  %mul56.i = mul nsw i32 %sub55.i, %conv52.i
  %div57.i = sdiv i32 %mul56.i, 1000
  %add58.i = add nsw i32 %div57.i, %84
  %conv59.i = trunc i32 %add58.i to i8
  %89 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv59.i, ptr %arrayidx.i61, align 1
  %call61.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 29, i32 noundef 1) #7
  br label %tda18271c2_rf_tracking_filters_correction.exit

tda18271c2_rf_tracking_filters_correction.exit:   ; preds = %if.end42.i, %if.then13.i, %if.then.i60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dc_over_dt.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %tda18271c2_rf_tracking_filters_correction.exit, %tda18271c1_rf_tracking_filter_calibration.exit, %if.end21.critedge.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.addr.i65)
  %90 = ptrtoint ptr %freq.addr.i65 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %freq, ptr %freq.addr.i65, align 4
  %91 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tuner_priv, align 4
  %arrayidx.i67 = getelementptr i8, ptr %92, i32 5
  %93 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i67, align 1
  %95 = and i8 %94, -32
  store i8 %95, ptr %arrayidx.i67, align 1
  %agc_mode.i = getelementptr inbounds %struct.tda18271_std_map_item, ptr %map, i32 0, i32 1
  %96 = ptrtoint ptr %agc_mode.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i = load i16, ptr %agc_mode.i, align 2
  %97 = lshr i16 %bf.load.i, 11
  %or.i = trunc i16 %97 to i8
  %or7.i = or i8 %95, %or.i
  store i8 %or7.i, ptr %arrayidx.i67, align 1
  %id.i = getelementptr inbounds %struct.tda18271_priv, ptr %92, i32 0, i32 6
  %98 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i68 = icmp eq i32 %99, 1
  br i1 %cmp.i68, label %if.then.i69, label %sw.epilog.if.end.i_crit_edge

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i69:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %100 = and i8 %or7.i, -5
  %101 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx.i67, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i69, %sw.epilog.if.end.i_crit_edge
  %arrayidx14.i = getelementptr i8, ptr %92, i32 6
  %102 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx14.i, align 1
  %104 = and i8 %103, -32
  store i8 %104, ptr %arrayidx14.i, align 1
  %105 = ptrtoint ptr %agc_mode.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load22.i = load i16, ptr %agc_mode.i, align 2
  %106 = lshr i16 %bf.load22.i, 5
  %107 = trunc i16 %106 to i8
  %shl26.i = and i8 %107, 28
  %.masked.i = and i8 %103, 96
  %108 = or i8 %shl26.i, %.masked.i
  store i8 %108, ptr %arrayidx14.i, align 1
  %bf.load35.i = load i16, ptr %agc_mode.i, align 2
  %109 = lshr i16 %bf.load35.i, 3
  %110 = trunc i16 %109 to i8
  %shl39.i = and i8 %110, -128
  %or42.i = or i8 %shl39.i, %108
  store i8 %or42.i, ptr %arrayidx14.i, align 1
  %arrayidx44.i = getelementptr i8, ptr %92, i32 37
  %111 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx44.i, align 1
  %bf.load45.i = load i16, ptr %agc_mode.i, align 2
  %112 = trunc i16 %bf.load45.i to i8
  %conv51.i = and i8 %112, 127
  store i8 %conv51.i, ptr %arrayidx44.i, align 1
  %call.i70 = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 37, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp52.i = icmp slt i32 %call.i70, 0
  br i1 %cmp52.i, label %if.then54.i, label %if.end58.critedge.i

if.then54.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %92, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.9, i32 noundef %call.i70, i32 noundef 108) #7
  br label %tda18271_channel_configuration.exit

if.end58.critedge.i:                              ; preds = %if.end.i
  %arrayidx59.i = getelementptr i8, ptr %92, i32 3
  %113 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx59.i, align 1
  %115 = or i8 %114, 64
  store i8 %115, ptr %arrayidx59.i, align 1
  %arrayidx63.i = getelementptr i8, ptr %92, i32 1
  %116 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx63.i, align 1
  %118 = and i8 %117, -17
  store i8 %118, ptr %arrayidx63.i, align 1
  %call67.i = call i32 @tda18271_calc_ir_measure(ptr noundef %fe, ptr noundef nonnull %freq.addr.i65) #7
  %call68.i = call i32 @tda18271_calc_bp_filter(ptr noundef %fe, ptr noundef nonnull %freq.addr.i65) #7
  %call69.i = call i32 @tda18271_calc_rf_band(ptr noundef %fe, ptr noundef nonnull %freq.addr.i65) #7
  %call70.i = call i32 @tda18271_calc_gain_taper(ptr noundef %fe, ptr noundef nonnull %freq.addr.i65) #7
  %role.i = getelementptr inbounds %struct.tda18271_priv, ptr %92, i32 0, i32 4
  %119 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %role.i, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %120, label %if.end58.critedge.i.sw.epilog.i72_crit_edge [
    i32 0, label %sw.bb.i71
    i32 1, label %sw.bb75.i
  ]

if.end58.critedge.i.sw.epilog.i72_crit_edge:      ; preds = %if.end58.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i72

sw.bb.i71:                                        ; preds = %if.end58.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx71.i = getelementptr i8, ptr %92, i32 16
  %122 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx71.i, align 1
  %124 = or i8 %123, 4
  store i8 %124, ptr %arrayidx71.i, align 1
  br label %sw.epilog.i72

sw.bb75.i:                                        ; preds = %if.end58.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx76.i = getelementptr i8, ptr %92, i32 16
  %125 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx76.i, align 1
  %127 = and i8 %126, -5
  store i8 %127, ptr %arrayidx76.i, align 1
  br label %sw.epilog.i72

sw.epilog.i72:                                    ; preds = %sw.bb75.i, %sw.bb.i71, %if.end58.critedge.i.sw.epilog.i72_crit_edge
  %arrayidx80.i = getelementptr i8, ptr %92, i32 16
  %128 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx80.i, align 1
  %130 = and i8 %129, -4
  store i8 %130, ptr %arrayidx80.i, align 1
  %call88.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp90.i = icmp slt i32 %call88.i, 0
  br i1 %cmp90.i, label %if.then93.i, label %if.end98.critedge.i

if.then93.i:                                      ; preds = %sw.epilog.i72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %92, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.9, i32 noundef %call88.i, i32 noundef 149) #7
  br label %tda18271_channel_configuration.exit

if.end98.critedge.i:                              ; preds = %sw.epilog.i72
  %131 = ptrtoint ptr %map to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %map, align 4
  %conv99.i = zext i16 %132 to i32
  %mul.i73 = mul nuw nsw i32 %conv99.i, 1000
  %133 = ptrtoint ptr %freq.addr.i65 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %freq.addr.i65, align 4
  %add.i74 = add i32 %mul.i73, %134
  %135 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %role.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %136, label %if.end98.critedge.i.sw.epilog113.i_crit_edge [
    i32 0, label %sw.bb101.i
    i32 1, label %sw.bb104.i
  ]

if.end98.critedge.i.sw.epilog113.i_crit_edge:     ; preds = %if.end98.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog113.i

sw.bb101.i:                                       ; preds = %if.end98.critedge.i
  %call102.i = call i32 @tda18271_calc_main_pll(ptr noundef %fe, i32 noundef %add.i74) #7
  %138 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tuner_priv, align 4
  %mode.i.i = getelementptr inbounds %struct.tda18271_priv, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mode.i.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %141, label %sw.bb101.i.sw.epilog113.sink.split.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb101.i.sw.epilog113.sink.split.i_crit_edge:   ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog113.sink.split.i

sw.bb.i.i:                                        ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %139, i32 12
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i.i, align 1
  %145 = and i8 %144, 127
  store i8 %145, ptr %arrayidx.i.i, align 1
  br label %sw.epilog113.sink.split.i

sw.bb2.i.i:                                       ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i.i = getelementptr i8, ptr %139, i32 12
  %146 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx3.i.i, align 1
  %148 = or i8 %147, -128
  store i8 %148, ptr %arrayidx3.i.i, align 1
  br label %sw.epilog113.sink.split.i

sw.bb104.i:                                       ; preds = %if.end98.critedge.i
  %call105.i = call i32 @tda18271_calc_cal_pll(ptr noundef %fe, i32 noundef %add.i74) #7
  %call106.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 8, i32 noundef 4) #7
  %arrayidx107.i = getelementptr i8, ptr %92, i32 8
  %149 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx107.i, align 1
  %151 = and i8 %150, 127
  %arrayidx111.i = getelementptr i8, ptr %92, i32 12
  %152 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx111.i, align 1
  %153 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tuner_priv, align 4
  %mode.i5.i = getelementptr inbounds %struct.tda18271_priv, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %mode.i5.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mode.i5.i, align 4
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %156, label %sw.bb104.i.sw.epilog113.sink.split.i_crit_edge [
    i32 0, label %sw.bb.i7.i
    i32 1, label %sw.bb2.i9.i
  ]

sw.bb104.i.sw.epilog113.sink.split.i_crit_edge:   ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog113.sink.split.i

sw.bb.i7.i:                                       ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i6.i = getelementptr i8, ptr %154, i32 12
  %158 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i6.i, align 1
  %160 = and i8 %159, 127
  store i8 %160, ptr %arrayidx.i6.i, align 1
  br label %sw.epilog113.sink.split.i

sw.bb2.i9.i:                                      ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i8.i = getelementptr i8, ptr %154, i32 12
  %161 = ptrtoint ptr %arrayidx3.i8.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx3.i8.i, align 1
  %163 = or i8 %162, -128
  store i8 %163, ptr %arrayidx3.i8.i, align 1
  br label %sw.epilog113.sink.split.i

sw.epilog113.sink.split.i:                        ; preds = %sw.bb2.i9.i, %sw.bb.i7.i, %sw.bb104.i.sw.epilog113.sink.split.i_crit_edge, %sw.bb2.i.i, %sw.bb.i.i, %sw.bb101.i.sw.epilog113.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4, %sw.bb101.i.sw.epilog113.sink.split.i_crit_edge ], [ 4, %sw.bb.i.i ], [ 4, %sw.bb2.i.i ], [ 1, %sw.bb104.i.sw.epilog113.sink.split.i_crit_edge ], [ 1, %sw.bb.i7.i ], [ 1, %sw.bb2.i9.i ]
  %call112.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 12, i32 noundef %.sink.i) #7
  br label %sw.epilog113.i

sw.epilog113.i:                                   ; preds = %sw.epilog113.sink.split.i, %if.end98.critedge.i.sw.epilog113.i_crit_edge
  %call114.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp116.i = icmp slt i32 %call114.i, 0
  br i1 %cmp116.i, label %if.then119.i, label %if.end124.critedge.i

if.then119.i:                                     ; preds = %sw.epilog113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %92, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.9, i32 noundef %call114.i, i32 noundef 173) #7
  br label %tda18271_channel_configuration.exit

if.end124.critedge.i:                             ; preds = %sw.epilog113.i
  %164 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tuner_priv, align 4
  %role.i.i = getelementptr inbounds %struct.tda18271_priv, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %role.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %role.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i.i = icmp eq i32 %167, 1
  %cond.i.i = zext i1 %cmp.i.i to i32
  %call.i.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef %cond.i.i, i32 noundef 1) #7
  call void @msleep(i32 noundef 1) #7
  %168 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %tuner_priv, align 4
  %role.i13.i = getelementptr inbounds %struct.tda18271_priv, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %role.i13.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %role.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp.i14.i = icmp eq i32 %171, 1
  %cond.i15.i = zext i1 %cmp.i14.i to i32
  %call.i16.i = call i32 @tda18271_charge_pump_source(ptr noundef %fe, i32 noundef %cond.i15.i, i32 noundef 0) #7
  call void @msleep(i32 noundef 20) #7
  %172 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %173)
  %cmp128.i = icmp eq i32 %173, 1
  br i1 %cmp128.i, label %if.then130.i, label %if.end124.critedge.i.tda18271_channel_configuration.exit_crit_edge

if.end124.critedge.i.tda18271_channel_configuration.exit_crit_edge: ; preds = %if.end124.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda18271_channel_configuration.exit

if.then130.i:                                     ; preds = %if.end124.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %agc_mode.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load132.i = load i16, ptr %agc_mode.i, align 2
  %175 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i67, align 1
  %177 = and i8 %176, -5
  %178 = lshr i16 %bf.load132.i, 8
  %179 = trunc i16 %178 to i8
  %180 = and i8 %179, 4
  %181 = or i8 %180, %177
  %storemerge.i = xor i8 %181, 4
  store i8 %storemerge.i, ptr %arrayidx.i67, align 1
  %call147.i = call i32 @tda18271_write_regs(ptr noundef %fe, i32 noundef 5, i32 noundef 1) #7
  br label %tda18271_channel_configuration.exit

tda18271_channel_configuration.exit:              ; preds = %if.then130.i, %if.end124.critedge.i.tda18271_channel_configuration.exit_crit_edge, %if.then119.i, %if.then93.i, %if.then54.i
  %ret.0.i75 = phi i32 [ %call147.i, %if.then130.i ], [ %call114.i, %if.end124.critedge.i.tda18271_channel_configuration.exit_crit_edge ], [ %call.i70, %if.then54.i ], [ %call88.i, %if.then93.i ], [ %call114.i, %if.then119.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.addr.i65)
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %fail

fail:                                             ; preds = %tda18271_channel_configuration.exit, %if.then16
  %ret.0 = phi i32 [ %ret.0.i75, %tda18271_channel_configuration.exit ], [ %call11, %if.then16 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_ir_measure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !149, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 17, i32 1}
!5 = !{ptr @__param_cal, !6, !"__param_cal", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_caltype292, !6, !"__UNIQUE_ID_caltype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_cal293, !9, !"__UNIQUE_ID_cal293", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 21, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1255, i32 13}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tda18271_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @tda18271_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tda18271_attach._entry.4, !11, !"_entry", i1 false, i1 false}
!19 = !{ptr @tda18271_attach._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tda18271_attach.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1268, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1271, i32 7}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_tda18271_attach, !27, !"__ksymtab_tda18271_attach", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1339, i32 1}
!28 = !{ptr @__UNIQUE_ID_description294, !29, !"__UNIQUE_ID_description294", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1340, i32 1}
!30 = !{ptr @__UNIQUE_ID_author295, !31, !"__UNIQUE_ID_author295", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1341, i32 1}
!32 = !{ptr @__UNIQUE_ID_file296, !33, !"__UNIQUE_ID_file296", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1342, i32 1}
!34 = !{ptr @__UNIQUE_ID_license297, !33, !"__UNIQUE_ID_license297", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_version298, !36, !"__UNIQUE_ID_version298", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1343, i32 1}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__modver_attr, !36, !"__modver_attr", i1 false, i1 false}
!40 = !{ptr @tda18271_debug, !41, !"tda18271_debug", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 15, i32 5}
!42 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!43 = !{ptr @__param_str_cal, !6, !"__param_str_cal", i1 false, i1 false}
!44 = !{ptr @tda18271_cal_on_startup, !45, !"tda18271_cal_on_startup", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 19, i32 12}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 23, i32 8}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tda18271_list_mutex, !47, !"tda18271_list_mutex", i1 false, i1 false}
!50 = !{ptr @hybrid_tuner_instance_list, !51, !"hybrid_tuner_instance_list", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 24, i32 8}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1158, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tda18271_get_id._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tda18271_get_id._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1166, i32 10}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1170, i32 10}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1174, i32 3}
!63 = !{ptr @tda18271_get_id._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tda18271_get_id._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1180, i32 2}
!67 = !{ptr @tda18271_get_id._entry.21, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tda18271_get_id._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__func__.tda18271c2_rf_cal_init, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 676, i32 6}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 683, i32 2}
!73 = !{ptr @tda18271c2_rf_cal_init._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tda18271c2_rf_cal_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 688, i32 2}
!77 = !{ptr @tda18271c2_rf_cal_init._entry.25, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tda18271c2_rf_cal_init._entry_ptr.27, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 637, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tda18271_calc_rf_filter_curve._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tda18271_calc_rf_filter_curve._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__func__.tda18271_powerscan_init, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 540, i32 6}
!86 = !{ptr @__func__.tda18271_rf_tracking_filters_init, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 576, i32 6}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 586, i32 3}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__func__.tda18271_powerscan, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 467, i32 6}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 517, i32 2}
!95 = !{ptr @__func__.tda18271_por, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 302, i32 6}
!97 = !{ptr @__func__.tda18271_toggle_output, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 36, i32 6}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 39, i32 2}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__func__.tda18271_update_std_map, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1127, i32 2}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1128, i32 2}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1129, i32 2}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1130, i32 2}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1131, i32 2}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1132, i32 2}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1133, i32 2}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1134, i32 2}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1135, i32 2}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1136, i32 2}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1137, i32 2}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1138, i32 2}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1139, i32 2}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1140, i32 2}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1141, i32 2}
!137 = !{ptr @__func__.tda18271_init, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 820, i32 6}
!139 = !{ptr @__func__.tda18271_ir_cal_init, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 801, i32 6}
!141 = !{ptr @tda18271_tuner_ops, !142, !"tda18271_tuner_ops", i1 false, i1 false}
!142 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1228, i32 35}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 963, i32 3}
!145 = !{ptr @__func__.tda18271_set_params, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__func__.tda18271_tune, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 890, i32 2}
!149 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 895, i32 3}
!152 = !{ptr @__func__.tda18271_agc, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 862, i32 4}
!154 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 866, i32 3}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 877, i32 3}
!159 = !{ptr @__func__.tda18271c1_rf_tracking_filter_calibration, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 748, i32 6}
!161 = !{ptr @__func__.tda18271c2_rf_tracking_filters_correction, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 254, i32 6}
!163 = !{ptr @__func__.tda18271_channel_configuration, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 108, i32 6}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1001, i32 10}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1004, i32 10}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1007, i32 10}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1010, i32 10}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1013, i32 10}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1016, i32 10}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1019, i32 10}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1022, i32 10}
!181 = !{ptr @__func__.tda18271_set_analog_params, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1025, i32 2}
!183 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__func__.tda18271_dump_std_map, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1098, i32 2}
!186 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1099, i32 2}
!189 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1100, i32 2}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1103, i32 2}
!194 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1104, i32 2}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1111, i32 2}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1112, i32 2}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1113, i32 2}
!202 = !{ptr @.str.79, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/tuners/tda18271-fe.c", i32 1046, i32 3}
!204 = !{ptr @.str.80, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @tda18271_release._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @tda18271_release._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"auto-init"}
!217 = !{i64 2155964227, i64 2155964726, i64 2155964264, i64 2155964320, i64 2155964354, i64 2155964378, i64 2155964419, i64 2155964440, i64 2155964468, i64 2155964502}
