; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/qt1010.c_pt.bc'
source_filename = "../drivers/media/tuners/qt1010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qt1010_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_qt1010_attach\09\09\09\09"
module asm "\09.long\09__crc_qt1010_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qt1010_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22qt1010_attach\22\09\09\09\09\09"
module asm "__kstrtabns_qt1010_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qt1010_i2c_oper_t = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.qt1010_priv = type { ptr, ptr, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@qt1010_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Quantek QT1010 successfully identified\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/qt1010.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qt1010_attach._entry_ptr = internal global ptr @qt1010_attach._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qt1010\00", [25 x i8] zeroinitializer }, align 32
@qt1010_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Quantek QT1010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 125000, i32 0, i32 0, i32 0 }, ptr @qt1010_release, ptr @qt1010_init, ptr null, ptr null, ptr null, ptr @qt1010_set_params, ptr null, ptr null, ptr @qt1010_get_frequency, ptr null, ptr @qt1010_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_qt1010_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_qt1010_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_qt1010_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qt1010_attach to i32), ptr @__kstrtab_qt1010_attach, ptr @__kstrtabns_qt1010_attach }, section "___ksymtab+qt1010_attach", align 4
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"qt1010.description=Quantek QT1010 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [45 x i8] c"qt1010.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [48 x i8] c"qt1010.author=Aapo Tahkola <aet@rasterburn.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [19 x i8] c"qt1010.version=0.1\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.5, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_file296 = internal constant [40 x i8] c"qt1010.file=drivers/media/tuners/qt1010\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"qt1010.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qt1010_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 23, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: i2c rd failed reg=%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qt1010_readreg\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qt1010_readreg._entry_ptr = internal global ptr @qt1010_readreg._entry, section ".printk_index", align 4
@qt1010_init.i2c_data = internal constant { [34 x %struct.qt1010_i2c_oper_t], [58 x i8] } { [34 x %struct.qt1010_i2c_oper_t] [%struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 -128 }, %struct.qt1010_i2c_oper_t { i8 0, i8 13, i8 -124 }, %struct.qt1010_i2c_oper_t { i8 0, i8 14, i8 -73 }, %struct.qt1010_i2c_oper_t { i8 0, i8 42, i8 35 }, %struct.qt1010_i2c_oper_t { i8 0, i8 44, i8 -36 }, %struct.qt1010_i2c_oper_t { i8 3, i8 37, i8 64 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -127, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 43, i8 112 }, %struct.qt1010_i2c_oper_t { i8 0, i8 42, i8 35 }, %struct.qt1010_i2c_oper_t { i8 3, i8 38, i8 8 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -126, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 20 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 7, i8 40 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 11 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -3 }, %struct.qt1010_i2c_oper_t { i8 3, i8 34, i8 13 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -48, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 64 }, %struct.qt1010_i2c_oper_t { i8 0, i8 22, i8 -16 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 56 }, %struct.qt1010_i2c_oper_t { i8 0, i8 3, i8 24 }, %struct.qt1010_i2c_oper_t { i8 0, i8 32, i8 -32 }, %struct.qt1010_i2c_oper_t { i8 3, i8 31, i8 32 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -124, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 32, i8 32 }, %struct.qt1010_i2c_oper_t { i8 0, i8 3, i8 25 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 63 }, %struct.qt1010_i2c_oper_t { i8 0, i8 33, i8 83 }, %struct.qt1010_i2c_oper_t { i8 1, i8 33, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -3 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 52 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 8 }], [58 x i8] zeroinitializer }, align 32
@qt1010_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 38, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: i2c wr failed reg=%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt1010_writereg\00", [16 x i8] zeroinitializer }, align 32
@qt1010_writereg._entry_ptr = internal global ptr @qt1010_writereg._entry, section ".printk_index", align 4
@qt1010_init_meas1.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qt1010_init_meas1\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: compare reg:%02x %02x %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.qt1010_set_params.rd = private unnamed_addr constant [48 x %struct.qt1010_i2c_oper_t] [%struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 -128 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 63 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 7, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 8 }, %struct.qt1010_i2c_oper_t { i8 0, i8 9, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 10, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 11, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 12, i8 -31 }, %struct.qt1010_i2c_oper_t { i8 0, i8 26, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 27, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 28, i8 -119 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 18, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 1, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 1, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 35, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -32 }, %struct.qt1010_i2c_oper_t { i8 1, i8 35, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 35, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 36, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -16 }, %struct.qt1010_i2c_oper_t { i8 1, i8 36, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 20, i8 127 }, %struct.qt1010_i2c_oper_t { i8 0, i8 21, i8 127 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 21, i8 31 }, %struct.qt1010_i2c_oper_t { i8 0, i8 22, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 24, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 31, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 32, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 33, i8 83 }, %struct.qt1010_i2c_oper_t { i8 0, i8 37, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 38, i8 21 }, %struct.qt1010_i2c_oper_t { i8 0, i8 0, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 0 }], align 1
@qt1010_set_params.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qt1010_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"%s: freq:%u 05:%02x 07:%02x 09:%02x 0a:%02x 0b:%02x 1a:%02x 11:%02x 12:%02x 22:%02x 05:%02x 1f:%02x 20:%02x 25:%02x 00:%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 23, i64 25]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 433, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"qt1010_tuner_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 389, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 448, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 22, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"i2c_data\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 287, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 37, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 243, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [33 x i8] c"../drivers/media/tuners/qt1010.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 191, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version295, ptr @__ksymtab_qt1010_attach, ptr @__modver_attr, ptr @qt1010_attach._entry, ptr @qt1010_attach._entry_ptr, ptr @qt1010_readreg._entry, ptr @qt1010_readreg._entry_ptr, ptr @qt1010_writereg._entry, ptr @qt1010_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qt1010_tuner_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @qt1010_init.i2c_data, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1010_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1010_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1010_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1010_init.i2c_data to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1010_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qt1010_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %id, align 1, !annotation !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.qt1010_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %i2c2, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 1
  %conv4.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %id, ptr %buf7.i, align 4
  %22 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c2, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %lor.lhs.false, label %qt1010_readreg.exit

