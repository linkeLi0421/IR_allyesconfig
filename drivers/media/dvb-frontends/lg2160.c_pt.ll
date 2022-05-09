; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lg2160.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lg2160.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lg2160_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lg2160_attach\09\09\09\09"
module asm "\09.long\09__crc_lg2160_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lg2160_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lg2160_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lg2160_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lg216x_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.lg2160_config = type { i8, i16, i8, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [13 x i8] c"lg2160.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"lg2160.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [60 x i8] c"lg2160.parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@lg2160_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: (%d-%04x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lg2160_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/lg2160.c\00", [59 x i8] zeroinitializer }, align 32
@lg2160_attach._entry_ptr = internal global ptr @lg2160_attach._entry, section ".printk_index", align 4
@lg2160_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: invalid chip requested, defaulting to LG2160\00", [45 x i8] zeroinitializer }, align 32
@lg2160_attach._entry_ptr.5 = internal global ptr @lg2160_attach._entry.3, section ".printk_index", align 4
@lg2160_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LG2160 ATSC/MH Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 0 }, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr null, ptr @lg216x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg2160_set_frontend, ptr @lg216x_get_tune_settings, ptr @lg216x_get_frontend, ptr @lg216x_read_status, ptr null, ptr @lg216x_read_signal_strength, ptr @lg2160_read_snr, ptr @lg216x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg216x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lg2161_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LG2161 ATSC/MH Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 0 }, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr null, ptr @lg216x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg2160_set_frontend, ptr @lg216x_get_tune_settings, ptr @lg216x_get_frontend, ptr @lg216x_read_status, ptr null, ptr @lg216x_read_signal_strength, ptr @lg2161_read_snr, ptr @lg216x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg216x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_lg2160_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lg2160_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lg2160_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lg2160_attach to i32), ptr @__kstrtab_lg2160_attach, ptr @__kstrtabns_lg2160_attach }, section "___ksymtab+lg2160_attach", align 4
@__UNIQUE_ID_description292 = internal constant [68 x i8] c"lg2160.description=LG Electronics LG216x ATSC/MH Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [51 x i8] c"lg2160.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"lg2160.file=drivers/media/dvb-frontends/lg2160\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"lg2160.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [19 x i8] c"lg2160.version=0.3\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lg2160\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.8 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lg216x_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s: \0A\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg216x_release\00", [17 x i8] zeroinitializer }, align 32
@lg216x_release._entry_ptr = internal global ptr @lg216x_release._entry, section ".printk_index", align 4
@lg2160_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg2160_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr = internal global ptr @lg2160_set_frontend._entry, section ".printk_index", align 4
@lg2160_set_frontend._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.15 = internal global ptr @lg2160_set_frontend._entry.13, section ".printk_index", align 4
@lg2160_set_frontend._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.17 = internal global ptr @lg2160_set_frontend._entry.16, section ".printk_index", align 4
@lg2160_set_frontend._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.19 = internal global ptr @lg2160_set_frontend._entry.18, section ".printk_index", align 4
@lg2160_set_frontend._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.21 = internal global ptr @lg2160_set_frontend._entry.20, section ".printk_index", align 4
@lg2160_set_frontend._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.23 = internal global ptr @lg2160_set_frontend._entry.22, section ".printk_index", align 4
@lg2160_set_frontend._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.25 = internal global ptr @lg2160_set_frontend._entry.24, section ".printk_index", align 4
@lg2160_set_frontend._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.27 = internal global ptr @lg2160_set_frontend._entry.26, section ".printk_index", align 4
@lg2160_set_frontend._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.29 = internal global ptr @lg2160_set_frontend._entry.28, section ".printk_index", align 4
@lg2160_set_frontend._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.31 = internal global ptr @lg2160_set_frontend._entry.30, section ".printk_index", align 4
@lg2160_set_frontend._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.33 = internal global ptr @lg2160_set_frontend._entry.32, section ".printk_index", align 4
@lg2160_set_frontend._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.35 = internal global ptr @lg2160_set_frontend._entry.34, section ".printk_index", align 4
@lg2160_set_frontend._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.37 = internal global ptr @lg2160_set_frontend._entry.36, section ".printk_index", align 4
@lg2160_set_frontend._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.39 = internal global ptr @lg2160_set_frontend._entry.38, section ".printk_index", align 4
@lg2160_set_frontend._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_frontend._entry_ptr.41 = internal global ptr @lg2160_set_frontend._entry.40, section ".printk_index", align 4
@lg2160_agc_fix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.42, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg2160_agc_fix\00", [17 x i8] zeroinitializer }, align 32
@lg2160_agc_fix._entry_ptr = internal global ptr @lg2160_agc_fix._entry, section ".printk_index", align 4
@lg2160_agc_fix._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.42, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_agc_fix._entry_ptr.44 = internal global ptr @lg2160_agc_fix._entry.43, section ".printk_index", align 4
@lg216x_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: reg: 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lg216x_read_reg\00", [16 x i8] zeroinitializer }, align 32
@lg216x_read_reg._entry_ptr = internal global ptr @lg216x_read_reg._entry, section ".printk_index", align 4
@lg216x_read_reg._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: error (addr %02x reg %04x error (ret == %i)\0A\00", [45 x i8] zeroinitializer }, align 32
@lg216x_read_reg._entry_ptr.49 = internal global ptr @lg216x_read_reg._entry.47, section ".printk_index", align 4
@lg216x_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: reg: 0x%04x, val: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lg216x_write_reg\00", [47 x i8] zeroinitializer }, align 32
@lg216x_write_reg._entry_ptr = internal global ptr @lg216x_write_reg._entry, section ".printk_index", align 4
@lg216x_write_reg._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: error (addr %02x %02x <- %02x, err = %i)\0A\00", [48 x i8] zeroinitializer }, align 32
@lg216x_write_reg._entry_ptr.54 = internal global ptr @lg216x_write_reg._entry.52, section ".printk_index", align 4
@lg2160_agc_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.55, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg2160_agc_polarity\00", [44 x i8] zeroinitializer }, align 32
@lg2160_agc_polarity._entry_ptr = internal global ptr @lg2160_agc_polarity._entry, section ".printk_index", align 4
@lg2160_agc_polarity._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.55, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_agc_polarity._entry_ptr.57 = internal global ptr @lg2160_agc_polarity._entry.56, section ".printk_index", align 4
@lg2160_tuner_pwr_save_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.58, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lg2160_tuner_pwr_save_polarity\00", [33 x i8] zeroinitializer }, align 32
@lg2160_tuner_pwr_save_polarity._entry_ptr = internal global ptr @lg2160_tuner_pwr_save_polarity._entry, section ".printk_index", align 4
@lg2160_tuner_pwr_save_polarity._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.58, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_tuner_pwr_save_polarity._entry_ptr.60 = internal global ptr @lg2160_tuner_pwr_save_polarity._entry.59, section ".printk_index", align 4
@lg216x_set_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %d KHz\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lg216x_set_if\00", [18 x i8] zeroinitializer }, align 32
@lg216x_set_if._entry_ptr = internal global ptr @lg216x_set_if._entry, section ".printk_index", align 4
@lg216x_set_if._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.62, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_set_if._entry_ptr.64 = internal global ptr @lg216x_set_if._entry.63, section ".printk_index", align 4
@lg216x_set_if._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.62, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_set_if._entry_ptr.66 = internal global ptr @lg216x_set_if._entry.65, section ".printk_index", align 4
@lg2160_spectrum_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.67, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg2160_spectrum_polarity\00", [39 x i8] zeroinitializer }, align 32
@lg2160_spectrum_polarity._entry_ptr = internal global ptr @lg2160_spectrum_polarity._entry, section ".printk_index", align 4
@lg2160_spectrum_polarity._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.67, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_spectrum_polarity._entry_ptr.69 = internal global ptr @lg2160_spectrum_polarity._entry.68, section ".printk_index", align 4
@lg216x_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.70, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg216x_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@lg216x_soft_reset._entry_ptr = internal global ptr @lg216x_soft_reset._entry, section ".printk_index", align 4
@lg216x_soft_reset._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.70, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_soft_reset._entry_ptr.72 = internal global ptr @lg216x_soft_reset._entry.71, section ".printk_index", align 4
@lg216x_soft_reset._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.70, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_soft_reset._entry_ptr.74 = internal global ptr @lg216x_soft_reset._entry.73, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lg2160_tuner_pwr_save._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.75, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lg2160_tuner_pwr_save\00", [42 x i8] zeroinitializer }, align 32
@lg2160_tuner_pwr_save._entry_ptr = internal global ptr @lg2160_tuner_pwr_save._entry, section ".printk_index", align 4
@lg2160_tuner_pwr_save._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.75, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_tuner_pwr_save._entry_ptr.77 = internal global ptr @lg2160_tuner_pwr_save._entry.76, section ".printk_index", align 4
@lg2160_set_spi_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.78, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lg2160_set_spi_clock\00", [43 x i8] zeroinitializer }, align 32
@lg2160_set_spi_clock._entry_ptr = internal global ptr @lg2160_set_spi_clock._entry, section ".printk_index", align 4
@lg2160_set_spi_clock._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.78, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_set_spi_clock._entry_ptr.80 = internal global ptr @lg2160_set_spi_clock._entry.79, section ".printk_index", align 4
@lg2161_set_output_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.81, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lg2161_set_output_interface\00", [36 x i8] zeroinitializer }, align 32
@lg2161_set_output_interface._entry_ptr = internal global ptr @lg2161_set_output_interface._entry, section ".printk_index", align 4
@lg2161_set_output_interface._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.81, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2161_set_output_interface._entry_ptr.83 = internal global ptr @lg2161_set_output_interface._entry.82, section ".printk_index", align 4
@lg216x_set_parade._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.84, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg216x_set_parade\00", [46 x i8] zeroinitializer }, align 32
@lg216x_set_parade._entry_ptr = internal global ptr @lg216x_set_parade._entry, section ".printk_index", align 4
@lg216x_set_ensemble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.85, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg216x_set_ensemble\00", [44 x i8] zeroinitializer }, align 32
@lg216x_set_ensemble._entry_ptr = internal global ptr @lg216x_set_ensemble._entry, section ".printk_index", align 4
@lg216x_set_ensemble._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.85, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_set_ensemble._entry_ptr.87 = internal global ptr @lg216x_set_ensemble._entry.86, section ".printk_index", align 4
@lg216x_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.88, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg216x_initialize\00", [46 x i8] zeroinitializer }, align 32
@lg216x_initialize._entry_ptr = internal global ptr @lg216x_initialize._entry, section ".printk_index", align 4
@lg216x_initialize._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.88, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_initialize._entry_ptr.90 = internal global ptr @lg216x_initialize._entry.89, section ".printk_index", align 4
@lg216x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: writing %d registers...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg216x_write_regs\00", [46 x i8] zeroinitializer }, align 32
@lg216x_write_regs._entry_ptr = internal global ptr @lg216x_write_regs._entry, section ".printk_index", align 4
@lg216x_write_regs._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.92, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_write_regs._entry_ptr.94 = internal global ptr @lg216x_write_regs._entry.93, section ".printk_index", align 4
@lg216x_enable_fic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.95, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg216x_enable_fic\00", [46 x i8] zeroinitializer }, align 32
@lg216x_enable_fic._entry_ptr = internal global ptr @lg216x_enable_fic._entry, section ".printk_index", align 4
@lg216x_enable_fic._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.95, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_enable_fic._entry_ptr.97 = internal global ptr @lg216x_enable_fic._entry.96, section ".printk_index", align 4
@lg216x_enable_fic._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.95, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_enable_fic._entry_ptr.99 = internal global ptr @lg216x_enable_fic._entry.98, section ".printk_index", align 4
@lg216x_enable_fic._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.95, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_enable_fic._entry_ptr.101 = internal global ptr @lg216x_enable_fic._entry.100, section ".printk_index", align 4
@lg216x_enable_fic._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.95, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_enable_fic._entry_ptr.103 = internal global ptr @lg216x_enable_fic._entry.102, section ".printk_index", align 4
@lg216x_get_tune_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.104, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg216x_get_tune_settings\00", [39 x i8] zeroinitializer }, align 32
@lg216x_get_tune_settings._entry_ptr = internal global ptr @lg216x_get_tune_settings._entry, section ".printk_index", align 4
@lg216x_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.105, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg216x_get_frontend\00", [44 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr = internal global ptr @lg216x_get_frontend._entry, section ".printk_index", align 4
@lg216x_get_frontend._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.107 = internal global ptr @lg216x_get_frontend._entry.106, section ".printk_index", align 4
@lg216x_get_frontend._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.109 = internal global ptr @lg216x_get_frontend._entry.108, section ".printk_index", align 4
@lg216x_get_frontend._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.111 = internal global ptr @lg216x_get_frontend._entry.110, section ".printk_index", align 4
@lg216x_get_frontend._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.113 = internal global ptr @lg216x_get_frontend._entry.112, section ".printk_index", align 4
@lg216x_get_frontend._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.115 = internal global ptr @lg216x_get_frontend._entry.114, section ".printk_index", align 4
@lg216x_get_frontend._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.117 = internal global ptr @lg216x_get_frontend._entry.116, section ".printk_index", align 4
@lg216x_get_frontend._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.119 = internal global ptr @lg216x_get_frontend._entry.118, section ".printk_index", align 4
@lg216x_get_frontend._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.121 = internal global ptr @lg216x_get_frontend._entry.120, section ".printk_index", align 4
@lg216x_get_frontend._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.123 = internal global ptr @lg216x_get_frontend._entry.122, section ".printk_index", align 4
@lg216x_get_frontend._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.105, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_get_frontend._entry_ptr.125 = internal global ptr @lg216x_get_frontend._entry.124, section ".printk_index", align 4
@lg216x_get_fic_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.126, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lg216x_get_fic_version\00", [41 x i8] zeroinitializer }, align 32
@lg216x_get_fic_version._entry_ptr = internal global ptr @lg216x_get_fic_version._entry, section ".printk_index", align 4
@lg216x_get_nog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.127, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg216x_get_nog\00", [17 x i8] zeroinitializer }, align 32
@lg216x_get_nog._entry_ptr = internal global ptr @lg216x_get_nog._entry, section ".printk_index", align 4
@lg216x_get_tnog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.128, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lg216x_get_tnog\00", [16 x i8] zeroinitializer }, align 32
@lg216x_get_tnog._entry_ptr = internal global ptr @lg216x_get_tnog._entry, section ".printk_index", align 4
@lg216x_get_sgn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.129, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg216x_get_sgn\00", [17 x i8] zeroinitializer }, align 32
@lg216x_get_sgn._entry_ptr = internal global ptr @lg216x_get_sgn._entry, section ".printk_index", align 4
@lg216x_get_prc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.130, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg216x_get_prc\00", [17 x i8] zeroinitializer }, align 32
@lg216x_get_prc._entry_ptr = internal global ptr @lg216x_get_prc._entry, section ".printk_index", align 4
@lg216x_get_rs_frame_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.131, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg216x_get_rs_frame_mode\00", [39 x i8] zeroinitializer }, align 32
@lg216x_get_rs_frame_mode._entry_ptr = internal global ptr @lg216x_get_rs_frame_mode._entry, section ".printk_index", align 4
@lg216x_get_rs_frame_ensemble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.132, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lg216x_get_rs_frame_ensemble\00", [35 x i8] zeroinitializer }, align 32
@lg216x_get_rs_frame_ensemble._entry_ptr = internal global ptr @lg216x_get_rs_frame_ensemble._entry, section ".printk_index", align 4
@lg216x_get_rs_code_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.133, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lg216x_get_rs_code_mode\00", [40 x i8] zeroinitializer }, align 32
@lg216x_get_rs_code_mode._entry_ptr = internal global ptr @lg216x_get_rs_code_mode._entry, section ".printk_index", align 4
@lg216x_get_sccc_block_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.134, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lg216x_get_sccc_block_mode\00", [37 x i8] zeroinitializer }, align 32
@lg216x_get_sccc_block_mode._entry_ptr = internal global ptr @lg216x_get_sccc_block_mode._entry, section ".printk_index", align 4
@lg216x_get_sccc_code_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.135, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lg216x_get_sccc_code_mode\00", [38 x i8] zeroinitializer }, align 32
@lg216x_get_sccc_code_mode._entry_ptr = internal global ptr @lg216x_get_sccc_code_mode._entry, section ".printk_index", align 4
@lg216x_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.136, ptr @.str.2, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lg216x_read_status\00", [45 x i8] zeroinitializer }, align 32
@lg216x_read_status._entry_ptr = internal global ptr @lg216x_read_status._entry, section ".printk_index", align 4
@lg216x_read_status._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@lg216x_read_status._entry_ptr.139 = internal global ptr @lg216x_read_status._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SIGNALEXIST \00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYNCLOCK\00", [23 x i8] zeroinitializer }, align 32
@lg2160_read_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.143, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lg2160_read_lock_status\00", [40 x i8] zeroinitializer }, align 32
@lg2160_read_lock_status._entry_ptr = internal global ptr @lg2160_read_lock_status._entry, section ".printk_index", align 4
@lg2160_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.144, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lg2160_read_snr\00", [16 x i8] zeroinitializer }, align 32
@lg2160_read_snr._entry_ptr = internal global ptr @lg2160_read_snr._entry, section ".printk_index", align 4
@lg2160_read_snr._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.144, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2160_read_snr._entry_ptr.146 = internal global ptr @lg2160_read_snr._entry.145, section ".printk_index", align 4
@lg216x_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.147, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lg216x_i2c_gate_ctrl\00", [43 x i8] zeroinitializer }, align 32
@lg216x_i2c_gate_ctrl._entry_ptr = internal global ptr @lg216x_i2c_gate_ctrl._entry, section ".printk_index", align 4
@lg216x_set_reg_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: reg: 0x%04x, bit: %d, level: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lg216x_set_reg_bit\00", [45 x i8] zeroinitializer }, align 32
@lg216x_set_reg_bit._entry_ptr = internal global ptr @lg216x_set_reg_bit._entry, section ".printk_index", align 4
@lg216x_set_reg_bit._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.149, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_set_reg_bit._entry_ptr.151 = internal global ptr @lg216x_set_reg_bit._entry.150, section ".printk_index", align 4
@lg216x_set_reg_bit._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.149, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg216x_set_reg_bit._entry_ptr.153 = internal global ptr @lg216x_set_reg_bit._entry.152, section ".printk_index", align 4
@lg2161_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.154, ptr @.str.2, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lg2161_read_snr\00", [16 x i8] zeroinitializer }, align 32
@lg2161_read_snr._entry_ptr = internal global ptr @lg2161_read_snr._entry, section ".printk_index", align 4
@lg2161_read_snr._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.154, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg2161_read_snr._entry_ptr.156 = internal global ptr @lg2161_read_snr._entry.155, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 12, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1395, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1410, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [11 x i8] c"lg2160_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1338, i32 38 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"lg2161_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1364, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1434, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1334, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1047, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1053, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1059, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1062, i32 6 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1065, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1068, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1071, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1076, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1080, i32 6 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1086, i32 7 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1091, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1097, i32 6 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1102, i32 6 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1106, i32 6 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1110, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 267, i32 6 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 275, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 88, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 93, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 62, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 67, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 309, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 317, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 329, i32 6 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 336, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 241, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 244, i32 6 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 251, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 348, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 355, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 167, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 170, i32 6 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 175, i32 6 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 366, i32 6 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 373, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 426, i32 6 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 433, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 444, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 451, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 383, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 408, i32 6 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 415, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 225, i32 6 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 229, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 113, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 117, i32 7 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 461, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 465, i32 6 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 477, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 481, i32 6 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 486, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1327, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 937, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 945, i32 6 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 960, i32 7 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 964, i32 7 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 968, i32 7 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 972, i32 7 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 978, i32 7 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 983, i32 7 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 990, i32 7 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 995, i32 7 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1006, i32 7 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 502, i32 6 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 536, i32 6 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 552, i32 6 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 568, i32 6 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 584, i32 6 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 610, i32 6 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 650, i32 6 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 676, i32 6 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 701, i32 6 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 738, i32 6 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1194, i32 6 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1197, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1129, i32 6 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1224, i32 6 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1228, i32 6 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 154, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 129, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 132, i32 6 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 139, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1252, i32 6 }
@___asan_gen_.603 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.604 = private constant [40 x i8] c"../drivers/media/dvb-frontends/lg2160.c\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1256, i32 6 }
@llvm.compiler.used = appending global [244 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__ksymtab_lg2160_attach, ptr @__modver_attr, ptr @__param_debug, ptr @lg2160_agc_fix._entry, ptr @lg2160_agc_fix._entry.43, ptr @lg2160_agc_fix._entry_ptr, ptr @lg2160_agc_fix._entry_ptr.44, ptr @lg2160_agc_polarity._entry, ptr @lg2160_agc_polarity._entry.56, ptr @lg2160_agc_polarity._entry_ptr, ptr @lg2160_agc_polarity._entry_ptr.57, ptr @lg2160_attach._entry, ptr @lg2160_attach._entry.3, ptr @lg2160_attach._entry_ptr, ptr @lg2160_attach._entry_ptr.5, ptr @lg2160_read_lock_status._entry, ptr @lg2160_read_lock_status._entry_ptr, ptr @lg2160_read_snr._entry, ptr @lg2160_read_snr._entry.145, ptr @lg2160_read_snr._entry_ptr, ptr @lg2160_read_snr._entry_ptr.146, ptr @lg2160_set_frontend._entry, ptr @lg2160_set_frontend._entry.13, ptr @lg2160_set_frontend._entry.16, ptr @lg2160_set_frontend._entry.18, ptr @lg2160_set_frontend._entry.20, ptr @lg2160_set_frontend._entry.22, ptr @lg2160_set_frontend._entry.24, ptr @lg2160_set_frontend._entry.26, ptr @lg2160_set_frontend._entry.28, ptr @lg2160_set_frontend._entry.30, ptr @lg2160_set_frontend._entry.32, ptr @lg2160_set_frontend._entry.34, ptr @lg2160_set_frontend._entry.36, ptr @lg2160_set_frontend._entry.38, ptr @lg2160_set_frontend._entry.40, ptr @lg2160_set_frontend._entry_ptr, ptr @lg2160_set_frontend._entry_ptr.15, ptr @lg2160_set_frontend._entry_ptr.17, ptr @lg2160_set_frontend._entry_ptr.19, ptr @lg2160_set_frontend._entry_ptr.21, ptr @lg2160_set_frontend._entry_ptr.23, ptr @lg2160_set_frontend._entry_ptr.25, ptr @lg2160_set_frontend._entry_ptr.27, ptr @lg2160_set_frontend._entry_ptr.29, ptr @lg2160_set_frontend._entry_ptr.31, ptr @lg2160_set_frontend._entry_ptr.33, ptr @lg2160_set_frontend._entry_ptr.35, ptr @lg2160_set_frontend._entry_ptr.37, ptr @lg2160_set_frontend._entry_ptr.39, ptr @lg2160_set_frontend._entry_ptr.41, ptr @lg2160_set_spi_clock._entry, ptr @lg2160_set_spi_clock._entry.79, ptr @lg2160_set_spi_clock._entry_ptr, ptr @lg2160_set_spi_clock._entry_ptr.80, ptr @lg2160_spectrum_polarity._entry, ptr @lg2160_spectrum_polarity._entry.68, ptr @lg2160_spectrum_polarity._entry_ptr, ptr @lg2160_spectrum_polarity._entry_ptr.69, ptr @lg2160_tuner_pwr_save._entry, ptr @lg2160_tuner_pwr_save._entry.76, ptr @lg2160_tuner_pwr_save._entry_ptr, ptr @lg2160_tuner_pwr_save._entry_ptr.77, ptr @lg2160_tuner_pwr_save_polarity._entry, ptr @lg2160_tuner_pwr_save_polarity._entry.59, ptr @lg2160_tuner_pwr_save_polarity._entry_ptr, ptr @lg2160_tuner_pwr_save_polarity._entry_ptr.60, ptr @lg2161_read_snr._entry, ptr @lg2161_read_snr._entry.155, ptr @lg2161_read_snr._entry_ptr, ptr @lg2161_read_snr._entry_ptr.156, ptr @lg2161_set_output_interface._entry, ptr @lg2161_set_output_interface._entry.82, ptr @lg2161_set_output_interface._entry_ptr, ptr @lg2161_set_output_interface._entry_ptr.83, ptr @lg216x_enable_fic._entry, ptr @lg216x_enable_fic._entry.100, ptr @lg216x_enable_fic._entry.102, ptr @lg216x_enable_fic._entry.96, ptr @lg216x_enable_fic._entry.98, ptr @lg216x_enable_fic._entry_ptr, ptr @lg216x_enable_fic._entry_ptr.101, ptr @lg216x_enable_fic._entry_ptr.103, ptr @lg216x_enable_fic._entry_ptr.97, ptr @lg216x_enable_fic._entry_ptr.99, ptr @lg216x_get_fic_version._entry, ptr @lg216x_get_fic_version._entry_ptr, ptr @lg216x_get_frontend._entry, ptr @lg216x_get_frontend._entry.106, ptr @lg216x_get_frontend._entry.108, ptr @lg216x_get_frontend._entry.110, ptr @lg216x_get_frontend._entry.112, ptr @lg216x_get_frontend._entry.114, ptr @lg216x_get_frontend._entry.116, ptr @lg216x_get_frontend._entry.118, ptr @lg216x_get_frontend._entry.120, ptr @lg216x_get_frontend._entry.122, ptr @lg216x_get_frontend._entry.124, ptr @lg216x_get_frontend._entry_ptr, ptr @lg216x_get_frontend._entry_ptr.107, ptr @lg216x_get_frontend._entry_ptr.109, ptr @lg216x_get_frontend._entry_ptr.111, ptr @lg216x_get_frontend._entry_ptr.113, ptr @lg216x_get_frontend._entry_ptr.115, ptr @lg216x_get_frontend._entry_ptr.117, ptr @lg216x_get_frontend._entry_ptr.119, ptr @lg216x_get_frontend._entry_ptr.121, ptr @lg216x_get_frontend._entry_ptr.123, ptr @lg216x_get_frontend._entry_ptr.125, ptr @lg216x_get_nog._entry, ptr @lg216x_get_nog._entry_ptr, ptr @lg216x_get_prc._entry, ptr @lg216x_get_prc._entry_ptr, ptr @lg216x_get_rs_code_mode._entry, ptr @lg216x_get_rs_code_mode._entry_ptr, ptr @lg216x_get_rs_frame_ensemble._entry, ptr @lg216x_get_rs_frame_ensemble._entry_ptr, ptr @lg216x_get_rs_frame_mode._entry, ptr @lg216x_get_rs_frame_mode._entry_ptr, ptr @lg216x_get_sccc_block_mode._entry, ptr @lg216x_get_sccc_block_mode._entry_ptr, ptr @lg216x_get_sccc_code_mode._entry, ptr @lg216x_get_sccc_code_mode._entry_ptr, ptr @lg216x_get_sgn._entry, ptr @lg216x_get_sgn._entry_ptr, ptr @lg216x_get_tnog._entry, ptr @lg216x_get_tnog._entry_ptr, ptr @lg216x_get_tune_settings._entry, ptr @lg216x_get_tune_settings._entry_ptr, ptr @lg216x_i2c_gate_ctrl._entry, ptr @lg216x_i2c_gate_ctrl._entry_ptr, ptr @lg216x_initialize._entry, ptr @lg216x_initialize._entry.89, ptr @lg216x_initialize._entry_ptr, ptr @lg216x_initialize._entry_ptr.90, ptr @lg216x_read_reg._entry, ptr @lg216x_read_reg._entry.47, ptr @lg216x_read_reg._entry_ptr, ptr @lg216x_read_reg._entry_ptr.49, ptr @lg216x_read_status._entry, ptr @lg216x_read_status._entry.137, ptr @lg216x_read_status._entry_ptr, ptr @lg216x_read_status._entry_ptr.139, ptr @lg216x_release._entry, ptr @lg216x_release._entry_ptr, ptr @lg216x_set_ensemble._entry, ptr @lg216x_set_ensemble._entry.86, ptr @lg216x_set_ensemble._entry_ptr, ptr @lg216x_set_ensemble._entry_ptr.87, ptr @lg216x_set_if._entry, ptr @lg216x_set_if._entry.63, ptr @lg216x_set_if._entry.65, ptr @lg216x_set_if._entry_ptr, ptr @lg216x_set_if._entry_ptr.64, ptr @lg216x_set_if._entry_ptr.66, ptr @lg216x_set_parade._entry, ptr @lg216x_set_parade._entry_ptr, ptr @lg216x_set_reg_bit._entry, ptr @lg216x_set_reg_bit._entry.150, ptr @lg216x_set_reg_bit._entry.152, ptr @lg216x_set_reg_bit._entry_ptr, ptr @lg216x_set_reg_bit._entry_ptr.151, ptr @lg216x_set_reg_bit._entry_ptr.153, ptr @lg216x_soft_reset._entry, ptr @lg216x_soft_reset._entry.71, ptr @lg216x_soft_reset._entry.73, ptr @lg216x_soft_reset._entry_ptr, ptr @lg216x_soft_reset._entry_ptr.72, ptr @lg216x_soft_reset._entry_ptr.74, ptr @lg216x_write_reg._entry, ptr @lg216x_write_reg._entry.52, ptr @lg216x_write_reg._entry_ptr, ptr @lg216x_write_reg._entry_ptr.54, ptr @lg216x_write_regs._entry, ptr @lg216x_write_regs._entry.93, ptr @lg216x_write_regs._entry_ptr, ptr @lg216x_write_regs._entry_ptr.94, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @lg2160_ops, ptr @lg2161_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.67, ptr @.str.70, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.95, ptr @.str.104, ptr @.str.105, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.154], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2161_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_frontend._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_agc_fix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_agc_fix._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_read_reg._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_write_reg._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_agc_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_agc_polarity._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_tuner_pwr_save_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_tuner_pwr_save_polarity._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_if._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_if._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_spectrum_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_spectrum_polarity._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_soft_reset._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_soft_reset._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_tuner_pwr_save._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_tuner_pwr_save._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_spi_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_set_spi_clock._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2161_set_output_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2161_set_output_interface._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_parade._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_ensemble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_ensemble._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_initialize._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_write_regs._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_enable_fic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_enable_fic._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_enable_fic._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_enable_fic._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_enable_fic._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_tune_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_frontend._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_fic_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_nog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_tnog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_sgn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_prc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_rs_frame_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_rs_frame_ensemble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_rs_code_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_sccc_block_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_get_sccc_code_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_read_status._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_read_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2160_read_snr._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_reg_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_reg_bit._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg216x_set_reg_bit._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2161_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg2161_read_snr._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lg2160_attach(ptr noundef %config, ptr noundef %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool1.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %1 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %tobool2.not = icmp eq ptr %config, null
  br i1 %tobool2.not, label %cond.end.cond.end5_crit_edge, label %cond.true3

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 4
  %conv = zext i8 %4 to i32
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true3, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %conv, %cond.true3 ], [ 0, %cond.end.cond.end5_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %cond6) #9
  br label %if.end

