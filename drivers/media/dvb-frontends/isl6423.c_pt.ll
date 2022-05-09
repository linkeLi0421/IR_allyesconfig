; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/isl6423.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6423.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+isl6423_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_isl6423_attach\09\09\09\09"
module asm "\09.long\09__crc_isl6423_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6423_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6423_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6423_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.isl6423_dev = type { ptr, ptr, i8, i8, i32 }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.isl6423_config = type { i32, i32, i8, i8 }

@__param_str_verbose = internal constant [16 x i8] c"isl6423.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [29 x i8] c"isl6423.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose291 = internal constant [41 x i8] c"isl6423.parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__kstrtab_isl6423_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6423_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6423_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6423_attach to i32), ptr @__kstrtab_isl6423_attach, ptr @__kstrtabns_isl6423_attach }, section "___ksymtab+isl6423_attach", align 4
@__UNIQUE_ID_description292 = internal constant [32 x i8] c"isl6423.description=ISL6423 SEC\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [28 x i8] c"isl6423.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"isl6423.file=drivers/media/dvb-frontends/isl6423\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"isl6423.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isl6423_set_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: I/O error <%d>\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isl6423_set_current\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/isl6423.c\00", [58 x i8] zeroinitializer }, align 32
@isl6423_set_current._entry_ptr = internal global ptr @isl6423_set_current._entry, section ".printk_index", align 4
@isl6423_set_current._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: I/O error <%d>\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_set_current._entry_ptr.5 = internal global ptr @isl6423_set_current._entry.3, section ".printk_index", align 4
@isl6423_set_current._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: I/O error <%d>\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_set_current._entry_ptr.8 = internal global ptr @isl6423_set_current._entry.6, section ".printk_index", align 4
@isl6423_set_current._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: I/O error <%d>\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_set_current._entry_ptr.11 = internal global ptr @isl6423_set_current._entry.9, section ".printk_index", align 4
@isl6423_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: write reg %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isl6423_write\00", [18 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr = internal global ptr @isl6423_write._entry, section ".printk_index", align 4
@isl6423_write._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: write reg %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.16 = internal global ptr @isl6423_write._entry.14, section ".printk_index", align 4
@isl6423_write._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: write reg %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.19 = internal global ptr @isl6423_write._entry.17, section ".printk_index", align 4
@isl6423_write._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: write reg %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.22 = internal global ptr @isl6423_write._entry.20, section ".printk_index", align 4
@isl6423_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.24 = internal global ptr @isl6423_write._entry.23, section ".printk_index", align 4
@isl6423_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.13, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.26 = internal global ptr @isl6423_write._entry.25, section ".printk_index", align 4
@isl6423_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.13, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.28 = internal global ptr @isl6423_write._entry.27, section ".printk_index", align 4
@isl6423_write._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_write._entry_ptr.30 = internal global ptr @isl6423_write._entry.29, section ".printk_index", align 4
@isl6423_set_modulation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isl6423_set_modulation\00", [41 x i8] zeroinitializer }, align 32
@isl6423_set_modulation._entry_ptr = internal global ptr @isl6423_set_modulation._entry, section ".printk_index", align 4
@isl6423_set_modulation._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_modulation._entry_ptr.33 = internal global ptr @isl6423_set_modulation._entry.32, section ".printk_index", align 4
@isl6423_set_modulation._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.31, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_modulation._entry_ptr.35 = internal global ptr @isl6423_set_modulation._entry.34, section ".printk_index", align 4
@isl6423_set_modulation._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.31, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_modulation._entry_ptr.37 = internal global ptr @isl6423_set_modulation._entry.36, section ".printk_index", align 4
@isl6423_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isl6423_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@isl6423_set_voltage._entry_ptr = internal global ptr @isl6423_set_voltage._entry, section ".printk_index", align 4
@isl6423_set_voltage._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.38, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_voltage._entry_ptr.40 = internal global ptr @isl6423_set_voltage._entry.39, section ".printk_index", align 4
@isl6423_set_voltage._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.38, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_voltage._entry_ptr.42 = internal global ptr @isl6423_set_voltage._entry.41, section ".printk_index", align 4
@isl6423_set_voltage._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.38, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_set_voltage._entry_ptr.44 = internal global ptr @isl6423_set_voltage._entry.43, section ".printk_index", align 4
@isl6423_voltage_boost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl6423_voltage_boost\00", [42 x i8] zeroinitializer }, align 32
@isl6423_voltage_boost._entry_ptr = internal global ptr @isl6423_voltage_boost._entry, section ".printk_index", align 4
@isl6423_voltage_boost._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.45, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_voltage_boost._entry_ptr.47 = internal global ptr @isl6423_voltage_boost._entry.46, section ".printk_index", align 4
@isl6423_voltage_boost._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.45, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_voltage_boost._entry_ptr.49 = internal global ptr @isl6423_voltage_boost._entry.48, section ".printk_index", align 4
@isl6423_voltage_boost._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.45, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl6423_voltage_boost._entry_ptr.51 = internal global ptr @isl6423_voltage_boost._entry.50, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 20, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 243, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 64, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 71, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 95, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 180, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private constant [41 x i8] c"../drivers/media/dvb-frontends/isl6423.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 130, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__ksymtab_isl6423_attach, ptr @__param_verbose, ptr @isl6423_set_current._entry, ptr @isl6423_set_current._entry.3, ptr @isl6423_set_current._entry.6, ptr @isl6423_set_current._entry.9, ptr @isl6423_set_current._entry_ptr, ptr @isl6423_set_current._entry_ptr.11, ptr @isl6423_set_current._entry_ptr.5, ptr @isl6423_set_current._entry_ptr.8, ptr @isl6423_set_modulation._entry, ptr @isl6423_set_modulation._entry.32, ptr @isl6423_set_modulation._entry.34, ptr @isl6423_set_modulation._entry.36, ptr @isl6423_set_modulation._entry_ptr, ptr @isl6423_set_modulation._entry_ptr.33, ptr @isl6423_set_modulation._entry_ptr.35, ptr @isl6423_set_modulation._entry_ptr.37, ptr @isl6423_set_voltage._entry, ptr @isl6423_set_voltage._entry.39, ptr @isl6423_set_voltage._entry.41, ptr @isl6423_set_voltage._entry.43, ptr @isl6423_set_voltage._entry_ptr, ptr @isl6423_set_voltage._entry_ptr.40, ptr @isl6423_set_voltage._entry_ptr.42, ptr @isl6423_set_voltage._entry_ptr.44, ptr @isl6423_voltage_boost._entry, ptr @isl6423_voltage_boost._entry.46, ptr @isl6423_voltage_boost._entry.48, ptr @isl6423_voltage_boost._entry.50, ptr @isl6423_voltage_boost._entry_ptr, ptr @isl6423_voltage_boost._entry_ptr.47, ptr @isl6423_voltage_boost._entry_ptr.49, ptr @isl6423_voltage_boost._entry_ptr.51, ptr @isl6423_write._entry, ptr @isl6423_write._entry.14, ptr @isl6423_write._entry.17, ptr @isl6423_write._entry.20, ptr @isl6423_write._entry.23, ptr @isl6423_write._entry.25, ptr @isl6423_write._entry.27, ptr @isl6423_write._entry.29, ptr @isl6423_write._entry_ptr, ptr @isl6423_write._entry_ptr.16, ptr @isl6423_write._entry_ptr.19, ptr @isl6423_write._entry_ptr.22, ptr @isl6423_write._entry_ptr.24, ptr @isl6423_write._entry_ptr.26, ptr @isl6423_write._entry_ptr.28, ptr @isl6423_write._entry_ptr.30, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.31, ptr @.str.38, ptr @.str.45], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_current._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_current._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_current._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_write._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_modulation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_modulation._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_modulation._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_modulation._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_voltage._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_voltage._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_set_voltage._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_voltage_boost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_voltage_boost._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_voltage_boost._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6423_voltage_boost._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isl6423_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %config) #0 align 64 {
entry:
  %reg.addr.i.i28 = alloca i8, align 1
  %msg.i.i29 = alloca %struct.i2c_msg, align 4
  %reg.addr.i109.i = alloca i8, align 1
  %msg.i110.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.isl6423_dev, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %3 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %sec_priv, align 4
  %reg_3 = getelementptr inbounds %struct.isl6423_dev, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %reg_3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %reg_3, align 8
  %reg_4 = getelementptr inbounds %struct.isl6423_dev, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %reg_4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 96, ptr %reg_4, align 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 65
  %reg_3.0.i = select i1 %8, i8 %switch.offset, i8 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %9 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %reg_3.0.i, ptr %reg.addr.i.i, align 1
  %addr2.i.i = getelementptr inbounds %struct.isl6423_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131071, ptr %12, align 4
  %conv.i.i = zext i8 %11 to i16
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch.i.i = icmp ult i32 %17, 4
  br i1 %switch.i.i, label %if.end.do.end51.i.i_crit_edge, label %do.end.i.i

