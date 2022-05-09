; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ves1820.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ves1820.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ves1820_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ves1820_attach\09\09\09\09"
module asm "\09.long\09__crc_ves1820_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ves1820_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ves1820_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ves1820_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ves1820_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ves1820_config = type { i8, i32, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@ves1820_inittab = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ij\93\1A\12F&\1ACj\AA\AA\1E\85C \E0\00\A1\00\00\00\00\00\00\00\00\01\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@", [43 x i8] zeroinitializer }, align 32
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ves1820_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ves1820: pwm=0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1820_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/ves1820.c\00", [58 x i8] zeroinitializer }, align 32
@ves1820_attach._entry_ptr = internal global ptr @ves1820_attach._entry, section ".printk_index", align 4
@ves1820_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"VLSI VES1820 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 64000 }, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr null, ptr @ves1820_release, ptr null, ptr @ves1820_init, ptr @ves1820_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1820_set_parameters, ptr @ves1820_get_tune_settings, ptr @ves1820_get_frontend, ptr @ves1820_read_status, ptr @ves1820_read_ber, ptr @ves1820_read_signal_strength, ptr @ves1820_read_snr, ptr @ves1820_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_verbose = internal constant [16 x i8] c"ves1820.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [29 x i8] c"ves1820.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose291 = internal constant [81 x i8] c"ves1820.parm=verbose:print AFC offset after tuning for debugging the PWM setting\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"ves1820.description=VLSI VES1820 DVB-C Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [47 x i8] c"ves1820.author=Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"ves1820.file=drivers/media/dvb-frontends/ves1820\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"ves1820.license=GPL\00", section ".modinfo", align 1
@__kstrtab_ves1820_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ves1820_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ves1820_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ves1820_attach to i32), ptr @__kstrtab_ves1820_attach, ptr @__kstrtabns_ves1820_attach }, section "___ksymtab+ves1820_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ves1820_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ves1820: %s(): readreg error (reg == 0x%02x, ret == %i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ves1820_readreg\00", [16 x i8] zeroinitializer }, align 32
@ves1820_readreg._entry_ptr = internal global ptr @ves1820_readreg._entry, section ".printk_index", align 4
@ves1820_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ves1820: %s(): writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ves1820_writereg\00", [47 x i8] zeroinitializer }, align 32
@ves1820_writereg._entry_ptr = internal global ptr @ves1820_writereg._entry, section ".printk_index", align 4
@ves1820_set_parameters.reg0x00 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\04\08\0C\10", [27 x i8] zeroinitializer }, align 32
@ves1820_set_parameters.reg0x01 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\8C\8Cjd\\", [27 x i8] zeroinitializer }, align 32
@ves1820_set_parameters.reg0x05 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\87dF6&", [27 x i8] zeroinitializer }, align 32
@ves1820_set_parameters.reg0x08 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\A2tC4#", [27 x i8] zeroinitializer }, align 32
@ves1820_set_parameters.reg0x09 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\91\96j~k", [27 x i8] zeroinitializer }, align 32
@ves1820_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.7, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ves1820_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@ves1820_get_frontend._entry_ptr = internal global ptr @ves1820_get_frontend._entry, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ves1820: AFC (%d) %dHz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ves1820: [AFC (%d) %dHz]\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"ves1820_inittab\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 37, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 35, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 384, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"ves1820_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 399, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 75, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 56, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"reg0x00\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 201, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"reg0x01\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 202, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [8 x i8] c"reg0x05\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 203, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"reg0x08\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 204, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant [8 x i8] c"reg0x09\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 205, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [41 x i8] c"../drivers/media/dvb-frontends/ves1820.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 314, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__ksymtab_ves1820_attach, ptr @__param_verbose, ptr @ves1820_attach._entry, ptr @ves1820_attach._entry_ptr, ptr @ves1820_get_frontend._entry, ptr @ves1820_get_frontend._entry_ptr, ptr @ves1820_readreg._entry, ptr @ves1820_readreg._entry_ptr, ptr @ves1820_writereg._entry, ptr @ves1820_writereg._entry_ptr, ptr @ves1820_inittab, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ves1820_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ves1820_set_parameters.reg0x00, ptr @ves1820_set_parameters.reg0x01, ptr @ves1820_set_parameters.reg0x05, ptr @ves1820_set_parameters.reg0x08, ptr @ves1820_set_parameters.reg0x09, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_inittab to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_parameters.reg0x00 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_parameters.reg0x01 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_parameters.reg0x05 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_parameters.reg0x08 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_parameters.reg0x09 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ves1820_attach(ptr noundef %config, ptr noundef %i2c, i8 noundef zeroext %pwm) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %reg0 = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %reg0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 105, ptr %reg0, align 8
  %config1 = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config1, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %pwm3 = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %pwm3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %pwm, ptr %pwm3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %5 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %6 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b0.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 26, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %8 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.ves1820_readreg.exit_crit_edge, label %do.end.i

if.end.ves1820_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 26, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %if.end.ves1820_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %23 = and i8 %22, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %23)
  %cmp5.not = icmp eq i8 %23, 112
  br i1 %cmp5.not, label %if.end8, label %ves1820_readreg.exit.error_crit_edge

ves1820_readreg.exit.error_crit_edge:             ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end8:                                          ; preds = %ves1820_readreg.exit
  %24 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end8.if.end13_crit_edge, label %do.end

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pwm3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pwm3, align 1
  %conv11 = zext i8 %26 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv11) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end8.if.end13_crit_edge
  %frontend = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %27 = call ptr @memcpy(ptr %ops, ptr @ves1820_ops, i32 544)
  %28 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config1, align 4
  %xin = getelementptr inbounds %struct.ves1820_config, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %xin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xin, align 4
  %div1543 = lshr i32 %31, 7
  %symbol_rate_min = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %symbol_rate_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div1543, ptr %symbol_rate_min, align 4
  %33 = load i32, ptr %xin, align 4
  %div2145 = lshr i32 %33, 3
  %symbol_rate_max = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %symbol_rate_max to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div2145, ptr %symbol_rate_max, align 8
  %demodulator_priv = getelementptr inbounds %struct.ves1820_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %ves1820_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end13
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end13 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ves1820_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i38 = alloca [3 x i8], align 1
  %msg.i39 = alloca %struct.i2c_msg, align 4
  %buf.i26 = alloca [3 x i8], align 1
  %msg.i27 = alloca %struct.i2c_msg, align 4
  %buf.i14 = alloca [3 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262143, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf2.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.ves1820_writereg.exit_crit_edge, label %do.end.i

entry.ves1820_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef %call.i) #11
  br label %ves1820_writereg.exit