qt1010_readreg.exit:                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c2, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %29)
  %cmp10.not = icmp eq i8 %29, 57
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %qt1010_readreg.exit
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool16.not = icmp eq ptr %31, null
  br i1 %tobool16.not, label %if.end13.do.end_crit_edge, label %if.then17

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 %31(ptr noundef %fe, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end13.do.end_crit_edge
  %32 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c2, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #11
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %34 = call ptr @memcpy(ptr %tuner_ops, ptr @qt1010_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %35 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ %fe, %do.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt1010_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1010_init(ptr noundef %fe) #0 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msg.i53.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %val.i = alloca i8, align 1
  %i2c_data.i = alloca [7 x %struct.qt1010_i2c_oper_t], align 1
  %reg.addr.i = alloca i8, align 1
  %msg.i122 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmpval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpval) #7
  %2 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmpval, align 1, !annotation !57
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg20_init_val = getelementptr inbounds %struct.qt1010_priv, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %flags.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %buf.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 1
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 3
  %i2c.i128 = getelementptr inbounds %struct.qt1010_priv, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.cond69.preheader:                             ; preds = %for.inc
  %8 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %i2c_data.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %i2c_data.i, i32 0, i32 2
  %10 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 1
  %11 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 2
  %14 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 2, i32 1
  %15 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 2, i32 2
  %16 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 3
  %17 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 3, i32 1
  %18 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 3, i32 2
  %19 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 4
  %20 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 4, i32 1
  %21 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 4, i32 2
  %22 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 5
  %23 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 5, i32 1
  %24 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 5, i32 2
  %25 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 6
  %26 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 6, i32 1
  %27 = getelementptr inbounds [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 6, i32 2
  %28 = getelementptr inbounds i8, ptr %msg.i53.i, i32 4
  %flags.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 0, i32 1
  %buf.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 1
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 1, i32 1
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 1, i32 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53.i, i32 1, i32 3
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.body73

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %conv140 = phi i32 [ 0, %if.end ], [ %conv, %for.inc.for.body_crit_edge ]
  %i.0139 = phi i8 [ 0, %if.end ], [ %inc68, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %for.body.for.inc_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
    i8 3, label %sw.bb23
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %reg = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140, i32 1
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg, align 1
  %val = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140, i32 2
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %buf.i, align 1
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %7, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %msg.i, align 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %7, align 4
  %47 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i, ptr %buf1.i, align 4
  %48 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c.i128, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.qt1010_writereg.exit_crit_edge, label %do.end.i

sw.bb.qt1010_writereg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c.i128, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  %conv4.i = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %conv4.i) #11
  br label %qt1010_writereg.exit

qt1010_writereg.exit:                             ; preds = %do.end.i, %sw.bb.qt1010_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ 0, %sw.bb.qt1010_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %52 = zext i8 %i.0139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %i.0139, label %sw.bb10.if.end18_crit_edge [
    i8 25, label %sw.bb10.if.then17_crit_edge
    i8 23, label %sw.bb10.if.then17_crit_edge147
  ]

sw.bb10.if.then17_crit_edge147:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

sw.bb10.if.then17_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

sw.bb10.if.end18_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %sw.bb10.if.then17_crit_edge, %sw.bb10.if.then17_crit_edge147
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %sw.bb10.if.end18_crit_edge
  %valptr.0 = phi ptr [ %reg20_init_val, %if.then17 ], [ %tmpval, %sw.bb10.if.end18_crit_edge ]
  %reg21 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140, i32 1
  %53 = ptrtoint ptr %reg21 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %55 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i122) #7
  %56 = call ptr @memset(ptr %5, i32 255, i32 16)
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i123 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i123, ptr %msg.i122, align 4
  %62 = ptrtoint ptr %flags.i124 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i124, align 2
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %5, align 4
  %64 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %reg.addr.i, ptr %buf.i126, align 4
  %65 = load i8, ptr %58, align 1
  %conv4.i127 = zext i8 %65 to i16
  %66 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv4.i127, ptr %arrayinit.element.i, align 4
  %67 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags5.i, align 2
  %68 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %len6.i, align 4
  %69 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %valptr.0, ptr %buf7.i, align 4
  %70 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c.i128, align 4
  %call.i129 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i122, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i129)
  %cmp.not.i130 = icmp eq i32 %call.i129, 2
  br i1 %cmp.not.i130, label %if.end18.qt1010_readreg.exit_crit_edge, label %do.end.i132

if.end18.qt1010_readreg.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_readreg.exit

do.end.i132:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c.i128, align 4
  %dev.i131 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i131, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  br label %qt1010_readreg.exit

qt1010_readreg.exit:                              ; preds = %do.end.i132, %if.end18.qt1010_readreg.exit_crit_edge
  %retval.0.i133 = phi i32 [ -121, %do.end.i132 ], [ 0, %if.end18.qt1010_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i122) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %i.0139)
  %cmp43 = icmp ugt i8 %i.0139, 32
  br i1 %cmp43, label %do.body48, label %do.end54, !prof !58