if.end:                                           ; preds = %cond.end5, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1060) #10
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %cfg = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %config, ptr %cfg, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_adap, ptr %call7.i.i, align 8
  %fic_ver = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %fic_ver to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %fic_ver, align 1
  %parade_id = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %parade_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %parade_id, align 4
  %lg_chip = getelementptr inbounds %struct.lg2160_config, ptr %config, i32 0, i32 5
  %10 = ptrtoint ptr %lg_chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lg_chip, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end15 [
    i32 0, label %if.end11.sw.bb_crit_edge
    i32 1, label %sw.bb18
  ]

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end15, %if.end11.sw.bb_crit_edge
  %ops = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %13 = call ptr @memcpy(ptr %ops, ptr @lg2160_ops, i32 544)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %ops20 = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = call ptr @memcpy(ptr %ops20, ptr @lg2161_ops, i32 544)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb
  %frontend21 = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 2
  %demodulator_priv = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %current_frequency = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %current_frequency, align 8
  %atscmh_parade_id = getelementptr inbounds %struct.lg216x_state, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 27
  %17 = ptrtoint ptr %atscmh_parade_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %atscmh_parade_id, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend21, %sw.epilog ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg216x_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg2160_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %val.i397 = alloca i8, align 1
  %val.i380 = alloca i8, align 1
  %val.i372 = alloca i8, align 1
  %val.i361 = alloca i8, align 1
  %val.i349 = alloca i8, align 1
  %val.i343 = alloca i8, align 1
  %val.i336 = alloca i8, align 1
  %val.i325 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %5 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_params, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end29_crit_edge, label %if.then3

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then3:                                         ; preds = %if.end
  %call7 = tail call i32 %6(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.then3.if.end14_crit_edge, label %if.then10

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 %8(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then3.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end19, label %if.end26.critedge

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %call7, i32 noundef 1053) #9
  br label %fail

if.end26.critedge:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %current_frequency, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end26.critedge, %if.end.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %val.i, align 1, !annotation !355
  %call.i = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 256, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end5.critedge.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.42, i32 noundef %call.i, i32 noundef 267) #9
  br label %do.end38