ves1820_writereg.exit:                            ; preds = %do.end.i, %entry.ves1820_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i14, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i14, i32 0, i32 2
  %20 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %buf2.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ves1820_writereg.exit25.for.body_crit_edge, %ves1820_writereg.exit
  %i.051 = phi i32 [ 0, %ves1820_writereg.exit ], [ %inc, %ves1820_writereg.exit25.for.body_crit_edge ]
  %conv = trunc i32 %i.051 to i8
  %arrayidx = getelementptr [53 x i8], ptr @ves1820_inittab, i32 0, i32 %i.051
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i14) #7
  %23 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf.i14, align 1
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %18, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #7
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %20, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i17 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %32 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i18, align 2
  store i16 3, ptr %20, align 4
  %33 = ptrtoint ptr %buf2.i20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i14, ptr %buf2.i20, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i21 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i21)
  %cmp.not.i22 = icmp eq i32 %call.i21, 1
  br i1 %cmp.not.i22, label %for.body.ves1820_writereg.exit25_crit_edge, label %do.end.i24

for.body.ves1820_writereg.exit25_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit25

do.end.i24:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %22 to i32
  %call6.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %i.051, i32 noundef %conv5.i, i32 noundef %call.i21) #11
  br label %ves1820_writereg.exit25

ves1820_writereg.exit25:                          ; preds = %do.end.i24, %for.body.ves1820_writereg.exit25_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i14) #7
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %ves1820_writereg.exit25.for.body_crit_edge

ves1820_writereg.exit25.for.body_crit_edge:       ; preds = %ves1820_writereg.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ves1820_writereg.exit25
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %selagc = getelementptr inbounds %struct.ves1820_config, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %selagc to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %selagc, align 4
  %39 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i26) #7
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i26, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i26, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %buf.i26, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -101, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i27) #7
  %45 = getelementptr inbounds i8, ptr %msg.i27, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv.i29 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i29, ptr %msg.i27, align 4
  %flags.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i30, align 2
  %buf2.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 3
  %53 = ptrtoint ptr %buf2.i32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i26, ptr %buf2.i32, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 1
  br i1 %cmp.not.i34, label %if.then.ves1820_writereg.exit37_crit_edge, label %do.end.i36

if.then.ves1820_writereg.exit37_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit37

do.end.i36:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 155, i32 noundef %call.i33) #11
  br label %ves1820_writereg.exit37

ves1820_writereg.exit37:                          ; preds = %do.end.i36, %if.then.ves1820_writereg.exit37_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i27) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i26) #7
  br label %if.end

if.end:                                           ; preds = %ves1820_writereg.exit37, %for.end.if.end_crit_edge
  %pwm = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pwm, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i38) #7
  %58 = getelementptr inbounds [3 x i8], ptr %buf.i38, i32 0, i32 1
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i38, i32 0, i32 2
  %60 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %buf.i38, align 1
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 52, ptr %58, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %57, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39) #7
  %63 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 262143, ptr %63, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv.i41 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i42, align 2
  %buf2.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %71 = ptrtoint ptr %buf2.i44 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i38, ptr %buf2.i44, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i39, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp.not.i46, label %if.end.ves1820_writereg.exit50_crit_edge, label %do.end.i49

if.end.ves1820_writereg.exit50_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit50

do.end.i49:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i47 = zext i8 %57 to i32
  %call6.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 52, i32 noundef %conv5.i47, i32 noundef %call.i45) #11
  br label %ves1820_writereg.exit50

ves1820_writereg.exit50:                          ; preds = %do.end.i49, %if.end.ves1820_writereg.exit50_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i38) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i3 = alloca [3 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 27, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262143, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf2.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.ves1820_writereg.exit_crit_edge, label %do.end.i

entry.ves1820_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 27, i32 noundef 2, i32 noundef %call.i) #11
  br label %ves1820_writereg.exit

ves1820_writereg.exit:                            ; preds = %do.end.i, %entry.ves1820_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i3) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 2
  %20 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf.i3, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %18, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #7
  %23 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 262143, ptr %23, align 4
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i6 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i7, align 2
  %buf2.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %31 = ptrtoint ptr %buf2.i9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i3, ptr %buf2.i9, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %ves1820_writereg.exit.ves1820_writereg.exit14_crit_edge, label %do.end.i13

ves1820_writereg.exit.ves1820_writereg.exit14_crit_edge: ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit14

do.end.i13:                                       ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 128, i32 noundef %call.i10) #11
  br label %ves1820_writereg.exit14