if.end.do.end51.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i.i = zext i8 %reg_3.0.i to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i.i) #9
  br label %do.end51.i.i

do.end51.i.i:                                     ; preds = %do.end.i.i, %if.end.do.end51.i.i_crit_edge
  %call52.i.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %cmp53.i.i = icmp slt i32 %call52.i.i, 0
  br i1 %cmp53.i.i, label %do.body57.i.i, label %if.end.i

do.body57.i.i:                                    ; preds = %do.end51.i.i
  %18 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp58.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp58.not.i.i, label %do.body57.i.i.isl6423_write.exit.thread.i_crit_edge, label %do.end66.i.i

do.body57.i.i.isl6423_write.exit.thread.i_crit_edge: ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit.thread.i

do.end66.i.i:                                     ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i.i) #9
  br label %isl6423_write.exit.thread.i

isl6423_write.exit.thread.i:                      ; preds = %do.end66.i.i, %do.body57.i.i.isl6423_write.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  br label %do.body.i

if.end.i:                                         ; preds = %do.end51.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %curlim.i = getelementptr inbounds %struct.isl6423_config, ptr %config, i32 0, i32 1
  %19 = ptrtoint ptr %curlim.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %curlim.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cond = icmp eq i32 %20, 2
  %21 = or i8 %reg_3.0.i, 16
  %spec.select = select i1 %cond, i8 %21, i8 %reg_3.0.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i109.i) #5
  %22 = ptrtoint ptr %reg.addr.i109.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select, ptr %reg.addr.i109.i, align 1
  %23 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c2, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %addr2.i112.i = getelementptr inbounds %struct.isl6423_config, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %addr2.i112.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr2.i112.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i110.i) #5
  %29 = getelementptr inbounds i8, ptr %msg.i110.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 131071, ptr %29, align 4
  %conv.i113.i = zext i8 %28 to i16
  %31 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i113.i, ptr %msg.i110.i, align 4
  %flags.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i114.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i114.i, align 2
  %buf.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i116.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %reg.addr.i109.i, ptr %buf.i116.i, align 4
  %34 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %switch.i117.i = icmp ult i32 %34, 4
  br i1 %switch.i117.i, label %if.end.i.do.end51.i123.i_crit_edge, label %do.end.i120.i

