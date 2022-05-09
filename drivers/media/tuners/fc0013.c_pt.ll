; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/fc0013.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0013.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc0013_rc_cal_add\22, \22a\22\09"
module asm "\09.weak\09__crc_fc0013_rc_cal_add\09\09\09\09"
module asm "\09.long\09__crc_fc0013_rc_cal_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_rc_cal_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_rc_cal_add\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_rc_cal_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc0013_rc_cal_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fc0013_rc_cal_reset\09\09\09\09"
module asm "\09.long\09__crc_fc0013_rc_cal_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_rc_cal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_rc_cal_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_rc_cal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc0013_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_fc0013_attach\09\09\09\09"
module asm "\09.long\09__crc_fc0013_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.fc0013_priv = type { ptr, i8, i8, i8, i32, i32 }

@__kstrtab_fc0013_rc_cal_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_rc_cal_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_rc_cal_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_rc_cal_add to i32), ptr @__kstrtab_fc0013_rc_cal_add, ptr @__kstrtabns_fc0013_rc_cal_add }, section "___ksymtab+fc0013_rc_cal_add", align 4
@__kstrtab_fc0013_rc_cal_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_rc_cal_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_rc_cal_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_rc_cal_reset to i32), ptr @__kstrtab_fc0013_rc_cal_reset, ptr @__kstrtabns_fc0013_rc_cal_reset }, section "___ksymtab+fc0013_rc_cal_reset", align 4
@fc0013_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016fc0013: Fitipower FC0013 successfully attached.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0013_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/fc0013.c\00", [34 x i8] zeroinitializer }, align 32
@fc0013_attach._entry_ptr = internal global ptr @fc0013_attach._entry, section ".printk_index", align 4
@fc0013_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37000000, i32 1680000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0013_release, ptr @fc0013_init, ptr @fc0013_sleep, ptr null, ptr null, ptr @fc0013_set_params, ptr null, ptr null, ptr @fc0013_get_frequency, ptr @fc0013_get_bandwidth, ptr @fc0013_get_if_frequency, ptr null, ptr @fc0013_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fc0013_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_attach to i32), ptr @__kstrtab_fc0013_attach, ptr @__kstrtabns_fc0013_attach }, section "___ksymtab+fc0013_attach", align 4
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"fc0013.description=Fitipower FC0013 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [49 x i8] c"fc0013.author=Hans-Frieder Vogt <hfvogt@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [40 x i8] c"fc0013.file=drivers/media/tuners/fc0013\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"fc0013.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [19 x i8] c"fc0013.version=0.2\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc0013\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@fc0013_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013fc0013: I2C write reg failed, reg: %02x, val: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc0013_writereg\00", [16 x i8] zeroinitializer }, align 32
@fc0013_writereg._entry_ptr = internal global ptr @fc0013_writereg._entry, section ".printk_index", align 4
@fc0013_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fc0013: I2C read reg failed, reg: %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc0013_readreg\00", [17 x i8] zeroinitializer }, align 32
@fc0013_readreg._entry_ptr = internal global ptr @fc0013_readreg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.fc0013_init.reg = private unnamed_addr constant [22 x i8] c"\00\09\16\00\00\17\02\0A\FFo\B8\82\FC\01\00\00\00\00\00\00P\01", align 1
@fc0013_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fc0013: fc0013_writereg failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc0013_init\00", [20 x i8] zeroinitializer }, align 32
@fc0013_init._entry_ptr = internal global ptr @fc0013_init._entry, section ".printk_index", align 4
@fc0013_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013fc0013: %s: modulation type not supported!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fc0013_set_params\00", [46 x i8] zeroinitializer }, align 32
@fc0013_set_params._entry_ptr = internal global ptr @fc0013_set_params._entry, section ".printk_index", align 4
@fc0013_set_params._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014fc0013: %s: failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fc0013_set_params._entry_ptr.16 = internal global ptr @fc0013_set_params._entry.14, section ".printk_index", align 4
@fc0013_get_rf_strength.fc0013_lna_gain_table = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 -63, i32 -58, i32 -99, i32 -73, i32 -63, i32 -65, i32 -54, i32 -60, i32 71, i32 70, i32 68, i32 67, i32 65, i32 63, i32 61, i32 58, i32 197, i32 191, i32 188, i32 186, i32 184, i32 182, i32 181, i32 179], [32 x i8] zeroinitializer }, align 32
@fc0013_get_rf_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fc0013_get_rf_strength\00", [41 x i8] zeroinitializer }, align 32
@fc0013_get_rf_strength._entry_ptr = internal global ptr @fc0013_get_rf_strength._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6000000, i64 7000000]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 602, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"fc0013_tuner_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 565, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 616, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 21, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 35, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 104, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 402, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 471, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"fc0013_lna_gain_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 504, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [33 x i8] c"../drivers/media/tuners/fc0013.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 561, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__ksymtab_fc0013_attach, ptr @__ksymtab_fc0013_rc_cal_add, ptr @__ksymtab_fc0013_rc_cal_reset, ptr @__modver_attr, ptr @fc0013_attach._entry, ptr @fc0013_attach._entry_ptr, ptr @fc0013_get_rf_strength._entry, ptr @fc0013_get_rf_strength._entry_ptr, ptr @fc0013_init._entry, ptr @fc0013_init._entry_ptr, ptr @fc0013_readreg._entry, ptr @fc0013_readreg._entry_ptr, ptr @fc0013_set_params._entry, ptr @fc0013_set_params._entry.14, ptr @fc0013_set_params._entry_ptr, ptr @fc0013_set_params._entry_ptr.16, ptr @fc0013_writereg._entry, ptr @fc0013_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fc0013_tuner_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @fc0013_get_rf_strength.fc0013_lna_gain_table, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_set_params._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_get_rf_strength.fc0013_lna_gain_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0013_get_rf_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc0013_rc_cal_add(ptr noundef %fe, i32 noundef %rc_val) #0 align 64 {
entry:
  %buf.i77 = alloca [2 x i8], align 1
  %msg.i78 = alloca %struct.i2c_msg, align 4
  %buf.i64 = alloca [2 x i8], align 1
  %msg.i65 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i54 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %rc_cal = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rc_cal) #8
  %2 = ptrtoint ptr %rc_cal to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rc_cal, align 1, !annotation !66
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %addr1.i = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf2.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end6, label %fc0013_writereg.exit

fc0013_writereg.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %error_out

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %17 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i54) #8
  %18 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr1.i, align 4
  %conv.i56 = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i56, ptr %msg.i54, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i57, align 2
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %18, align 4
  %buf.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reg.addr.i, ptr %buf.i59, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1
  %26 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i56, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 1
  %27 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 2
  %28 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 3
  %29 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rc_cal, ptr %buf7.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i60 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i54, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.not.i61, label %if.end10, label %fc0013_readreg.exit

fc0013_readreg.exit:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %33 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %error_out

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %34 = ptrtoint ptr %rc_cal to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rc_cal, align 1
  %36 = and i8 %35, 15
  store i8 %36, ptr %rc_cal, align 1
  %conv12 = zext i8 %36 to i32
  %add = add i32 %conv12, %rc_val
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i64) #8
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i64, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 13, ptr %buf.i64, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 17, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i65) #8
  %40 = getelementptr inbounds i8, ptr %msg.i65, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr1.i, align 4
  %conv.i67 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i65 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i67, ptr %msg.i65, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i68, align 2
  %buf2.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 3
  %46 = ptrtoint ptr %buf2.i70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i64, ptr %buf2.i70, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i71 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i65, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i71)
  %cmp.not.i72 = icmp eq i32 %call.i71, 1
  br i1 %cmp.not.i72, label %if.end16, label %fc0013_writereg.exit76

fc0013_writereg.exit76:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef 17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #8
  br label %error_out

if.end16:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp = icmp sgt i32 %add, 15
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i77) #8
  %49 = getelementptr inbounds [2 x i8], ptr %buf.i77, i32 0, i32 1
  %50 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 16, ptr %buf.i77, align 1
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 15, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i78) #8
  %52 = getelementptr inbounds i8, ptr %msg.i78, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196607, ptr %52, align 4
  %54 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr1.i, align 4
  %conv.i80 = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i78 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i80, ptr %msg.i78, align 4
  %flags.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i81 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i81, align 2
  %buf2.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 3
  %58 = ptrtoint ptr %buf2.i83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf.i77, ptr %buf2.i83, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i84 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i78, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i84)
  %cmp.not.i85 = icmp eq i32 %call.i84, 1
  br i1 %cmp.not.i85, label %if.then18.fc0013_writereg.exit89_crit_edge, label %do.end.i87