ves1820_writereg.exit14:                          ; preds = %do.end.i13, %ves1820_writereg.exit.ves1820_writereg.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i122 = alloca [3 x i8], align 1
  %msg.i123 = alloca %struct.i2c_msg, align 4
  %buf.i2.i = alloca [3 x i8], align 1
  %msg.i3.i = alloca %struct.i2c_msg, align 4
  %buf.i.i110 = alloca [3 x i8], align 1
  %msg.i.i111 = alloca %struct.i2c_msg, align 4
  %buf.i97 = alloca [3 x i8], align 1
  %msg.i98 = alloca %struct.i2c_msg, align 4
  %buf.i84 = alloca [3 x i8], align 1
  %msg.i85 = alloca %struct.i2c_msg, align 4
  %buf.i71 = alloca [3 x i8], align 1
  %msg.i72 = alloca %struct.i2c_msg, align 4
  %buf.i58 = alloca [3 x i8], align 1
  %msg.i59 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i82.i = alloca [3 x i8], align 1
  %msg.i83.i = alloca %struct.i2c_msg, align 4
  %buf.i69.i = alloca [3 x i8], align 1
  %msg.i70.i = alloca %struct.i2c_msg, align 4
  %buf.i56.i = alloca [3 x i8], align 1
  %msg.i57.i = alloca %struct.i2c_msg, align 4
  %buf.i43.i = alloca [3 x i8], align 1
  %msg.i44.i = alloca %struct.i2c_msg, align 4
  %buf.i30.i = alloca [3 x i8], align 1
  %msg.i31.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulation, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %4 = icmp ugt i32 %sub, 4
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %5 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %call = tail call i32 %6(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.then2.if.end13_crit_edge, label %if.then8

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 %8(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then2.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %9 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %symbol_rate, align 4
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %xin.i = getelementptr inbounds %struct.ves1820_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %xin.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xin.i, align 4
  %div1.i = lshr i32 %14, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %10) #7
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 500000) #7
  %div92.i = lshr i32 %14, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div92.i)
  %cmp10.i = icmp ult i32 %16, %div92.i
  %NDEC.0.i = zext i1 %cmp10.i to i32
  %div153.i = lshr i32 %14, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div153.i)
  %cmp16.i = icmp ult i32 %16, %div153.i
  %NDEC.1.i = select i1 %cmp16.i, i32 2, i32 %NDEC.0.i
  %div214.i = lshr i32 %14, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div214.i)
  %cmp22.i = icmp ult i32 %16, %div214.i
  %NDEC.2.i = select i1 %cmp22.i, i32 3, i32 %NDEC.1.i
  %conv.i = zext i32 %14 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 10
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8848438214218402808, i64 %mul.i, i32 0) #12
  %asmresult.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8848438214218402808, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12
  %asmresult10.i.i = extractvalue { i64, i32 } %18, 0
  %fptmp.0.i = lshr i64 %asmresult10.i.i, 6
  %conv214.i = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %fptmp.0.i, i64 %conv214.i)
  %cmp215.i = icmp ugt i64 %fptmp.0.i, %conv214.i
  %div3296.i = lshr i64 %mul.i, 5
  %19 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3296.i, i64 3689348814741910323) #12, !srcloc !62
  %20 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3296.i, i64 %19) #12, !srcloc !63
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv214.i)
  %cmp441.i = icmp ugt i64 %20, %conv214.i
  %fptmp.2.i = lshr i64 %asmresult10.i.i, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %fptmp.2.i, i64 %conv214.i)
  %cmp667.i = icmp ugt i64 %fptmp.2.i, %conv214.i
  %div7818.i = lshr i64 %mul.i, 6
  %21 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div7818.i, i64 3689348814741910323) #12, !srcloc !62
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div7818.i, i64 %21) #12, !srcloc !63
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv214.i)
  %cmp893.i = icmp ugt i64 %22, %conv214.i
  %fptmp.4.i = lshr i64 %asmresult10.i.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %fptmp.4.i, i64 %conv214.i)
  %cmp1119.i = icmp ugt i64 %fptmp.4.i, %conv214.i
  %div123310.i = lshr i64 %mul.i, 7
  %23 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div123310.i, i64 3689348814741910323) #12, !srcloc !62
  %24 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div123310.i, i64 %23) #12, !srcloc !63
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv214.i)
  %cmp1345.i = icmp ugt i64 %24, %conv214.i
  %fptmp.6.i = lshr i64 %asmresult10.i.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %fptmp.6.i, i64 %conv214.i)
  %cmp1571.i = icmp ugt i64 %fptmp.6.i, %conv214.i
  %shl1579.i = shl i32 %16, %NDEC.2.i
  %shl1580.i = shl i32 %shl1579.i, 4
  %shl1580.i.frozen = freeze i32 %shl1580.i
  %div92.i.frozen = freeze i32 %div92.i
  %div1581.i = udiv i32 %shl1580.i.frozen, %div92.i.frozen
  %25 = mul i32 %div1581.i, %div92.i.frozen
  %rem1583.i.decomposed = sub i32 %shl1580.i.frozen, %25
  %shl1584.i = shl i32 %rem1583.i.decomposed, 8
  %shl1585.i = shl i32 %div1581.i, 8
  %div92.i.frozen135 = freeze i32 %div92.i
  %div1586.i = udiv i32 %shl1584.i, %div92.i.frozen135
  %add1587.i = add i32 %div1586.i, %shl1585.i
  %26 = mul i32 %div1586.i, %div92.i.frozen135
  %rem1588.i.decomposed = sub i32 %shl1584.i, %26
  %shl1589.i = shl i32 %rem1588.i.decomposed, 8
  %shl1590.i = shl i32 %add1587.i, 8
  %add1593.i = add i32 %shl1589.i, %div153.i
  %div1594.i = udiv i32 %add1593.i, %div92.i
  %add1595.i = add i32 %shl1590.i, %div1594.i
  %shl1598.i = shl i32 %14, 5
  %div1599.i = udiv i32 %shl1598.i, %shl1579.i
  %add1600.i = add nuw i32 %div1599.i, 1
  %div160113.i = lshr i32 %add1600.i, 1
  %27 = tail call i32 @llvm.umin.i32(i32 %div160113.i, i32 255) #7
  %spec.select14.op.i = select i1 %cmp215.i, i8 83, i8 67
  %spec.select15.op.i = select i1 %cmp441.i, i8 67, i8 %spec.select14.op.i
  %spec.select16.op.i = select i1 %cmp667.i, i8 83, i8 %spec.select15.op.i
  %spec.select17.op.i = select i1 %cmp893.i, i8 67, i8 %spec.select16.op.i
  %spec.select18.op.i = select i1 %cmp1119.i, i8 83, i8 %spec.select17.op.i
  %spec.select19.op.op.i = select i1 %cmp1345.i, i8 67, i8 %spec.select18.op.i
  %or1609.i = select i1 %cmp1571.i, i8 83, i8 %spec.select19.op.op.i
  %conv1578.tr.i = trunc i32 %NDEC.2.i to i8
  %28 = shl nuw i8 %conv1578.tr.i, 6
  %conv1615.i = or i8 %28, 26
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buf.i.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1615.i, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %34 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262143, ptr %34, align 4
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %12, align 4
  %conv.i.i = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end13.ves1820_writereg.exit.i_crit_edge, label %do.end.i.i

if.end13.ves1820_writereg.exit.i_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit.i

do.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i.i = zext i8 %conv1615.i to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef %conv5.i.i, i32 noundef %call.i.i) #11
  br label %ves1820_writereg.exit.i

ves1820_writereg.exit.i:                          ; preds = %do.end.i.i, %if.end13.ves1820_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %conv1619.i = trunc i32 %add1595.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i30.i) #7
  %43 = getelementptr inbounds [3 x i8], ptr %buf.i30.i, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %buf.i30.i, i32 0, i32 2
  %45 = ptrtoint ptr %buf.i30.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %buf.i30.i, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %43, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv1619.i, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i) #7
  %48 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 262143, ptr %48, align 4
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %conv.i33.i = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i33.i, ptr %msg.i31.i, align 4
  %flags.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i34.i, align 2
  %buf2.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %56 = ptrtoint ptr %buf2.i36.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i30.i, ptr %buf2.i36.i, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i37.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i31.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i37.i)
  %cmp.not.i38.i = icmp eq i32 %call.i37.i, 1
  br i1 %cmp.not.i38.i, label %ves1820_writereg.exit.i.ves1820_writereg.exit42.i_crit_edge, label %do.end.i41.i

ves1820_writereg.exit.i.ves1820_writereg.exit42.i_crit_edge: ; preds = %ves1820_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit42.i

do.end.i41.i:                                     ; preds = %ves1820_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i39.i = and i32 %add1595.i, 255
  %call6.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef %conv5.i39.i, i32 noundef %call.i37.i) #11
  br label %ves1820_writereg.exit42.i