if.end.i.do.end51.i123.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i123.i

do.end.i120.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i118.i = zext i8 %spec.select to i32
  %call.i119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i118.i) #9
  br label %do.end51.i123.i

do.end51.i123.i:                                  ; preds = %do.end.i120.i, %if.end.i.do.end51.i123.i_crit_edge
  %call52.i121.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i110.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i121.i)
  %cmp53.i122.i = icmp slt i32 %call52.i121.i, 0
  br i1 %cmp53.i122.i, label %do.body57.i125.i, label %if.end6

do.body57.i125.i:                                 ; preds = %do.end51.i123.i
  %35 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp58.not.i124.i = icmp eq i32 %35, 0
  br i1 %cmp58.not.i124.i, label %do.body57.i125.i.isl6423_write.exit129.thread.i_crit_edge, label %do.end66.i127.i

do.body57.i125.i.isl6423_write.exit129.thread.i_crit_edge: ; preds = %do.body57.i125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit129.thread.i

do.end66.i127.i:                                  ; preds = %do.body57.i125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i121.i) #9
  br label %isl6423_write.exit129.thread.i

isl6423_write.exit129.thread.i:                   ; preds = %do.end66.i127.i, %do.body57.i125.i.isl6423_write.exit129.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i110.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i109.i) #5
  br label %do.body.i