if.then18.fc0013_writereg.exit89_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit89

do.end.i87:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 15) #11
  br label %fc0013_writereg.exit89

fc0013_writereg.exit89:                           ; preds = %do.end.i87, %if.then18.fc0013_writereg.exit89_crit_edge
  %retval.0.i88 = phi i32 [ -121, %do.end.i87 ], [ 0, %if.then18.fc0013_writereg.exit89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i78) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i77) #8
  br label %error_out

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp20 = icmp slt i32 %add, 0
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %error_out

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = trunc i32 %add to i8
  %call26 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext %conv25)
  br label %error_out

error_out:                                        ; preds = %if.else24, %if.then22, %fc0013_writereg.exit89, %fc0013_writereg.exit76, %fc0013_readreg.exit, %fc0013_writereg.exit
  %ret.0 = phi i32 [ -121, %fc0013_writereg.exit ], [ -121, %fc0013_readreg.exit ], [ -121, %fc0013_writereg.exit76 ], [ %retval.0.i88, %fc0013_writereg.exit89 ], [ %call23, %if.then22 ], [ %call26, %if.else24 ]
  %61 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %62, null
  br i1 %tobool31.not, label %error_out.if.end36_crit_edge, label %if.then32

error_out.if.end36_crit_edge:                     ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 %62(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %error_out.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rc_cal) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0013_writereg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %addr1 = getelementptr inbounds %struct.fc0013_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr1, align 4
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
  store i16 2, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = zext i8 %reg to i32
  %conv5 = zext i8 %val to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv4, i32 noundef %conv5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0013_readreg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.fc0013_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr1, align 4
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %11 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %val, ptr %buf7, align 4
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg.addr, align 1
  %conv9 = zext i8 %16 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc0013_rc_cal_reset(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i25 = alloca [2 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 13, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %addr1.i = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then5, label %fc0013_writereg.exit

fc0013_writereg.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i25) #8
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i25, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %buf.i25, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #8
  %19 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr1.i, align 4
  %conv.i28 = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i28, ptr %msg.i26, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i29, align 2
  %buf2.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %25 = ptrtoint ptr %buf2.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i25, ptr %buf2.i31, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i26, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 1
  br i1 %cmp.not.i33, label %if.then5.fc0013_writereg.exit37_crit_edge, label %do.end.i35

if.then5.fc0013_writereg.exit37_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit37

do.end.i35:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 0) #11
  br label %fc0013_writereg.exit37

fc0013_writereg.exit37:                           ; preds = %do.end.i35, %if.then5.fc0013_writereg.exit37_crit_edge
  %retval.0.i36 = phi i32 [ -121, %do.end.i35 ], [ 0, %if.then5.fc0013_writereg.exit37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #8
  br label %if.end7

if.end7:                                          ; preds = %fc0013_writereg.exit37, %fc0013_writereg.exit
  %ret.0 = phi i32 [ -121, %fc0013_writereg.exit ], [ %retval.0.i36, %fc0013_writereg.exit37 ]
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool10.not = icmp eq ptr %29, null
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %if.then11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 %29(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc0013_attach(ptr noundef writeonly %fe, ptr noundef %i2c, i8 noundef zeroext %i2c_address, i32 noundef %dual_master, i32 noundef %xtal_freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %call7.i.i, align 8
  %conv = trunc i32 %dual_master to i8
  %dual_master2 = getelementptr inbounds %struct.fc0013_priv, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dual_master2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %dual_master2, align 1
  %addr = getelementptr inbounds %struct.fc0013_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %i2c_address, ptr %addr, align 4
  %conv3 = trunc i32 %xtal_freq to i8
  %xtal_freq4 = getelementptr inbounds %struct.fc0013_priv, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %xtal_freq4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %xtal_freq4, align 2
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %6 = call ptr @memcpy(ptr %tuner_ops, ptr @fc0013_tuner_ops, i32 220)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc0013_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0013_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %reg = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %reg) #8
  %2 = call ptr @memcpy(ptr %reg, ptr @__const.fc0013_init.reg, i32 22)
  %xtal_freq = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %xtal_freq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp ult i8 %4, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = or i8 %6, 32
  store i8 %7, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dual_master = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dual_master to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dual_master, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 12
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %12 = or i8 %11, 2
  store i8 %12, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %addr1.i = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayidx1563 = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx1563 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1563, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %buf.i, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %16, align 4
  %22 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr1.i, align 4
  %conv.i64 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i64, ptr %msg.i, align 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %26 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf2.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i65 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65)
  %cmp.not.i66 = icmp eq i32 %call.i65, 1
  br i1 %cmp.not.i66, label %if.end12.for.inc_crit_edge, label %if.end12.fc0013_writereg.exit_crit_edge

if.end12.fc0013_writereg.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  br label %for.inc

for.body:                                         ; preds = %for.inc
  %conv14 = trunc i32 %inc to i8
  %arrayidx15 = getelementptr [22 x i8], ptr %reg, i32 0, i32 %inc
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx15, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv14, ptr %buf.i, align 1
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %16, align 4
  %34 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %msg.i, align 4
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i, align 2
  %38 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i, ptr %buf2.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.for.inc_crit_edge, label %for.body.fc0013_writereg.exit_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.fc0013_writereg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %i.05267)
  %cmp.le = icmp ult i32 %i.05267, 21
  %phi.bo = and i32 %inc, 255
  br label %fc0013_writereg.exit

fc0013_writereg.exit:                             ; preds = %for.body.fc0013_writereg.exit_crit_edge, %if.end12.fc0013_writereg.exit_crit_edge
  %cmp53.lcssa = phi i1 [ %cmp.le, %for.body.fc0013_writereg.exit_crit_edge ], [ true, %if.end12.fc0013_writereg.exit_crit_edge ]
  %i.052.lcssa = phi i32 [ %phi.bo, %for.body.fc0013_writereg.exit_crit_edge ], [ 1, %if.end12.fc0013_writereg.exit_crit_edge ]
  %.lcssa = phi i8 [ %30, %for.body.fc0013_writereg.exit_crit_edge ], [ %18, %if.end12.fc0013_writereg.exit_crit_edge ]
  %conv5.i = zext i8 %.lcssa to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.052.lcssa, i32 noundef %conv5.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %if.end12.for.inc_crit_edge
  %i.05267 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 1, %if.end12.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %inc = add nuw nsw i32 %i.05267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %i.05267)
  %cmp.le76 = icmp ult i32 %i.05267, 21
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %fc0013_writereg.exit
  %cmp50 = phi i1 [ %cmp53.lcssa, %fc0013_writereg.exit ], [ %cmp.le76, %for.end.loopexit ]
  %ret.1 = phi i32 [ -121, %fc0013_writereg.exit ], [ 0, %for.end.loopexit ]
  %41 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool22.not = icmp eq ptr %42, null
  br i1 %tobool22.not, label %for.end.if.end27_crit_edge, label %if.then23

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 %42(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end.if.end27_crit_edge
  br i1 %cmp50, label %do.end, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %ret.1) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.end27.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %reg) #8
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_sleep(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0013_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i586 = alloca [2 x i8], align 1
  %msg.i587 = alloca %struct.i2c_msg, align 4
  %buf.i572 = alloca [2 x i8], align 1
  %msg.i573 = alloca %struct.i2c_msg, align 4
  %reg.addr.i554 = alloca i8, align 1
  %msg.i555 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i540 = alloca [2 x i8], align 1
  %msg.i541 = alloca %struct.i2c_msg, align 4
  %reg.addr.i522 = alloca i8, align 1
  %msg.i523 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i512 = alloca [2 x i8], align 1
  %msg.i513 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i119.i = alloca [2 x i8], align 1
  %msg.i120.i = alloca %struct.i2c_msg, align 4
  %buf.i105.i = alloca [2 x i8], align 1
  %msg.i106.i = alloca %struct.i2c_msg, align 4
  %buf.i91.i = alloca [2 x i8], align 1
  %msg.i92.i = alloca %struct.i2c_msg, align 4
  %buf.i81.i = alloca [2 x i8], align 1
  %msg.i82.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp.i = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %3, 1000
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %tmp, align 1, !annotation !66
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %7 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300001000, i32 %3)
  %cmp = icmp ult i32 %3, 300001000
  %cond = zext i1 %cmp to i32
  %call = tail call i32 %8(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.exit_crit_edge

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %xtal_freq = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xtal_freq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch.selectcmp = icmp eq i8 %12, 2
  %switch.select = select i1 %switch.selectcmp, i32 18000, i32 14400
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.selectcmp509 = icmp eq i8 %12, 0
  %switch.select510 = select i1 %switch.selectcmp509, i32 13500, i32 %switch.select
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end4.if.end12_crit_edge, label %if.then8

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end4.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %tmp.i, align 1, !annotation !66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %16 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 29, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr1.i.i, align 4
  %conv.i.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %17, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %26 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %27 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %28 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tmp.i, ptr %buf7.i.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i, label %fc0013_set_vhf_track.exit.thread

fc0013_set_vhf_track.exit.thread:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg.addr.i.i, align 1
  %conv9.i.i = zext i8 %32 to i32
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %exit

if.end.i:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %33 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tmp.i, align 1
  %35 = and i8 %34, -29
  store i8 %35, ptr %tmp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 177501000, i32 %3)
  %cmp.i = icmp ult i32 %3, 177501000
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %36 = or i8 %34, 28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i81.i) #8
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i81.i, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i81.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 29, ptr %buf.i81.i, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82.i) #8
  %40 = getelementptr inbounds i8, ptr %msg.i82.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr1.i.i, align 4
  %conv.i84.i = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i82.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i84.i, ptr %msg.i82.i, align 4
  %flags.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i85.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i85.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i, i32 0, i32 3
  %46 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i81.i, ptr %buf2.i.i, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i87.i = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i82.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i87.i)
  %cmp.not.i88.i = icmp eq i32 %call.i87.i, 1
  br i1 %cmp.not.i88.i, label %if.then3.i.fc0013_writereg.exit.i_crit_edge, label %do.end.i89.i