if.end5.critedge.i:                               ; preds = %if.end29
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 1
  %15 = and i8 %14, -13
  store i8 %15, ptr %val.i, align 1
  %call16.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 256, i8 noundef zeroext %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp18.i = icmp slt i32 %call16.i, 0
  br i1 %cmp18.i, label %do.end24.i, label %if.end45.critedge

do.end24.i:                                       ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.42, i32 noundef %call16.i, i32 noundef 275) #9
  br label %do.end38

do.end38:                                         ; preds = %do.end24.i, %do.end.i
  %ret.0.i.ph = phi i32 [ %call16.i, %do.end24.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i.ph, i32 noundef 1059) #9
  br label %fail

if.end45.critedge:                                ; preds = %if.end5.critedge.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i325) #6
  %16 = ptrtoint ptr %val.i325 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %val.i325, align 1, !annotation !355
  %call.i326 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 256, ptr noundef nonnull %val.i325) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %cmp.i327 = icmp slt i32 %call.i326, 0
  br i1 %cmp.i327, label %do.end.i329, label %if.end5.critedge.i332

do.end.i329:                                      ; preds = %if.end45.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.55, i32 noundef %call.i326, i32 noundef 309) #9
  br label %do.end54

if.end5.critedge.i332:                            ; preds = %if.end45.critedge
  %17 = ptrtoint ptr %val.i325 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i325, align 1
  %19 = and i8 %18, -4
  store i8 %19, ptr %val.i325, align 1
  %call16.i330 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 256, i8 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i330)
  %cmp18.i331 = icmp slt i32 %call16.i330, 0
  br i1 %cmp18.i331, label %do.end24.i334, label %if.end61.critedge

do.end24.i334:                                    ; preds = %if.end5.critedge.i332
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.55, i32 noundef %call16.i330, i32 noundef 317) #9
  br label %do.end54

do.end54:                                         ; preds = %do.end24.i334, %do.end.i329
  %ret.0.i335.ph = phi i32 [ %call16.i330, %do.end24.i334 ], [ %call.i326, %do.end.i329 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i325) #6
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i335.ph, i32 noundef 1062) #9
  br label %fail

if.end61.critedge:                                ; preds = %if.end5.critedge.i332
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i325) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i336) #6
  %20 = ptrtoint ptr %val.i336 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i336, align 1, !annotation !355
  %call.i337 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 8, ptr noundef nonnull %val.i336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %cmp.i338 = icmp slt i32 %call.i337, 0
  br i1 %cmp.i338, label %do.end.i340, label %if.end5.critedge.i341

do.end.i340:                                      ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.58, i32 noundef %call.i337, i32 noundef 329) #9
  br label %do.end70

if.end5.critedge.i341:                            ; preds = %if.end61.critedge
  %21 = ptrtoint ptr %val.i336 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i336, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %val.i336, align 1
  %call11.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 8, i8 noundef zeroext %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp13.i = icmp slt i32 %call11.i, 0
  br i1 %cmp13.i, label %do.end19.i, label %if.end77.critedge

do.end19.i:                                       ; preds = %if.end5.critedge.i341
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.58, i32 noundef %call11.i, i32 noundef 336) #9
  br label %do.end70

do.end70:                                         ; preds = %do.end19.i, %do.end.i340
  %ret.0.i342.ph = phi i32 [ %call11.i, %do.end19.i ], [ %call.i337, %do.end.i340 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i336) #6
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i342.ph, i32 noundef 1065) #9
  br label %fail

if.end77.critedge:                                ; preds = %if.end5.critedge.i341
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i336) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i343) #6
  %24 = ptrtoint ptr %val.i343 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val.i343, align 1, !annotation !355
  %25 = load i32, ptr @debug, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end77.critedge.if.end.i_crit_edge, label %do.end.i345

if.end77.critedge.if.end.i_crit_edge:             ; preds = %if.end77.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i345:                                      ; preds = %if.end77.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i, align 4
  %if_khz.i = getelementptr inbounds %struct.lg2160_config, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %if_khz.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %if_khz.i, align 2
  %conv.i = zext i16 %29 to i32
  %call.i344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i345, %if.end77.critedge.if.end.i_crit_edge
  %call1.i346 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 306, ptr noundef nonnull %val.i343) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i346)
  %cmp.i347 = icmp slt i32 %call1.i346, 0
  br i1 %cmp.i347, label %do.end7.i, label %if.end14.critedge.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.62, i32 noundef %call1.i346, i32 noundef 244) #9
  br label %do.end86

if.end14.critedge.i:                              ; preds = %if.end.i
  %30 = ptrtoint ptr %val.i343 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i343, align 1
  %32 = and i8 %31, -5
  %cfg18.i = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg18.i, align 4
  %if_khz19.i = getelementptr inbounds %struct.lg2160_config, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %if_khz19.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %if_khz19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp21.i = icmp eq i16 %36, 0
  %cond.i = select i1 %cmp21.i, i8 4, i8 0
  %or.i = or i8 %cond.i, %32
  %37 = ptrtoint ptr %val.i343 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or.i, ptr %val.i343, align 1
  %call25.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 306, i8 noundef zeroext %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %do.end33.i, label %if.end93.critedge

do.end33.i:                                       ; preds = %if.end14.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.62, i32 noundef %call25.i, i32 noundef 251) #9
  br label %do.end86

do.end86:                                         ; preds = %do.end33.i, %do.end7.i
  %ret.0.i348.ph = phi i32 [ %call25.i, %do.end33.i ], [ %call1.i346, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i343) #6
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i348.ph, i32 noundef 1068) #9
  br label %fail

if.end93.critedge:                                ; preds = %if.end14.critedge.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i343) #6
  %38 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg18.i, align 4
  %spectral_inversion = getelementptr inbounds %struct.lg2160_config, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %spectral_inversion to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %spectral_inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i349) #6
  %41 = ptrtoint ptr %val.i349 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %val.i349, align 1, !annotation !355
  %call.i350 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 306, ptr noundef nonnull %val.i349) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %cmp.i351 = icmp slt i32 %call.i350, 0
  br i1 %cmp.i351, label %do.end.i353, label %if.end5.critedge.i358

do.end.i353:                                      ; preds = %if.end93.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.67, i32 noundef %call.i350, i32 noundef 348) #9
  br label %lg2160_spectrum_polarity.exit