do.body.i:                                        ; preds = %isl6423_write.exit129.thread.i, %isl6423_write.exit.thread.i
  %err.0.i = phi i32 [ %call52.i.i, %isl6423_write.exit.thread.i ], [ %call52.i121.i, %isl6423_write.exit129.thread.i ]
  %36 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp37.not.i = icmp eq i32 %36, 0
  br i1 %cmp37.not.i, label %do.body.i.exit_crit_edge, label %do.end.i

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %err.0.i) #9
  br label %exit

if.end6:                                          ; preds = %do.end51.i123.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i110.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i109.i) #5
  %37 = ptrtoint ptr %reg_3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select, ptr %reg_3, align 8
  %38 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sec_priv, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %mod_extern.i = getelementptr inbounds %struct.isl6423_config, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %mod_extern.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mod_extern.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  %..i = select i1 %tobool.not.i, i8 48, i8 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i28) #5
  %44 = ptrtoint ptr %reg.addr.i.i28 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %..i, ptr %reg.addr.i.i28, align 1
  %i2c1.i.i31 = getelementptr inbounds %struct.isl6423_dev, ptr %39, i32 0, i32 1
  %45 = ptrtoint ptr %i2c1.i.i31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c1.i.i31, align 4
  %addr2.i.i32 = getelementptr inbounds %struct.isl6423_config, ptr %41, i32 0, i32 2
  %47 = ptrtoint ptr %addr2.i.i32 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr2.i.i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i29) #5
  %49 = getelementptr inbounds i8, ptr %msg.i.i29, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 131071, ptr %49, align 4
  %conv.i.i33 = zext i8 %48 to i16
  %51 = ptrtoint ptr %msg.i.i29 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i33, ptr %msg.i.i29, align 4
  %flags.i.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i34 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i.i34, align 2
  %buf.i.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reg.addr.i.i28, ptr %buf.i.i35, align 4
  %54 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %switch.i.i36 = icmp ult i32 %54, 4
  br i1 %switch.i.i36, label %if.end6.do.end51.i.i42_crit_edge, label %do.end.i.i39

if.end6.do.end51.i.i42_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i.i42

do.end.i.i39:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i.i37 = zext i8 %..i to i32
  %call.i.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i.i37) #9
  br label %do.end51.i.i42

do.end51.i.i42:                                   ; preds = %do.end.i.i39, %if.end6.do.end51.i.i42_crit_edge
  %call52.i.i40 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i.i29, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i40)
  %cmp53.i.i41 = icmp slt i32 %call52.i.i40, 0
  br i1 %cmp53.i.i41, label %do.body57.i.i44, label %if.end10

do.body57.i.i44:                                  ; preds = %do.end51.i.i42
  %55 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp58.not.i.i43 = icmp eq i32 %55, 0
  br i1 %cmp58.not.i.i43, label %do.body.thread.i, label %do.body.i46

do.body.thread.i:                                 ; preds = %do.body57.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i29) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i28) #5
  br label %exit

do.body.i46:                                      ; preds = %do.body57.i.i44
  %call68.i.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i.i40) #9
  %.pr.i = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i29) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp9.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp9.not.i, label %do.body.i46.exit_crit_edge, label %do.end.i47

do.body.i46.exit_crit_edge:                       ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end.i47:                                       ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, i32 noundef %call52.i.i40) #9
  br label %exit

if.end10:                                         ; preds = %do.end51.i.i42
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i29) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i28) #5
  %release_sec = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %release_sec to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @isl6423_release, ptr %release_sec, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 25
  %57 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @isl6423_set_voltage, ptr %set_voltage, align 4
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 26
  %58 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @isl6423_voltage_boost, ptr %enable_high_lnb_voltage, align 4
  %59 = load i32, ptr @verbose, align 4
  %verbose = getelementptr inbounds %struct.isl6423_dev, ptr %call7.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %verbose to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %verbose, align 4
  br label %cleanup