if.then3.i.fc0013_writereg.exit.i_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit.i

do.end.i89.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i = zext i8 %36 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 29, i32 noundef %conv5.i.i) #11
  br label %fc0013_writereg.exit.i

fc0013_writereg.exit.i:                           ; preds = %do.end.i89.i, %if.then3.i.fc0013_writereg.exit.i_crit_edge
  %retval.0.i90.i = phi i32 [ -121, %do.end.i89.i ], [ 0, %if.then3.i.fc0013_writereg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i81.i) #8
  br label %fc0013_set_vhf_track.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 184501000, i32 %3)
  %cmp7.i = icmp ult i32 %3, 184501000
  br i1 %cmp7.i, label %if.then9.i, label %if.else14.i

if.then9.i:                                       ; preds = %if.else.i
  %49 = or i8 %35, 24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i91.i) #8
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i91.i, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 29, ptr %buf.i91.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i92.i) #8
  %53 = getelementptr inbounds i8, ptr %msg.i92.i, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %55 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %addr1.i.i, align 4
  %conv.i94.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i92.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i94.i, ptr %msg.i92.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i95.i, align 2
  %buf2.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf2.i97.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i91.i, ptr %buf2.i97.i, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i98.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i92.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i98.i)
  %cmp.not.i99.i = icmp eq i32 %call.i98.i, 1
  br i1 %cmp.not.i99.i, label %if.then9.i.fc0013_writereg.exit104.i_crit_edge, label %do.end.i102.i

if.then9.i.fc0013_writereg.exit104.i_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit104.i

do.end.i102.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i100.i = zext i8 %49 to i32
  %call6.i101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 29, i32 noundef %conv5.i100.i) #11
  br label %fc0013_writereg.exit104.i

fc0013_writereg.exit104.i:                        ; preds = %do.end.i102.i, %if.then9.i.fc0013_writereg.exit104.i_crit_edge
  %retval.0.i103.i = phi i32 [ -121, %do.end.i102.i ], [ 0, %if.then9.i.fc0013_writereg.exit104.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91.i) #8
  br label %fc0013_set_vhf_track.exit

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 191501000, i32 %3)
  %cmp15.i = icmp ult i32 %3, 191501000
  br i1 %cmp15.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.else14.i
  %62 = or i8 %35, 20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i105.i) #8
  %63 = getelementptr inbounds [2 x i8], ptr %buf.i105.i, i32 0, i32 1
  %64 = ptrtoint ptr %buf.i105.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 29, ptr %buf.i105.i, align 1
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %62, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i106.i) #8
  %66 = getelementptr inbounds i8, ptr %msg.i106.i, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %66, align 4
  %68 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %addr1.i.i, align 4
  %conv.i108.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i106.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i108.i, ptr %msg.i106.i, align 4
  %flags.i109.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i109.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i109.i, align 2
  %buf2.i111.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf2.i111.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i105.i, ptr %buf2.i111.i, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i112.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i106.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112.i)
  %cmp.not.i113.i = icmp eq i32 %call.i112.i, 1
  br i1 %cmp.not.i113.i, label %if.then17.i.fc0013_writereg.exit118.i_crit_edge, label %do.end.i116.i

if.then17.i.fc0013_writereg.exit118.i_crit_edge:  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit118.i

do.end.i116.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i114.i = zext i8 %62 to i32
  %call6.i115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 29, i32 noundef %conv5.i114.i) #11
  br label %fc0013_writereg.exit118.i

fc0013_writereg.exit118.i:                        ; preds = %do.end.i116.i, %if.then17.i.fc0013_writereg.exit118.i_crit_edge
  %retval.0.i117.i = phi i32 [ -121, %do.end.i116.i ], [ 0, %if.then17.i.fc0013_writereg.exit118.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i106.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i105.i) #8
  br label %fc0013_set_vhf_track.exit

if.else22.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 198501000, i32 %3)
  %cmp23.i = icmp ult i32 %3, 198501000
  br i1 %cmp23.i, label %if.then25.i, label %if.else30.i

if.then25.i:                                      ; preds = %if.else22.i
  %75 = or i8 %35, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i119.i) #8
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i119.i, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i119.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 29, ptr %buf.i119.i, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %75, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i120.i) #8
  %79 = getelementptr inbounds i8, ptr %msg.i120.i, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr1.i.i, align 4
  %conv.i122.i = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i120.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i122.i, ptr %msg.i120.i, align 4
  %flags.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i123.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i123.i, align 2
  %buf2.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120.i, i32 0, i32 3
  %85 = ptrtoint ptr %buf2.i125.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i119.i, ptr %buf2.i125.i, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i126.i = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i120.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i126.i)
  %cmp.not.i127.i = icmp eq i32 %call.i126.i, 1
  br i1 %cmp.not.i127.i, label %if.then25.i.fc0013_writereg.exit132.i_crit_edge, label %do.end.i130.i

if.then25.i.fc0013_writereg.exit132.i_crit_edge:  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit132.i

do.end.i130.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i128.i = zext i8 %75 to i32
  %call6.i129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 29, i32 noundef %conv5.i128.i) #11
  br label %fc0013_writereg.exit132.i

fc0013_writereg.exit132.i:                        ; preds = %do.end.i130.i, %if.then25.i.fc0013_writereg.exit132.i_crit_edge
  %retval.0.i131.i = phi i32 [ -121, %do.end.i130.i ], [ 0, %if.then25.i.fc0013_writereg.exit132.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i120.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i119.i) #8
  br label %fc0013_set_vhf_track.exit

if.else30.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 205501000, i32 %3)
  %cmp31.i = icmp ult i32 %3, 205501000
  br i1 %cmp31.i, label %if.then33.i, label %if.else38.i

if.then33.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = or i8 %35, 12
  %call37.i = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 29, i8 noundef zeroext %88) #8
  br label %fc0013_set_vhf_track.exit

if.else38.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 219501000, i32 %3)
  %cmp39.i = icmp ult i32 %3, 219501000
  br i1 %cmp39.i, label %if.then41.i, label %if.else46.i