ves1820_writereg.exit42.i:                        ; preds = %do.end.i41.i, %ves1820_writereg.exit.i.ves1820_writereg.exit42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i30.i) #7
  %59 = lshr i32 %add1595.i, 8
  %conv1623.i = trunc i32 %59 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i43.i) #7
  %60 = getelementptr inbounds [3 x i8], ptr %buf.i43.i, i32 0, i32 1
  %61 = getelementptr inbounds [3 x i8], ptr %buf.i43.i, i32 0, i32 2
  %62 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %buf.i43.i, align 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 11, ptr %60, align 1
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv1623.i, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i) #7
  %65 = getelementptr inbounds i8, ptr %msg.i44.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 262143, ptr %65, align 4
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  %conv.i46.i = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i44.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i46.i, ptr %msg.i44.i, align 4
  %flags.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i47.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i47.i, align 2
  %buf2.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf2.i49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i43.i, ptr %buf2.i49.i, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i50.i = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i44.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i50.i, 1
  br i1 %cmp.not.i51.i, label %ves1820_writereg.exit42.i.ves1820_writereg.exit55.i_crit_edge, label %do.end.i54.i

ves1820_writereg.exit42.i.ves1820_writereg.exit55.i_crit_edge: ; preds = %ves1820_writereg.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit55.i

do.end.i54.i:                                     ; preds = %ves1820_writereg.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i52.i = and i32 %59, 255
  %call6.i53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef %conv5.i52.i, i32 noundef %call.i50.i) #11
  br label %ves1820_writereg.exit55.i

ves1820_writereg.exit55.i:                        ; preds = %do.end.i54.i, %ves1820_writereg.exit42.i.ves1820_writereg.exit55.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i43.i) #7
  %76 = lshr i32 %add1595.i, 16
  %77 = trunc i32 %76 to i8
  %conv1627.i = and i8 %77, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i56.i) #7
  %78 = getelementptr inbounds [3 x i8], ptr %buf.i56.i, i32 0, i32 1
  %79 = getelementptr inbounds [3 x i8], ptr %buf.i56.i, i32 0, i32 2
  %80 = ptrtoint ptr %buf.i56.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %buf.i56.i, align 1
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 12, ptr %78, align 1
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv1627.i, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57.i) #7
  %83 = getelementptr inbounds i8, ptr %msg.i57.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 262143, ptr %83, align 4
  %85 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 4
  %conv.i59.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i57.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i59.i, ptr %msg.i57.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i60.i, align 2
  %buf2.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf2.i62.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i56.i, ptr %buf2.i62.i, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call.i63.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i57.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i63.i)
  %cmp.not.i64.i = icmp eq i32 %call.i63.i, 1
  br i1 %cmp.not.i64.i, label %ves1820_writereg.exit55.i.ves1820_writereg.exit68.i_crit_edge, label %do.end.i67.i

ves1820_writereg.exit55.i.ves1820_writereg.exit68.i_crit_edge: ; preds = %ves1820_writereg.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit68.i

do.end.i67.i:                                     ; preds = %ves1820_writereg.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i65.i = zext i8 %conv1627.i to i32
  %call6.i66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 12, i32 noundef %conv5.i65.i, i32 noundef %call.i63.i) #11
  br label %ves1820_writereg.exit68.i

ves1820_writereg.exit68.i:                        ; preds = %do.end.i67.i, %ves1820_writereg.exit55.i.ves1820_writereg.exit68.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i56.i) #7
  %conv1629.i = trunc i32 %27 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i69.i) #7
  %94 = getelementptr inbounds [3 x i8], ptr %buf.i69.i, i32 0, i32 1
  %95 = getelementptr inbounds [3 x i8], ptr %buf.i69.i, i32 0, i32 2
  %96 = ptrtoint ptr %buf.i69.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %buf.i69.i, align 1
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 13, ptr %94, align 1
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1629.i, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70.i) #7
  %99 = getelementptr inbounds i8, ptr %msg.i70.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 262143, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv.i72.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i70.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i72.i, ptr %msg.i70.i, align 4
  %flags.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i73.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i73.i, align 2
  %buf2.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf2.i75.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i69.i, ptr %buf2.i75.i, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i76.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i70.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i76.i)
  %cmp.not.i77.i = icmp eq i32 %call.i76.i, 1
  br i1 %cmp.not.i77.i, label %ves1820_writereg.exit68.i.ves1820_writereg.exit81.i_crit_edge, label %do.end.i80.i

ves1820_writereg.exit68.i.ves1820_writereg.exit81.i_crit_edge: ; preds = %ves1820_writereg.exit68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit81.i

do.end.i80.i:                                     ; preds = %ves1820_writereg.exit68.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef %27, i32 noundef %call.i76.i) #11
  br label %ves1820_writereg.exit81.i

ves1820_writereg.exit81.i:                        ; preds = %do.end.i80.i, %ves1820_writereg.exit68.i.ves1820_writereg.exit81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i69.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i82.i) #7
  %110 = getelementptr inbounds [3 x i8], ptr %buf.i82.i, i32 0, i32 1
  %111 = getelementptr inbounds [3 x i8], ptr %buf.i82.i, i32 0, i32 2
  %112 = ptrtoint ptr %buf.i82.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %buf.i82.i, align 1
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 14, ptr %110, align 1
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %or1609.i, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i83.i) #7
  %115 = getelementptr inbounds i8, ptr %msg.i83.i, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 262143, ptr %115, align 4
  %117 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %config.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 4
  %conv.i85.i = zext i8 %120 to i16
  %121 = ptrtoint ptr %msg.i83.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i85.i, ptr %msg.i83.i, align 4
  %flags.i86.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83.i, i32 0, i32 1
  %122 = ptrtoint ptr %flags.i86.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i86.i, align 2
  %buf2.i88.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83.i, i32 0, i32 3
  %123 = ptrtoint ptr %buf2.i88.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i82.i, ptr %buf2.i88.i, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %call.i89.i = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg.i83.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i89.i)
  %cmp.not.i90.i = icmp eq i32 %call.i89.i, 1
  br i1 %cmp.not.i90.i, label %ves1820_writereg.exit81.i.ves1820_set_symbolrate.exit_crit_edge, label %do.end.i93.i

ves1820_writereg.exit81.i.ves1820_set_symbolrate.exit_crit_edge: ; preds = %ves1820_writereg.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_set_symbolrate.exit

do.end.i93.i:                                     ; preds = %ves1820_writereg.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i91.i = zext i8 %or1609.i to i32
  %call6.i92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 14, i32 noundef %conv5.i91.i, i32 noundef %call.i89.i) #11
  br label %ves1820_set_symbolrate.exit

ves1820_set_symbolrate.exit:                      ; preds = %do.end.i93.i, %ves1820_writereg.exit81.i.ves1820_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i83.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i82.i) #7
  %pwm = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 4
  %126 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pwm, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %128 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %129 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %130 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %buf.i, align 1
  %131 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 52, ptr %128, align 1
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %127, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %133 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 262143, ptr %133, align 4
  %135 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 4
  %conv.i57 = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i57, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %141 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %buf.i, ptr %buf2.i, align 4
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %ves1820_set_symbolrate.exit.ves1820_writereg.exit_crit_edge, label %do.end.i