if.end5.critedge.i358:                            ; preds = %if.end93.critedge
  %42 = ptrtoint ptr %val.i349 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i349, align 1
  %44 = and i8 %43, -3
  %45 = lshr i8 %bf.load, 5
  %46 = and i8 %45, 2
  %or.i355 = or i8 %44, %46
  store i8 %or.i355, ptr %val.i349, align 1
  %call11.i356 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 306, i8 noundef zeroext %or.i355) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i356)
  %cmp13.i357 = icmp slt i32 %call11.i356, 0
  br i1 %cmp13.i357, label %do.end19.i360, label %if.end5.critedge.i358.lg2160_spectrum_polarity.exit_crit_edge

if.end5.critedge.i358.lg2160_spectrum_polarity.exit_crit_edge: ; preds = %if.end5.critedge.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %lg2160_spectrum_polarity.exit

do.end19.i360:                                    ; preds = %if.end5.critedge.i358
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.67, i32 noundef %call11.i356, i32 noundef 355) #9
  br label %lg2160_spectrum_polarity.exit

lg2160_spectrum_polarity.exit:                    ; preds = %do.end19.i360, %if.end5.critedge.i358.lg2160_spectrum_polarity.exit_crit_edge, %do.end.i353
  %call24.i = call fastcc i32 @lg216x_soft_reset(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i349) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp96 = icmp slt i32 %call24.i, 0
  br i1 %cmp96, label %do.end102, label %if.end109.critedge

do.end102:                                        ; preds = %lg2160_spectrum_polarity.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %call24.i, i32 noundef 1071) #9
  br label %fail

if.end109.critedge:                               ; preds = %lg2160_spectrum_polarity.exit
  %call110 = call fastcc i32 @lg216x_soft_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp112 = icmp slt i32 %call110, 0
  br i1 %cmp112, label %do.end118, label %if.end125.critedge

do.end118:                                        ; preds = %if.end109.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %call110, i32 noundef 1076) #9
  br label %fail

if.end125.critedge:                               ; preds = %if.end109.critedge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i361) #6
  %47 = ptrtoint ptr %val.i361 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %val.i361, align 1, !annotation !355
  %call.i362 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 7, ptr noundef nonnull %val.i361) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %cmp.i363 = icmp slt i32 %call.i362, 0
  br i1 %cmp.i363, label %do.end.i365, label %if.end5.critedge.i368

do.end.i365:                                      ; preds = %if.end125.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.75, i32 noundef %call.i362, i32 noundef 366) #9
  br label %do.end134

if.end5.critedge.i368:                            ; preds = %if.end125.critedge
  %48 = ptrtoint ptr %val.i361 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i361, align 1
  %50 = and i8 %49, -65
  store i8 %50, ptr %val.i361, align 1
  %call11.i366 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 7, i8 noundef zeroext %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i366)
  %cmp13.i367 = icmp slt i32 %call11.i366, 0
  br i1 %cmp13.i367, label %do.end19.i370, label %if.end141.critedge

do.end19.i370:                                    ; preds = %if.end5.critedge.i368
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.75, i32 noundef %call11.i366, i32 noundef 373) #9
  br label %do.end134

do.end134:                                        ; preds = %do.end19.i370, %do.end.i365
  %ret.0.i371.ph = phi i32 [ %call11.i366, %do.end19.i370 ], [ %call.i362, %do.end.i365 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i361) #6
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i371.ph, i32 noundef 1080) #9
  br label %fail

if.end141.critedge:                               ; preds = %if.end5.critedge.i368
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i361) #6
  %51 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg18.i, align 4
  %lg_chip = getelementptr inbounds %struct.lg2160_config, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %lg_chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lg_chip, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %54, label %if.end141.critedge.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb159
  ]

if.end141.critedge.sw.epilog_crit_edge:           ; preds = %if.end141.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end141.critedge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i372) #6
  %56 = ptrtoint ptr %val.i372 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %val.i372, align 1, !annotation !355
  %call.i373 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 20, ptr noundef nonnull %val.i372) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %cmp.i374 = icmp slt i32 %call.i373, 0
  br i1 %cmp.i374, label %do.end.i376, label %if.end5.critedge.i378

do.end.i376:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.78, i32 noundef %call.i373, i32 noundef 426) #9
  br label %do.end151

if.end5.critedge.i378:                            ; preds = %sw.bb
  %57 = ptrtoint ptr %val.i372 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val.i372, align 1
  %59 = and i8 %58, -13
  %60 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg18.i, align 4
  %spi_clock.i = getelementptr inbounds %struct.lg2160_config, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %spi_clock.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %spi_clock.i, align 4
  %.tr.i = trunc i32 %63 to i8
  %64 = shl i8 %.tr.i, 2
  %conv9.i = or i8 %64, %59
  store i8 %conv9.i, ptr %val.i372, align 1
  %call10.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 20, i8 noundef zeroext %conv9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp12.i = icmp slt i32 %call10.i, 0
  br i1 %cmp12.i, label %do.end18.i, label %lg2160_set_spi_clock.exit

do.end18.i:                                       ; preds = %if.end5.critedge.i378
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.78, i32 noundef %call10.i, i32 noundef 433) #9
  br label %do.end151

lg2160_set_spi_clock.exit:                        ; preds = %if.end5.critedge.i378
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i372) #6
  br label %sw.epilog

do.end151:                                        ; preds = %do.end18.i, %do.end.i376
  %ret.0.i379.ph = phi i32 [ %call10.i, %do.end18.i ], [ %call.i373, %do.end.i376 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i372) #6
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i379.ph, i32 noundef 1086) #9
  br label %fail

sw.bb159:                                         ; preds = %if.end141.critedge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i380) #6
  %65 = ptrtoint ptr %val.i380 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %val.i380, align 1, !annotation !355
  %call.i381 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 20, ptr noundef nonnull %val.i380) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %cmp.i382 = icmp slt i32 %call.i381, 0
  br i1 %cmp.i382, label %do.end.i384, label %if.end5.critedge.i389

do.end.i384:                                      ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.81, i32 noundef %call.i381, i32 noundef 444) #9
  br label %do.end168

if.end5.critedge.i389:                            ; preds = %sw.bb159
  %66 = ptrtoint ptr %val.i380 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %val.i380, align 1
  %68 = and i8 %67, -8
  %69 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg18.i, align 4
  %output_if.i = getelementptr inbounds %struct.lg2160_config, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %output_if.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %output_if.i, align 4
  %73 = trunc i32 %72 to i8
  %conv9.i386 = or i8 %68, %73
  store i8 %conv9.i386, ptr %val.i380, align 1
  %call10.i387 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 20, i8 noundef zeroext %conv9.i386) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i387)
  %cmp12.i388 = icmp slt i32 %call10.i387, 0
  br i1 %cmp12.i388, label %do.end18.i391, label %lg2161_set_output_interface.exit

do.end18.i391:                                    ; preds = %if.end5.critedge.i389
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.81, i32 noundef %call10.i387, i32 noundef 451) #9
  br label %do.end168

lg2161_set_output_interface.exit:                 ; preds = %if.end5.critedge.i389
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i380) #6
  br label %sw.epilog

do.end168:                                        ; preds = %do.end18.i391, %do.end.i384
  %ret.0.i392.ph = phi i32 [ %call10.i387, %do.end18.i391 ], [ %call.i381, %do.end.i384 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i380) #6
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i392.ph, i32 noundef 1091) #9
  br label %fail

sw.epilog:                                        ; preds = %lg2161_set_output_interface.exit, %lg2160_set_spi_clock.exit, %if.end141.critedge.sw.epilog_crit_edge
  %atscmh_parade_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 27
  %74 = ptrtoint ptr %atscmh_parade_id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %atscmh_parade_id, align 1
  %conv.i393 = and i8 %75, 127
  %call.i394 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 318, i8 noundef zeroext %conv.i393) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %cmp.i395 = icmp slt i32 %call.i394, 0
  br i1 %cmp.i395, label %do.end186, label %if.end193.critedge

do.end186:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84, i32 noundef %call.i394, i32 noundef 383) #9
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %call.i394, i32 noundef 1097) #9
  br label %fail

if.end193.critedge:                               ; preds = %sw.epilog
  %parade_id.i = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %parade_id.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i393, ptr %parade_id.i, align 4
  %atscmh_rs_frame_ensemble = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 33
  %77 = ptrtoint ptr %atscmh_rs_frame_ensemble to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %atscmh_rs_frame_ensemble, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i397) #6
  %79 = ptrtoint ptr %val.i397 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %val.i397, align 1, !annotation !355
  %80 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg18.i, align 4
  %lg_chip.i = getelementptr inbounds %struct.lg2160_config, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %lg_chip.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lg_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cond25.i = icmp eq i32 %83, 0
  %..i = select i1 %cond25.i, i16 1024, i16 1280
  %call.i399 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %..i, ptr noundef nonnull %val.i397) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %cmp.i400 = icmp slt i32 %call.i399, 0
  br i1 %cmp.i400, label %do.end.i402, label %if.end6.critedge.i405

do.end.i402:                                      ; preds = %if.end193.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.85, i32 noundef %call.i399, i32 noundef 408) #9
  br label %do.end204

if.end6.critedge.i405:                            ; preds = %if.end193.critedge
  %84 = ptrtoint ptr %val.i397 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %val.i397, align 1
  %86 = and i8 %85, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool9.not.i = icmp ne i8 %78, 0
  %cond.i403 = zext i1 %tobool9.not.i to i8
  %or.i404 = or i8 %86, %cond.i403
  %87 = ptrtoint ptr %val.i397 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %or.i404, ptr %val.i397, align 1
  %call12.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext %..i, i8 noundef zeroext %or.i404) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp14.i = icmp slt i32 %call12.i, 0
  br i1 %cmp14.i, label %do.end20.i, label %if.end211.critedge

do.end20.i:                                       ; preds = %if.end6.critedge.i405
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.85, i32 noundef %call12.i, i32 noundef 415) #9
  br label %do.end204

do.end204:                                        ; preds = %do.end20.i, %do.end.i402
  %ret.0.i406.ph = phi i32 [ %call12.i, %do.end20.i ], [ %call.i399, %do.end.i402 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i397) #6
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.0.i406.ph, i32 noundef 1102) #9
  br label %fail

if.end211.critedge:                               ; preds = %if.end6.critedge.i405
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i397) #6
  %call212 = call fastcc i32 @lg216x_initialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %cmp214 = icmp slt i32 %call212, 0
  br i1 %cmp214, label %do.end220, label %if.end227.critedge

do.end220:                                        ; preds = %if.end211.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %call212, i32 noundef 1106) #9
  br label %fail

if.end227.critedge:                               ; preds = %if.end211.critedge
  %call.i407 = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 23, i8 noundef zeroext 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i407)
  %cmp.i408 = icmp slt i32 %call.i407, 0
  br i1 %cmp.i408, label %do.end.i410, label %if.end5.critedge.i411

do.end.i410:                                      ; preds = %if.end227.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95, i32 noundef %call.i407, i32 noundef 461) #9
  br label %do.end236

if.end5.critedge.i411:                            ; preds = %if.end227.critedge
  %call6.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 22, i8 noundef zeroext -4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp slt i32 %call6.i, 0
  br i1 %cmp8.i, label %do.end14.i, label %if.end21.critedge.i

do.end14.i:                                       ; preds = %if.end5.critedge.i411
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i412 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95, i32 noundef %call6.i, i32 noundef 465) #9
  br label %do.end236

if.end21.critedge.i:                              ; preds = %if.end5.critedge.i411
  %88 = ptrtoint ptr %cfg18.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg18.i, align 4
  %lg_chip.i414 = getelementptr inbounds %struct.lg2160_config, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %lg_chip.i414 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lg_chip.i414, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %91, label %if.end21.critedge.i.if.end44.critedge.i_crit_edge [
    i32 0, label %if.end21.critedge.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb25.i
  ]

if.end21.critedge.i.sw.epilog.i_crit_edge:        ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end21.critedge.i.if.end44.critedge.i_crit_edge: ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.critedge.i

sw.bb25.i:                                        ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %if.end21.critedge.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 16, %sw.bb25.i ], [ -2, %if.end21.critedge.i.sw.epilog.i_crit_edge ]
  %call29.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 22, i8 noundef zeroext %.sink.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp31.i = icmp slt i32 %call29.i, 0
  br i1 %cmp31.i, label %do.end37.i, label %sw.epilog.i.if.end44.critedge.i_crit_edge

sw.epilog.i.if.end44.critedge.i_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.critedge.i

do.end37.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95, i32 noundef %call29.i, i32 noundef 477) #9
  br label %do.end236

if.end44.critedge.i:                              ; preds = %sw.epilog.i.if.end44.critedge.i_crit_edge, %if.end21.critedge.i.if.end44.critedge.i_crit_edge
  %call45.i = call fastcc i32 @lg216x_initialize(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp47.i = icmp slt i32 %call45.i, 0
  br i1 %cmp47.i, label %do.end53.i, label %if.end60.critedge.i

do.end53.i:                                       ; preds = %if.end44.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95, i32 noundef %call45.i, i32 noundef 481) #9
  br label %do.end236

if.end60.critedge.i:                              ; preds = %if.end44.critedge.i
  %call63.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 23, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp65.i = icmp slt i32 %call63.i, 0
  br i1 %cmp65.i, label %do.end71.i, label %if.end60.critedge.i.if.end239_crit_edge