do.body48:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/qt1010.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end54:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %val26 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140, i32 2
  %add = add nuw nsw i32 %conv140, 1
  %reg57 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %add, i32 1
  %76 = ptrtoint ptr %reg57 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reg57, align 1
  %reg60 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %conv140, i32 1
  %78 = ptrtoint ptr %reg60 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %reg60, align 1
  %80 = ptrtoint ptr %val26 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %val26, align 1
  %call64 = call fastcc i32 @qt1010_init_meas1(ptr noundef %1, i8 noundef zeroext %77, i8 noundef zeroext %79, i8 noundef zeroext %81, ptr noundef nonnull %tmpval)
  %inc = add nuw nsw i8 %i.0139, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end54, %qt1010_readreg.exit, %qt1010_writereg.exit
  %err.1 = phi i32 [ %call64, %do.end54 ], [ %retval.0.i133, %qt1010_readreg.exit ], [ %retval.0.i, %qt1010_writereg.exit ]
  %i.1 = phi i8 [ %inc, %do.end54 ], [ %i.0139, %qt1010_readreg.exit ], [ %i.0139, %qt1010_writereg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool65.not = icmp eq i32 %err.1, 0
  br i1 %tobool65.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1137 = phi i8 [ %i.1, %sw.epilog.for.inc_crit_edge ], [ %i.0139, %for.body.for.inc_crit_edge ]
  %inc68 = add nuw nsw i8 %i.1137, 1
  %conv = zext i8 %inc68 to i32
  %cmp = icmp ult i8 %i.1137, 33
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond69.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body73:                                       ; preds = %for.inc78.for.body73_crit_edge, %for.cond69.preheader
  %i.2141 = phi i8 [ 49, %for.cond69.preheader ], [ %inc79, %for.inc78.for.body73_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i2c_data.i) #7
  %83 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %i2c_data.i, align 1
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 7, ptr %8, align 1
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %i.2141, ptr %9, align 1
  %86 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %10, align 1
  %87 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 34, ptr %11, align 1
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -48, ptr %12, align 1
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %13, align 1
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 30, ptr %14, align 1
  %91 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %15, align 1
  %92 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %16, align 1
  %93 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 30, ptr %17, align 1
  %94 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -48, ptr %18, align 1
  %95 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %19, align 1
  %96 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 34, ptr %20, align 1
  %97 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %21, align 1
  %98 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %22, align 1
  %99 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 30, ptr %23, align 1
  %100 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %24, align 1
  %101 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %25, align 1
  %102 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 34, ptr %26, align 1
  %103 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %27, align 1
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %for.inc78, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body73
  %indvars.iv.i = phi i32 [ 0, %for.body73 ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 %indvars.iv.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp29.i = icmp eq i8 %105, 0
  %reg33.i = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 %indvars.iv.i, i32 1
  %106 = ptrtoint ptr %reg33.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %reg33.i, align 1
  br i1 %cmp29.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %val36.i = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %i2c_data.i, i32 0, i32 %indvars.iv.i, i32 2
  %108 = ptrtoint ptr %val36.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %val36.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %110 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %107, ptr %buf.i.i, align 1
  %111 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %109, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %112 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %30, align 4
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 1
  %conv.i.i = zext i8 %116 to i16
  %117 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %118 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i.i, align 2
  store i16 2, ptr %30, align 4
  %119 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %120 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i2c.i128, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then.i.qt1010_writereg.exit.i_crit_edge, label %do.end.i.i

if.then.i.qt1010_writereg.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c.i128, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %123, i32 0, i32 9
  %conv4.i.i = zext i8 %107 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %conv4.i.i) #11
  br label %qt1010_writereg.exit.i

qt1010_writereg.exit.i:                           ; preds = %do.end.i.i, %if.then.i.qt1010_writereg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -121, %do.end.i.i ], [ 0, %if.then.i.qt1010_writereg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %124 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %107, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i53.i) #7
  %125 = call ptr @memset(ptr %28, i32 255, i32 16)
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 1
  %conv.i54.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i53.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i54.i, ptr %msg.i53.i, align 4
  %131 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i55.i, align 2
  %132 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %28, align 4
  %133 = ptrtoint ptr %buf.i57.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %reg.addr.i.i, ptr %buf.i57.i, align 4
  %134 = load i8, ptr %127, align 1
  %conv4.i58.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv4.i58.i, ptr %arrayinit.element.i.i, align 4
  %136 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1, ptr %flags5.i.i, align 2
  %137 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %len6.i.i, align 4
  %138 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %val.i, ptr %buf7.i.i, align 4
  %139 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c.i128, align 4
  %call.i60.i = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg.i53.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60.i)
  %cmp.not.i61.i = icmp eq i32 %call.i60.i, 2
  br i1 %cmp.not.i61.i, label %if.else.i.qt1010_readreg.exit.i_crit_edge, label %do.end.i63.i

if.else.i.qt1010_readreg.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_readreg.exit.i

do.end.i63.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %i2c.i128 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i2c.i128, align 4
  %dev.i62.i = getelementptr inbounds %struct.i2c_adapter, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %reg.addr.i.i, align 1
  %conv10.i.i = zext i8 %144 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i62.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i.i) #11
  br label %qt1010_readreg.exit.i