exit:                                             ; preds = %do.end.i47, %do.body.i46.exit_crit_edge, %do.body.thread.i, %do.end.i, %do.body.i.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %61 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %sec_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %exit ], [ %fe, %if.end10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isl6423_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @isl6423_set_voltage(ptr noundef %fe, i32 noundef 2)
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sec_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6423_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %reg.addr.i106 = alloca i8, align 1
  %msg.i107 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %reg_31 = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_31 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_31, align 4
  %reg_42 = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg_42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_42, align 1
  %6 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb4
    i32 1, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = and i8 %5, -17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = and i8 %5, -20
  %9 = or i8 %8, 16
  %10 = or i8 %3, 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = and i8 %5, -20
  %12 = or i8 %11, 18
  %13 = or i8 %3, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %reg_4.0 = phi i8 [ %5, %entry.sw.epilog_crit_edge ], [ %12, %sw.bb13 ], [ %9, %sw.bb4 ], [ %7, %sw.bb ]
  %reg_3.0 = phi i8 [ %3, %entry.sw.epilog_crit_edge ], [ %13, %sw.bb13 ], [ %10, %sw.bb4 ], [ %3, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %14 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reg_3.0, ptr %reg.addr.i, align 1
  %i2c1.i = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %addr2.i = getelementptr inbounds %struct.isl6423_config, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr2.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131071, ptr %21, align 4
  %conv.i = zext i8 %20 to i16
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %26 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %switch.i = icmp ult i32 %26, 4
  br i1 %switch.i, label %sw.epilog.do.end51.i_crit_edge, label %do.end.i

sw.epilog.do.end51.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i = zext i8 %reg_3.0 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i) #9
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end.i, %sw.epilog.do.end51.i_crit_edge
  %call52.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.body57.i, label %if.end

do.body57.i:                                      ; preds = %do.end51.i
  %27 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp58.not.i = icmp eq i32 %27, 0
  br i1 %cmp58.not.i, label %do.body57.i.isl6423_write.exit.thread_crit_edge, label %do.end66.i

do.body57.i.isl6423_write.exit.thread_crit_edge:  ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit.thread

do.end66.i:                                       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i) #9
  br label %isl6423_write.exit.thread

isl6423_write.exit.thread:                        ; preds = %do.end66.i, %do.body57.i.isl6423_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %do.body

if.end:                                           ; preds = %do.end51.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i106)
  %28 = ptrtoint ptr %reg.addr.i106 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %reg_4.0, ptr %reg.addr.i106, align 1
  %29 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c1.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %addr2.i109 = getelementptr inbounds %struct.isl6423_config, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %addr2.i109 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr2.i109, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i107) #5
  %35 = getelementptr inbounds i8, ptr %msg.i107, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 131071, ptr %35, align 4
  %conv.i110 = zext i8 %34 to i16
  %37 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i110, ptr %msg.i107, align 4
  %flags.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i111, align 2
  %buf.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i113 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg.addr.i106, ptr %buf.i113, align 4
  %40 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %switch.i114 = icmp ult i32 %40, 4
  br i1 %switch.i114, label %if.end.do.end51.i120_crit_edge, label %do.end.i117

if.end.do.end51.i120_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i120

do.end.i117:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i115 = zext i8 %reg_4.0 to i32
  %call.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i115) #9
  br label %do.end51.i120

do.end51.i120:                                    ; preds = %do.end.i117, %if.end.do.end51.i120_crit_edge
  %call52.i118 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i107, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i118)
  %cmp53.i119 = icmp slt i32 %call52.i118, 0
  br i1 %cmp53.i119, label %do.body57.i122, label %if.end31

do.body57.i122:                                   ; preds = %do.end51.i120
  %41 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp58.not.i121 = icmp eq i32 %41, 0
  br i1 %cmp58.not.i121, label %do.body57.i122.isl6423_write.exit126.thread_crit_edge, label %do.end66.i124

do.body57.i122.isl6423_write.exit126.thread_crit_edge: ; preds = %do.body57.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit126.thread

do.end66.i124:                                    ; preds = %do.body57.i122
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i118) #9
  br label %isl6423_write.exit126.thread

isl6423_write.exit126.thread:                     ; preds = %do.end66.i124, %do.body57.i122.isl6423_write.exit126.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i106)
  br label %do.body