ves1820_set_symbolrate.exit.ves1820_writereg.exit_crit_edge: ; preds = %ves1820_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit

do.end.i:                                         ; preds = %ves1820_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %127 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 52, i32 noundef %conv5.i, i32 noundef %call.i) #11
  br label %ves1820_writereg.exit

ves1820_writereg.exit:                            ; preds = %do.end.i, %ves1820_set_symbolrate.exit.ves1820_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %arrayidx = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x01, i32 0, i32 %sub
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i58) #7
  %146 = getelementptr inbounds [3 x i8], ptr %buf.i58, i32 0, i32 1
  %147 = getelementptr inbounds [3 x i8], ptr %buf.i58, i32 0, i32 2
  %148 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %buf.i58, align 1
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %146, align 1
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %145, ptr %147, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59) #7
  %151 = getelementptr inbounds i8, ptr %msg.i59, i32 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 262143, ptr %151, align 4
  %153 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %config.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 4
  %conv.i61 = zext i8 %156 to i16
  %157 = ptrtoint ptr %msg.i59 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv.i61, ptr %msg.i59, align 4
  %flags.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %flags.i62, align 2
  %buf2.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59, i32 0, i32 3
  %159 = ptrtoint ptr %buf2.i64 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %buf.i58, ptr %buf2.i64, align 4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %call.i65 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i59, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65)
  %cmp.not.i66 = icmp eq i32 %call.i65, 1
  br i1 %cmp.not.i66, label %ves1820_writereg.exit.ves1820_writereg.exit70_crit_edge, label %do.end.i69

ves1820_writereg.exit.ves1820_writereg.exit70_crit_edge: ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit70

do.end.i69:                                       ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i67 = zext i8 %145 to i32
  %call6.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %conv5.i67, i32 noundef %call.i65) #11
  br label %ves1820_writereg.exit70

ves1820_writereg.exit70:                          ; preds = %do.end.i69, %ves1820_writereg.exit.ves1820_writereg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i58) #7
  %arrayidx17 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x05, i32 0, i32 %sub
  %162 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx17, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i71) #7
  %164 = getelementptr inbounds [3 x i8], ptr %buf.i71, i32 0, i32 1
  %165 = getelementptr inbounds [3 x i8], ptr %buf.i71, i32 0, i32 2
  %166 = ptrtoint ptr %buf.i71 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %buf.i71, align 1
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 5, ptr %164, align 1
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %163, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i72) #7
  %169 = getelementptr inbounds i8, ptr %msg.i72, i32 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 262143, ptr %169, align 4
  %171 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %config.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 4
  %conv.i74 = zext i8 %174 to i16
  %175 = ptrtoint ptr %msg.i72 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv.i74, ptr %msg.i72, align 4
  %flags.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 1
  %176 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i75, align 2
  %buf2.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 3
  %177 = ptrtoint ptr %buf2.i77 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %buf.i71, ptr %buf2.i77, align 4
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %call.i78 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i72, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78)
  %cmp.not.i79 = icmp eq i32 %call.i78, 1
  br i1 %cmp.not.i79, label %ves1820_writereg.exit70.ves1820_writereg.exit83_crit_edge, label %do.end.i82

ves1820_writereg.exit70.ves1820_writereg.exit83_crit_edge: ; preds = %ves1820_writereg.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit83

do.end.i82:                                       ; preds = %ves1820_writereg.exit70
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i80 = zext i8 %163 to i32
  %call6.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 5, i32 noundef %conv5.i80, i32 noundef %call.i78) #11
  br label %ves1820_writereg.exit83

ves1820_writereg.exit83:                          ; preds = %do.end.i82, %ves1820_writereg.exit70.ves1820_writereg.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i72) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i71) #7
  %arrayidx19 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x08, i32 0, i32 %sub
  %180 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx19, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i84) #7
  %182 = getelementptr inbounds [3 x i8], ptr %buf.i84, i32 0, i32 1
  %183 = getelementptr inbounds [3 x i8], ptr %buf.i84, i32 0, i32 2
  %184 = ptrtoint ptr %buf.i84 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %buf.i84, align 1
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 8, ptr %182, align 1
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %181, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85) #7
  %187 = getelementptr inbounds i8, ptr %msg.i85, i32 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 262143, ptr %187, align 4
  %189 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %config.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %190, align 4
  %conv.i87 = zext i8 %192 to i16
  %193 = ptrtoint ptr %msg.i85 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv.i87, ptr %msg.i85, align 4
  %flags.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85, i32 0, i32 1
  %194 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %flags.i88, align 2
  %buf2.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85, i32 0, i32 3
  %195 = ptrtoint ptr %buf2.i90 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %buf.i84, ptr %buf2.i90, align 4
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %call.i91 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %msg.i85, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91)
  %cmp.not.i92 = icmp eq i32 %call.i91, 1
  br i1 %cmp.not.i92, label %ves1820_writereg.exit83.ves1820_writereg.exit96_crit_edge, label %do.end.i95

ves1820_writereg.exit83.ves1820_writereg.exit96_crit_edge: ; preds = %ves1820_writereg.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit96

do.end.i95:                                       ; preds = %ves1820_writereg.exit83
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i93 = zext i8 %181 to i32
  %call6.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef %conv5.i93, i32 noundef %call.i91) #11
  br label %ves1820_writereg.exit96

ves1820_writereg.exit96:                          ; preds = %do.end.i95, %ves1820_writereg.exit83.ves1820_writereg.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i84) #7
  %arrayidx21 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x09, i32 0, i32 %sub
  %198 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx21, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i97) #7
  %200 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 1
  %201 = getelementptr inbounds [3 x i8], ptr %buf.i97, i32 0, i32 2
  %202 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %buf.i97, align 1
  %203 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 9, ptr %200, align 1
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %199, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98) #7
  %205 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 262143, ptr %205, align 4
  %207 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %config.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %208, align 4
  %conv.i100 = zext i8 %210 to i16
  %211 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv.i100, ptr %msg.i98, align 4
  %flags.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %212 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %flags.i101, align 2
  %buf2.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %213 = ptrtoint ptr %buf2.i103 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %buf.i97, ptr %buf2.i103, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %call.i104 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %msg.i98, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104)
  %cmp.not.i105 = icmp eq i32 %call.i104, 1
  br i1 %cmp.not.i105, label %ves1820_writereg.exit96.ves1820_writereg.exit109_crit_edge, label %do.end.i108

ves1820_writereg.exit96.ves1820_writereg.exit109_crit_edge: ; preds = %ves1820_writereg.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit109

do.end.i108:                                      ; preds = %ves1820_writereg.exit96
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i106 = zext i8 %199 to i32
  %call6.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef %conv5.i106, i32 noundef %call.i104) #11
  br label %ves1820_writereg.exit109