qt1010_readreg.exit.i:                            ; preds = %do.end.i63.i, %if.else.i.qt1010_readreg.exit.i_crit_edge
  %retval.0.i64.i = phi i32 [ -121, %do.end.i63.i ], [ 0, %if.else.i.qt1010_readreg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i53.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %qt1010_readreg.exit.i, %qt1010_writereg.exit.i
  %err.0.i = phi i32 [ %retval.0.i.i, %qt1010_writereg.exit.i ], [ %retval.0.i64.i, %qt1010_readreg.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %qt1010_init_meas2.exit

qt1010_init_meas2.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i2c_data.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

for.inc78:                                        ; preds = %for.cond.i
  %145 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %val.i, align 1
  %147 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %tmpval, align 1
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i2c_data.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %inc79 = add nuw nsw i8 %i.2141, 1
  %cmp71 = icmp ult i8 %i.2141, 57
  br i1 %cmp71, label %for.inc78.for.body73_crit_edge, label %for.end80

for.inc78.for.body73_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73

for.end80:                                        ; preds = %for.inc78
  %148 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool81.not = icmp eq i32 %149, 0
  br i1 %tobool81.not, label %if.then82, label %for.end80.if.end84_crit_edge

for.end80.if.end84_crit_edge:                     ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then82:                                        ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 545000000, ptr %dtv_property_cache, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %for.end80.if.end84_crit_edge
  %call85 = call i32 @qt1010_set_params(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %qt1010_init_meas2.exit, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call85, %if.end84 ], [ %err.0.i, %qt1010_init_meas2.exit ], [ %err.1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1010_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i353 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmpval = alloca i8, align 1
  %rd = alloca [48 x %struct.qt1010_i2c_oper_t], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpval) #7
  %0 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmpval, align 1, !annotation !57
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %rd) #7
  %1 = call ptr @memcpy(ptr %rd, ptr @__const.qt1010_set_params.rd, i32 144)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %5, 1246000000
  %6 = urem i32 %add, 125000
  %mul = sub i32 %add, %6
  %sub = add i32 %mul, -1246000000
  %mul.frozen = freeze i32 %mul
  %div19 = udiv i32 %mul.frozen, 32000000
  %7 = mul i32 %div19, 32000000
  %rem.decomposed = sub i32 %mul.frozen, %7
  %rem4 = urem i32 %mul, 4000000
  %frequency5 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %frequency5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %frequency5, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %10(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %sub)
  %cmp = icmp ult i32 %sub, 290000000
  br i1 %cmp, label %if.end.if.end17_crit_edge, label %if.else

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 610000000, i32 %sub)
  %cmp9 = icmp ult i32 %sub, 610000000
  br i1 %cmp9, label %if.else.if.end17_crit_edge, label %if.else11

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 802000000, i32 %sub)
  %cmp12 = icmp ult i32 %sub, 802000000
  %. = select i1 %cmp12, i8 84, i8 116
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.else.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %reg05.0 = phi i8 [ 20, %if.end.if.end17_crit_edge ], [ 52, %if.else.if.end17_crit_edge ], [ %., %if.else11 ]
  %val = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg05.0, ptr %val, align 1
  %conv = trunc i32 %div19 to i8
  %val21 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %val21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %val21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %rem.decomposed)
  %cmp22 = icmp ult i32 %rem.decomposed, 8000000
  %val26 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 6, i32 2
  br i1 %cmp22, label %if.end30, label %if.else42

if.end30:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 29, ptr %val26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %rem.decomposed)
  %cmp31 = icmp ult i32 %rem.decomposed, 4000000
  %val35 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  br i1 %cmp31, label %if.then33, label %if.then39

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %val35, align 1
  br label %if.end81

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %val35, align 1
  br label %if.end81

if.else42:                                        ; preds = %if.end17
  %16 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 28, ptr %val26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %rem.decomposed)
  %cmp43 = icmp ult i32 %rem.decomposed, 12000000
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %val47 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %val47, align 1
  br label %if.end81

if.else48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %rem.decomposed)
  %cmp49 = icmp ult i32 %rem.decomposed, 16000000
  br i1 %cmp49, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %val53 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %val53 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 14, ptr %val53, align 1
  br label %if.end81

if.else54:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %rem.decomposed)
  %cmp55 = icmp ult i32 %rem.decomposed, 20000000
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %val59 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %val59 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 13, ptr %val59, align 1
  br label %if.end81

if.else60:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %rem.decomposed)
  %cmp61 = icmp ult i32 %rem.decomposed, 24000000
  br i1 %cmp61, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  %val65 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %val65 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %val65, align 1
  br label %if.end81

if.else66:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_const_cmp4(i32 28000000, i32 %rem.decomposed)
  %cmp67 = icmp ult i32 %rem.decomposed, 28000000
  %val71 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  br i1 %cmp67, label %if.then69, label %if.else72

if.then69:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 11, ptr %val71, align 1
  br label %if.end81

if.else72:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %val71, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else72, %if.then69, %if.then63, %if.then57, %if.then51, %if.then45, %if.then39, %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %rem4)
  %cmp82 = icmp ult i32 %rem4, 2000000
  %spec.select = select i1 %cmp82, i8 69, i8 68
  %23 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %23, align 1
  %div92 = udiv i32 %rem4, 125000
  %25 = trunc i32 %div92 to i8
  %26 = mul i8 %25, -8
  %conv95 = add i8 %26, 120
  %val97 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %val97 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv95, ptr %val97, align 1
  %val99 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 13, i32 2
  %28 = ptrtoint ptr %val99 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -3, ptr %val99, align 1
  %val101 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 14, i32 2
  %29 = ptrtoint ptr %val101 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -111, ptr %val101, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 450000000, i32 %sub)
  %cmp102 = icmp ult i32 %sub, 450000000
  br i1 %cmp102, label %if.then104, label %if.else107