if.end31:                                         ; preds = %do.end51.i120
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i106)
  %42 = ptrtoint ptr %reg_31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %reg_3.0, ptr %reg_31, align 4
  %43 = ptrtoint ptr %reg_42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %reg_4.0, ptr %reg_42, align 1
  br label %cleanup

do.body:                                          ; preds = %isl6423_write.exit126.thread, %isl6423_write.exit.thread
  %err.0 = phi i32 [ %call52.i, %isl6423_write.exit.thread ], [ %call52.i118, %isl6423_write.exit126.thread ]
  %44 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp34.not = icmp eq i32 %44, 0
  br i1 %cmp34.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end31
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %err.0, %do.end ], [ %err.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6423_voltage_boost(ptr nocapture noundef readonly %fe, i32 noundef %arg) #0 align 64 {
entry:
  %reg.addr.i99 = alloca i8, align 1
  %msg.i100 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %reg_31 = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_31 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_31, align 4
  %reg_42 = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg_42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_42, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %6 = or i8 %5, 17
  %7 = and i8 %5, -18
  %8 = or i8 %7, 16
  %reg_4.0 = select i1 %tobool.not, i8 %8, i8 %6
  %reg_3.0 = or i8 %3, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %9 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %reg_3.0, ptr %reg.addr.i, align 1
  %i2c1.i = getelementptr inbounds %struct.isl6423_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c1.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %addr2.i = getelementptr inbounds %struct.isl6423_config, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr2.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 131071, ptr %16, align 4
  %conv.i = zext i8 %15 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %switch.i = icmp ult i32 %21, 4
  br i1 %switch.i, label %entry.do.end51.i_crit_edge, label %do.end.i

entry.do.end51.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i = zext i8 %reg_3.0 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i) #9
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end.i, %entry.do.end51.i_crit_edge
  %call52.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.body57.i, label %if.end20

do.body57.i:                                      ; preds = %do.end51.i
  %22 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp58.not.i = icmp eq i32 %22, 0
  br i1 %cmp58.not.i, label %do.body57.i.isl6423_write.exit.thread_crit_edge, label %do.end66.i

do.body57.i.isl6423_write.exit.thread_crit_edge:  ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit.thread

do.end66.i:                                       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i) #9
  br label %isl6423_write.exit.thread

isl6423_write.exit.thread:                        ; preds = %do.end66.i, %do.body57.i.isl6423_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %do.body

if.end20:                                         ; preds = %do.end51.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i99)
  %23 = ptrtoint ptr %reg.addr.i99 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %reg_4.0, ptr %reg.addr.i99, align 1
  %24 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c1.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %addr2.i102 = getelementptr inbounds %struct.isl6423_config, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %addr2.i102 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr2.i102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i100) #5
  %30 = getelementptr inbounds i8, ptr %msg.i100, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 131071, ptr %30, align 4
  %conv.i103 = zext i8 %29 to i16
  %32 = ptrtoint ptr %msg.i100 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i103, ptr %msg.i100, align 4
  %flags.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i100, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i104, align 2
  %buf.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i100, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i106 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg.addr.i99, ptr %buf.i106, align 4
  %35 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %switch.i107 = icmp ult i32 %35, 4
  br i1 %switch.i107, label %if.end20.do.end51.i113_crit_edge, label %do.end.i110

if.end20.do.end51.i113_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.i113

do.end.i110:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i108 = zext i8 %reg_4.0 to i32
  %call.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv8.i108) #9
  br label %do.end51.i113

do.end51.i113:                                    ; preds = %do.end.i110, %if.end20.do.end51.i113_crit_edge
  %call52.i111 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i100, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i111)
  %cmp53.i112 = icmp slt i32 %call52.i111, 0
  br i1 %cmp53.i112, label %do.body57.i115, label %if.end25

do.body57.i115:                                   ; preds = %do.end51.i113
  %36 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp58.not.i114 = icmp eq i32 %36, 0
  br i1 %cmp58.not.i114, label %do.body57.i115.isl6423_write.exit119.thread_crit_edge, label %do.end66.i117

do.body57.i115.isl6423_write.exit119.thread_crit_edge: ; preds = %do.body57.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %isl6423_write.exit119.thread

do.end66.i117:                                    ; preds = %do.body57.i115
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call52.i111) #9
  br label %isl6423_write.exit119.thread