if.then41.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = or i8 %35, 8
  %call45.i = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 29, i8 noundef zeroext %89) #8
  br label %fc0013_set_vhf_track.exit

if.else46.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %3)
  %cmp47.i = icmp ult i32 %3, 300000000
  br i1 %cmp47.i, label %if.then49.i, label %if.else54.i

if.then49.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = or i8 %35, 4
  %call53.i = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 29, i8 noundef zeroext %90) #8
  br label %fc0013_set_vhf_track.exit

if.else54.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = or i8 %34, 28
  %call58.i = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 29, i8 noundef zeroext %91) #8
  br label %fc0013_set_vhf_track.exit

fc0013_set_vhf_track.exit:                        ; preds = %if.else54.i, %if.then49.i, %if.then41.i, %if.then33.i, %fc0013_writereg.exit132.i, %fc0013_writereg.exit118.i, %fc0013_writereg.exit104.i, %fc0013_writereg.exit.i
  %ret.0.i = phi i32 [ %retval.0.i90.i, %fc0013_writereg.exit.i ], [ %retval.0.i103.i, %fc0013_writereg.exit104.i ], [ %retval.0.i117.i, %fc0013_writereg.exit118.i ], [ %retval.0.i131.i, %fc0013_writereg.exit132.i ], [ %call37.i, %if.then33.i ], [ %call45.i, %if.then41.i ], [ %call53.i, %if.then49.i ], [ %call58.i, %if.else54.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool14.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %fc0013_set_vhf_track.exit.exit_crit_edge

fc0013_set_vhf_track.exit.exit_crit_edge:         ; preds = %fc0013_set_vhf_track.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end16:                                         ; preds = %fc0013_set_vhf_track.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %3)
  %cmp17 = icmp ult i32 %3, 300000000
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %92 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 7, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %93 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %94 = call ptr @memset(ptr %93, i32 255, i32 16)
  %95 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr1.i.i, align 4
  %conv.i = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i, align 2
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %93, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %100 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %101 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %102 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %103 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %104 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %tmp, ptr %buf7.i, align 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end23, label %fc0013_readreg.exit

fc0013_readreg.exit:                              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %108 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %exit

if.end23:                                         ; preds = %if.then19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %109 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tmp, align 1
  %111 = or i8 %110, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i512) #8
  %112 = getelementptr inbounds [2 x i8], ptr %buf.i512, i32 0, i32 1
  %113 = ptrtoint ptr %buf.i512 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 7, ptr %buf.i512, align 1
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %111, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i513) #8
  %115 = getelementptr inbounds i8, ptr %msg.i513, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 196607, ptr %115, align 4
  %117 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %addr1.i.i, align 4
  %conv.i515 = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i513 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i515, ptr %msg.i513, align 4
  %flags.i516 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i513, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i516 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i516, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i513, i32 0, i32 3
  %121 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf.i512, ptr %buf2.i, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %call.i518 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i513, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i518)
  %cmp.not.i519 = icmp eq i32 %call.i518, 1
  br i1 %cmp.not.i519, label %if.end29, label %fc0013_writereg.exit

fc0013_writereg.exit:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i8 %111 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 7, i32 noundef %conv5.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i513) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i512) #8
  br label %exit

if.end29:                                         ; preds = %if.end23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i513) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i512) #8
  %call30 = call fastcc i32 @fc0013_readreg(ptr noundef %1, i8 noundef zeroext 20, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.exit_crit_edge

if.end29.exit_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end33:                                         ; preds = %if.end29
  %124 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tmp, align 1
  %126 = and i8 %125, 31
  %call36 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end91, label %if.end33.exit_crit_edge

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 862001000, i32 %3)
  %cmp40 = icmp ult i32 %3, 862001000
  br i1 %cmp40, label %if.then42, label %if.else66

if.then42:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i522)
  %127 = ptrtoint ptr %reg.addr.i522 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 7, ptr %reg.addr.i522, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i523) #8
  %128 = getelementptr inbounds i8, ptr %msg.i523, i32 4
  %129 = call ptr @memset(ptr %128, i32 255, i32 16)
  %130 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %addr1.i.i, align 4
  %conv.i525 = zext i8 %131 to i16
  %132 = ptrtoint ptr %msg.i523 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i525, ptr %msg.i523, align 4
  %flags.i526 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i526 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i526, align 2
  %134 = ptrtoint ptr %128 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %128, align 4
  %buf.i528 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 0, i32 3
  %135 = ptrtoint ptr %buf.i528 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %reg.addr.i522, ptr %buf.i528, align 4
  %arrayinit.element.i529 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 1
  %136 = ptrtoint ptr %arrayinit.element.i529 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i525, ptr %arrayinit.element.i529, align 4
  %flags5.i530 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 1, i32 1
  %137 = ptrtoint ptr %flags5.i530 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %flags5.i530, align 2
  %len6.i531 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 1, i32 2
  %138 = ptrtoint ptr %len6.i531 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %len6.i531, align 4
  %buf7.i532 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i523, i32 1, i32 3
  %139 = ptrtoint ptr %buf7.i532 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %tmp, ptr %buf7.i532, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %call.i533 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i523, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i533)
  %cmp.not.i534 = icmp eq i32 %call.i533, 2
  br i1 %cmp.not.i534, label %if.end46, label %fc0013_readreg.exit539

fc0013_readreg.exit539:                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %reg.addr.i522 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %reg.addr.i522, align 1
  %conv9.i535 = zext i8 %143 to i32
  %call10.i536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i535) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i523) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i522)
  br label %exit

if.end46:                                         ; preds = %if.then42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i523) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i522)
  %144 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %tmp, align 1
  %146 = and i8 %145, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i540) #8
  %147 = getelementptr inbounds [2 x i8], ptr %buf.i540, i32 0, i32 1
  %148 = ptrtoint ptr %buf.i540 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 7, ptr %buf.i540, align 1
  %149 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %146, ptr %147, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i541) #8
  %150 = getelementptr inbounds i8, ptr %msg.i541, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 196607, ptr %150, align 4
  %152 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %addr1.i.i, align 4
  %conv.i543 = zext i8 %153 to i16
  %154 = ptrtoint ptr %msg.i541 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i543, ptr %msg.i541, align 4
  %flags.i544 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i541, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i544 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i544, align 2
  %buf2.i546 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i541, i32 0, i32 3
  %156 = ptrtoint ptr %buf2.i546 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %buf.i540, ptr %buf2.i546, align 4
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call.i547 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i541, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i547)
  %cmp.not.i548 = icmp eq i32 %call.i547, 1
  br i1 %cmp.not.i548, label %if.end53, label %fc0013_writereg.exit553

fc0013_writereg.exit553:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i549 = zext i8 %146 to i32
  %call6.i550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 7, i32 noundef %conv5.i549) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i541) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i540) #8
  br label %exit

if.end53:                                         ; preds = %if.end46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i541) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i540) #8
  %call54 = call fastcc i32 @fc0013_readreg(ptr noundef %1, i8 noundef zeroext 20, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.exit_crit_edge

if.end53.exit_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end57:                                         ; preds = %if.end53
  %159 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %tmp, align 1
  %161 = and i8 %160, 31
  %162 = or i8 %161, 64
  %call62 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else132, label %if.end57.exit_crit_edge

if.end57.exit_crit_edge:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else66:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i554)
  %163 = ptrtoint ptr %reg.addr.i554 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 7, ptr %reg.addr.i554, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i555) #8
  %164 = getelementptr inbounds i8, ptr %msg.i555, i32 4
  %165 = call ptr @memset(ptr %164, i32 255, i32 16)
  %166 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %addr1.i.i, align 4
  %conv.i557 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i555 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i557, ptr %msg.i555, align 4
  %flags.i558 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i558 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i558, align 2
  %170 = ptrtoint ptr %164 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 1, ptr %164, align 4
  %buf.i560 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 0, i32 3
  %171 = ptrtoint ptr %buf.i560 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %reg.addr.i554, ptr %buf.i560, align 4
  %arrayinit.element.i561 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 1
  %172 = ptrtoint ptr %arrayinit.element.i561 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i557, ptr %arrayinit.element.i561, align 4
  %flags5.i562 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 1, i32 1
  %173 = ptrtoint ptr %flags5.i562 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %flags5.i562, align 2
  %len6.i563 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 1, i32 2
  %174 = ptrtoint ptr %len6.i563 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %len6.i563, align 4
  %buf7.i564 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555, i32 1, i32 3
  %175 = ptrtoint ptr %buf7.i564 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %tmp, ptr %buf7.i564, align 4
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %call.i565 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i555, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i565)
  %cmp.not.i566 = icmp eq i32 %call.i565, 2
  br i1 %cmp.not.i566, label %if.end70, label %fc0013_readreg.exit571