if.then104:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %val106 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %val106 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -48, ptr %val106, align 1
  br label %if.end138

if.else107:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 482000000, i32 %sub)
  %cmp108 = icmp ult i32 %sub, 482000000
  br i1 %cmp108, label %if.then110, label %if.else113

if.then110:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %val112 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  %31 = ptrtoint ptr %val112 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -47, ptr %val112, align 1
  br label %if.end138

if.else113:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_const_cmp4(i32 514000000, i32 %sub)
  %cmp114 = icmp ult i32 %sub, 514000000
  br i1 %cmp114, label %if.then116, label %if.else119

if.then116:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  %val118 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  %32 = ptrtoint ptr %val118 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -44, ptr %val118, align 1
  br label %if.end138

if.else119:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_const_cmp4(i32 546000000, i32 %sub)
  %cmp120 = icmp ult i32 %sub, 546000000
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  %val124 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  %33 = ptrtoint ptr %val124 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -41, ptr %val124, align 1
  br label %if.end138

if.else125:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_const_cmp4(i32 610000000, i32 %sub)
  %cmp126 = icmp ult i32 %sub, 610000000
  %val130 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  br i1 %cmp126, label %if.then128, label %if.else131

if.then128:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %val130 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -38, ptr %val130, align 1
  br label %if.end138

if.else131:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %val130 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -48, ptr %val130, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.else131, %if.then128, %if.then122, %if.then116, %if.then110, %if.then104
  %36 = and i8 %reg05.0, 112
  %val142 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 35, i32 2
  %37 = ptrtoint ptr %val142 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %val142, align 1
  br i1 %cmp22, label %if.then177, label %if.else146

if.else146:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %rem.decomposed)
  %cmp147 = icmp ult i32 %rem.decomposed, 12000000
  br i1 %cmp147, label %if.then181, label %if.else150

if.else150:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %rem.decomposed)
  %cmp151 = icmp ult i32 %rem.decomposed, 16000000
  br i1 %cmp151, label %if.else182.thread384, label %if.else154

if.else182.thread384:                             ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #9
  %reg1f_init_val366372385 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %reg1f_init_val366372385 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg1f_init_val366372385, align 4
  %add171368374387 = add i8 %39, 16
  %val174369375388 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %40 = ptrtoint ptr %val174369375388 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add171368374387, ptr %val174369375388, align 1
  br label %if.then185

if.else154:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %rem.decomposed)
  %cmp155 = icmp ult i32 %rem.decomposed, 24000000
  br i1 %cmp155, label %if.else182, label %if.else158

if.else158:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_const_cmp4(i32 28000000, i32 %rem.decomposed)
  %cmp159 = icmp ult i32 %rem.decomposed, 28000000
  %reg1f_init_val366372378394 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %reg1f_init_val366372378394 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg1f_init_val366372378394, align 4
  br i1 %cmp159, label %if.then193, label %if.else194

if.then177:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %reg1f_init_val = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %reg1f_init_val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg1f_init_val, align 4
  %add169 = add i8 %44, 14
  %val174 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %45 = ptrtoint ptr %val174 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add169, ptr %val174, align 1
  %46 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %tmpval, align 1
  br label %if.end199

if.then181:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  %reg1f_init_val366 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %reg1f_init_val366 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg1f_init_val366, align 4
  %add171368 = add i8 %48, 15
  %val174369 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %49 = ptrtoint ptr %val174369 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %add171368, ptr %val174369, align 1
  %50 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %tmpval, align 1
  br label %if.end199

if.else182:                                       ; preds = %if.else154
  %reg1f_init_val366372 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %reg1f_init_val366372 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg1f_init_val366372, align 4
  %add171368374 = add i8 %52, 17
  %val174369375 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %53 = ptrtoint ptr %val174369375 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add171368374, ptr %val174369375, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %rem.decomposed)
  %cmp183 = icmp ult i32 %rem.decomposed, 20000000
  br i1 %cmp183, label %if.else182.if.then185_crit_edge, label %if.then189

if.else182.if.then185_crit_edge:                  ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then185

if.then185:                                       ; preds = %if.else182.if.then185_crit_edge, %if.else182.thread384
  %val174369375390 = phi ptr [ %val174369375388, %if.else182.thread384 ], [ %val174369375, %if.else182.if.then185_crit_edge ]
  %54 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %tmpval, align 1
  br label %if.end199

if.then189:                                       ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %tmpval, align 1
  br label %if.end199

if.then193:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #9
  %add171368374380396 = add i8 %42, 18
  %val174369375381397 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %56 = ptrtoint ptr %val174369375381397 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add171368374380396, ptr %val174369375381397, align 1
  %57 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %tmpval, align 1
  br label %if.end199