isl6423_write.exit119.thread:                     ; preds = %do.end66.i117, %do.body57.i115.isl6423_write.exit119.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i100) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i99)
  br label %do.body

if.end25:                                         ; preds = %do.end51.i113
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i100) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i99)
  %37 = ptrtoint ptr %reg_31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %reg_3.0, ptr %reg_31, align 4
  %38 = ptrtoint ptr %reg_42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %reg_4.0, ptr %reg_42, align 1
  br label %cleanup

do.body:                                          ; preds = %isl6423_write.exit119.thread, %isl6423_write.exit.thread
  %err.0 = phi i32 [ %call52.i, %isl6423_write.exit.thread ], [ %call52.i111, %isl6423_write.exit119.thread ]
  %39 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp28.not = icmp eq i32 %39, 0
  br i1 %cmp28.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end25
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %err.0, %do.end ], [ %err.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype290, !1, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose291, !4, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 22, i32 1}
!5 = !{ptr @__ksymtab_isl6423_attach, !6, !"__ksymtab_isl6423_attach", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_author293, !10, !"__UNIQUE_ID_author293", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 295, i32 1}
!11 = !{ptr @__UNIQUE_ID_file294, !12, !"__UNIQUE_ID_file294", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 296, i32 1}
!13 = !{ptr @__UNIQUE_ID_license295, !12, !"__UNIQUE_ID_license295", i1 false, i1 false}
!14 = !{ptr @verbose, !15, !"verbose", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 20, i32 21}
!16 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 243, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @isl6423_set_current._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @isl6423_set_current._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @isl6423_set_current._entry.3, !18, !"_entry", i1 false, i1 false}
!25 = !{ptr @isl6423_set_current._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @isl6423_set_current._entry.6, !18, !"_entry", i1 false, i1 false}
!28 = !{ptr @isl6423_set_current._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @isl6423_set_current._entry.9, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @isl6423_set_current._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 64, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @isl6423_write._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @isl6423_write._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @isl6423_write._entry.14, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @isl6423_write._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @isl6423_write._entry.17, !33, !"_entry", i1 false, i1 false}
!42 = !{ptr @isl6423_write._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @isl6423_write._entry.20, !33, !"_entry", i1 false, i1 false}
!45 = !{ptr @isl6423_write._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @isl6423_write._entry.23, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 71, i32 2}
!48 = !{ptr @isl6423_write._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @isl6423_write._entry.25, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @isl6423_write._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @isl6423_write._entry.27, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @isl6423_write._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @isl6423_write._entry.29, !47, !"_entry", i1 false, i1 false}
!54 = !{ptr @isl6423_write._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 95, i32 2}
!57 = !{ptr @isl6423_set_modulation._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @isl6423_set_modulation._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @isl6423_set_modulation._entry.32, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @isl6423_set_modulation._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @isl6423_set_modulation._entry.34, !56, !"_entry", i1 false, i1 false}
!62 = !{ptr @isl6423_set_modulation._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @isl6423_set_modulation._entry.36, !56, !"_entry", i1 false, i1 false}
!64 = !{ptr @isl6423_set_modulation._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 180, i32 2}
!67 = !{ptr @isl6423_set_voltage._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @isl6423_set_voltage._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @isl6423_set_voltage._entry.39, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @isl6423_set_voltage._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @isl6423_set_voltage._entry.41, !66, !"_entry", i1 false, i1 false}
!72 = !{ptr @isl6423_set_voltage._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @isl6423_set_voltage._entry.43, !66, !"_entry", i1 false, i1 false}
!74 = !{ptr @isl6423_set_voltage._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/isl6423.c", i32 130, i32 2}
!77 = !{ptr @isl6423_voltage_boost._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @isl6423_voltage_boost._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @isl6423_voltage_boost._entry.46, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @isl6423_voltage_boost._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @isl6423_voltage_boost._entry.48, !76, !"_entry", i1 false, i1 false}
!82 = !{ptr @isl6423_voltage_boost._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @isl6423_voltage_boost._entry.50, !76, !"_entry", i1 false, i1 false}
!84 = !{ptr @isl6423_voltage_boost._entry_ptr.51, !76, !"_entry_ptr", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