if.end60.critedge.i.if.end239_crit_edge:          ; preds = %if.end60.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

do.end71.i:                                       ; preds = %if.end60.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95, i32 noundef %call63.i, i32 noundef 486) #9
  br label %do.end236

do.end236:                                        ; preds = %do.end71.i, %do.end53.i, %do.end37.i, %do.end14.i, %do.end.i410
  %ret.1.i.ph = phi i32 [ %call63.i, %do.end71.i ], [ %call45.i, %do.end53.i ], [ %call29.i, %do.end37.i ], [ %call6.i, %do.end14.i ], [ %call.i407, %do.end.i410 ]
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %ret.1.i.ph, i32 noundef 1110) #9
  br label %if.end239

if.end239:                                        ; preds = %do.end236, %if.end60.critedge.i.if.end239_crit_edge
  %ret.1.i441 = phi i32 [ %ret.1.i.ph, %do.end236 ], [ %call63.i, %if.end60.critedge.i.if.end239_crit_edge ]
  %call241 = call i32 @lg216x_get_frontend(ptr noundef %fe, ptr noundef %dtv_property_cache)
  br label %fail

fail:                                             ; preds = %if.end239, %do.end220, %do.end204, %do.end186, %do.end168, %do.end151, %do.end134, %do.end118, %do.end102, %do.end86, %do.end70, %do.end54, %do.end38, %do.end19
  %ret.0 = phi i32 [ %ret.1.i441, %if.end239 ], [ %call7, %do.end19 ], [ %ret.0.i.ph, %do.end38 ], [ %ret.0.i335.ph, %do.end54 ], [ %ret.0.i342.ph, %do.end70 ], [ %ret.0.i348.ph, %do.end86 ], [ %call24.i, %do.end102 ], [ %call110, %do.end118 ], [ %ret.0.i371.ph, %do.end134 ], [ %ret.0.i379.ph, %do.end151 ], [ %ret.0.i392.ph, %do.end168 ], [ %call.i394, %do.end186 ], [ %ret.0.i406.ph, %do.end204 ], [ %call212, %do.end220 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg216x_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %fe_tune_settings, align 4
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.104) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg216x_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %c) #0 align 64 {
entry:
  %val.i301 = alloca i8, align 1
  %val.i287 = alloca i8, align 1
  %val.i274 = alloca i8, align 1
  %val.i263 = alloca i8, align 1
  %val.i260 = alloca i8, align 1
  %val.i253 = alloca i8, align 1
  %val.i247 = alloca i8, align 1
  %val.i241 = alloca i8, align 1
  %val.i235 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.105) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %modulation, align 4
  %current_frequency = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_frequency, align 4
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %c, align 4
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  %7 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %delivery_system, align 4
  %atscmh_fic_ver = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !355
  %9 = ptrtoint ptr %atscmh_fic_ver to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %atscmh_fic_ver, align 1
  %call.i = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 296, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end6, label %if.end13.critedge

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.126, i32 noundef %call.i, i32 noundef 502) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %call.i, i32 noundef 945) #9
  br label %fail

if.end13.critedge:                                ; preds = %if.end
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 1
  %12 = lshr i8 %11, 3
  %13 = ptrtoint ptr %atscmh_fic_ver to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %atscmh_fic_ver, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %fic_ver = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %fic_ver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fic_ver, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %12)
  %cmp17.not = icmp eq i8 %15, %12
  br i1 %cmp17.not, label %if.end13.critedge.fail_crit_edge, label %if.then19

if.end13.critedge.fail_crit_edge:                 ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then19:                                        ; preds = %if.end13.critedge
  %16 = ptrtoint ptr %fic_ver to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %fic_ver, align 1
  %atscmh_nog = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i235) #6
  %17 = ptrtoint ptr %val.i235 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %val.i235, align 1, !annotation !355
  %18 = ptrtoint ptr %atscmh_nog to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %atscmh_nog, align 1
  %call.i236 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 292, ptr noundef nonnull %val.i235) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %cmp.i237 = icmp slt i32 %call.i236, 0
  br i1 %cmp.i237, label %do.end30, label %if.end37.critedge

do.end30:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.127, i32 noundef %call.i236, i32 noundef 536) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i235) #6
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %call.i236, i32 noundef 960) #9
  br label %fail

if.end37.critedge:                                ; preds = %if.then19
  %19 = ptrtoint ptr %val.i235 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i235, align 1
  %21 = lshr i8 %20, 4
  %22 = and i8 %21, 7
  %narrow.i = add nuw nsw i8 %22, 1
  %23 = ptrtoint ptr %atscmh_nog to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %narrow.i, ptr %atscmh_nog, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i235) #6
  %atscmh_tnog = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i241) #6
  %24 = ptrtoint ptr %val.i241 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val.i241, align 1, !annotation !355
  %25 = ptrtoint ptr %atscmh_tnog to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %atscmh_tnog, align 1
  %call.i242 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 293, ptr noundef nonnull %val.i241) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %cmp.i243 = icmp slt i32 %call.i242, 0
  br i1 %cmp.i243, label %do.end46, label %if.end53.critedge

do.end46:                                         ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.128, i32 noundef %call.i242, i32 noundef 552) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i241) #6
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %call.i242, i32 noundef 964) #9
  br label %fail

if.end53.critedge:                                ; preds = %if.end37.critedge
  %26 = ptrtoint ptr %val.i241 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i241, align 1
  %28 = and i8 %27, 31
  %29 = ptrtoint ptr %atscmh_tnog to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %atscmh_tnog, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i241) #6
  %atscmh_sgn = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i247) #6
  %30 = ptrtoint ptr %val.i247 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i247, align 1, !annotation !355
  %31 = ptrtoint ptr %atscmh_sgn to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %atscmh_sgn, align 1
  %call.i248 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 292, ptr noundef nonnull %val.i247) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp.i249 = icmp slt i32 %call.i248, 0
  br i1 %cmp.i249, label %do.end62, label %if.end69.critedge

do.end62:                                         ; preds = %if.end53.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.129, i32 noundef %call.i248, i32 noundef 568) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i247) #6
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %call.i248, i32 noundef 968) #9
  br label %fail

if.end69.critedge:                                ; preds = %if.end53.critedge
  %32 = ptrtoint ptr %val.i247 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i247, align 1
  %34 = and i8 %33, 15
  %35 = ptrtoint ptr %atscmh_sgn to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %atscmh_sgn, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i247) #6
  %atscmh_prc = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i253) #6
  %36 = ptrtoint ptr %val.i253 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %val.i253, align 1, !annotation !355
  %37 = ptrtoint ptr %atscmh_prc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %atscmh_prc, align 1
  %call.i254 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 293, ptr noundef nonnull %val.i253) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %cmp.i255 = icmp slt i32 %call.i254, 0
  br i1 %cmp.i255, label %do.end78, label %if.end85.critedge

do.end78:                                         ; preds = %if.end69.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.130, i32 noundef %call.i254, i32 noundef 584) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i253) #6
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %call.i254, i32 noundef 972) #9
  br label %fail

if.end85.critedge:                                ; preds = %if.end69.critedge
  %38 = ptrtoint ptr %val.i253 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val.i253, align 1
  %40 = lshr i8 %39, 5
  %narrow.i258 = add nuw nsw i8 %40, 1
  %41 = ptrtoint ptr %atscmh_prc to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %narrow.i258, ptr %atscmh_prc, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i253) #6
  %atscmh_rs_frame_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i260) #6
  %42 = ptrtoint ptr %val.i260 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %val.i260, align 1, !annotation !355
  %cfg.i = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i, align 4
  %lg_chip.i = getelementptr inbounds %struct.lg2160_config, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %lg_chip.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lg_chip.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %46, label %if.end85.critedge.do.end94_crit_edge [
    i32 0, label %if.end85.critedge.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end85.critedge.sw.epilog.i_crit_edge:          ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end85.critedge.do.end94_crit_edge:             ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

sw.bb1.i:                                         ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end85.critedge.sw.epilog.i_crit_edge
  %.sink.i = phi i16 [ 1299, %sw.bb1.i ], [ 1040, %if.end85.critedge.sw.epilog.i_crit_edge ]
  %call2.i = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %.sink.i, ptr noundef nonnull %val.i260) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i261 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i261, label %sw.epilog.i.do.end94_crit_edge, label %if.end7.critedge.i

sw.epilog.i.do.end94_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

if.end7.critedge.i:                               ; preds = %sw.epilog.i
  %48 = ptrtoint ptr %val.i260 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i260, align 1
  %50 = and i8 %49, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %50)
  %cond.i = icmp eq i8 %50, 16
  %. = zext i1 %cond.i to i32
  %51 = ptrtoint ptr %atscmh_rs_frame_mode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %., ptr %atscmh_rs_frame_mode, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i260) #6
  %atscmh_rs_frame_ensemble = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i263) #6
  %52 = ptrtoint ptr %val.i263 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %val.i263, align 1, !annotation !355
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i, align 4
  %lg_chip.i265 = getelementptr inbounds %struct.lg2160_config, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %lg_chip.i265 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lg_chip.i265, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %56, label %if.end7.critedge.i.do.end110_crit_edge [
    i32 0, label %if.end7.critedge.i.sw.epilog.i270_crit_edge
    i32 1, label %sw.bb1.i266
  ]

if.end7.critedge.i.sw.epilog.i270_crit_edge:      ; preds = %if.end7.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i270

if.end7.critedge.i.do.end110_crit_edge:           ; preds = %if.end7.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end110

do.end94:                                         ; preds = %sw.epilog.i.do.end94_crit_edge, %if.end85.critedge.do.end94_crit_edge
  %ret.022.i = phi i32 [ %call2.i, %sw.epilog.i.do.end94_crit_edge ], [ -22, %if.end85.critedge.do.end94_crit_edge ]
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.131, i32 noundef %ret.022.i, i32 noundef 610) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i260) #6
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %ret.022.i, i32 noundef 978) #9
  br label %fail

sw.bb1.i266:                                      ; preds = %if.end7.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i270

sw.epilog.i270:                                   ; preds = %sw.bb1.i266, %if.end7.critedge.i.sw.epilog.i270_crit_edge
  %.sink.i267 = phi i16 [ 1280, %sw.bb1.i266 ], [ 1024, %if.end7.critedge.i.sw.epilog.i270_crit_edge ]
  %call2.i268 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %.sink.i267, ptr noundef nonnull %val.i263) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i268)
  %cmp.i269 = icmp slt i32 %call2.i268, 0
  br i1 %cmp.i269, label %sw.epilog.i270.do.end110_crit_edge, label %if.end117.critedge

sw.epilog.i270.do.end110_crit_edge:               ; preds = %sw.epilog.i270
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end110

do.end110:                                        ; preds = %sw.epilog.i270.do.end110_crit_edge, %if.end7.critedge.i.do.end110_crit_edge
  %ret.019.i = phi i32 [ %call2.i268, %sw.epilog.i270.do.end110_crit_edge ], [ -22, %if.end7.critedge.i.do.end110_crit_edge ]
  %call3.i271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.132, i32 noundef %ret.019.i, i32 noundef 650) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i263) #6
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %ret.019.i, i32 noundef 983) #9
  br label %fail

if.end117.critedge:                               ; preds = %sw.epilog.i270
  %58 = ptrtoint ptr %val.i263 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %val.i263, align 1
  %60 = and i8 %59, 1
  %conv10.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %atscmh_rs_frame_ensemble to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv10.i, ptr %atscmh_rs_frame_ensemble, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i263) #6
  %atscmh_rs_code_mode_pri = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 34
  %atscmh_rs_code_mode_sec = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i274) #6
  %62 = ptrtoint ptr %val.i274 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %val.i274, align 1, !annotation !355
  %63 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i, align 4
  %lg_chip.i276 = getelementptr inbounds %struct.lg2160_config, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %lg_chip.i276 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lg_chip.i276, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %66, label %if.end117.critedge.do.end126_crit_edge [
    i32 0, label %if.end117.critedge.sw.epilog.i281_crit_edge
    i32 1, label %sw.bb1.i277
  ]

if.end117.critedge.sw.epilog.i281_crit_edge:      ; preds = %if.end117.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i281

if.end117.critedge.do.end126_crit_edge:           ; preds = %if.end117.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

sw.bb1.i277:                                      ; preds = %if.end117.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i281

sw.epilog.i281:                                   ; preds = %sw.bb1.i277, %if.end117.critedge.sw.epilog.i281_crit_edge
  %.sink.i278 = phi i16 [ 1299, %sw.bb1.i277 ], [ 1040, %if.end117.critedge.sw.epilog.i281_crit_edge ]
  %call2.i279 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %.sink.i278, ptr noundef nonnull %val.i274) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i279)
  %cmp.i280 = icmp slt i32 %call2.i279, 0
  br i1 %cmp.i280, label %sw.epilog.i281.do.end126_crit_edge, label %if.end133.critedge

sw.epilog.i281.do.end126_crit_edge:               ; preds = %sw.epilog.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