ves1820_writereg.exit109:                         ; preds = %do.end.i108, %ves1820_writereg.exit96.ves1820_writereg.exit109_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i97) #7
  %arrayidx23 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x00, i32 0, i32 %sub
  %216 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx23, align 1
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %218 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %inversion, align 4
  %reg01.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 3
  %220 = ptrtoint ptr %reg01.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %reg01.i, align 4
  %222 = and i8 %221, 98
  %or1.i = or i8 %222, %217
  %223 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values)
  switch i32 %219, label %ves1820_writereg.exit109.if.end31.i_crit_edge [
    i32 1, label %if.then.i
    i32 0, label %if.then15.i
  ]

ves1820_writereg.exit109.if.end31.i_crit_edge:    ; preds = %ves1820_writereg.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then.i:                                        ; preds = %ves1820_writereg.exit109
  %224 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %config.i, align 4
  %invert.i = getelementptr inbounds %struct.ves1820_config, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load.i = load i8, ptr %invert.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %227 = or i8 %or1.i, 32
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %228 = and i8 %or1.i, -33
  br label %if.end31.i

if.then15.i:                                      ; preds = %ves1820_writereg.exit109
  %229 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %config.i, align 4
  %invert17.i = getelementptr inbounds %struct.ves1820_config, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %invert17.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %bf.load18.i = load i8, ptr %invert17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18.i)
  %tobool20.not.i = icmp sgt i8 %bf.load18.i, -1
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else25.i

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = and i8 %or1.i, -33
  br label %if.end31.i

if.else25.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %233 = or i8 %or1.i, 32
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else25.i, %if.then21.i, %if.else.i, %if.then5.i, %ves1820_writereg.exit109.if.end31.i_crit_edge
  %reg0.addr.0.i = phi i8 [ %228, %if.else.i ], [ %227, %if.then5.i ], [ %233, %if.else25.i ], [ %232, %if.then21.i ], [ %or1.i, %ves1820_writereg.exit109.if.end31.i_crit_edge ]
  %and33.i = and i8 %reg0.addr.0.i, -2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i110) #7
  %234 = getelementptr inbounds [3 x i8], ptr %buf.i.i110, i32 0, i32 1
  %235 = getelementptr inbounds [3 x i8], ptr %buf.i.i110, i32 0, i32 2
  %236 = ptrtoint ptr %buf.i.i110 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %buf.i.i110, align 1
  %237 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %234, align 1
  %238 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %and33.i, ptr %235, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i111) #7
  %239 = getelementptr inbounds i8, ptr %msg.i.i111, i32 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 262143, ptr %239, align 4
  %241 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %config.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %242, align 4
  %conv.i.i113 = zext i8 %244 to i16
  %245 = ptrtoint ptr %msg.i.i111 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv.i.i113, ptr %msg.i.i111, align 4
  %flags.i.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i111, i32 0, i32 1
  %246 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %flags.i.i114, align 2
  %buf2.i.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i111, i32 0, i32 3
  %247 = ptrtoint ptr %buf2.i.i115 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %buf.i.i110, ptr %buf2.i.i115, align 4
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %call.i.i116 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i.i111, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i116)
  %cmp.not.i.i117 = icmp eq i32 %call.i.i116, 1
  br i1 %cmp.not.i.i117, label %if.end31.i.ves1820_writereg.exit.i121_crit_edge, label %do.end.i.i120

if.end31.i.ves1820_writereg.exit.i121_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit.i121

do.end.i.i120:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i.i118 = zext i8 %and33.i to i32
  %call6.i.i119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %conv5.i.i118, i32 noundef %call.i.i116) #11
  br label %ves1820_writereg.exit.i121

ves1820_writereg.exit.i121:                       ; preds = %do.end.i.i120, %if.end31.i.ves1820_writereg.exit.i121_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i111) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i110) #7
  %250 = or i8 %reg0.addr.0.i, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i2.i) #7
  %251 = getelementptr inbounds [3 x i8], ptr %buf.i2.i, i32 0, i32 1
  %252 = getelementptr inbounds [3 x i8], ptr %buf.i2.i, i32 0, i32 2
  %253 = ptrtoint ptr %buf.i2.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %buf.i2.i, align 1
  %254 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %251, align 1
  %255 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %250, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3.i) #7
  %256 = getelementptr inbounds i8, ptr %msg.i3.i, i32 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 262143, ptr %256, align 4
  %258 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %config.i, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %259, align 4
  %conv.i5.i = zext i8 %261 to i16
  %262 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv.i5.i, ptr %msg.i3.i, align 4
  %flags.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 1
  %263 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %flags.i6.i, align 2
  %buf2.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 3
  %264 = ptrtoint ptr %buf2.i8.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %buf.i2.i, ptr %buf2.i8.i, align 4
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %1, align 4
  %call.i9.i = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %msg.i3.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9.i)
  %cmp.not.i10.i = icmp eq i32 %call.i9.i, 1
  br i1 %cmp.not.i10.i, label %ves1820_writereg.exit.i121.ves1820_setup_reg0.exit_crit_edge, label %do.end.i13.i

ves1820_writereg.exit.i121.ves1820_setup_reg0.exit_crit_edge: ; preds = %ves1820_writereg.exit.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_setup_reg0.exit

do.end.i13.i:                                     ; preds = %ves1820_writereg.exit.i121
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i11.i = zext i8 %250 to i32
  %call6.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %conv5.i11.i, i32 noundef %call.i9.i) #11
  br label %ves1820_setup_reg0.exit

ves1820_setup_reg0.exit:                          ; preds = %do.end.i13.i, %ves1820_writereg.exit.i121.ves1820_setup_reg0.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i2.i) #7
  %267 = ptrtoint ptr %reg01.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %reg0.addr.0.i, ptr %reg01.i, align 4
  %268 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %config.i, align 4
  %selagc = getelementptr inbounds %struct.ves1820_config, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %selagc to i32
  call void @__asan_load1_noabort(i32 %270)
  %bf.load = load i8, ptr %selagc, align 4
  %271 = lshr i8 %bf.load, 3
  %272 = and i8 %271, 8
  %273 = or i8 %272, -109
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i122) #7
  %274 = getelementptr inbounds [3 x i8], ptr %buf.i122, i32 0, i32 1
  %275 = getelementptr inbounds [3 x i8], ptr %buf.i122, i32 0, i32 2
  %276 = ptrtoint ptr %buf.i122 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %buf.i122, align 1
  %277 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 2, ptr %274, align 1
  %278 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %273, ptr %275, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123) #7
  %279 = getelementptr inbounds i8, ptr %msg.i123, i32 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 262143, ptr %279, align 4
  %281 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %config.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %282, align 4
  %conv.i125 = zext i8 %284 to i16
  %285 = ptrtoint ptr %msg.i123 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv.i125, ptr %msg.i123, align 4
  %flags.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i126 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i126, align 2
  %buf2.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 3
  %287 = ptrtoint ptr %buf2.i128 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %buf.i122, ptr %buf2.i128, align 4
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %1, align 4
  %call.i129 = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %msg.i123, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i129)
  %cmp.not.i130 = icmp eq i32 %call.i129, 1
  br i1 %cmp.not.i130, label %ves1820_setup_reg0.exit.ves1820_writereg.exit134_crit_edge, label %do.end.i133