fc0013_readreg.exit571:                           ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %reg.addr.i554 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %reg.addr.i554, align 1
  %conv9.i567 = zext i8 %179 to i32
  %call10.i568 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i567) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i555) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i554)
  br label %exit

if.end70:                                         ; preds = %if.else66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i555) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i554)
  %180 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %tmp, align 1
  %182 = and i8 %181, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i572) #8
  %183 = getelementptr inbounds [2 x i8], ptr %buf.i572, i32 0, i32 1
  %184 = ptrtoint ptr %buf.i572 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 7, ptr %buf.i572, align 1
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %182, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i573) #8
  %186 = getelementptr inbounds i8, ptr %msg.i573, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 196607, ptr %186, align 4
  %188 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %addr1.i.i, align 4
  %conv.i575 = zext i8 %189 to i16
  %190 = ptrtoint ptr %msg.i573 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv.i575, ptr %msg.i573, align 4
  %flags.i576 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i573, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i576 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i576, align 2
  %buf2.i578 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i573, i32 0, i32 3
  %192 = ptrtoint ptr %buf2.i578 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %buf.i572, ptr %buf2.i578, align 4
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %call.i579 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i573, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i579)
  %cmp.not.i580 = icmp eq i32 %call.i579, 1
  br i1 %cmp.not.i580, label %if.end77, label %fc0013_writereg.exit585

fc0013_writereg.exit585:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i581 = zext i8 %182 to i32
  %call6.i582 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 7, i32 noundef %conv5.i581) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i573) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i572) #8
  br label %exit

if.end77:                                         ; preds = %if.end70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i573) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i572) #8
  %call78 = call fastcc i32 @fc0013_readreg(ptr noundef %1, i8 noundef zeroext 20, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.exit_crit_edge

if.end77.exit_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end81:                                         ; preds = %if.end77
  %195 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %tmp, align 1
  %197 = and i8 %196, 31
  %198 = or i8 %197, 32
  %call86 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %198)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.else144, label %if.end81.exit_crit_edge

if.end81.exit_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end91:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 37084000, i32 %3)
  %cmp92 = icmp ult i32 %3, 37084000
  br i1 %cmp92, label %if.end91.if.end162_crit_edge, label %if.else96

if.end91.if.end162_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 55625000, i32 %3)
  %cmp97 = icmp ult i32 %3, 55625000
  br i1 %cmp97, label %if.else96.if.end162_crit_edge, label %if.else102

if.else96.if.end162_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else102:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_const_cmp4(i32 74167000, i32 %3)
  %cmp103 = icmp ult i32 %3, 74167000
  br i1 %cmp103, label %if.else102.if.end162_crit_edge, label %if.else108

if.else102.if.end162_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else108:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_const_cmp4(i32 111250000, i32 %3)
  %cmp109 = icmp ult i32 %3, 111250000
  br i1 %cmp109, label %if.else108.if.end162_crit_edge, label %if.else114

if.else108.if.end162_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else114:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_const_cmp4(i32 148334000, i32 %3)
  %cmp115 = icmp ult i32 %3, 148334000
  br i1 %cmp115, label %if.else114.if.end162_crit_edge, label %if.else120

if.else114.if.end162_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else120:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_const_cmp4(i32 222500000, i32 %3)
  %cmp121 = icmp ult i32 %3, 222500000
  br i1 %cmp121, label %if.else120.if.end162_crit_edge, label %if.else126

if.else120.if.end162_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else126:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_const_cmp4(i32 296667000, i32 %3)
  %cmp127 = icmp ult i32 %3, 296667000
  br i1 %cmp127, label %if.else126.if.end162_crit_edge, label %if.else126.if.then135_crit_edge

if.else126.if.then135_crit_edge:                  ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then135

if.else126.if.end162_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else132:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 445000000, i32 %3)
  %cmp133 = icmp ult i32 %3, 445000000
  br i1 %cmp133, label %if.else132.if.then135_crit_edge, label %if.else138

if.else132.if.then135_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then135

if.then135:                                       ; preds = %if.else132.if.then135_crit_edge, %if.else126.if.then135_crit_edge
  br label %if.end162

if.else138:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_const_cmp4(i32 593334000, i32 %3)
  %cmp139 = icmp ult i32 %3, 593334000
  br i1 %cmp139, label %if.else138.if.end162_crit_edge, label %if.else138.if.then147_crit_edge

if.else138.if.then147_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then147

if.else138.if.end162_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else144:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000000, i32 %3)
  %cmp145 = icmp ult i32 %3, 950000000
  br i1 %cmp145, label %if.else144.if.then147_crit_edge, label %if.else144.if.end162_crit_edge

if.else144.if.end162_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.else144.if.then147_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then147

if.then147:                                       ; preds = %if.else144.if.then147_crit_edge, %if.else138.if.then147_crit_edge
  br label %if.end162

if.end162:                                        ; preds = %if.then147, %if.else144.if.end162_crit_edge, %if.else138.if.end162_crit_edge, %if.then135, %if.else126.if.end162_crit_edge, %if.else120.if.end162_crit_edge, %if.else114.if.end162_crit_edge, %if.else108.if.end162_crit_edge, %if.else102.if.end162_crit_edge, %if.else96.if.end162_crit_edge, %if.end91.if.end162_crit_edge
  %reg.sroa.19.0 = phi i8 [ 39, %if.then135 ], [ 23, %if.then147 ], [ -121, %if.end91.if.end162_crit_edge ], [ 7, %if.else96.if.end162_crit_edge ], [ 71, %if.else102.if.end162_crit_edge ], [ -121, %if.else108.if.end162_crit_edge ], [ 39, %if.else114.if.end162_crit_edge ], [ 71, %if.else120.if.end162_crit_edge ], [ 23, %if.else126.if.end162_crit_edge ], [ 15, %if.else138.if.end162_crit_edge ], [ 15, %if.else144.if.end162_crit_edge ]
  %reg.sroa.34.0 = phi i8 [ 2, %if.then135 ], [ 2, %if.then147 ], [ 0, %if.end91.if.end162_crit_edge ], [ 2, %if.else96.if.end162_crit_edge ], [ 0, %if.else102.if.end162_crit_edge ], [ 2, %if.else108.if.end162_crit_edge ], [ 0, %if.else114.if.end162_crit_edge ], [ 2, %if.else120.if.end162_crit_edge ], [ 0, %if.else126.if.end162_crit_edge ], [ 0, %if.else138.if.end162_crit_edge ], [ 2, %if.else144.if.end162_crit_edge ]
  %cmp285 = phi i8 [ 0, %if.then135 ], [ 0, %if.then147 ], [ 0, %if.end91.if.end162_crit_edge ], [ 4, %if.else96.if.end162_crit_edge ], [ 0, %if.else102.if.end162_crit_edge ], [ 0, %if.else108.if.end162_crit_edge ], [ 0, %if.else114.if.end162_crit_edge ], [ 0, %if.else120.if.end162_crit_edge ], [ 0, %if.else126.if.end162_crit_edge ], [ 0, %if.else138.if.end162_crit_edge ], [ 0, %if.else144.if.end162_crit_edge ]
  %multi.0 = phi i32 [ 8, %if.then135 ], [ 4, %if.then147 ], [ 96, %if.end91.if.end162_crit_edge ], [ 64, %if.else96.if.end162_crit_edge ], [ 48, %if.else102.if.end162_crit_edge ], [ 32, %if.else108.if.end162_crit_edge ], [ 24, %if.else114.if.end162_crit_edge ], [ 16, %if.else120.if.end162_crit_edge ], [ 12, %if.else126.if.end162_crit_edge ], [ 6, %if.else138.if.end162_crit_edge ], [ 2, %if.else144.if.end162_crit_edge ]
  %mul = mul nuw nsw i32 %multi.0, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 3059999, i32 %mul)
  %cmp164 = icmp ugt i32 %mul, 3059999
  %199 = or i8 %reg.sroa.34.0, 8
  %spec.select647 = select i1 %cmp164, i8 %199, i8 %reg.sroa.34.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44999999, i32 %3)
  %cmp172 = icmp ugt i32 %3, 44999999
  br i1 %cmp172, label %if.then174, label %if.end162.if.end213_crit_edge