do.end126:                                        ; preds = %sw.epilog.i281.do.end126_crit_edge, %if.end117.critedge.do.end126_crit_edge
  %ret.019.i282 = phi i32 [ %call2.i279, %sw.epilog.i281.do.end126_crit_edge ], [ -22, %if.end117.critedge.do.end126_crit_edge ]
  %call3.i283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.133, i32 noundef %ret.019.i282, i32 noundef 676) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i274) #6
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %ret.019.i282, i32 noundef 990) #9
  br label %fail

if.end133.critedge:                               ; preds = %sw.epilog.i281
  %68 = ptrtoint ptr %val.i274 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val.i274, align 1
  %70 = lshr i8 %69, 2
  %71 = and i8 %70, 3
  %and.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %atscmh_rs_code_mode_pri to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and.i, ptr %atscmh_rs_code_mode_pri, align 4
  %73 = and i8 %69, 3
  %and10.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %atscmh_rs_code_mode_sec to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and10.i, ptr %atscmh_rs_code_mode_sec, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i274) #6
  %atscmh_sccc_block_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i287) #6
  %75 = ptrtoint ptr %val.i287 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %val.i287, align 1, !annotation !355
  %76 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i, align 4
  %lg_chip.i289 = getelementptr inbounds %struct.lg2160_config, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %lg_chip.i289 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lg_chip.i289, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %79, label %if.end133.critedge.do.end142_crit_edge [
    i32 0, label %if.end133.critedge.sw.epilog.i294_crit_edge
    i32 1, label %sw.bb1.i290
  ]

if.end133.critedge.sw.epilog.i294_crit_edge:      ; preds = %if.end133.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i294

if.end133.critedge.do.end142_crit_edge:           ; preds = %if.end133.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end142

sw.bb1.i290:                                      ; preds = %if.end133.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i294

sw.epilog.i294:                                   ; preds = %sw.bb1.i290, %if.end133.critedge.sw.epilog.i294_crit_edge
  %.sink.i291 = phi i16 [ 1297, %sw.bb1.i290 ], [ 789, %if.end133.critedge.sw.epilog.i294_crit_edge ]
  %call2.i292 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %.sink.i291, ptr noundef nonnull %val.i287) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i292)
  %cmp.i293 = icmp slt i32 %call2.i292, 0
  br i1 %cmp.i293, label %sw.epilog.i294.do.end142_crit_edge, label %if.end7.critedge.i298

sw.epilog.i294.do.end142_crit_edge:               ; preds = %sw.epilog.i294
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end142

if.end7.critedge.i298:                            ; preds = %sw.epilog.i294
  %81 = ptrtoint ptr %val.i287 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %val.i287, align 1
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %switch.selectcmp = icmp eq i8 %83, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %switch.selectcmp325 = icmp eq i8 %83, 0
  %switch.select326 = select i1 %switch.selectcmp325, i32 0, i32 %switch.select
  %84 = ptrtoint ptr %atscmh_sccc_block_mode to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %switch.select326, ptr %atscmh_sccc_block_mode, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i287) #6
  %atscmh_sccc_code_mode_a = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 37
  %atscmh_sccc_code_mode_b = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 38
  %atscmh_sccc_code_mode_c = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 39
  %atscmh_sccc_code_mode_d = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i301) #6
  %85 = ptrtoint ptr %val.i301 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %val.i301, align 1, !annotation !355
  %86 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i, align 4
  %lg_chip.i303 = getelementptr inbounds %struct.lg2160_config, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %lg_chip.i303 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lg_chip.i303, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %89, label %if.end7.critedge.i298.do.end158_crit_edge [
    i32 0, label %if.end7.critedge.i298.sw.epilog.i308_crit_edge
    i32 1, label %sw.bb1.i304
  ]

if.end7.critedge.i298.sw.epilog.i308_crit_edge:   ; preds = %if.end7.critedge.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i308

if.end7.critedge.i298.do.end158_crit_edge:        ; preds = %if.end7.critedge.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

do.end142:                                        ; preds = %sw.epilog.i294.do.end142_crit_edge, %if.end133.critedge.do.end142_crit_edge
  %ret.023.i = phi i32 [ %call2.i292, %sw.epilog.i294.do.end142_crit_edge ], [ -22, %if.end133.critedge.do.end142_crit_edge ]
  %call3.i295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.134, i32 noundef %ret.023.i, i32 noundef 701) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i287) #6
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %ret.023.i, i32 noundef 995) #9
  br label %fail

sw.bb1.i304:                                      ; preds = %if.end7.critedge.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i308

sw.epilog.i308:                                   ; preds = %sw.bb1.i304, %if.end7.critedge.i298.sw.epilog.i308_crit_edge
  %.sink.i305 = phi i16 [ 1298, %sw.bb1.i304 ], [ 790, %if.end7.critedge.i298.sw.epilog.i308_crit_edge ]
  %call2.i306 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext %.sink.i305, ptr noundef nonnull %val.i301) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i306)
  %cmp.i307 = icmp slt i32 %call2.i306, 0
  br i1 %cmp.i307, label %sw.epilog.i308.do.end158_crit_edge, label %if.end7.critedge.i311

sw.epilog.i308.do.end158_crit_edge:               ; preds = %sw.epilog.i308
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

if.end7.critedge.i311:                            ; preds = %sw.epilog.i308
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %val.i301 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %val.i301, align 1
  %.mask.i = and i8 %92, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.mask.i)
  %switch.selectcmp.i = icmp eq i8 %.mask.i, 64
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %92)
  %switch.selectcmp53.i = icmp ult i8 %92, 64
  %switch.select54.i = select i1 %switch.selectcmp53.i, i32 0, i32 %switch.select.i
  %93 = ptrtoint ptr %atscmh_sccc_code_mode_a to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %switch.select54.i, ptr %atscmh_sccc_code_mode_a, align 4
  %94 = lshr i8 %92, 4
  %95 = and i8 %94, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %switch.selectcmp59.i = icmp eq i8 %95, 1
  %switch.select60.i = select i1 %switch.selectcmp59.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %switch.selectcmp61.i = icmp eq i8 %95, 0
  %switch.select62.i = select i1 %switch.selectcmp61.i, i32 0, i32 %switch.select60.i
  %96 = ptrtoint ptr %atscmh_sccc_code_mode_b to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %switch.select62.i, ptr %atscmh_sccc_code_mode_b, align 4
  %97 = lshr i8 %92, 2
  %98 = and i8 %97, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %switch.selectcmp55.i = icmp eq i8 %98, 1
  %switch.select56.i = select i1 %switch.selectcmp55.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %switch.selectcmp57.i = icmp eq i8 %98, 0
  %switch.select58.i = select i1 %switch.selectcmp57.i, i32 0, i32 %switch.select56.i
  %99 = ptrtoint ptr %atscmh_sccc_code_mode_c to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %switch.select58.i, ptr %atscmh_sccc_code_mode_c, align 4
  %100 = and i8 %92, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %switch.selectcmp327 = icmp eq i8 %100, 1
  %switch.select328 = select i1 %switch.selectcmp327, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %switch.selectcmp329 = icmp eq i8 %100, 0
  %switch.select330 = select i1 %switch.selectcmp329, i32 0, i32 %switch.select328
  %101 = ptrtoint ptr %atscmh_sccc_code_mode_d to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %switch.select330, ptr %atscmh_sccc_code_mode_d, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i301) #6
  br label %fail

do.end158:                                        ; preds = %sw.epilog.i308.do.end158_crit_edge, %if.end7.critedge.i298.do.end158_crit_edge
  %ret.049.i = phi i32 [ %call2.i306, %sw.epilog.i308.do.end158_crit_edge ], [ -22, %if.end7.critedge.i298.do.end158_crit_edge ]
  %call3.i309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.135, i32 noundef %ret.049.i, i32 noundef 738) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i301) #6
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.105, i32 noundef %ret.049.i, i32 noundef 1006) #9
  br label %fail

fail:                                             ; preds = %do.end158, %if.end7.critedge.i311, %do.end142, %do.end126, %do.end110, %do.end94, %do.end78, %do.end62, %do.end46, %do.end30, %if.end13.critedge.fail_crit_edge, %do.end6
  %ret.0 = phi i32 [ 0, %if.end13.critedge.fail_crit_edge ], [ %call.i, %do.end6 ], [ %call.i236, %do.end30 ], [ %call.i242, %do.end46 ], [ %call.i248, %do.end62 ], [ %call.i254, %do.end78 ], [ %ret.022.i, %do.end94 ], [ %ret.019.i, %do.end110 ], [ %ret.019.i282, %do.end126 ], [ %ret.023.i, %do.end142 ], [ %ret.049.i, %do.end158 ], [ %call2.i306, %if.end7.critedge.i311 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg216x_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i.i, align 1, !annotation !355
  %call.i.i = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 283, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.end5.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.143, i32 noundef %call.i.i, i32 noundef 1129) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.136, i32 noundef %call.i.i, i32 noundef 1194) #9
  br label %fail

if.end5.critedge:                                 ; preds = %entry
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i.i, align 1
  %6 = lshr i8 %5, 5
  %.lobit.i.i = and i8 %6, 1
  %7 = xor i8 %.lobit.i.i, 1
  %8 = lshr i8 %5, 6
  %.lobit17.i.i = and i8 %8, 1
  %9 = xor i8 %.lobit17.i.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  %10 = load i32, ptr @debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.critedge.if.end16_crit_edge, label %do.end10

if.end5.critedge.if.end16_crit_edge:              ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end10:                                         ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool12.not, ptr @.str.141, ptr @.str.140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.141, ptr @.str.142
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136, ptr noundef nonnull %cond, ptr noundef nonnull %cond14) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end10, %if.end5.critedge.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not = icmp eq i8 %7, 0
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %status, align 4
  br i1 %tobool20.not, label %if.end23, label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or22 = or i32 %.pr, 8
  br label %if.then25

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool24.not = icmp eq i32 %.pr, 0
  br i1 %tobool24.not, label %if.end23.fail_crit_edge, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end23.thread
  %14 = phi i32 [ %or22, %if.end23.thread ], [ %.pr, %if.end23.if.then25_crit_edge ]
  %or26 = or i32 %14, 22
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or26, ptr %status, align 4
  br label %fail

fail:                                             ; preds = %if.then25, %if.end23.fail_crit_edge, %do.end
  ret i32 %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lg216x_read_signal_strength(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %strength) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg2160_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %snr1 = alloca i8, align 1
  %snr2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr1) #6
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %snr1, align 1, !annotation !355
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr2) #6
  %3 = ptrtoint ptr %snr2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %snr2, align 1, !annotation !355
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %snr, align 2
  %call = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 514, ptr noundef nonnull %snr1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.144, i32 noundef %call, i32 noundef 1224) #9
  br label %fail

if.end5.critedge:                                 ; preds = %entry
  %call6 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 515, ptr noundef nonnull %snr2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp slt i32 %call6, 0
  br i1 %cmp8, label %do.end14, label %if.end21.critedge

do.end14:                                         ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.144, i32 noundef %call6, i32 noundef 1228) #9
  br label %fail

if.end21.critedge:                                ; preds = %if.end5.critedge
  %5 = ptrtoint ptr %snr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %snr1, align 1
  %conv22 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %6)
  %cmp23 = icmp eq i8 %6, -70
  br i1 %cmp23, label %if.end21.critedge.if.then28_crit_edge, label %lor.lhs.false

if.end21.critedge.if.then28_crit_edge:            ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end21.critedge
  %7 = ptrtoint ptr %snr2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %snr2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %8)
  %cmp26 = icmp eq i8 %8, -33
  br i1 %cmp26, label %lor.lhs.false.if.then28_crit_edge, label %if.else

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end21.critedge.if.then28_crit_edge
  %9 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %snr, align 2
  br label %fail

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %10 = lshr i32 %conv22, 4
  %mul = mul nuw nsw i32 %10, 100
  %and = and i32 %conv22, 15
  %mul31 = mul nuw nsw i32 %and, 10
  %add = add nuw nsw i32 %mul, %mul31
  %11 = lshr i8 %8, 4
  %12 = zext i8 %11 to i32
  %add34 = add nuw nsw i32 %add, %12
  %conv35 = trunc i32 %add34 to i16
  %13 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv35, ptr %snr, align 2
  br label %fail

fail:                                             ; preds = %if.else, %if.then28, %do.end14, %do.end
  %ret.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.else ], [ %call, %do.end ], [ %call6, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr1) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lg216x_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg216x_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %cfg = getelementptr inbounds %struct.lg216x_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %deny_i2c_rptr = getelementptr inbounds %struct.lg2160_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %deny_i2c_rptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deny_i2c_rptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.147, i32 noundef %enable) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !355
  %7 = load i32, ptr @debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.if.end.i_crit_edge, label %do.end.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %cond = zext i1 %tobool4.not to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149, i32 noundef 0, i32 noundef 0, i32 noundef %cond) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end3.if.end.i_crit_edge
  %call1.i = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end14.critedge.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.149, i32 noundef %call1.i, i32 noundef 132) #9
  br label %lg216x_set_reg_bit.exit