if.else194:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #9
  %add171368374380 = add i8 %42, 19
  %val174369375381 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 40, i32 2
  %58 = ptrtoint ptr %val174369375381 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %add171368374380, ptr %val174369375381, align 1
  %59 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 5, ptr %tmpval, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.else194, %if.then193, %if.then189, %if.then185, %if.then181, %if.then177
  %val174370 = phi ptr [ %val174369, %if.then181 ], [ %val174369375, %if.then189 ], [ %val174369375381, %if.else194 ], [ %val174369375381397, %if.then193 ], [ %val174369375390, %if.then185 ], [ %val174, %if.then177 ]
  %reg20_init_val = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 3
  %60 = ptrtoint ptr %reg20_init_val to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg20_init_val, align 1
  %add201 = add i8 %61, 13
  %62 = ptrtoint ptr %tmpval to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tmpval, align 1
  %add203 = add i8 %add201, %63
  %val206 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 41, i32 2
  %64 = ptrtoint ptr %val206 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %add203, ptr %val206, align 1
  %reg25_init_val = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 4
  %65 = ptrtoint ptr %reg25_init_val to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reg25_init_val, align 2
  %val208 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 43, i32 2
  %67 = ptrtoint ptr %val208 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %val208, align 1
  %val210 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 45, i32 2
  %68 = ptrtoint ptr %val210 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -110, ptr %val210, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt1010_set_params.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt1010_set_params, %if.then215)) #7
          to label %do.end [label %if.then215], !srcloc !60

if.then215:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 1
  %69 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %val, align 1
  %conv218 = zext i8 %72 to i32
  %73 = ptrtoint ptr %val21 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val21, align 1
  %conv221 = zext i8 %74 to i32
  %val223 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 6, i32 2
  %75 = ptrtoint ptr %val223 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val223, align 1
  %conv224 = zext i8 %76 to i32
  %val226 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 7, i32 2
  %77 = ptrtoint ptr %val226 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %val226, align 1
  %conv227 = zext i8 %78 to i32
  %79 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %23, align 1
  %conv230 = zext i8 %80 to i32
  %81 = ptrtoint ptr %val97 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %val97, align 1
  %conv233 = zext i8 %82 to i32
  %83 = ptrtoint ptr %val99 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val99, align 1
  %conv236 = zext i8 %84 to i32
  %85 = ptrtoint ptr %val101 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val101, align 1
  %conv239 = zext i8 %86 to i32
  %val241 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 15, i32 2
  %87 = ptrtoint ptr %val241 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %val241, align 1
  %conv242 = zext i8 %88 to i32
  %89 = ptrtoint ptr %val142 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %val142, align 1
  %conv245 = zext i8 %90 to i32
  %91 = ptrtoint ptr %val174370 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %val174370, align 1
  %conv248 = zext i8 %92 to i32
  %93 = ptrtoint ptr %val206 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %val206, align 1
  %conv251 = zext i8 %94 to i32
  %95 = ptrtoint ptr %val208 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %val208, align 1
  %conv254 = zext i8 %96 to i32
  %97 = ptrtoint ptr %val210 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %val210, align 1
  %conv257 = zext i8 %98 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qt1010_set_params.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %sub, i32 noundef %conv218, i32 noundef %conv221, i32 noundef %conv224, i32 noundef %conv227, i32 noundef %conv230, i32 noundef %conv233, i32 noundef %conv236, i32 noundef %conv239, i32 noundef %conv242, i32 noundef %conv245, i32 noundef %conv248, i32 noundef %conv251, i32 noundef %conv254, i32 noundef %conv257) #7
  br label %do.end

do.end:                                           ; preds = %if.then215, %if.end199
  %99 = getelementptr inbounds i8, ptr %msg.i353, i32 4
  %flags.i355 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 0, i32 1
  %buf.i357 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 1
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 1, i32 1
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 1, i32 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 1, i32 3
  %i2c.i359 = getelementptr inbounds %struct.qt1010_priv, ptr %3, i32 0, i32 1
  %100 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %101 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end278
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end
  %indvars.iv = phi i32 [ 0, %do.end ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx262 = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 %indvars.iv
  %102 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx262, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp264 = icmp eq i8 %103, 0
  %reg = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 %indvars.iv, i32 1
  %104 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %reg, align 1
  br i1 %cmp264, label %if.then266, label %if.else273

if.then266:                                       ; preds = %for.body
  %val271 = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %rd, i32 0, i32 %indvars.iv, i32 2
  %106 = ptrtoint ptr %val271 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %val271, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %108 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %buf.i, align 1
  %109 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %107, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %110 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %101, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %3, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  %conv.i = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i, ptr %msg.i, align 4
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %101, align 4
  %117 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i, ptr %buf1.i, align 4
  %118 = ptrtoint ptr %i2c.i359 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i2c.i359, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then266.qt1010_writereg.exit_crit_edge, label %do.end.i

if.then266.qt1010_writereg.exit_crit_edge:        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit

do.end.i:                                         ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %i2c.i359 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i2c.i359, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 9
  %conv4.i = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %conv4.i) #11
  br label %qt1010_writereg.exit

qt1010_writereg.exit:                             ; preds = %do.end.i, %if.then266.qt1010_writereg.exit_crit_edge
  %retval.0.i352 = phi i32 [ -121, %do.end.i ], [ 0, %if.then266.qt1010_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end278

if.else273:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %122 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %105, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i353) #7
  %123 = call ptr @memset(ptr %99, i32 255, i32 16)
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %3, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  %conv.i354 = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i353 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.i354, ptr %msg.i353, align 4
  %129 = ptrtoint ptr %flags.i355 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i355, align 2
  %130 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %99, align 4
  %131 = ptrtoint ptr %buf.i357 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %reg.addr.i, ptr %buf.i357, align 4
  %132 = load i8, ptr %125, align 1
  %conv4.i358 = zext i8 %132 to i16
  %133 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv4.i358, ptr %arrayinit.element.i, align 4
  %134 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %flags5.i, align 2
  %135 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %len6.i, align 4
  %136 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %tmpval, ptr %buf7.i, align 4
  %137 = ptrtoint ptr %i2c.i359 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c.i359, align 4
  %call.i360 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i353, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i360)
  %cmp.not.i361 = icmp eq i32 %call.i360, 2
  br i1 %cmp.not.i361, label %if.else273.qt1010_readreg.exit_crit_edge, label %do.end.i363