if.end162.if.end213_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then174:                                       ; preds = %if.end162
  %div176 = udiv i32 %mul, %switch.select510
  %mul180 = mul nuw nsw i32 %div176, %switch.select510
  %sub = sub nsw i32 %mul, %mul180
  %div182507 = lshr exact i32 %switch.select510, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div182507)
  %cmp183.not = icmp uge i32 %sub, %div182507
  %inc = zext i1 %cmp183.not to i32
  %spec.select = add nuw nsw i32 %div176, %inc
  %div188508 = lshr i32 %spec.select, 3
  %mul192.neg = mul nuw nsw i32 %div188508, 248
  %sub193 = add nuw nsw i32 %mul192.neg, %spec.select
  %conv195 = and i32 %sub193, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv195)
  %cmp196 = icmp eq i32 %conv195, 0
  %200 = trunc i32 %sub193 to i8
  br i1 %cmp196, label %if.then198, label %if.else206

if.then198:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %conv200 = add i8 %200, 8
  %201 = trunc i32 %div188508 to i8
  %conv204 = add i8 %201, -1
  br label %if.end213

if.else206:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %conv189 = trunc i32 %div188508 to i8
  br label %if.end213

if.end213:                                        ; preds = %if.else206, %if.then198, %if.end162.if.end213_crit_edge
  %reg.sroa.8.0 = phi i8 [ %conv204, %if.then198 ], [ %conv189, %if.else206 ], [ 17, %if.end162.if.end213_crit_edge ]
  %reg.sroa.3.0 = phi i8 [ %conv200, %if.then198 ], [ %200, %if.else206 ], [ 6, %if.end162.if.end213_crit_edge ]
  %202 = urem i32 %mul, %switch.select510
  %shl = shl nuw nsw i32 %202, 15
  %div226 = udiv i32 %shl, %switch.select510
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %div226)
  %cmp229 = icmp ugt i32 %div226, 16383
  %add233 = add nuw nsw i32 %div226, 32768
  %spec.select511 = select i1 %cmp229, i32 %add233, i32 %div226
  %203 = lshr i32 %spec.select511, 8
  %conv237 = trunc i32 %203 to i8
  %conv241 = trunc i32 %spec.select511 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp243 = icmp eq i32 %5, 3
  br i1 %cmp243, label %if.then245, label %do.end

if.then245:                                       ; preds = %if.end213
  %204 = or i8 %spec.select647, 32
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %205 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %bandwidth_hz, align 4
  %207 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values)
  switch i32 %206, label %if.then245.if.end266_crit_edge [
    i32 6000000, label %sw.bb250
    i32 7000000, label %sw.bb255
  ]

if.then245.if.end266_crit_edge:                   ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

sw.bb250:                                         ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  %208 = or i8 %spec.select647, -96
  br label %if.end266

sw.bb255:                                         ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  %209 = or i8 %spec.select647, 96
  br label %if.end266

do.end:                                           ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end266:                                        ; preds = %sw.bb255, %sw.bb250, %if.then245.if.end266_crit_edge
  %reg.sroa.34.2 = phi i8 [ %204, %if.then245.if.end266_crit_edge ], [ %209, %sw.bb255 ], [ %208, %sw.bb250 ]
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i586, i32 0, i32 1
  %211 = getelementptr inbounds i8, ptr %msg.i587, i32 4
  %flags.i590 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587, i32 0, i32 1
  %buf2.i592 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %212 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %buf.i586, align 1
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %reg.sroa.3.0, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %211, align 4
  %215 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %addr1.i.i, align 4
  %conv.i589 = zext i8 %216 to i16
  %217 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv.i589, ptr %msg.i587, align 4
  %218 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %219 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %call.i593 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593)
  %cmp.not.i594 = icmp eq i32 %call.i593, 1
  br i1 %cmp.not.i594, label %for.inc, label %if.end266.fc0013_writereg.exit599_crit_edge

if.end266.fc0013_writereg.exit599_crit_edge:      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

fc0013_writereg.exit599:                          ; preds = %for.inc.4.fc0013_writereg.exit599_crit_edge, %for.inc.3.fc0013_writereg.exit599_crit_edge, %for.inc.2.fc0013_writereg.exit599_crit_edge, %for.inc.1.fc0013_writereg.exit599_crit_edge, %for.inc.fc0013_writereg.exit599_crit_edge, %if.end266.fc0013_writereg.exit599_crit_edge
  %i.0639.lcssa = phi i32 [ 1, %if.end266.fc0013_writereg.exit599_crit_edge ], [ 2, %for.inc.fc0013_writereg.exit599_crit_edge ], [ 3, %for.inc.1.fc0013_writereg.exit599_crit_edge ], [ 4, %for.inc.2.fc0013_writereg.exit599_crit_edge ], [ 5, %for.inc.3.fc0013_writereg.exit599_crit_edge ], [ 6, %for.inc.4.fc0013_writereg.exit599_crit_edge ]
  %.lcssa = phi i8 [ %reg.sroa.3.0, %if.end266.fc0013_writereg.exit599_crit_edge ], [ %reg.sroa.8.0, %for.inc.fc0013_writereg.exit599_crit_edge ], [ %conv237, %for.inc.1.fc0013_writereg.exit599_crit_edge ], [ %conv241, %for.inc.2.fc0013_writereg.exit599_crit_edge ], [ %reg.sroa.19.0, %for.inc.3.fc0013_writereg.exit599_crit_edge ], [ %reg.sroa.34.2, %for.inc.4.fc0013_writereg.exit599_crit_edge ]
  %conv5.i595 = zext i8 %.lcssa to i32
  %call6.i596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.0639.lcssa, i32 noundef %conv5.i595) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  br label %exit

for.inc:                                          ; preds = %if.end266
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %222 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 2, ptr %buf.i586, align 1
  %223 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %reg.sroa.8.0, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %224 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %211, align 4
  %225 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %addr1.i.i, align 4
  %conv.i589.1 = zext i8 %226 to i16
  %227 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv.i589.1, ptr %msg.i587, align 4
  %228 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %229 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 4
  %call.i593.1 = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593.1)
  %cmp.not.i594.1 = icmp eq i32 %call.i593.1, 1
  br i1 %cmp.not.i594.1, label %for.inc.1, label %for.inc.fc0013_writereg.exit599_crit_edge

for.inc.fc0013_writereg.exit599_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %232 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 3, ptr %buf.i586, align 1
  %233 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv237, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %234 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 -1, ptr %211, align 4
  %235 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %addr1.i.i, align 4
  %conv.i589.2 = zext i8 %236 to i16
  %237 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv.i589.2, ptr %msg.i587, align 4
  %238 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %239 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %call.i593.2 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593.2)
  %cmp.not.i594.2 = icmp eq i32 %call.i593.2, 1
  br i1 %cmp.not.i594.2, label %for.inc.2, label %for.inc.1.fc0013_writereg.exit599_crit_edge

for.inc.1.fc0013_writereg.exit599_crit_edge:      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %242 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 4, ptr %buf.i586, align 1
  %243 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv241, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %244 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %211, align 4
  %245 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %addr1.i.i, align 4
  %conv.i589.3 = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i589.3, ptr %msg.i587, align 4
  %248 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %249 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %call.i593.3 = call i32 @i2c_transfer(ptr noundef %251, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593.3)
  %cmp.not.i594.3 = icmp eq i32 %call.i593.3, 1
  br i1 %cmp.not.i594.3, label %for.inc.3, label %for.inc.2.fc0013_writereg.exit599_crit_edge

for.inc.2.fc0013_writereg.exit599_crit_edge:      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %252 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 5, ptr %buf.i586, align 1
  %253 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %reg.sroa.19.0, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %254 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 -1, ptr %211, align 4
  %255 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %addr1.i.i, align 4
  %conv.i589.4 = zext i8 %256 to i16
  %257 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.i589.4, ptr %msg.i587, align 4
  %258 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %259 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 4
  %call.i593.4 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593.4)
  %cmp.not.i594.4 = icmp eq i32 %call.i593.4, 1
  br i1 %cmp.not.i594.4, label %for.inc.4, label %for.inc.3.fc0013_writereg.exit599_crit_edge