ves1820_setup_reg0.exit.ves1820_writereg.exit134_crit_edge: ; preds = %ves1820_setup_reg0.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit134

do.end.i133:                                      ; preds = %ves1820_setup_reg0.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i131 = zext i8 %273 to i32
  %call6.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef %conv5.i131, i32 noundef %call.i129) #11
  br label %ves1820_writereg.exit134

ves1820_writereg.exit134:                         ; preds = %do.end.i133, %ves1820_setup_reg0.exit.ves1820_writereg.exit134_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i122) #7
  br label %cleanup

cleanup:                                          ; preds = %ves1820_writereg.exit134, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ves1820_writereg.exit134 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ves1820_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 200, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %b0.i55 = alloca [2 x i8], align 1
  %b1.i56 = alloca [1 x i8], align 1
  %msg.i57 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 17, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %conv = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i55) #7
  %25 = getelementptr inbounds [2 x i8], ptr %b0.i55, i32 0, i32 1
  %26 = ptrtoint ptr %b0.i55 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %b0.i55, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 25, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i56) #7
  %28 = ptrtoint ptr %b1.i56 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i56, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i57) #7
  %29 = getelementptr inbounds i8, ptr %msg.i57, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i59 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i59, ptr %msg.i57, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i60, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %29, align 4
  %buf.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i55, ptr %buf.i62, align 4
  %arrayinit.element2.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1
  %39 = load i8, ptr %32, align 4
  %conv6.i64 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element2.i63 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i64, ptr %arrayinit.element2.i63, align 4
  %flags7.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 1
  %41 = ptrtoint ptr %flags7.i65 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags7.i65, align 2
  %len8.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 2
  %42 = ptrtoint ptr %len8.i66 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len8.i66, align 4
  %buf9.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 3
  %43 = ptrtoint ptr %buf9.i67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i56, ptr %buf9.i67, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i68 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i57, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i68)
  %cmp.not.i69 = icmp eq i32 %call.i68, 2
  br i1 %cmp.not.i69, label %ves1820_readreg.exit.ves1820_readreg.exit72_crit_edge, label %do.end.i71

ves1820_readreg.exit.ves1820_readreg.exit72_crit_edge: ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit72

do.end.i71:                                       ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 25, i32 noundef %call.i68) #11
  br label %ves1820_readreg.exit72

ves1820_readreg.exit72:                           ; preds = %do.end.i71, %ves1820_readreg.exit.ves1820_readreg.exit72_crit_edge
  %46 = ptrtoint ptr %b1.i56 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i56, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i57) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i56) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i55) #7
  %48 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not = icmp eq i32 %48, 0
  br i1 %tobool.not, label %ves1820_readreg.exit72.if.end7_crit_edge, label %do.end

ves1820_readreg.exit72.if.end7_crit_edge:         ; preds = %ves1820_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %ves1820_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool3.not, ptr @.str.9, ptr @.str.8
  %conv4 = sext i8 %47 to i32
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %49 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %symbol_rate, align 4
  %51 = mul i32 %50, %conv4
  %sub = sub i32 0, %51
  %shr = ashr i32 %sub, 10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %cond, i32 noundef %conv4, i32 noundef %shr) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %ves1820_readreg.exit72.if.end7_crit_edge
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i, align 4
  %invert = getelementptr inbounds %struct.ves1820_config, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %invert, align 4
  %reg0 = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg0, align 4
  %57 = lshr i8 %56, 5
  %.lobit = and i8 %57, 1
  %bf.load.lobit = lshr i8 %bf.load, 7
  %.sink.in = xor i8 %.lobit, %bf.load.lobit
  %.sink = zext i8 %.sink.in to i32
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %58, align 4
  %reg021 = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %reg021 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg021, align 4
  %62 = lshr i8 %61, 2
  %63 = and i8 %62, 7
  %narrow = add nuw nsw i8 %63, 1
  %add = zext i8 %narrow to i32
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %64 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add, ptr %modulation, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %65 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %fec_inner, align 4
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %add25 = add i32 %67, 31250
  %68 = urem i32 %add25, 62500
  %mul26 = sub i32 %add25, %68
  store i32 %mul26, ptr %p, align 4
  %and28 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end7.if.end37_crit_edge, label %if.then30

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then30:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %symbol_rate31 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %69 = ptrtoint ptr %symbol_rate31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %symbol_rate31, align 4
  %conv32 = sext i8 %47 to i32
  %mul33 = mul i32 %70, %conv32
  %shr34 = ashr i32 %mul33, 10
  %sub36 = sub i32 %mul26, %shr34
  %71 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub36, ptr %p, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end7.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b0.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
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
  store i16 2, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv6.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf9.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 17, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %conv = zext i8 %25 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ves1820_readreg.exit.if.end_crit_edge, label %if.then

ves1820_readreg.exit.if.end_crit_edge:            ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ves1820_readreg.exit.if.end_crit_edge
  %and1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %or9 = or i32 %29, 6
  store i32 %or9, ptr %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %and11 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %or14 = or i32 %31, 8
  store i32 %or14, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %and16 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %or19 = or i32 %33, 16
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i27 = alloca [2 x i8], align 1
  %b1.i28 = alloca [1 x i8], align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i9 = alloca [2 x i8], align 1
  %b1.i10 = alloca [1 x i8], align 1
  %msg.i11 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i9) #7
  %25 = getelementptr inbounds [2 x i8], ptr %b0.i9, i32 0, i32 1
  %26 = ptrtoint ptr %b0.i9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %b0.i9, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 21, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i10) #7
  %28 = ptrtoint ptr %b1.i10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i11) #7
  %29 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i13 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i13, ptr %msg.i11, align 4
  %flags.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i14, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %29, align 4
  %buf.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i9, ptr %buf.i16, align 4
  %arrayinit.element2.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1
  %39 = load i8, ptr %32, align 4
  %conv6.i18 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element2.i17 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i18, ptr %arrayinit.element2.i17, align 4
  %flags7.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 1
  %41 = ptrtoint ptr %flags7.i19 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags7.i19, align 2
  %len8.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 2
  %42 = ptrtoint ptr %len8.i20 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len8.i20, align 4
  %buf9.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 3
  %43 = ptrtoint ptr %buf9.i21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i10, ptr %buf9.i21, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i22 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i11, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i22)
  %cmp.not.i23 = icmp eq i32 %call.i22, 2
  br i1 %cmp.not.i23, label %ves1820_readreg.exit.ves1820_readreg.exit26_crit_edge, label %do.end.i25