if.else273.qt1010_readreg.exit_crit_edge:         ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_readreg.exit

do.end.i363:                                      ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %i2c.i359 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c.i359, align 4
  %dev.i362 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 9
  %141 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %142 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i362, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  br label %qt1010_readreg.exit

qt1010_readreg.exit:                              ; preds = %do.end.i363, %if.else273.qt1010_readreg.exit_crit_edge
  %retval.0.i364 = phi i32 [ -121, %do.end.i363 ], [ 0, %if.else273.qt1010_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i353) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end278

if.end278:                                        ; preds = %qt1010_readreg.exit, %qt1010_writereg.exit
  %err.0 = phi i32 [ %retval.0.i352, %qt1010_writereg.exit ], [ %retval.0.i364, %qt1010_readreg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool279.not = icmp eq i32 %err.0, 0
  br i1 %tobool279.not, label %for.cond, label %if.end278.cleanup_crit_edge

if.end278.cleanup_crit_edge:                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %143 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool284.not = icmp eq ptr %144, null
  br i1 %tobool284.not, label %for.end.cleanup_crit_edge, label %if.then285

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then285:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call288 = call i32 %144(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then285, %for.end.cleanup_crit_edge, %if.end278.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rd) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpval) #7
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qt1010_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.qt1010_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qt1010_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 36125000, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qt1010_init_meas1(ptr nocapture noundef readonly %priv, i8 noundef zeroext %oper, i8 noundef zeroext %reg, i8 noundef zeroext %reg_init_val, ptr nocapture noundef writeonly %retval1) unnamed_addr #0 align 64 {
entry:
  %buf.i94 = alloca [2 x i8], align 1
  %msg.i95 = alloca %struct.i2c_msg, align 4
  %reg.addr.i75 = alloca i8, align 1
  %msg.i76 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i63 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %val2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2) #7
  %0 = ptrtoint ptr %val2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val2, align 1, !annotation !57
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %i2c.i = getelementptr inbounds %struct.qt1010_priv, ptr %priv, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reg, ptr %buf.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg_init_val, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %2, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf1.i, align 4
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.inc, label %entry.qt1010_writereg.exit_crit_edge

entry.qt1010_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit

qt1010_writereg.exit:                             ; preds = %for.inc.1.qt1010_writereg.exit_crit_edge, %for.inc.qt1010_writereg.exit_crit_edge, %entry.qt1010_writereg.exit_crit_edge
  %.lcssa = phi i8 [ %reg, %entry.qt1010_writereg.exit_crit_edge ], [ 30, %for.inc.qt1010_writereg.exit_crit_edge ], [ 30, %for.inc.1.qt1010_writereg.exit_crit_edge ]
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %conv4.i = zext i8 %.lcssa to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %conv4.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

for.inc:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 30, ptr %buf.i, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %2, align 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv.i.1 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.1, ptr %msg.i, align 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %2, align 4
  %26 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf1.i, align 4
  %27 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c.i, align 4
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 1
  br i1 %cmp.not.i.1, label %for.inc.1, label %for.inc.qt1010_writereg.exit_crit_edge

for.inc.qt1010_writereg.exit_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 30, ptr %buf.i, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %oper, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %2, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i.2 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.2, ptr %msg.i, align 4
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %2, align 4
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c.i, align 4
  %call.i.2 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.2)
  %cmp.not.i.2 = icmp eq i32 %call.i.2, 1
  br i1 %cmp.not.i.2, label %for.inc.2, label %for.inc.1.qt1010_writereg.exit_crit_edge

for.inc.1.qt1010_writereg.exit_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %41 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %reg, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i63) #7
  %42 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i64 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i64, ptr %msg.i63, align 4
  %flags.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i65, align 2
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %42, align 4
  %buf.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg.addr.i, ptr %buf.i67, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1
  %52 = load i8, ptr %45, align 1
  %conv4.i68 = zext i8 %52 to i16
  %53 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv4.i68, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 1
  %54 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 2
  %55 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 3
  %56 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %val2, ptr %buf7.i, align 4
  %57 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c.i, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i63, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 2
  br i1 %cmp.not.i71, label %qt1010_readreg.exit, label %qt1010_readreg.exit.thread

qt1010_readreg.exit.thread:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c.i, align 4
  %dev.i72 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %62 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i72, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i63) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

qt1010_readreg.exit:                              ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i63) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %63 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %buf.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %arrayinit.element.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1
  %flags5.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 1
  %len6.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 2
  %buf7.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 3
  %conv30 = zext i8 %reg to i32
  br label %do.body