for.inc.3.fc0013_writereg.exit599_crit_edge:      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i586) #8
  %262 = ptrtoint ptr %buf.i586 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 6, ptr %buf.i586, align 1
  %263 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %reg.sroa.34.2, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i587) #8
  %264 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %211, align 4
  %265 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %addr1.i.i, align 4
  %conv.i589.5 = zext i8 %266 to i16
  %267 = ptrtoint ptr %msg.i587 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv.i589.5, ptr %msg.i587, align 4
  %268 = ptrtoint ptr %flags.i590 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %flags.i590, align 2
  store i16 2, ptr %211, align 4
  %269 = ptrtoint ptr %buf2.i592 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %buf.i586, ptr %buf2.i592, align 4
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %1, align 4
  %call.i593.5 = call i32 @i2c_transfer(ptr noundef %271, ptr noundef nonnull %msg.i587, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593.5)
  %cmp.not.i594.5 = icmp eq i32 %call.i593.5, 1
  br i1 %cmp.not.i594.5, label %for.inc.5, label %for.inc.4.fc0013_writereg.exit599_crit_edge

for.inc.4.fc0013_writereg.exit599_crit_edge:      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0013_writereg.exit599

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i587) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i586) #8
  %call280 = call fastcc i32 @fc0013_readreg(ptr noundef %1, i8 noundef zeroext 17, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %if.end283, label %for.inc.5.exit_crit_edge

for.inc.5.exit_crit_edge:                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end283:                                        ; preds = %for.inc.5
  %272 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %tmp, align 1
  %274 = and i8 %273, -5
  %.sink = or i8 %274, %cmp285
  %call296 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool298.not = icmp eq i32 %call296, 0
  br i1 %tobool298.not, label %if.end300, label %if.end283.exit_crit_edge

if.end283.exit_crit_edge:                         ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end300:                                        ; preds = %if.end283
  %call301 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end305, label %if.end300.exit_crit_edge

if.end300.exit_crit_edge:                         ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end305:                                        ; preds = %if.end300
  %call304 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool306.not = icmp eq i32 %call304, 0
  br i1 %tobool306.not, label %if.end309, label %if.end305.exit_crit_edge

if.end305.exit_crit_edge:                         ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end309:                                        ; preds = %if.end305
  %call308 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool310.not = icmp eq i32 %call308, 0
  br i1 %tobool310.not, label %if.end313, label %if.end309.exit_crit_edge

if.end309.exit_crit_edge:                         ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end313:                                        ; preds = %if.end309
  call void @msleep(i32 noundef 10) #8
  %call312 = call fastcc i32 @fc0013_readreg(ptr noundef %1, i8 noundef zeroext 14, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool314.not = icmp eq i32 %call312, 0
  br i1 %tobool314.not, label %if.end316, label %if.end313.exit_crit_edge

if.end313.exit_crit_edge:                         ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end316:                                        ; preds = %if.end313
  %275 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %tmp, align 1
  %277 = and i8 %276, 63
  store i8 %277, ptr %tmp, align 1
  br i1 %cmp164, label %if.then321, label %if.else341

if.then321:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %277)
  %cmp323 = icmp ugt i8 %277, 60
  br i1 %cmp323, label %if.then325, label %if.then321.if.end361_crit_edge

if.then321.if.end361_crit_edge:                   ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.then325:                                       ; preds = %if.then321
  %278 = and i8 %reg.sroa.34.2, -9
  %call331 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %278)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.end335, label %if.then325.if.end361_crit_edge

if.then325.if.end361_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.end335:                                        ; preds = %if.then325
  %call334 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool336.not = icmp eq i32 %call334, 0
  br i1 %tobool336.not, label %if.end335.if.end361.sink.split_crit_edge, label %if.end335.if.end361_crit_edge

if.end335.if.end361_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.end335.if.end361.sink.split_crit_edge:         ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361.sink.split

if.else341:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %277)
  %cmp343 = icmp ult i8 %277, 2
  br i1 %cmp343, label %if.then345, label %if.else341.if.end361_crit_edge

if.else341.if.end361_crit_edge:                   ; preds = %if.else341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.then345:                                       ; preds = %if.else341
  %279 = or i8 %reg.sroa.34.2, 8
  %call351 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %279)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %if.end355, label %if.then345.if.end361_crit_edge

if.then345.if.end361_crit_edge:                   ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.end355:                                        ; preds = %if.then345
  %call354 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool356.not = icmp eq i32 %call354, 0
  br i1 %tobool356.not, label %if.end355.if.end361.sink.split_crit_edge, label %if.end355.if.end361_crit_edge

if.end355.if.end361_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.end355.if.end361.sink.split_crit_edge:         ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361.sink.split

if.end361.sink.split:                             ; preds = %if.end355.if.end361.sink.split_crit_edge, %if.end335.if.end361.sink.split_crit_edge
  %call358 = call fastcc i32 @fc0013_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %if.end361

if.end361:                                        ; preds = %if.end361.sink.split, %if.end355.if.end361_crit_edge, %if.then345.if.end361_crit_edge, %if.else341.if.end361_crit_edge, %if.end335.if.end361_crit_edge, %if.then325.if.end361_crit_edge, %if.then321.if.end361_crit_edge
  %ret.6 = phi i32 [ %call334, %if.end335.if.end361_crit_edge ], [ 0, %if.then321.if.end361_crit_edge ], [ %call354, %if.end355.if.end361_crit_edge ], [ 0, %if.else341.if.end361_crit_edge ], [ %call331, %if.then325.if.end361_crit_edge ], [ %call351, %if.then345.if.end361_crit_edge ], [ %call358, %if.end361.sink.split ]
  %280 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %dtv_property_cache, align 4
  %frequency363 = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 4
  %282 = ptrtoint ptr %frequency363 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %frequency363, align 4
  %283 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 5
  %285 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %bandwidth, align 4
  br label %exit

exit:                                             ; preds = %if.end361, %if.end313.exit_crit_edge, %if.end309.exit_crit_edge, %if.end305.exit_crit_edge, %if.end300.exit_crit_edge, %if.end283.exit_crit_edge, %for.inc.5.exit_crit_edge, %fc0013_writereg.exit599, %if.end81.exit_crit_edge, %if.end77.exit_crit_edge, %fc0013_writereg.exit585, %fc0013_readreg.exit571, %if.end57.exit_crit_edge, %if.end53.exit_crit_edge, %fc0013_writereg.exit553, %fc0013_readreg.exit539, %if.end33.exit_crit_edge, %if.end29.exit_crit_edge, %fc0013_writereg.exit, %fc0013_readreg.exit, %fc0013_set_vhf_track.exit.exit_crit_edge, %fc0013_set_vhf_track.exit.thread, %if.then.exit_crit_edge
  %ret.7 = phi i32 [ %call, %if.then.exit_crit_edge ], [ %ret.0.i, %fc0013_set_vhf_track.exit.exit_crit_edge ], [ -121, %fc0013_readreg.exit ], [ -121, %fc0013_writereg.exit ], [ %call30, %if.end29.exit_crit_edge ], [ %call36, %if.end33.exit_crit_edge ], [ -121, %fc0013_writereg.exit599 ], [ %call280, %for.inc.5.exit_crit_edge ], [ %call296, %if.end283.exit_crit_edge ], [ %call312, %if.end313.exit_crit_edge ], [ %ret.6, %if.end361 ], [ -121, %fc0013_readreg.exit539 ], [ -121, %fc0013_writereg.exit553 ], [ %call54, %if.end53.exit_crit_edge ], [ %call62, %if.end57.exit_crit_edge ], [ -121, %fc0013_readreg.exit571 ], [ -121, %fc0013_writereg.exit585 ], [ %call78, %if.end77.exit_crit_edge ], [ %call86, %if.end81.exit_crit_edge ], [ -121, %fc0013_set_vhf_track.exit.thread ], [ %call308, %if.end309.exit_crit_edge ], [ %call304, %if.end305.exit_crit_edge ], [ %call301, %if.end300.exit_crit_edge ]
  %i2c_gate_ctrl366 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %286 = ptrtoint ptr %i2c_gate_ctrl366 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %i2c_gate_ctrl366, align 4
  %tobool367.not = icmp eq ptr %287, null
  br i1 %tobool367.not, label %exit.if.end372_crit_edge, label %if.then368