ves1820_readreg.exit.ves1820_readreg.exit26_crit_edge: ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit26

do.end.i25:                                       ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef %call.i22) #11
  br label %ves1820_readreg.exit26

ves1820_readreg.exit26:                           ; preds = %do.end.i25, %ves1820_readreg.exit.ves1820_readreg.exit26_crit_edge
  %46 = ptrtoint ptr %b1.i10 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i11) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i10) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i9) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i27) #7
  %48 = getelementptr inbounds [2 x i8], ptr %b0.i27, i32 0, i32 1
  %49 = ptrtoint ptr %b0.i27 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %b0.i27, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 22, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i28) #7
  %51 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %b1.i28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #7
  %52 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %conv.i31 = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i32, align 2
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %52, align 4
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b0.i27, ptr %buf.i34, align 4
  %arrayinit.element2.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %62 = load i8, ptr %55, align 4
  %conv6.i36 = zext i8 %62 to i16
  %63 = ptrtoint ptr %arrayinit.element2.i35 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv6.i36, ptr %arrayinit.element2.i35, align 4
  %flags7.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %64 = ptrtoint ptr %flags7.i37 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %flags7.i37, align 2
  %len8.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %65 = ptrtoint ptr %len8.i38 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %len8.i38, align 4
  %buf9.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %66 = ptrtoint ptr %buf9.i39 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %b1.i28, ptr %buf9.i39, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i29, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 2
  br i1 %cmp.not.i41, label %ves1820_readreg.exit26.ves1820_readreg.exit44_crit_edge, label %do.end.i43

ves1820_readreg.exit26.ves1820_readreg.exit44_crit_edge: ; preds = %ves1820_readreg.exit26
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit44

do.end.i43:                                       ; preds = %ves1820_readreg.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 22, i32 noundef %call.i40) #11
  br label %ves1820_readreg.exit44

ves1820_readreg.exit44:                           ; preds = %do.end.i43, %ves1820_readreg.exit26.ves1820_readreg.exit44_crit_edge
  %conv2 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv = zext i8 %24 to i32
  %or = or i32 %shl, %conv
  %69 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %b1.i28, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i27) #7
  %71 = and i8 %70, 15
  %and = zext i8 %71 to i32
  %shl5 = shl nuw nsw i32 %and, 16
  %or6 = or i32 %shl5, %or
  %mul = mul nuw nsw i32 %or6, 10
  %72 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 23, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 23, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv2 = trunc i32 %or to i16
  %25 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv2, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %neg = xor i8 %24, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %25 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1820_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i20 = alloca [3 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %buf.i11 = alloca [3 x i8], align 1
  %msg.i12 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 19, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1820_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.ves1820_readreg.exit_crit_edge, label %do.end.i

entry.ves1820_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 19, i32 noundef %call.i) #11
  br label %ves1820_readreg.exit

ves1820_readreg.exit:                             ; preds = %do.end.i, %entry.ves1820_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %25 = and i8 %24, 127
  %and = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %25)
  %cmp = icmp eq i8 %25, 127
  %spec.select = select i1 %cmp, i32 -1, i32 %and
  %26 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i11) #7
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i11, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i11, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %buf.i11, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -64, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12) #7
  %32 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 262143, ptr %32, align 4
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %conv.i14 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i14, ptr %msg.i12, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i15, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %40 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i11, ptr %buf2.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i17 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i12, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i17)
  %cmp.not.i18 = icmp eq i32 %call.i17, 1
  br i1 %cmp.not.i18, label %ves1820_readreg.exit.ves1820_writereg.exit_crit_edge, label %do.end.i19

ves1820_readreg.exit.ves1820_writereg.exit_crit_edge: ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit

do.end.i19:                                       ; preds = %ves1820_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 192, i32 noundef %call.i17) #11
  br label %ves1820_writereg.exit

ves1820_writereg.exit:                            ; preds = %do.end.i19, %ves1820_readreg.exit.ves1820_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i11) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i20) #7
  %43 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 2
  %45 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %buf.i20, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %43, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -32, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #7
  %48 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 262143, ptr %48, align 4
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %conv.i23 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i24, align 2
  %buf2.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %56 = ptrtoint ptr %buf2.i26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i20, ptr %buf2.i26, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i21, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %ves1820_writereg.exit.ves1820_writereg.exit31_crit_edge, label %do.end.i30

ves1820_writereg.exit.ves1820_writereg.exit31_crit_edge: ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ves1820_writereg.exit31

do.end.i30:                                       ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 224, i32 noundef %call.i27) #11
  br label %ves1820_writereg.exit31

ves1820_writereg.exit31:                          ; preds = %do.end.i30, %ves1820_writereg.exit.ves1820_writereg.exit31_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i20) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 384, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ves1820_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ves1820_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__param_verbose, !7, !"__param_verbose", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 430, i32 1}
!8 = !{ptr @__UNIQUE_ID_verbosetype290, !7, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_verbose291, !10, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 431, i32 1}
!11 = !{ptr @__UNIQUE_ID_description292, !12, !"__UNIQUE_ID_description292", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 433, i32 1}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 434, i32 1}
!15 = !{ptr @__UNIQUE_ID_file294, !16, !"__UNIQUE_ID_file294", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 435, i32 1}
!17 = !{ptr @__UNIQUE_ID_license295, !16, !"__UNIQUE_ID_license295", i1 false, i1 false}
!18 = !{ptr @__ksymtab_ves1820_attach, !19, !"__ksymtab_ves1820_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 437, i32 1}
!20 = !{ptr @verbose, !21, !"verbose", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 35, i32 12}
!22 = !{ptr @ves1820_inittab, !23, !"ves1820_inittab", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 37, i32 11}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 75, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ves1820_readreg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ves1820_readreg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ves1820_ops, !30, !"ves1820_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 399, i32 38}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 56, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ves1820_writereg._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ves1820_writereg._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ves1820_set_parameters.reg0x00, !37, !"reg0x00", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 201, i32 18}
!38 = !{ptr @ves1820_set_parameters.reg0x01, !39, !"reg0x01", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 202, i32 18}
!40 = !{ptr @ves1820_set_parameters.reg0x05, !41, !"reg0x05", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 203, i32 18}
!42 = !{ptr @ves1820_set_parameters.reg0x08, !43, !"reg0x08", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 204, i32 18}
!44 = !{ptr @ves1820_set_parameters.reg0x09, !45, !"reg0x09", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 205, i32 18}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/ves1820.c", i32 314, i32 3}
!48 = !{ptr @ves1820_get_frontend._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ves1820_get_frontend._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__param_str_verbose, !7, !"__param_str_verbose", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 483437, i64 483464}
!63 = !{i64 483777, i64 483804, i64 483838, i64 483859}