do.body:                                          ; preds = %do.cond34.do.body_crit_edge, %qt1010_readreg.exit
  %64 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %val2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i75)
  %66 = ptrtoint ptr %reg.addr.i75 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %reg, ptr %reg.addr.i75, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i76) #7
  %67 = call ptr @memset(ptr %63, i32 255, i32 16)
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i77 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i77, ptr %msg.i76, align 4
  %73 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i78, align 2
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %63, align 4
  %75 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %reg.addr.i75, ptr %buf.i80, align 4
  %76 = load i8, ptr %69, align 1
  %conv4.i82 = zext i8 %76 to i16
  %77 = ptrtoint ptr %arrayinit.element.i81 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv4.i82, ptr %arrayinit.element.i81, align 4
  %78 = ptrtoint ptr %flags5.i83 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %flags5.i83, align 2
  %79 = ptrtoint ptr %len6.i84 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %len6.i84, align 4
  %80 = ptrtoint ptr %buf7.i85 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %val2, ptr %buf7.i85, align 4
  %81 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c.i, align 4
  %call.i87 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i76, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i87)
  %cmp.not.i88 = icmp eq i32 %call.i87, 2
  br i1 %cmp.not.i88, label %do.body24, label %qt1010_readreg.exit93

qt1010_readreg.exit93:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c.i, align 4
  %dev.i89 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %reg.addr.i75 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reg.addr.i75, align 1
  %conv10.i90 = zext i8 %86 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %conv10.i90) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i75)
  br label %cleanup

do.body24:                                        ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i75)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt1010_init_meas1.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt1010_init_meas1, %if.then29)) #7
          to label %do.cond34 [label %if.then29], !srcloc !60

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 9
  %conv31 = zext i8 %65 to i32
  %89 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %val2, align 1
  %conv32 = zext i8 %90 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qt1010_init_meas1.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32) #7
  br label %do.cond34

do.cond34:                                        ; preds = %if.then29, %do.body24
  %91 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %val2, align 1
  %cmp37.not = icmp eq i8 %65, %92
  br i1 %cmp37.not, label %do.end39, label %do.cond34.do.body_crit_edge

do.cond34.do.body_crit_edge:                      ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end39:                                         ; preds = %do.cond34
  %93 = ptrtoint ptr %retval1 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %65, ptr %retval1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i94) #7
  %94 = getelementptr inbounds [2 x i8], ptr %buf.i94, i32 0, i32 1
  %95 = ptrtoint ptr %buf.i94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 30, ptr %buf.i94, align 1
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i95) #7
  %97 = getelementptr inbounds i8, ptr %msg.i95, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 196607, ptr %97, align 4
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %conv.i96 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i95 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i96, ptr %msg.i95, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i97, align 2
  %buf1.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95, i32 0, i32 3
  %105 = ptrtoint ptr %buf1.i99 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i94, ptr %buf1.i99, align 4
  %106 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c.i, align 4
  %call.i101 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i95, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, 1
  br i1 %cmp.not.i102, label %do.end39.qt1010_writereg.exit106_crit_edge, label %do.end.i104

do.end39.qt1010_writereg.exit106_crit_edge:       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt1010_writereg.exit106

do.end.i104:                                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c.i, align 4
  %dev.i103 = getelementptr inbounds %struct.i2c_adapter, ptr %109, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i103, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef 30) #11
  br label %qt1010_writereg.exit106

qt1010_writereg.exit106:                          ; preds = %do.end.i104, %do.end39.qt1010_writereg.exit106_crit_edge
  %retval.0.i105 = phi i32 [ -121, %do.end.i104 ], [ 0, %do.end39.qt1010_writereg.exit106_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i95) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i94) #7
  br label %cleanup

cleanup:                                          ; preds = %qt1010_writereg.exit106, %qt1010_readreg.exit93, %qt1010_readreg.exit.thread, %qt1010_writereg.exit
  %retval.0 = phi i32 [ %retval.0.i105, %qt1010_writereg.exit106 ], [ -121, %qt1010_writereg.exit ], [ -121, %qt1010_readreg.exit93 ], [ -121, %qt1010_readreg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/qt1010.c", i32 433, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qt1010_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qt1010_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_qt1010_attach, !10, !"__ksymtab_qt1010_attach", i1 false, i1 false}
!10 = !{!"../drivers/media/tuners/qt1010.c", i32 443, i32 1}
!11 = !{ptr @__UNIQUE_ID_description292, !12, !"__UNIQUE_ID_description292", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/qt1010.c", i32 445, i32 1}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/qt1010.c", i32 446, i32 1}
!15 = !{ptr @__UNIQUE_ID_author294, !16, !"__UNIQUE_ID_author294", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/qt1010.c", i32 447, i32 1}
!17 = !{ptr @__UNIQUE_ID_version295, !18, !"__UNIQUE_ID_version295", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/qt1010.c", i32 448, i32 1}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !18, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file296, !23, !"__UNIQUE_ID_file296", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/qt1010.c", i32 449, i32 1}
!24 = !{ptr @__UNIQUE_ID_license297, !23, !"__UNIQUE_ID_license297", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/qt1010.c", i32 22, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qt1010_readreg._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @qt1010_readreg._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @qt1010_tuner_ops, !32, !"qt1010_tuner_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/qt1010.c", i32 389, i32 35}
!33 = !{ptr @qt1010_init.i2c_data, !34, !"i2c_data", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/qt1010.c", i32 287, i32 33}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/qt1010.c", i32 37, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qt1010_writereg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qt1010_writereg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/qt1010.c", i32 243, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qt1010_init_meas1.__UNIQUE_ID_ddebug291, !41, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/qt1010.c", i32 191, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qt1010_set_params.__UNIQUE_ID_ddebug290, !45, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2155722059, i64 2155722553, i64 2155722096, i64 2155722152, i64 2155722186, i64 2155722210, i64 2155722251, i64 2155722272, i64 2155722300, i64 2155722334}
!60 = !{i64 2148275518, i64 2148275523, i64 2148275536, i64 2148275580, i64 2148275614, i64 2148275635}