exit.if.end372_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

if.then368:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call371 = call i32 %287(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end372

if.end372:                                        ; preds = %if.then368, %exit.if.end372_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %tobool373.not = icmp eq i32 %ret.7, 0
  br i1 %tobool373.not, label %if.end372.cleanup_crit_edge, label %do.end377

if.end372.cleanup_crit_edge:                      ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end377:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %call379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %ret.7) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end377, %if.end372.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.7, %do.end377 ], [ 0, %if.end372.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0013_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0013_get_rf_strength(ptr noundef %fe, ptr nocapture noundef %strength) #0 align 64 {
entry:
  %reg.addr.i103 = alloca i8, align 1
  %msg.i104 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i93 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !66
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 19, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %addr1.i = getelementptr inbounds %struct.fc0013_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf2.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end6, label %fc0013_writereg.exit

fc0013_writereg.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 19, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %err

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %17 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 19, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i93) #8
  %18 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr1.i, align 4
  %conv.i95 = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i95, ptr %msg.i93, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i96, align 2
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %18, align 4
  %buf.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reg.addr.i, ptr %buf.i98, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1
  %26 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i95, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 1
  %27 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 2
  %28 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 1, i32 3
  %29 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tmp, ptr %buf7.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i99 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i93, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i99)
  %cmp.not.i100 = icmp eq i32 %call.i99, 2
  br i1 %cmp.not.i100, label %if.end10, label %fc0013_readreg.exit

fc0013_readreg.exit:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %33 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %err

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %34 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tmp, align 1
  %conv = zext i8 %35 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i103)
  %36 = ptrtoint ptr %reg.addr.i103 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 20, ptr %reg.addr.i103, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i104) #8
  %37 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %38 = call ptr @memset(ptr %37, i32 255, i32 16)
  %39 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %addr1.i, align 4
  %conv.i106 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i106, ptr %msg.i104, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i107, align 2
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %37, align 4
  %buf.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %reg.addr.i103, ptr %buf.i109, align 4
  %arrayinit.element.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1
  %45 = ptrtoint ptr %arrayinit.element.i110 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i106, ptr %arrayinit.element.i110, align 4
  %flags5.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 1
  %46 = ptrtoint ptr %flags5.i111 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %flags5.i111, align 2
  %len6.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 2
  %47 = ptrtoint ptr %len6.i112 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len6.i112, align 4
  %buf7.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 3
  %48 = ptrtoint ptr %buf7.i113 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tmp, ptr %buf7.i113, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i114 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i104, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i114)
  %cmp.not.i115 = icmp eq i32 %call.i114, 2
  br i1 %cmp.not.i115, label %if.end14, label %fc0013_readreg.exit120

fc0013_readreg.exit120:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %reg.addr.i103 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg.addr.i103, align 1
  %conv9.i116 = zext i8 %52 to i32
  %call10.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv9.i116) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i103)
  br label %err

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i103)
  %53 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tmp, align 1
  %55 = and i8 %54, 31
  %and = zext i8 %55 to i32
  %56 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool18.not = icmp eq ptr %57, null
  br i1 %tobool18.not, label %if.end14.if.end23_crit_edge, label %if.then19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 %57(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %55)
  %cmp = icmp ult i8 %55, 24
  br i1 %cmp, label %if.then25, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then25:                                        ; preds = %if.end23
  %arrayidx = getelementptr [24 x i32], ptr @fc0013_get_rf_strength.fc0013_lna_gain_table, i32 0, i32 %and
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = lshr i32 %conv, 5
  %phi.bo.neg = add nsw i32 %60, -5
  %and31 = and i32 %conv, 31
  %add.neg = sub nsw i32 %phi.bo.neg, %and31
  %mul.neg = shl nsw i32 %add.neg, 1
  %sub32 = add nsw i32 %mul.neg, -8
  %div.neg = sdiv i32 %59, -10
  %sub33 = add i32 %sub32, %div.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sub33)
  %cmp34 = icmp sgt i32 %sub33, 44
  br i1 %cmp34, label %if.then25.exit_crit_edge, label %if.else

if.then25.exit_crit_edge:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %sub33)
  %cmp37 = icmp slt i32 %sub33, -95
  br i1 %cmp37, label %if.else.exit_crit_edge, label %if.else40

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %61 = trunc i32 %sub33 to i16
  %62 = mul nsw i16 %61, 255
  %div43131.lhs.trunc = add i16 %62, 24225
  %div43131132 = udiv i16 %div43131.lhs.trunc, 140
  br label %exit

err:                                              ; preds = %fc0013_readreg.exit120, %fc0013_readreg.exit, %fc0013_writereg.exit
  %63 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool54.not = icmp eq ptr %64, null
  br i1 %tobool54.not, label %err.do.end_crit_edge, label %if.then55

err.do.end_crit_edge:                             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then55:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 %64(ptr noundef %fe, i32 noundef 0) #8
  br label %do.end

exit:                                             ; preds = %if.else40, %if.else.exit_crit_edge, %if.then25.exit_crit_edge
  %.sink = phi i16 [ %div43131132, %if.else40 ], [ 255, %if.then25.exit_crit_edge ], [ 0, %if.else.exit_crit_edge ]
  %shl = shl i16 %.sink, 8
  %or = or i16 %shl, %.sink
  %65 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %or, ptr %strength, align 2
  br label %if.end64

do.end:                                           ; preds = %if.then55, %err.do.end_crit_edge, %if.end23.do.end_crit_edge
  %ret.1.ph = phi i32 [ -1, %if.end23.do.end_crit_edge ], [ -121, %err.do.end_crit_edge ], [ -121, %if.then55 ]
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef %ret.1.ph) #11
  br label %if.end64

if.end64:                                         ; preds = %do.end, %exit
  %ret.1130 = phi i32 [ %ret.1.ph, %do.end ], [ 0, %exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %ret.1130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_fc0013_rc_cal_add, !1, !"__ksymtab_fc0013_rc_cal_add", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/fc0013.c", i32 158, i32 1}
!2 = !{ptr @__ksymtab_fc0013_rc_cal_reset, !3, !"__ksymtab_fc0013_rc_cal_reset", i1 false, i1 false}
!3 = !{!"../drivers/media/tuners/fc0013.c", i32 177, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/tuners/fc0013.c", i32 602, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fc0013_attach._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @fc0013_attach._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_fc0013_attach, !11, !"__ksymtab_fc0013_attach", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/fc0013.c", i32 611, i32 1}
!12 = !{ptr @__UNIQUE_ID_description290, !13, !"__UNIQUE_ID_description290", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/fc0013.c", i32 613, i32 1}
!14 = !{ptr @__UNIQUE_ID_author291, !15, !"__UNIQUE_ID_author291", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/fc0013.c", i32 614, i32 1}
!16 = !{ptr @__UNIQUE_ID_file292, !17, !"__UNIQUE_ID_file292", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/fc0013.c", i32 615, i32 1}
!18 = !{ptr @__UNIQUE_ID_license293, !17, !"__UNIQUE_ID_license293", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_version294, !20, !"__UNIQUE_ID_version294", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/fc0013.c", i32 616, i32 1}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/fc0013.c", i32 21, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fc0013_writereg._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @fc0013_writereg._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/fc0013.c", i32 35, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fc0013_readreg._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @fc0013_readreg._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @fc0013_tuner_ops, !36, !"fc0013_tuner_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/fc0013.c", i32 565, i32 35}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/fc0013.c", i32 104, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fc0013_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @fc0013_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/fc0013.c", i32 402, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fc0013_set_params._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fc0013_set_params._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/fc0013.c", i32 471, i32 3}
!49 = !{ptr @fc0013_set_params._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @fc0013_set_params._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @fc0013_get_rf_strength.fc0013_lna_gain_table, !52, !"fc0013_lna_gain_table", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/fc0013.c", i32 504, i32 19}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/fc0013.c", i32 561, i32 3}
!55 = !{ptr @fc0013_get_rf_strength._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @fc0013_get_rf_strength._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