if.end14.critedge.i:                              ; preds = %if.end.i
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %10 = and i8 %9, -2
  %11 = zext i1 %tobool4.not to i8
  %conv21.i = or i8 %10, %11
  store i8 %conv21.i, ptr %val.i, align 1
  %call22.i = call fastcc i32 @lg216x_write_reg(ptr noundef %1, i16 noundef zeroext 0, i8 noundef zeroext %conv21.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp24.i = icmp slt i32 %call22.i, 0
  br i1 %cmp24.i, label %do.end30.i, label %if.end14.critedge.i.lg216x_set_reg_bit.exit_crit_edge

if.end14.critedge.i.lg216x_set_reg_bit.exit_crit_edge: ; preds = %if.end14.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lg216x_set_reg_bit.exit

do.end30.i:                                       ; preds = %if.end14.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.149, i32 noundef %call22.i, i32 noundef 139) #9
  br label %lg216x_set_reg_bit.exit

lg216x_set_reg_bit.exit:                          ; preds = %do.end30.i, %if.end14.critedge.i.lg216x_set_reg_bit.exit_crit_edge, %do.end7.i
  %ret.0.i = phi i32 [ %call1.i, %do.end7.i ], [ %call22.i, %do.end30.i ], [ %call22.i, %if.end14.critedge.i.lg216x_set_reg_bit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @msleep(i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %lg216x_set_reg_bit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %lg216x_set_reg_bit.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_soft_reset(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.70) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 2, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end6, label %if.end13.critedge

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.70, i32 noundef %call1, i32 noundef 170) #9
  br label %fail

if.end13.critedge:                                ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #6
  %call14 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 2, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %do.end22, label %if.end29.critedge

do.end22:                                         ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.70, i32 noundef %call14, i32 noundef 175) #9
  br label %fail

if.end29.critedge:                                ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call30 = tail call i32 @jiffies_to_msecs(i32 noundef %1) #6
  %last_reset = getelementptr inbounds %struct.lg216x_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %last_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call30, ptr %last_reset, align 4
  br label %fail

fail:                                             ; preds = %if.end29.critedge, %do.end22, %do.end6
  %ret.0 = phi i32 [ 0, %if.end29.critedge ], [ %call1, %do.end6 ], [ %call14, %do.end22 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_initialize(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.lg216x_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %lg_chip = getelementptr inbounds %struct.lg2160_config, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lg_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lg_chip, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %3, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb:                                            ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 9) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %call2.i = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 21, i8 noundef zeroext -9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end.sink.split_crit_edge, label %for.cond.i

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i:                                       ; preds = %if.end.i
  %call2.i.1 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 27, i8 noundef zeroext 82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp3.i.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp3.i.1, label %for.cond.i.do.end.sink.split_crit_edge, label %for.cond.i.1

for.cond.i.do.end.sink.split_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.1:                                     ; preds = %for.cond.i
  %call2.i.2 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 520, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %cmp3.i.2 = icmp slt i32 %call2.i.2, 0
  br i1 %cmp3.i.2, label %for.cond.i.1.do.end.sink.split_crit_edge, label %for.cond.i.2

for.cond.i.1.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %call2.i.3 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 521, i8 noundef zeroext -126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.3)
  %cmp3.i.3 = icmp slt i32 %call2.i.3, 0
  br i1 %cmp3.i.3, label %for.cond.i.2.do.end.sink.split_crit_edge, label %for.cond.i.3

for.cond.i.2.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %call2.i.4 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 528, i8 noundef zeroext -7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.4)
  %cmp3.i.4 = icmp slt i32 %call2.i.4, 0
  br i1 %cmp3.i.4, label %for.cond.i.3.do.end.sink.split_crit_edge, label %for.cond.i.4

for.cond.i.3.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %call2.i.5 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 522, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.5)
  %cmp3.i.5 = icmp slt i32 %call2.i.5, 0
  br i1 %cmp3.i.5, label %for.cond.i.4.do.end.sink.split_crit_edge, label %for.cond.i.5

for.cond.i.4.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %call2.i.6 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 523, i8 noundef zeroext -126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.6)
  %cmp3.i.6 = icmp slt i32 %call2.i.6, 0
  br i1 %cmp3.i.6, label %for.cond.i.5.do.end.sink.split_crit_edge, label %for.cond.i.6

for.cond.i.5.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %call2.i.7 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 525, i8 noundef zeroext 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.7)
  %cmp3.i.7 = icmp slt i32 %call2.i.7, 0
  br i1 %cmp3.i.7, label %for.cond.i.6.do.end.sink.split_crit_edge, label %for.cond.i.7

for.cond.i.6.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %call2.i.8 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 527, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.8)
  %cmp3.i.8 = icmp slt i32 %call2.i.8, 0
  br i1 %cmp3.i.8, label %for.cond.i.7.do.end.sink.split_crit_edge, label %for.cond.i.7.if.end7.critedge_crit_edge

for.cond.i.7.if.end7.critedge_crit_edge:          ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.critedge

for.cond.i.7.do.end.sink.split_crit_edge:         ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

sw.bb1:                                           ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  %and.i30 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %sw.bb1.if.end.i34_crit_edge, label %do.end.i33

sw.bb1.if.end.i34_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

do.end.i33:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 6) #9
  br label %if.end.i34

if.end.i34:                                       ; preds = %do.end.i33, %sw.bb1.if.end.i34_crit_edge
  %call2.i41 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 0, i8 noundef zeroext 65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41)
  %cmp3.i42 = icmp slt i32 %call2.i41, 0
  br i1 %cmp3.i42, label %if.end.i34.do.end.sink.split_crit_edge, label %for.cond.i37

if.end.i34.do.end.sink.split_crit_edge:           ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i37:                                     ; preds = %if.end.i34
  %call2.i41.1 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 1, i8 noundef zeroext -5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41.1)
  %cmp3.i42.1 = icmp slt i32 %call2.i41.1, 0
  br i1 %cmp3.i42.1, label %for.cond.i37.do.end.sink.split_crit_edge, label %for.cond.i37.1

for.cond.i37.do.end.sink.split_crit_edge:         ; preds = %for.cond.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i37.1:                                   ; preds = %for.cond.i37
  %call2.i41.2 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 534, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41.2)
  %cmp3.i42.2 = icmp slt i32 %call2.i41.2, 0
  br i1 %cmp3.i42.2, label %for.cond.i37.1.do.end.sink.split_crit_edge, label %for.cond.i37.2

for.cond.i37.1.do.end.sink.split_crit_edge:       ; preds = %for.cond.i37.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i37.2:                                   ; preds = %for.cond.i37.1
  %call2.i41.3 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 537, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41.3)
  %cmp3.i42.3 = icmp slt i32 %call2.i41.3, 0
  br i1 %cmp3.i42.3, label %for.cond.i37.2.do.end.sink.split_crit_edge, label %for.cond.i37.3

for.cond.i37.2.do.end.sink.split_crit_edge:       ; preds = %for.cond.i37.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i37.3:                                   ; preds = %for.cond.i37.2
  %call2.i41.4 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 539, i8 noundef zeroext 85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41.4)
  %cmp3.i42.4 = icmp slt i32 %call2.i41.4, 0
  br i1 %cmp3.i42.4, label %for.cond.i37.3.do.end.sink.split_crit_edge, label %for.cond.i37.4

for.cond.i37.3.do.end.sink.split_crit_edge:       ; preds = %for.cond.i37.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

for.cond.i37.4:                                   ; preds = %for.cond.i37.3
  %call2.i41.5 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %state, i16 noundef zeroext 1542, i8 noundef zeroext 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i41.5)
  %cmp3.i42.5 = icmp slt i32 %call2.i41.5, 0
  br i1 %cmp3.i42.5, label %for.cond.i37.4.do.end.sink.split_crit_edge, label %for.cond.i37.4.if.end7.critedge_crit_edge

for.cond.i37.4.if.end7.critedge_crit_edge:        ; preds = %for.cond.i37.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.critedge

for.cond.i37.4.do.end.sink.split_crit_edge:       ; preds = %for.cond.i37.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %for.cond.i37.4.do.end.sink.split_crit_edge, %for.cond.i37.3.do.end.sink.split_crit_edge, %for.cond.i37.2.do.end.sink.split_crit_edge, %for.cond.i37.1.do.end.sink.split_crit_edge, %for.cond.i37.do.end.sink.split_crit_edge, %if.end.i34.do.end.sink.split_crit_edge, %for.cond.i.7.do.end.sink.split_crit_edge, %for.cond.i.6.do.end.sink.split_crit_edge, %for.cond.i.5.do.end.sink.split_crit_edge, %for.cond.i.4.do.end.sink.split_crit_edge, %for.cond.i.3.do.end.sink.split_crit_edge, %for.cond.i.2.do.end.sink.split_crit_edge, %for.cond.i.1.do.end.sink.split_crit_edge, %for.cond.i.do.end.sink.split_crit_edge, %if.end.i.do.end.sink.split_crit_edge
  %call2.i.lcssa.sink = phi i32 [ %call2.i, %if.end.i.do.end.sink.split_crit_edge ], [ %call2.i.1, %for.cond.i.do.end.sink.split_crit_edge ], [ %call2.i.2, %for.cond.i.1.do.end.sink.split_crit_edge ], [ %call2.i.3, %for.cond.i.2.do.end.sink.split_crit_edge ], [ %call2.i.4, %for.cond.i.3.do.end.sink.split_crit_edge ], [ %call2.i.5, %for.cond.i.4.do.end.sink.split_crit_edge ], [ %call2.i.6, %for.cond.i.5.do.end.sink.split_crit_edge ], [ %call2.i.7, %for.cond.i.6.do.end.sink.split_crit_edge ], [ %call2.i.8, %for.cond.i.7.do.end.sink.split_crit_edge ], [ %call2.i41, %if.end.i34.do.end.sink.split_crit_edge ], [ %call2.i41.1, %for.cond.i37.do.end.sink.split_crit_edge ], [ %call2.i41.2, %for.cond.i37.1.do.end.sink.split_crit_edge ], [ %call2.i41.3, %for.cond.i37.2.do.end.sink.split_crit_edge ], [ %call2.i41.4, %for.cond.i37.3.do.end.sink.split_crit_edge ], [ %call2.i41.5, %for.cond.i37.4.do.end.sink.split_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.92, i32 noundef %call2.i.lcssa.sink, i32 noundef 117) #9
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %entry.do.end_crit_edge
  %ret.0.ph = phi i32 [ -22, %entry.do.end_crit_edge ], [ %call2.i.lcssa.sink, %do.end.sink.split ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.88, i32 noundef %ret.0.ph, i32 noundef 225) #9
  br label %fail

if.end7.critedge:                                 ; preds = %for.cond.i37.4.if.end7.critedge_crit_edge, %for.cond.i.7.if.end7.critedge_crit_edge
  %call8 = tail call fastcc i32 @lg216x_soft_reset(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  br i1 %cmp10, label %do.end16, label %if.end7.critedge.fail_crit_edge

if.end7.critedge.fail_crit_edge:                  ; preds = %if.end7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end16:                                         ; preds = %if.end7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.88, i32 noundef %call8, i32 noundef 229) #9
  br label %fail

fail:                                             ; preds = %do.end16, %if.end7.critedge.fail_crit_edge, %do.end
  %ret.1 = phi i32 [ %ret.0.ph, %do.end ], [ %call8, %do.end16 ], [ %call8, %if.end7.critedge.fail_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_read_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg_buf = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_buf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %reg_buf, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %reg_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %reg_buf, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %cfg = getelementptr inbounds %struct.lg216x_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv5 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg_buf, ptr %buf, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %14 = load i8, ptr %7, align 4
  %conv10 = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10, ptr %arrayinit.element6, align 4
  %flags11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %16 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags11, align 2
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %17 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len12, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %18 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val, ptr %buf13, align 4
  %19 = load i32, ptr @debug, align 4
  %and14 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %call17 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp.not = icmp eq i32 %call17, 2
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv26 = zext i8 %25 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %conv26, i32 noundef %conv, i32 noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp29 = icmp slt i32 %call17, 0
  %call17. = select i1 %cmp29, i32 %call17, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17., %do.end22 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_write_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %buf, align 1
  %conv3 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %cfg = getelementptr inbounds %struct.lg216x_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv5 = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %len, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf6, align 4
  %16 = load i32, ptr @debug, align 4
  %and7 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %conv9 = zext i8 %val to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv9) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call10 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv18 = zext i8 %22 to i32
  %arrayidx20 = getelementptr i8, ptr %20, i32 1
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %24 to i32
  %arrayidx23 = getelementptr i8, ptr %20, i32 2
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp26 = icmp slt i32 %call10, 0
  %call10. = select i1 %cmp26, i32 %call10, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10., %do.end15 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg2161_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %snr1 = alloca i8, align 1
  %snr2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr1) #6
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %snr1, align 1, !annotation !355
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr2) #6
  %3 = ptrtoint ptr %snr2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %snr2, align 1, !annotation !355
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %snr, align 2
  %call = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 770, ptr noundef nonnull %snr1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.154, i32 noundef %call, i32 noundef 1252) #9
  br label %fail

if.end5.critedge:                                 ; preds = %entry
  %call6 = call fastcc i32 @lg216x_read_reg(ptr noundef %1, i16 noundef zeroext 771, ptr noundef nonnull %snr2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp slt i32 %call6, 0
  br i1 %cmp8, label %do.end14, label %if.end21.critedge

do.end14:                                         ; preds = %if.end5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.154, i32 noundef %call6, i32 noundef 1256) #9
  br label %fail

if.end21.critedge:                                ; preds = %if.end5.critedge
  %5 = ptrtoint ptr %snr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %snr1, align 1
  %conv22 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %6)
  %cmp23 = icmp eq i8 %6, -70
  br i1 %cmp23, label %if.end21.critedge.if.then28_crit_edge, label %lor.lhs.false

if.end21.critedge.if.then28_crit_edge:            ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end21.critedge
  %7 = ptrtoint ptr %snr2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %snr2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %8)
  %cmp26 = icmp eq i8 %8, -3
  br i1 %cmp26, label %lor.lhs.false.if.then28_crit_edge, label %if.else

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end21.critedge.if.then28_crit_edge
  %9 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %snr, align 2
  br label %fail

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %10 = lshr i32 %conv22, 4
  %mul = mul nuw nsw i32 %10, 100
  %and = and i32 %conv22, 15
  %mul31 = mul nuw nsw i32 %and, 10
  %add = add nuw nsw i32 %mul, %mul31
  %11 = and i8 %8, 15
  %and33 = zext i8 %11 to i32
  %add34 = add nuw nsw i32 %add, %and33
  %conv35 = trunc i32 %add34 to i16
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv35, ptr %snr, align 2
  br label %fail

fail:                                             ; preds = %if.else, %if.then28, %do.end14, %do.end
  %ret.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.else ], [ %call, %do.end ], [ %call6, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr1) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !191, !193, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !336, !337, !339, !341, !342, !343, !345}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 14, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1395, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lg2160_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @lg2160_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1410, i32 3}
!13 = !{ptr @lg2160_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @lg2160_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_lg2160_attach, !16, !"__ksymtab_lg2160_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1429, i32 1}
!17 = !{ptr @__UNIQUE_ID_description292, !18, !"__UNIQUE_ID_description292", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1431, i32 1}
!19 = !{ptr @__UNIQUE_ID_author293, !20, !"__UNIQUE_ID_author293", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1432, i32 1}
!21 = !{ptr @__UNIQUE_ID_file294, !22, !"__UNIQUE_ID_file294", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1433, i32 1}
!23 = !{ptr @__UNIQUE_ID_license295, !22, !"__UNIQUE_ID_license295", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_version296, !25, !"__UNIQUE_ID_version296", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1434, i32 1}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__modver_attr, !25, !"__modver_attr", i1 false, i1 false}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 12, i32 12}
!32 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!33 = !{ptr @lg2160_ops, !34, !"lg2160_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1338, i32 38}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1334, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lg216x_release._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @lg216x_release._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1047, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lg2160_set_frontend._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lg2160_set_frontend._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1053, i32 7}
!47 = !{ptr @lg2160_set_frontend._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lg2160_set_frontend._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @lg2160_set_frontend._entry.16, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1059, i32 6}
!51 = !{ptr @lg2160_set_frontend._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @lg2160_set_frontend._entry.18, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1062, i32 6}
!54 = !{ptr @lg2160_set_frontend._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lg2160_set_frontend._entry.20, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1065, i32 6}
!57 = !{ptr @lg2160_set_frontend._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @lg2160_set_frontend._entry.22, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1068, i32 6}
!60 = !{ptr @lg2160_set_frontend._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @lg2160_set_frontend._entry.24, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1071, i32 6}
!63 = !{ptr @lg2160_set_frontend._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @lg2160_set_frontend._entry.26, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1076, i32 6}
!66 = !{ptr @lg2160_set_frontend._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @lg2160_set_frontend._entry.28, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1080, i32 6}
!69 = !{ptr @lg2160_set_frontend._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @lg2160_set_frontend._entry.30, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1086, i32 7}
!72 = !{ptr @lg2160_set_frontend._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @lg2160_set_frontend._entry.32, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1091, i32 7}
!75 = !{ptr @lg2160_set_frontend._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @lg2160_set_frontend._entry.34, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1097, i32 6}
!78 = !{ptr @lg2160_set_frontend._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @lg2160_set_frontend._entry.36, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1102, i32 6}
!81 = !{ptr @lg2160_set_frontend._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @lg2160_set_frontend._entry.38, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1106, i32 6}
!84 = !{ptr @lg2160_set_frontend._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @lg2160_set_frontend._entry.40, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1110, i32 2}
!87 = !{ptr @lg2160_set_frontend._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 267, i32 6}
!90 = !{ptr @lg2160_agc_fix._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lg2160_agc_fix._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @lg2160_agc_fix._entry.43, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 275, i32 2}
!94 = !{ptr @lg2160_agc_fix._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 88, i32 2}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @lg216x_read_reg._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @lg216x_read_reg._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 93, i32 3}
!102 = !{ptr @lg216x_read_reg._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @lg216x_read_reg._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 62, i32 2}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @lg216x_write_reg._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @lg216x_write_reg._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 67, i32 3}
!111 = !{ptr @lg216x_write_reg._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @lg216x_write_reg._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 309, i32 6}
!115 = !{ptr @lg2160_agc_polarity._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @lg2160_agc_polarity._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @lg2160_agc_polarity._entry.56, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 317, i32 2}
!119 = !{ptr @lg2160_agc_polarity._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 329, i32 6}
!122 = !{ptr @lg2160_tuner_pwr_save_polarity._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @lg2160_tuner_pwr_save_polarity._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @lg2160_tuner_pwr_save_polarity._entry.59, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 336, i32 2}
!126 = !{ptr @lg2160_tuner_pwr_save_polarity._entry_ptr.60, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 241, i32 2}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @lg216x_set_if._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @lg216x_set_if._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @lg216x_set_if._entry.63, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 244, i32 6}
!134 = !{ptr @lg216x_set_if._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @lg216x_set_if._entry.65, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 251, i32 2}
!137 = !{ptr @lg216x_set_if._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 348, i32 6}
!140 = !{ptr @lg2160_spectrum_polarity._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lg2160_spectrum_polarity._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @lg2160_spectrum_polarity._entry.68, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 355, i32 2}
!144 = !{ptr @lg2160_spectrum_polarity._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 167, i32 2}
!147 = !{ptr @lg216x_soft_reset._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @lg216x_soft_reset._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @lg216x_soft_reset._entry.71, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 170, i32 6}
!151 = !{ptr @lg216x_soft_reset._entry_ptr.72, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @lg216x_soft_reset._entry.73, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 175, i32 6}
!154 = !{ptr @lg216x_soft_reset._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 366, i32 6}
!157 = !{ptr @lg2160_tuner_pwr_save._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @lg2160_tuner_pwr_save._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @lg2160_tuner_pwr_save._entry.76, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 373, i32 2}
!161 = !{ptr @lg2160_tuner_pwr_save._entry_ptr.77, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 426, i32 6}
!164 = !{ptr @lg2160_set_spi_clock._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @lg2160_set_spi_clock._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @lg2160_set_spi_clock._entry.79, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 433, i32 2}
!168 = !{ptr @lg2160_set_spi_clock._entry_ptr.80, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 444, i32 6}
!171 = !{ptr @lg2161_set_output_interface._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @lg2161_set_output_interface._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @lg2161_set_output_interface._entry.82, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 451, i32 2}
!175 = !{ptr @lg2161_set_output_interface._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 383, i32 6}
!178 = !{ptr @lg216x_set_parade._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @lg216x_set_parade._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 408, i32 6}
!182 = !{ptr @lg216x_set_ensemble._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @lg216x_set_ensemble._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @lg216x_set_ensemble._entry.86, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 415, i32 2}
!186 = !{ptr @lg216x_set_ensemble._entry_ptr.87, !185, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"lg2160_init", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 187, i32 27}
!189 = distinct !{null, !190, !"lg2161_init", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 203, i32 27}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 225, i32 6}
!193 = !{ptr @lg216x_initialize._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @lg216x_initialize._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @lg216x_initialize._entry.89, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 229, i32 2}
!197 = !{ptr @lg216x_initialize._entry_ptr.90, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 113, i32 2}
!200 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @lg216x_write_regs._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @lg216x_write_regs._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @lg216x_write_regs._entry.93, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 117, i32 7}
!205 = !{ptr @lg216x_write_regs._entry_ptr.94, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 461, i32 6}
!208 = !{ptr @lg216x_enable_fic._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @lg216x_enable_fic._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @lg216x_enable_fic._entry.96, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 465, i32 6}
!212 = !{ptr @lg216x_enable_fic._entry_ptr.97, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @lg216x_enable_fic._entry.98, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 477, i32 6}
!215 = !{ptr @lg216x_enable_fic._entry_ptr.99, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @lg216x_enable_fic._entry.100, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 481, i32 6}
!218 = !{ptr @lg216x_enable_fic._entry_ptr.101, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @lg216x_enable_fic._entry.102, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 486, i32 3}
!221 = !{ptr @lg216x_enable_fic._entry_ptr.103, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1327, i32 2}
!224 = !{ptr @lg216x_get_tune_settings._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @lg216x_get_tune_settings._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 937, i32 2}
!228 = !{ptr @lg216x_get_frontend._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @lg216x_get_frontend._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @lg216x_get_frontend._entry.106, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 945, i32 6}
!232 = !{ptr @lg216x_get_frontend._entry_ptr.107, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @lg216x_get_frontend._entry.108, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 960, i32 7}
!235 = !{ptr @lg216x_get_frontend._entry_ptr.109, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @lg216x_get_frontend._entry.110, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 964, i32 7}
!238 = !{ptr @lg216x_get_frontend._entry_ptr.111, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @lg216x_get_frontend._entry.112, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 968, i32 7}
!241 = !{ptr @lg216x_get_frontend._entry_ptr.113, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @lg216x_get_frontend._entry.114, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 972, i32 7}
!244 = !{ptr @lg216x_get_frontend._entry_ptr.115, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @lg216x_get_frontend._entry.116, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 978, i32 7}
!247 = !{ptr @lg216x_get_frontend._entry_ptr.117, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @lg216x_get_frontend._entry.118, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 983, i32 7}
!250 = !{ptr @lg216x_get_frontend._entry_ptr.119, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @lg216x_get_frontend._entry.120, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 990, i32 7}
!253 = !{ptr @lg216x_get_frontend._entry_ptr.121, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @lg216x_get_frontend._entry.122, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 995, i32 7}
!256 = !{ptr @lg216x_get_frontend._entry_ptr.123, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @lg216x_get_frontend._entry.124, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1006, i32 7}
!259 = !{ptr @lg216x_get_frontend._entry_ptr.125, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 502, i32 6}
!262 = !{ptr @lg216x_get_fic_version._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @lg216x_get_fic_version._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 536, i32 6}
!266 = !{ptr @lg216x_get_nog._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @lg216x_get_nog._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 552, i32 6}
!270 = !{ptr @lg216x_get_tnog._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @lg216x_get_tnog._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 568, i32 6}
!274 = !{ptr @lg216x_get_sgn._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @lg216x_get_sgn._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 584, i32 6}
!278 = !{ptr @lg216x_get_prc._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @lg216x_get_prc._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.131, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 610, i32 6}
!282 = !{ptr @lg216x_get_rs_frame_mode._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @lg216x_get_rs_frame_mode._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.132, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 650, i32 6}
!286 = !{ptr @lg216x_get_rs_frame_ensemble._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @lg216x_get_rs_frame_ensemble._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 676, i32 6}
!290 = !{ptr @lg216x_get_rs_code_mode._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @lg216x_get_rs_code_mode._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 701, i32 6}
!294 = !{ptr @lg216x_get_sccc_block_mode._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @lg216x_get_sccc_block_mode._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 738, i32 6}
!298 = !{ptr @lg216x_get_sccc_code_mode._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @lg216x_get_sccc_code_mode._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1194, i32 6}
!302 = !{ptr @lg216x_read_status._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @lg216x_read_status._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1197, i32 2}
!306 = !{ptr @lg216x_read_status._entry.137, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @lg216x_read_status._entry_ptr.139, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.143, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1129, i32 6}
!313 = !{ptr @lg2160_read_lock_status._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @lg2160_read_lock_status._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1224, i32 6}
!317 = !{ptr @lg2160_read_snr._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @lg2160_read_snr._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @lg2160_read_snr._entry.145, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1228, i32 6}
!321 = !{ptr @lg2160_read_snr._entry_ptr.146, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.147, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 154, i32 2}
!324 = !{ptr @lg216x_i2c_gate_ctrl._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @lg216x_i2c_gate_ctrl._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.148, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 129, i32 2}
!328 = !{ptr @.str.149, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @lg216x_set_reg_bit._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @lg216x_set_reg_bit._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @lg216x_set_reg_bit._entry.150, !332, !"_entry", i1 false, i1 false}
!332 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 132, i32 6}
!333 = !{ptr @lg216x_set_reg_bit._entry_ptr.151, !332, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @lg216x_set_reg_bit._entry.152, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 139, i32 2}
!336 = !{ptr @lg216x_set_reg_bit._entry_ptr.153, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @lg2161_ops, !338, !"lg2161_ops", i1 false, i1 false}
!338 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1364, i32 38}
!339 = !{ptr @.str.154, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1252, i32 6}
!341 = !{ptr @lg2161_read_snr._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @lg2161_read_snr._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @lg2161_read_snr._entry.155, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/media/dvb-frontends/lg2160.c", i32 1256, i32 6}
!345 = !{ptr @lg2161_read_snr._entry_ptr.156, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{!"auto-init"}
