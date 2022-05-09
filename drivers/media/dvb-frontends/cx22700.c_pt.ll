; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx22700.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx22700.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx22700_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx22700_attach\09\09\09\09"
module asm "\09.long\09__crc_cx22700_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx22700_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx22700_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx22700_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx22700_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@cx22700_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX22700 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 860000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 1073753774 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @cx22700_release, ptr null, ptr @cx22700_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22700_set_frontend, ptr @cx22700_get_tune_settings, ptr @cx22700_get_frontend, ptr @cx22700_read_status, ptr @cx22700_read_ber, ptr @cx22700_read_signal_strength, ptr @cx22700_read_snr, ptr @cx22700_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22700_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"cx22700.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"cx22700.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"cx22700.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"cx22700.description=Conexant CX22700 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [32 x i8] c"cx22700.author=Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"cx22700.file=drivers/media/dvb-frontends/cx22700\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"cx22700.license=GPL\00", section ".modinfo", align 1
@__kstrtab_cx22700_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx22700_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx22700_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx22700_attach to i32), ptr @__kstrtab_cx22700_attach, ptr @__kstrtabns_cx22700_attach }, section "___ksymtab+cx22700_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx22700_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017cx22700: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx22700_readreg\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx22700.c\00", [58 x i8] zeroinitializer }, align 32
@cx22700_readreg._entry_ptr = internal global ptr @cx22700_readreg._entry, section ".printk_index", align 4
@cx22700_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx22700: cx22700_init: init chip\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx22700_init\00", [19 x i8] zeroinitializer }, align 32
@cx22700_init._entry_ptr = internal global ptr @cx22700_init._entry, section ".printk_index", align 4
@init_tab = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\04\10\05\09\06\00\08\04\09\00\0A\01\15@\16\10\17\87\18\17\1A\10%\04.\009\00:\04E\08F\02G\05", [60 x i8] zeroinitializer }, align 32
@cx22700_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx22700_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx22700_writereg._entry_ptr = internal global ptr @cx22700_writereg._entry, section ".printk_index", align 4
@cx22700_writereg._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [34 x i8] zeroinitializer }, align 32
@cx22700_writereg._entry_ptr.8 = internal global ptr @cx22700_writereg._entry.6, section ".printk_index", align 4
@cx22700_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx22700_set_inversion\00", [42 x i8] zeroinitializer }, align 32
@cx22700_set_inversion._entry_ptr = internal global ptr @cx22700_set_inversion._entry, section ".printk_index", align 4
@cx22700_set_tps.qam_tab = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\00\02", [28 x i8] zeroinitializer }, align 32
@cx22700_set_tps.fec_tab = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\02\00\03\04", [26 x i8] zeroinitializer }, align 32
@cx22700_set_tps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx22700_set_tps\00", [16 x i8] zeroinitializer }, align 32
@cx22700_set_tps._entry_ptr = internal global ptr @cx22700_set_tps._entry, section ".printk_index", align 4
@cx22700_get_tps.qam_tab = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@cx22700_get_tps.fec_tab = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@cx22700_get_tps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx22700_get_tps\00", [16 x i8] zeroinitializer }, align 32
@cx22700_get_tps._entry_ptr = internal global ptr @cx22700_get_tps._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"cx22700_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 399, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 30, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 83, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 230, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 36, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 64, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 69, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 96, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 115, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 116, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 119, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"qam_tab\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 182, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"fec_tab\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 183, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx22700.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 188, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_cx22700_attach, ptr @__param_debug, ptr @cx22700_get_tps._entry, ptr @cx22700_get_tps._entry_ptr, ptr @cx22700_init._entry, ptr @cx22700_init._entry_ptr, ptr @cx22700_readreg._entry, ptr @cx22700_readreg._entry_ptr, ptr @cx22700_set_inversion._entry, ptr @cx22700_set_inversion._entry_ptr, ptr @cx22700_set_tps._entry, ptr @cx22700_set_tps._entry_ptr, ptr @cx22700_writereg._entry, ptr @cx22700_writereg._entry.6, ptr @cx22700_writereg._entry_ptr, ptr @cx22700_writereg._entry_ptr.8, ptr @cx22700_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_tab, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @cx22700_set_tps.qam_tab, ptr @cx22700_set_tps.fec_tab, ptr @.str.10, ptr @cx22700_get_tps.qam_tab, ptr @cx22700_get_tps.fec_tab, ptr @.str.11], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_writereg._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_set_tps.qam_tab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_set_tps.fec_tab to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_set_tps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_get_tps.qam_tab to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_get_tps.fec_tab to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22700_get_tps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx22700_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1048) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.cx22700_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 1
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.do.end12.i_crit_edge, label %do.end.i

if.end.do.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.do.end12.i_crit_edge
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br i1 %cmp.not.i, label %cx22700_readreg.exit, label %do.end12.i.error_crit_edge

do.end12.i.error_crit_edge:                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

cx22700_readreg.exit:                             ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.cx22700_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx22700_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = call ptr @memcpy(ptr %ops, ptr @cx22700_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx22700_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %do.end12.i.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %cx22700_readreg.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %cx22700_readreg.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx22700_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i34 = alloca [2 x i8], align 1
  %msg.i35 = alloca %struct.i2c_msg, align 4
  %buf.i16 = alloca [2 x i8], align 1
  %msg.i17 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.end3.do.end4.i_crit_edge, label %do.end.i

do.end3.do.end4.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end3.do.end4.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i, label %do.end4.i.cx22700_writereg.exit_crit_edge, label %do.end10.i

do.end4.i.cx22700_writereg.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit

do.end10.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2, i32 noundef %call5.i) #10
  br label %cx22700_writereg.exit

cx22700_writereg.exit:                            ; preds = %do.end10.i, %do.end4.i.cx22700_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i16, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i16, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17) #6
  %21 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i19 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i19, ptr %msg.i17, align 4
  %flags.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i20, align 2
  %buf1.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i16, ptr %buf1.i22, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i23 = icmp eq i32 %30, 0
  br i1 %tobool.not.i23, label %cx22700_writereg.exit.do.end4.i28_crit_edge, label %do.end.i25

cx22700_writereg.exit.do.end4.i28_crit_edge:      ; preds = %cx22700_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i28

do.end.i25:                                       ; preds = %cx22700_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i28

do.end4.i28:                                      ; preds = %do.end.i25, %cx22700_writereg.exit.do.end4.i28_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call5.i26 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i17, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i26)
  %cmp.not.i27 = icmp eq i32 %call5.i26, 1
  br i1 %cmp.not.i27, label %do.end4.i28.cx22700_writereg.exit33_crit_edge, label %do.end10.i30

do.end4.i28.cx22700_writereg.exit33_crit_edge:    ; preds = %do.end4.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit33

do.end10.i30:                                     ; preds = %do.end4.i28
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, i32 noundef %call5.i26) #10
  br label %cx22700_writereg.exit33

cx22700_writereg.exit33:                          ; preds = %do.end10.i30, %do.end4.i28.cx22700_writereg.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16) #6
  call void @msleep(i32 noundef 10) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i34, i32 0, i32 1
  %34 = getelementptr inbounds i8, ptr %msg.i35, i32 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 1
  %buf1.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx22700_writereg.exit51.for.body_crit_edge, %cx22700_writereg.exit33
  %i.070 = phi i32 [ 0, %cx22700_writereg.exit33 ], [ %add8, %cx22700_writereg.exit51.for.body_crit_edge ]
  %arrayidx = getelementptr [36 x i8], ptr @init_tab, i32 0, i32 %i.070
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %add = or i32 %i.070, 1
  %arrayidx6 = getelementptr [36 x i8], ptr @init_tab, i32 0, i32 %add
  %37 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i34) #6
  %39 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %buf.i34, align 1
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i35) #6
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %34, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i37 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i37, ptr %msg.i35, align 4
  %47 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i38, align 2
  store i16 2, ptr %34, align 4
  %48 = ptrtoint ptr %buf1.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i34, ptr %buf1.i40, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i41 = icmp eq i32 %49, 0
  br i1 %tobool.not.i41, label %for.body.do.end4.i46_crit_edge, label %do.end.i43

for.body.do.end4.i46_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i46

do.end.i43:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i46

do.end4.i46:                                      ; preds = %do.end.i43, %for.body.do.end4.i46_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call5.i44 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i44)
  %cmp.not.i45 = icmp eq i32 %call5.i44, 1
  br i1 %cmp.not.i45, label %do.end4.i46.cx22700_writereg.exit51_crit_edge, label %do.end10.i48

do.end4.i46.cx22700_writereg.exit51_crit_edge:    ; preds = %do.end4.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit51

do.end10.i48:                                     ; preds = %do.end4.i46
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i8 %36 to i32
  %conv13.i = zext i8 %38 to i32
  %call14.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %conv12.i, i32 noundef %conv13.i, i32 noundef %call5.i44) #10
  br label %cx22700_writereg.exit51

cx22700_writereg.exit51:                          ; preds = %do.end10.i48, %do.end4.i46.cx22700_writereg.exit51_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i35) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i34) #6
  %add8 = add nuw nsw i32 %i.070, 2
  %cmp = icmp ult i32 %i.070, 34
  br i1 %cmp, label %cx22700_writereg.exit51.for.body_crit_edge, label %for.end

cx22700_writereg.exit51.for.body_crit_edge:       ; preds = %cx22700_writereg.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cx22700_writereg.exit51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #6
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %buf.i52, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #6
  %55 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %57 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i55 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i56, align 2
  %buf1.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %63 = ptrtoint ptr %buf1.i58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i52, ptr %buf1.i58, align 4
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i59 = icmp eq i32 %64, 0
  br i1 %tobool.not.i59, label %for.end.do.end4.i64_crit_edge, label %do.end.i61

for.end.do.end4.i64_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i64

do.end.i61:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i64

do.end4.i64:                                      ; preds = %do.end.i61, %for.end.do.end4.i64_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call5.i62 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i53, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i62)
  %cmp.not.i63 = icmp eq i32 %call5.i62, 1
  br i1 %cmp.not.i63, label %do.end4.i64.cx22700_writereg.exit69_crit_edge, label %do.end10.i66

do.end4.i64.cx22700_writereg.exit69_crit_edge:    ; preds = %do.end4.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit69

do.end10.i66:                                     ; preds = %do.end4.i64
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1, i32 noundef %call5.i62) #10
  br label %cx22700_writereg.exit69

cx22700_writereg.exit69:                          ; preds = %do.end10.i66, %do.end4.i64.cx22700_writereg.exit69_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i203 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i184 = alloca [2 x i8], align 1
  %msg.i185 = alloca %struct.i2c_msg, align 4
  %buf.i165 = alloca [2 x i8], align 1
  %msg.i166 = alloca %struct.i2c_msg, align 4
  %buf.i146 = alloca [2 x i8], align 1
  %msg.i147 = alloca %struct.i2c_msg, align 4
  %buf.i128 = alloca [2 x i8], align 1
  %msg.i129 = alloca %struct.i2c_msg, align 4
  %buf.i110 = alloca [2 x i8], align 1
  %msg.i111 = alloca %struct.i2c_msg, align 4
  %buf.i92 = alloca [2 x i8], align 1
  %msg.i93 = alloca %struct.i2c_msg, align 4
  %buf.i74 = alloca [2 x i8], align 1
  %msg.i75 = alloca %struct.i2c_msg, align 4
  %buf.i56 = alloca [2 x i8], align 1
  %msg.i57 = alloca %struct.i2c_msg, align 4
  %buf.i35.i = alloca [2 x i8], align 1
  %msg.i36.i = alloca %struct.i2c_msg, align 4
  %b0.i12.i = alloca [1 x i8], align 1
  %b1.i13.i = alloca [1 x i8], align 1
  %msg.i14.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i31 = alloca [2 x i8], align 1
  %msg.i32 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i, label %do.end4.i.cx22700_writereg.exit_crit_edge, label %do.end10.i

do.end4.i.cx22700_writereg.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit

do.end10.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2, i32 noundef %call5.i) #10
  br label %cx22700_writereg.exit

cx22700_writereg.exit:                            ; preds = %do.end10.i, %do.end4.i.cx22700_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i31, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %buf.i31, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32) #6
  %20 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv.i34 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i34, ptr %msg.i32, align 4
  %flags.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i35 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i35, align 2
  store i16 2, ptr %20, align 4
  %buf1.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i31, ptr %buf1.i37, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i38 = icmp eq i32 %29, 0
  br i1 %tobool.not.i38, label %cx22700_writereg.exit.do.end4.i43_crit_edge, label %do.end.i40

cx22700_writereg.exit.do.end4.i43_crit_edge:      ; preds = %cx22700_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i43

do.end.i40:                                       ; preds = %cx22700_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i43

do.end4.i43:                                      ; preds = %do.end.i40, %cx22700_writereg.exit.do.end4.i43_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call5.i41 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i41)
  %cmp.not.i42 = icmp eq i32 %call5.i41, 1
  br i1 %cmp.not.i42, label %do.end4.i43.cx22700_writereg.exit48_crit_edge, label %do.end10.i45

do.end4.i43.cx22700_writereg.exit48_crit_edge:    ; preds = %do.end4.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit48

do.end10.i45:                                     ; preds = %do.end4.i43
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, i32 noundef %call5.i41) #10
  br label %cx22700_writereg.exit48

cx22700_writereg.exit48:                          ; preds = %do.end10.i45, %do.end4.i43.cx22700_writereg.exit48_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31) #6
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %32 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %cx22700_writereg.exit48.if.end12_crit_edge, label %if.then

cx22700_writereg.exit48.if.end12_crit_edge:       ; preds = %cx22700_writereg.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %cx22700_writereg.exit48
  %call5 = call i32 %33(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %34 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %35, null
  br i1 %tobool7.not, label %if.then.if.end12_crit_edge, label %if.then8

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 %35(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then.if.end12_crit_edge, %cx22700_writereg.exit48.if.end12_crit_edge
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %36 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inversion, align 4
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i49 = icmp eq i32 %38, 0
  br i1 %tobool.not.i49, label %if.end12.do.end3.i_crit_edge, label %do.end.i51

if.end12.do.end3.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i51:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i51, %if.end12.do.end3.i_crit_edge
  %39 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %do.end3.i.cx22700_set_inversion.exit_crit_edge [
    i32 0, label %sw.bb9.i
    i32 1, label %sw.bb4.i
  ]

do.end3.i.cx22700_set_inversion.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_inversion.exit

sw.bb4.i:                                         ; preds = %do.end3.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %40 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 9, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %41 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %42 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i, align 2
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %42, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %52 = load i8, ptr %45, align 1
  %conv5.i.i = zext i8 %52 to i16
  %53 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %54 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %55 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %56 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %sw.bb4.i.do.end12.i.i_crit_edge, label %do.end.i.i

sw.bb4.i.do.end12.i.i_crit_edge:                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i.i

do.end.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %do.end.i.i, %sw.bb4.i.do.end12.i.i_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call14.i.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i.i)
  %cmp.not.i.i = icmp eq i32 %call14.i.i, 2
  br i1 %cmp.not.i.i, label %if.end17.i.i, label %do.end12.i.i.cx22700_readreg.exit.i_crit_edge

do.end12.i.i.cx22700_readreg.exit.i_crit_edge:    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit.i

if.end17.i.i:                                     ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %b1.i.i, align 1
  %phi.bo.i = or i8 %61, 1
  br label %cx22700_readreg.exit.i

cx22700_readreg.exit.i:                           ; preds = %if.end17.i.i, %do.end12.i.i.cx22700_readreg.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.bo.i, %if.end17.i.i ], [ -5, %do.end12.i.i.cx22700_readreg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %62 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %63 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 9, ptr %buf.i1.i, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i.i, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %65 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 196607, ptr %65, align 4
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv.i4.i = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i1.i, ptr %buf1.i.i, align 4
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i7.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i7.i, label %cx22700_readreg.exit.i.do.end4.i.i_crit_edge, label %do.end.i9.i

cx22700_readreg.exit.i.do.end4.i.i_crit_edge:     ; preds = %cx22700_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i.i

do.end.i9.i:                                      ; preds = %cx22700_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i9.i, %cx22700_readreg.exit.i.do.end4.i.i_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call5.i.i = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i)
  %cmp.not.i10.i = icmp eq i32 %call5.i.i, 1
  br i1 %cmp.not.i10.i, label %do.end4.i.i.cx22700_writereg.exit.i_crit_edge, label %do.end10.i.i

do.end4.i.i.cx22700_writereg.exit.i_crit_edge:    ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit.i

do.end10.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i.i = zext i8 %retval.0.i.i to i32
  %call14.i11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef %conv13.i.i, i32 noundef %call5.i.i) #10
  br label %cx22700_writereg.exit.i

cx22700_writereg.exit.i:                          ; preds = %do.end10.i.i, %do.end4.i.i.cx22700_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %cx22700_set_inversion.exit

sw.bb9.i:                                         ; preds = %do.end3.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i12.i) #6
  %77 = ptrtoint ptr %b0.i12.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 9, ptr %b0.i12.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13.i) #6
  %78 = ptrtoint ptr %b1.i13.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %b1.i13.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14.i) #6
  %79 = getelementptr inbounds i8, ptr %msg.i14.i, i32 4
  %80 = call ptr @memset(ptr %79, i32 255, i32 16)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i16.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i14.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i16.i, ptr %msg.i14.i, align 4
  %flags.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i17.i, align 2
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %79, align 4
  %buf.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i12.i, ptr %buf.i19.i, align 4
  %arrayinit.element.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 1
  %89 = load i8, ptr %82, align 1
  %conv5.i21.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %arrayinit.element.i20.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv5.i21.i, ptr %arrayinit.element.i20.i, align 4
  %flags6.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 1, i32 1
  %91 = ptrtoint ptr %flags6.i22.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags6.i22.i, align 2
  %len7.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 1, i32 2
  %92 = ptrtoint ptr %len7.i23.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len7.i23.i, align 4
  %buf8.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14.i, i32 1, i32 3
  %93 = ptrtoint ptr %buf8.i24.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i13.i, ptr %buf8.i24.i, align 4
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i25.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i25.i, label %sw.bb9.i.do.end12.i30.i_crit_edge, label %do.end.i27.i

sw.bb9.i.do.end12.i30.i_crit_edge:                ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i30.i

do.end.i27.i:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i30.i

do.end12.i30.i:                                   ; preds = %do.end.i27.i, %sw.bb9.i.do.end12.i30.i_crit_edge
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call14.i28.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i14.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i28.i)
  %cmp.not.i29.i = icmp eq i32 %call14.i28.i, 2
  br i1 %cmp.not.i29.i, label %if.end17.i32.i, label %do.end12.i30.i.cx22700_readreg.exit34.i_crit_edge

do.end12.i30.i.cx22700_readreg.exit34.i_crit_edge: ; preds = %do.end12.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit34.i

if.end17.i32.i:                                   ; preds = %do.end12.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %b1.i13.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %b1.i13.i, align 1
  %phi.bo54.i = and i8 %98, -2
  br label %cx22700_readreg.exit34.i

cx22700_readreg.exit34.i:                         ; preds = %if.end17.i32.i, %do.end12.i30.i.cx22700_readreg.exit34.i_crit_edge
  %retval.0.i33.i = phi i8 [ %phi.bo54.i, %if.end17.i32.i ], [ -6, %do.end12.i30.i.cx22700_readreg.exit34.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i12.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35.i) #6
  %99 = getelementptr inbounds [2 x i8], ptr %buf.i35.i, i32 0, i32 1
  %100 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 9, ptr %buf.i35.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %retval.0.i33.i, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36.i) #6
  %102 = getelementptr inbounds i8, ptr %msg.i36.i, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 196607, ptr %102, align 4
  %104 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 1
  %conv.i38.i = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i36.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i38.i, ptr %msg.i36.i, align 4
  %flags.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i39.i, align 2
  %buf1.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf1.i41.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf.i35.i, ptr %buf1.i41.i, align 4
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i42.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i42.i, label %cx22700_readreg.exit34.i.do.end4.i47.i_crit_edge, label %do.end.i44.i

cx22700_readreg.exit34.i.do.end4.i47.i_crit_edge: ; preds = %cx22700_readreg.exit34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i47.i

do.end.i44.i:                                     ; preds = %cx22700_readreg.exit34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i47.i

do.end4.i47.i:                                    ; preds = %do.end.i44.i, %cx22700_readreg.exit34.i.do.end4.i47.i_crit_edge
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call5.i45.i = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i36.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i45.i)
  %cmp.not.i46.i = icmp eq i32 %call5.i45.i, 1
  br i1 %cmp.not.i46.i, label %do.end4.i47.i.cx22700_writereg.exit53.i_crit_edge, label %do.end10.i50.i

do.end4.i47.i.cx22700_writereg.exit53.i_crit_edge: ; preds = %do.end4.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit53.i

do.end10.i50.i:                                   ; preds = %do.end4.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i48.i = zext i8 %retval.0.i33.i to i32
  %call14.i49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef %conv13.i48.i, i32 noundef %call5.i45.i) #10
  br label %cx22700_writereg.exit53.i

cx22700_writereg.exit53.i:                        ; preds = %do.end10.i50.i, %do.end4.i47.i.cx22700_writereg.exit53.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35.i) #6
  br label %cx22700_set_inversion.exit

cx22700_set_inversion.exit:                       ; preds = %cx22700_writereg.exit53.i, %cx22700_writereg.exit.i, %do.end3.i.cx22700_set_inversion.exit_crit_edge
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i52 = icmp eq i32 %114, 0
  br i1 %tobool.not.i52, label %cx22700_set_inversion.exit.do.end3.i55_crit_edge, label %do.end.i54

cx22700_set_inversion.exit.do.end3.i55_crit_edge: ; preds = %cx22700_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i55

do.end.i54:                                       ; preds = %cx22700_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #10
  br label %do.end3.i55

do.end3.i55:                                      ; preds = %do.end.i54, %cx22700_set_inversion.exit.do.end3.i55_crit_edge
  %code_rate_HP.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %115 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %code_rate_HP.i, align 4
  %117 = add i32 %116, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %117)
  %118 = icmp ult i32 %117, -7
  br i1 %118, label %do.end3.i55.cx22700_set_tps.exit_crit_edge, label %if.end7.i

do.end3.i55.cx22700_set_tps.exit_crit_edge:       ; preds = %do.end3.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end7.i:                                        ; preds = %do.end3.i55
  %code_rate_LP.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %119 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %code_rate_LP.i, align 4
  %121 = add i32 %120, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %121)
  %122 = icmp ult i32 %121, -7
  br i1 %122, label %if.end7.i.cx22700_set_tps.exit_crit_edge, label %if.end13.i

if.end7.i.cx22700_set_tps.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp15.i = icmp eq i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp18.i = icmp eq i32 %120, 4
  %or.cond3.i = select i1 %cmp15.i, i1 true, i1 %cmp18.i
  br i1 %or.cond3.i, label %if.end13.i.cx22700_set_tps.exit_crit_edge, label %if.end20.i

if.end13.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end20.i:                                       ; preds = %if.end13.i
  %guard_interval.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %123 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %guard_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp24.i = icmp ugt i32 %124, 3
  br i1 %cmp24.i, label %if.end20.i.cx22700_set_tps.exit_crit_edge, label %if.end26.i

if.end20.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end26.i:                                       ; preds = %if.end20.i
  %transmission_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %125 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %switch.i = icmp ult i32 %126, 2
  br i1 %switch.i, label %if.end31.i, label %if.end26.i.cx22700_set_tps.exit_crit_edge

if.end26.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end31.i:                                       ; preds = %if.end26.i
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %127 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %modulation.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %128, label %if.end31.i.cx22700_set_tps.exit_crit_edge [
    i32 0, label %if.end31.i.if.end40.i_crit_edge
    i32 1, label %if.end31.i.if.end40.i_crit_edge214
    i32 3, label %if.end31.i.if.end40.i_crit_edge215
  ]

if.end31.i.if.end40.i_crit_edge215:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end31.i.if.end40.i_crit_edge214:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end31.i.if.end40.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end31.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end40.i:                                       ; preds = %if.end31.i.if.end40.i_crit_edge, %if.end31.i.if.end40.i_crit_edge214, %if.end31.i.if.end40.i_crit_edge215
  %hierarchy.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %130 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hierarchy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp44.i = icmp ugt i32 %131, 3
  br i1 %cmp44.i, label %if.end40.i.cx22700_set_tps.exit_crit_edge, label %if.end46.i

if.end40.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end46.i:                                       ; preds = %if.end40.i
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %132 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bandwidth_hz.i, align 4
  %134 = add i32 %133, -8000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000001, i32 %134)
  %135 = icmp ult i32 %134, -2000001
  br i1 %135, label %if.end46.i.cx22700_set_tps.exit_crit_edge, label %if.end52.i

if.end46.i.cx22700_set_tps.exit_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %133)
  %cmp54.i = icmp eq i32 %133, 7000000
  %..i = select i1 %cmp54.i, i8 25, i8 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %136 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %..i, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %137 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i203) #6
  %138 = getelementptr inbounds i8, ptr %msg.i203, i32 4
  %139 = call ptr @memset(ptr %138, i32 255, i32 16)
  %140 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 1
  %conv.i205 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i203 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i205, ptr %msg.i203, align 4
  %flags.i206 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i206 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i206, align 2
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %138, align 4
  %buf.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 3
  %147 = ptrtoint ptr %buf.i208 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %b0.i, ptr %buf.i208, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 1
  %148 = load i8, ptr %141, align 1
  %conv5.i = zext i8 %148 to i16
  %149 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 1, i32 1
  %150 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 1, i32 2
  %151 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 1, i32 3
  %152 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %b1.i, ptr %buf8.i, align 4
  %153 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i209 = icmp eq i32 %153, 0
  br i1 %tobool.not.i209, label %if.end52.i.do.end12.i_crit_edge, label %do.end.i211

if.end52.i.do.end12.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i211:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i211, %if.end52.i.do.end12.i_crit_edge
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %call14.i212 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i203, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i212)
  %cmp.not.i213 = icmp eq i32 %call14.i212, 2
  br i1 %cmp.not.i213, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %b1.i, align 1
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i8 [ %157, %if.end17.i ], [ -5, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i203) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i184) #6
  %158 = getelementptr inbounds [2 x i8], ptr %buf.i184, i32 0, i32 1
  %159 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 9, ptr %buf.i184, align 1
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %retval.0.i, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i185) #6
  %161 = getelementptr inbounds i8, ptr %msg.i185, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %161, align 4
  %163 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 1
  %conv.i187 = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i185 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i187, ptr %msg.i185, align 4
  %flags.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i188 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i188, align 2
  store i16 2, ptr %161, align 4
  %buf1.i190 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185, i32 0, i32 3
  %169 = ptrtoint ptr %buf1.i190 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %buf.i184, ptr %buf1.i190, align 4
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i191 = icmp eq i32 %170, 0
  br i1 %tobool.not.i191, label %cx22700_readreg.exit.do.end4.i196_crit_edge, label %do.end.i193

cx22700_readreg.exit.do.end4.i196_crit_edge:      ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i196

do.end.i193:                                      ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i196

do.end4.i196:                                     ; preds = %do.end.i193, %cx22700_readreg.exit.do.end4.i196_crit_edge
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call5.i194 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i185, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i194)
  %cmp.not.i195 = icmp eq i32 %call5.i194, 1
  br i1 %cmp.not.i195, label %do.end4.i196.cx22700_writereg.exit202_crit_edge, label %do.end10.i199

do.end4.i196.cx22700_writereg.exit202_crit_edge:  ; preds = %do.end4.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit202

do.end10.i199:                                    ; preds = %do.end4.i196
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i197 = zext i8 %retval.0.i to i32
  %call14.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef %conv13.i197, i32 noundef %call5.i194) #10
  br label %cx22700_writereg.exit202

cx22700_writereg.exit202:                         ; preds = %do.end10.i199, %do.end4.i196.cx22700_writereg.exit202_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i185) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i184) #6
  %173 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %modulation.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @cx22700_set_tps.qam_tab, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i, align 1
  %177 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %hierarchy.i, align 4
  %179 = trunc i32 %178 to i8
  %conv66.i = or i8 %176, %179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i165) #6
  %180 = getelementptr inbounds [2 x i8], ptr %buf.i165, i32 0, i32 1
  %181 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 4, ptr %buf.i165, align 1
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv66.i, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166) #6
  %183 = getelementptr inbounds i8, ptr %msg.i166, i32 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 196607, ptr %183, align 4
  %185 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 1
  %conv.i168 = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i166 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i168, ptr %msg.i166, align 4
  %flags.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i169, align 2
  %buf1.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 3
  %191 = ptrtoint ptr %buf1.i171 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %buf.i165, ptr %buf1.i171, align 4
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i172 = icmp eq i32 %192, 0
  br i1 %tobool.not.i172, label %cx22700_writereg.exit202.do.end4.i177_crit_edge, label %do.end.i174

cx22700_writereg.exit202.do.end4.i177_crit_edge:  ; preds = %cx22700_writereg.exit202
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i177

do.end.i174:                                      ; preds = %cx22700_writereg.exit202
  call void @__sanitizer_cov_trace_pc() #8
  %call.i173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i177

do.end4.i177:                                     ; preds = %do.end.i174, %cx22700_writereg.exit202.do.end4.i177_crit_edge
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %call5.i175 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i166, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i175)
  %cmp.not.i176 = icmp eq i32 %call5.i175, 1
  br i1 %cmp.not.i176, label %do.end4.i177.cx22700_writereg.exit183_crit_edge, label %do.end10.i180

do.end4.i177.cx22700_writereg.exit183_crit_edge:  ; preds = %do.end4.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit183

do.end10.i180:                                    ; preds = %do.end4.i177
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i178 = zext i8 %conv66.i to i32
  %call14.i179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv13.i178, i32 noundef %call5.i175) #10
  br label %cx22700_writereg.exit183

cx22700_writereg.exit183:                         ; preds = %do.end10.i180, %do.end4.i177.cx22700_writereg.exit183_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i165) #6
  %195 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %code_rate_HP.i, align 4
  %sub69.i = add i32 %196, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub69.i)
  %cmp70.i = icmp ugt i32 %sub69.i, 5
  br i1 %cmp70.i, label %cx22700_writereg.exit183.cx22700_set_tps.exit_crit_edge, label %lor.lhs.false72.i

cx22700_writereg.exit183.cx22700_set_tps.exit_crit_edge: ; preds = %cx22700_writereg.exit183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

lor.lhs.false72.i:                                ; preds = %cx22700_writereg.exit183
  %197 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %code_rate_LP.i, align 4
  %sub74.i = add i32 %198, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub74.i)
  %cmp75.i = icmp ugt i32 %sub74.i, 5
  br i1 %cmp75.i, label %lor.lhs.false72.i.cx22700_set_tps.exit_crit_edge, label %if.end78.i

lor.lhs.false72.i.cx22700_set_tps.exit_crit_edge: ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_set_tps.exit

if.end78.i:                                       ; preds = %lor.lhs.false72.i
  %arrayidx81.i = getelementptr [6 x i8], ptr @cx22700_set_tps.fec_tab, i32 0, i32 %sub69.i
  %199 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx81.i, align 1
  %shl.i = shl i8 %200, 3
  %arrayidx86.i = getelementptr [6 x i8], ptr @cx22700_set_tps.fec_tab, i32 0, i32 %sub74.i
  %201 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx86.i, align 1
  %or891.i = or i8 %shl.i, %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #6
  %203 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %204 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 5, ptr %buf.i146, align 1
  %205 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %or891.i, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147) #6
  %206 = getelementptr inbounds i8, ptr %msg.i147, i32 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 196607, ptr %206, align 4
  %208 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %config.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %209, align 1
  %conv.i149 = zext i8 %211 to i16
  %212 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv.i149, ptr %msg.i147, align 4
  %flags.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i150, align 2
  %buf1.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 3
  %214 = ptrtoint ptr %buf1.i152 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %buf.i146, ptr %buf1.i152, align 4
  %215 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.not.i153 = icmp eq i32 %215, 0
  br i1 %tobool.not.i153, label %if.end78.i.do.end4.i158_crit_edge, label %do.end.i155

if.end78.i.do.end4.i158_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i158

do.end.i155:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i158

do.end4.i158:                                     ; preds = %do.end.i155, %if.end78.i.do.end4.i158_crit_edge
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 4
  %call5.i156 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %msg.i147, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i156)
  %cmp.not.i157 = icmp eq i32 %call5.i156, 1
  br i1 %cmp.not.i157, label %do.end4.i158.cx22700_writereg.exit164_crit_edge, label %do.end10.i161

do.end4.i158.cx22700_writereg.exit164_crit_edge:  ; preds = %do.end4.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit164

do.end10.i161:                                    ; preds = %do.end4.i158
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i159 = zext i8 %or891.i to i32
  %call14.i160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 5, i32 noundef %conv13.i159, i32 noundef %call5.i156) #10
  br label %cx22700_writereg.exit164

cx22700_writereg.exit164:                         ; preds = %do.end10.i161, %do.end4.i158.cx22700_writereg.exit164_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #6
  %218 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %guard_interval.i, align 4
  %conv95.i = shl i32 %219, 2
  %220 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %transmission_mode.i, align 4
  %or99.i = or i32 %conv95.i, %221
  %conv100.i = trunc i32 %or99.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i128) #6
  %222 = getelementptr inbounds [2 x i8], ptr %buf.i128, i32 0, i32 1
  %223 = ptrtoint ptr %buf.i128 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 6, ptr %buf.i128, align 1
  %224 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv100.i, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i129) #6
  %225 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 196607, ptr %225, align 4
  %227 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %config.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %228, align 1
  %conv.i131 = zext i8 %230 to i16
  %231 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv.i131, ptr %msg.i129, align 4
  %flags.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %232 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %flags.i132, align 2
  %buf1.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %233 = ptrtoint ptr %buf1.i134 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %buf.i128, ptr %buf1.i134, align 4
  %234 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i135 = icmp eq i32 %234, 0
  br i1 %tobool.not.i135, label %cx22700_writereg.exit164.do.end4.i140_crit_edge, label %do.end.i137

cx22700_writereg.exit164.do.end4.i140_crit_edge:  ; preds = %cx22700_writereg.exit164
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i140

do.end.i137:                                      ; preds = %cx22700_writereg.exit164
  call void @__sanitizer_cov_trace_pc() #8
  %call.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i140

do.end4.i140:                                     ; preds = %do.end.i137, %cx22700_writereg.exit164.do.end4.i140_crit_edge
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %1, align 4
  %call5.i138 = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %msg.i129, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i138)
  %cmp.not.i139 = icmp eq i32 %call5.i138, 1
  br i1 %cmp.not.i139, label %do.end4.i140.cx22700_writereg.exit145_crit_edge, label %do.end10.i142

do.end4.i140.cx22700_writereg.exit145_crit_edge:  ; preds = %do.end4.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit145

do.end10.i142:                                    ; preds = %do.end4.i140
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = and i32 %or99.i, 255
  %call14.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef %conv13.i, i32 noundef %call5.i138) #10
  br label %cx22700_writereg.exit145

cx22700_writereg.exit145:                         ; preds = %do.end10.i142, %do.end4.i140.cx22700_writereg.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i129) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i128) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i110) #6
  %237 = getelementptr inbounds [2 x i8], ptr %buf.i110, i32 0, i32 1
  %238 = ptrtoint ptr %buf.i110 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 8, ptr %buf.i110, align 1
  %239 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 6, ptr %237, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i111) #6
  %240 = getelementptr inbounds i8, ptr %msg.i111, i32 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 196607, ptr %240, align 4
  %242 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %config.i, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %243, align 1
  %conv.i113 = zext i8 %245 to i16
  %246 = ptrtoint ptr %msg.i111 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %conv.i113, ptr %msg.i111, align 4
  %flags.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 1
  %247 = ptrtoint ptr %flags.i114 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 0, ptr %flags.i114, align 2
  %buf1.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 3
  %248 = ptrtoint ptr %buf1.i116 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %buf.i110, ptr %buf1.i116, align 4
  %249 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i117 = icmp eq i32 %249, 0
  br i1 %tobool.not.i117, label %cx22700_writereg.exit145.do.end4.i122_crit_edge, label %do.end.i119

cx22700_writereg.exit145.do.end4.i122_crit_edge:  ; preds = %cx22700_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i122

do.end.i119:                                      ; preds = %cx22700_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  %call.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i122

do.end4.i122:                                     ; preds = %do.end.i119, %cx22700_writereg.exit145.do.end4.i122_crit_edge
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %call5.i120 = call i32 @i2c_transfer(ptr noundef %251, ptr noundef nonnull %msg.i111, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i120)
  %cmp.not.i121 = icmp eq i32 %call5.i120, 1
  br i1 %cmp.not.i121, label %do.end4.i122.cx22700_writereg.exit127_crit_edge, label %do.end10.i124

do.end4.i122.cx22700_writereg.exit127_crit_edge:  ; preds = %do.end4.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit127

do.end10.i124:                                    ; preds = %do.end4.i122
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef 6, i32 noundef %call5.i120) #10
  br label %cx22700_writereg.exit127

cx22700_writereg.exit127:                         ; preds = %do.end10.i124, %do.end4.i122.cx22700_writereg.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i111) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i110) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i92) #6
  %252 = getelementptr inbounds [2 x i8], ptr %buf.i92, i32 0, i32 1
  %253 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 8, ptr %buf.i92, align 1
  %254 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 4, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i93) #6
  %255 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 196607, ptr %255, align 4
  %257 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %config.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %258, align 1
  %conv.i95 = zext i8 %260 to i16
  %261 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv.i95, ptr %msg.i93, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %262 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %flags.i96, align 2
  %buf1.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %263 = ptrtoint ptr %buf1.i98 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %buf.i92, ptr %buf1.i98, align 4
  %264 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool.not.i99 = icmp eq i32 %264, 0
  br i1 %tobool.not.i99, label %cx22700_writereg.exit127.do.end4.i104_crit_edge, label %do.end.i101

cx22700_writereg.exit127.do.end4.i104_crit_edge:  ; preds = %cx22700_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i104

do.end.i101:                                      ; preds = %cx22700_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  %call.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i104

do.end4.i104:                                     ; preds = %do.end.i101, %cx22700_writereg.exit127.do.end4.i104_crit_edge
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %1, align 4
  %call5.i102 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %msg.i93, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i102)
  %cmp.not.i103 = icmp eq i32 %call5.i102, 1
  br i1 %cmp.not.i103, label %do.end4.i104.cx22700_writereg.exit109_crit_edge, label %do.end10.i106

do.end4.i104.cx22700_writereg.exit109_crit_edge:  ; preds = %do.end4.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit109

do.end10.i106:                                    ; preds = %do.end4.i104
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef 4, i32 noundef %call5.i102) #10
  br label %cx22700_writereg.exit109

cx22700_writereg.exit109:                         ; preds = %do.end10.i106, %do.end4.i104.cx22700_writereg.exit109_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i92) #6
  br label %cx22700_set_tps.exit

cx22700_set_tps.exit:                             ; preds = %cx22700_writereg.exit109, %lor.lhs.false72.i.cx22700_set_tps.exit_crit_edge, %cx22700_writereg.exit183.cx22700_set_tps.exit_crit_edge, %if.end46.i.cx22700_set_tps.exit_crit_edge, %if.end40.i.cx22700_set_tps.exit_crit_edge, %if.end31.i.cx22700_set_tps.exit_crit_edge, %if.end26.i.cx22700_set_tps.exit_crit_edge, %if.end20.i.cx22700_set_tps.exit_crit_edge, %if.end13.i.cx22700_set_tps.exit_crit_edge, %if.end7.i.cx22700_set_tps.exit_crit_edge, %do.end3.i55.cx22700_set_tps.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i56) #6
  %267 = getelementptr inbounds [2 x i8], ptr %buf.i56, i32 0, i32 1
  %268 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 55, ptr %buf.i56, align 1
  %269 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %267, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57) #6
  %270 = getelementptr inbounds i8, ptr %msg.i57, i32 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 196607, ptr %270, align 4
  %272 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %config.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %273, align 1
  %conv.i59 = zext i8 %275 to i16
  %276 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv.i59, ptr %msg.i57, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 1
  %277 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 0, ptr %flags.i60, align 2
  %buf1.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 3
  %278 = ptrtoint ptr %buf1.i62 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %buf.i56, ptr %buf1.i62, align 4
  %279 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.not.i63 = icmp eq i32 %279, 0
  br i1 %tobool.not.i63, label %cx22700_set_tps.exit.do.end4.i68_crit_edge, label %do.end.i65

cx22700_set_tps.exit.do.end4.i68_crit_edge:       ; preds = %cx22700_set_tps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i68

do.end.i65:                                       ; preds = %cx22700_set_tps.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i68

do.end4.i68:                                      ; preds = %do.end.i65, %cx22700_set_tps.exit.do.end4.i68_crit_edge
  %280 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %1, align 4
  %call5.i66 = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %msg.i57, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i66)
  %cmp.not.i67 = icmp eq i32 %call5.i66, 1
  br i1 %cmp.not.i67, label %do.end4.i68.cx22700_writereg.exit73_crit_edge, label %do.end10.i70

do.end4.i68.cx22700_writereg.exit73_crit_edge:    ; preds = %do.end4.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit73

do.end10.i70:                                     ; preds = %do.end4.i68
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 55, i32 noundef 1, i32 noundef %call5.i66) #10
  br label %cx22700_writereg.exit73

cx22700_writereg.exit73:                          ; preds = %do.end10.i70, %do.end4.i68.cx22700_writereg.exit73_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i56) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i74) #6
  %282 = getelementptr inbounds [2 x i8], ptr %buf.i74, i32 0, i32 1
  %283 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %buf.i74, align 1
  %284 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 1, ptr %282, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i75) #6
  %285 = getelementptr inbounds i8, ptr %msg.i75, i32 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 196607, ptr %285, align 4
  %287 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %config.i, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %288, align 1
  %conv.i77 = zext i8 %290 to i16
  %291 = ptrtoint ptr %msg.i75 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %conv.i77, ptr %msg.i75, align 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 1
  %292 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 0, ptr %flags.i78, align 2
  %buf1.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 3
  %293 = ptrtoint ptr %buf1.i80 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %buf.i74, ptr %buf1.i80, align 4
  %294 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool.not.i81 = icmp eq i32 %294, 0
  br i1 %tobool.not.i81, label %cx22700_writereg.exit73.do.end4.i86_crit_edge, label %do.end.i83

cx22700_writereg.exit73.do.end4.i86_crit_edge:    ; preds = %cx22700_writereg.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i86

do.end.i83:                                       ; preds = %cx22700_writereg.exit73
  call void @__sanitizer_cov_trace_pc() #8
  %call.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i86

do.end4.i86:                                      ; preds = %do.end.i83, %cx22700_writereg.exit73.do.end4.i86_crit_edge
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 4
  %call5.i84 = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %msg.i75, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i84)
  %cmp.not.i85 = icmp eq i32 %call5.i84, 1
  br i1 %cmp.not.i85, label %do.end4.i86.cx22700_writereg.exit91_crit_edge, label %do.end10.i88

do.end4.i86.cx22700_writereg.exit91_crit_edge:    ; preds = %do.end4.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit91

do.end10.i88:                                     ; preds = %do.end4.i86
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1, i32 noundef %call5.i84) #10
  br label %cx22700_writereg.exit91

cx22700_writereg.exit91:                          ; preds = %do.end10.i88, %do.end4.i86.cx22700_writereg.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i74) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx22700_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 150, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 166667, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 333334, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #0 align 64 {
entry:
  %b0.i131.i = alloca [1 x i8], align 1
  %b1.i132.i = alloca [1 x i8], align 1
  %msg.i133.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i108.i = alloca [1 x i8], align 1
  %b1.i109.i = alloca [1 x i8], align 1
  %msg.i110.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i85.i = alloca [1 x i8], align 1
  %b1.i86.i = alloca [1 x i8], align 1
  %msg.i87.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = and i8 %23, 1
  %phi.bo = zext i8 %24 to i32
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end17.i ], [ 1, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %25 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %inversion, align 4
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cx22700_readreg.exit.do.end3.i_crit_edge, label %do.end.i7

cx22700_readreg.exit.do.end3.i_crit_edge:         ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i7:                                        ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i7, %cx22700_readreg.exit.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %27 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %28 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %29 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i.i = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i.i, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %39 = load i8, ptr %32, align 1
  %conv5.i.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %do.end3.i.do.end12.i.i_crit_edge, label %do.end.i.i

do.end3.i.do.end12.i.i_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %do.end.i.i, %do.end3.i.do.end12.i.i_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call14.i.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i.i)
  %cmp.not.i.i = icmp eq i32 %call14.i.i, 2
  br i1 %cmp.not.i.i, label %cx22700_readreg.exit.i, label %cx22700_readreg.exit.thread.i

cx22700_readreg.exit.thread.i:                    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  br label %if.end7.i

cx22700_readreg.exit.i:                           ; preds = %do.end12.i.i
  %47 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %49 = and i8 %48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool5.not.i = icmp eq i8 %49, 0
  br i1 %tobool5.not.i, label %cx22700_readreg.exit.i.cx22700_get_tps.exit_crit_edge, label %cx22700_readreg.exit.i.if.end7.i_crit_edge

cx22700_readreg.exit.i.if.end7.i_crit_edge:       ; preds = %cx22700_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

cx22700_readreg.exit.i.cx22700_get_tps.exit_crit_edge: ; preds = %cx22700_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_get_tps.exit

if.end7.i:                                        ; preds = %cx22700_readreg.exit.i.if.end7.i_crit_edge, %cx22700_readreg.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i85.i) #6
  %50 = ptrtoint ptr %b0.i85.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %b0.i85.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i86.i) #6
  %51 = ptrtoint ptr %b1.i86.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %b1.i86.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i87.i) #6
  %52 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv.i89.i = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i89.i, ptr %msg.i87.i, align 4
  %flags.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i90.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i90.i, align 2
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %52, align 4
  %buf.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i92.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b0.i85.i, ptr %buf.i92.i, align 4
  %arrayinit.element.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 1
  %62 = load i8, ptr %55, align 1
  %conv5.i94.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %arrayinit.element.i93.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv5.i94.i, ptr %arrayinit.element.i93.i, align 4
  %flags6.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 1, i32 1
  %64 = ptrtoint ptr %flags6.i95.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %flags6.i95.i, align 2
  %len7.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 1, i32 2
  %65 = ptrtoint ptr %len7.i96.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %len7.i96.i, align 4
  %buf8.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 1, i32 3
  %66 = ptrtoint ptr %buf8.i97.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %b1.i86.i, ptr %buf8.i97.i, align 4
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i98.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i98.i, label %if.end7.i.do.end12.i103.i_crit_edge, label %do.end.i100.i

if.end7.i.do.end12.i103.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i103.i

do.end.i100.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i103.i

do.end12.i103.i:                                  ; preds = %do.end.i100.i, %if.end7.i.do.end12.i103.i_crit_edge
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call14.i101.i = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i87.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i101.i)
  %cmp.not.i102.i = icmp eq i32 %call14.i101.i, 2
  br i1 %cmp.not.i102.i, label %cx22700_readreg.exit107.i, label %cx22700_readreg.exit107.thread.i

cx22700_readreg.exit107.thread.i:                 ; preds = %do.end12.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i86.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i85.i) #6
  br label %if.else.i

cx22700_readreg.exit107.i:                        ; preds = %do.end12.i103.i
  %70 = ptrtoint ptr %b1.i86.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %b1.i86.i, align 1
  %conv18.i104.i = zext i8 %71 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i86.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i85.i) #6
  %and10.i = and i32 %conv18.i104.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and10.i)
  %cmp.i = icmp ugt i32 %and10.i, 4
  br i1 %cmp.i, label %cx22700_readreg.exit107.i.if.end16.i_crit_edge, label %cx22700_readreg.exit107.i.if.else.i_crit_edge

cx22700_readreg.exit107.i.if.else.i_crit_edge:    ; preds = %cx22700_readreg.exit107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

cx22700_readreg.exit107.i.if.end16.i_crit_edge:   ; preds = %cx22700_readreg.exit107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.else.i:                                        ; preds = %cx22700_readreg.exit107.i.if.else.i_crit_edge, %cx22700_readreg.exit107.thread.i
  %and10162.i = phi i32 [ 3, %cx22700_readreg.exit107.thread.i ], [ %and10.i, %cx22700_readreg.exit107.i.if.else.i_crit_edge ]
  %retval.0.i106161.i = phi i32 [ -5, %cx22700_readreg.exit107.thread.i ], [ %conv18.i104.i, %cx22700_readreg.exit107.i.if.else.i_crit_edge ]
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %cx22700_readreg.exit107.i.if.end16.i_crit_edge
  %and10162.sink.i = phi i32 [ %and10162.i, %if.else.i ], [ 4, %cx22700_readreg.exit107.i.if.end16.i_crit_edge ]
  %retval.0.i106160.i = phi i32 [ %retval.0.i106161.i, %if.else.i ], [ %conv18.i104.i, %cx22700_readreg.exit107.i.if.end16.i_crit_edge ]
  %hierarchy15.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %72 = ptrtoint ptr %hierarchy15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and10162.sink.i, ptr %hierarchy15.i, align 4
  %conv9.i = lshr i32 %retval.0.i106160.i, 3
  %and18.i = and i32 %conv9.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 3
  br i1 %cmp19.i, label %if.end16.i.if.end27.i_crit_edge, label %if.else22.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.else22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [3 x i32], ptr @cx22700_get_tps.qam_tab, i32 0, i32 %and18.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else22.i, %if.end16.i.if.end27.i_crit_edge
  %.sink.i = phi i32 [ %74, %if.else22.i ], [ 6, %if.end16.i.if.end27.i_crit_edge ]
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink.i, ptr %75, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i108.i) #6
  %77 = ptrtoint ptr %b0.i108.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %b0.i108.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i109.i) #6
  %78 = ptrtoint ptr %b1.i109.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %b1.i109.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i110.i) #6
  %79 = getelementptr inbounds i8, ptr %msg.i110.i, i32 4
  %80 = call ptr @memset(ptr %79, i32 255, i32 16)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i112.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i112.i, ptr %msg.i110.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i113.i, align 2
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %79, align 4
  %buf.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i115.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i108.i, ptr %buf.i115.i, align 4
  %arrayinit.element.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 1
  %89 = load i8, ptr %82, align 1
  %conv5.i117.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %arrayinit.element.i116.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv5.i117.i, ptr %arrayinit.element.i116.i, align 4
  %flags6.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 1, i32 1
  %91 = ptrtoint ptr %flags6.i118.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags6.i118.i, align 2
  %len7.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 1, i32 2
  %92 = ptrtoint ptr %len7.i119.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len7.i119.i, align 4
  %buf8.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 1, i32 3
  %93 = ptrtoint ptr %buf8.i120.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i109.i, ptr %buf8.i120.i, align 4
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i121.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i121.i, label %if.end27.i.do.end12.i126.i_crit_edge, label %do.end.i123.i

if.end27.i.do.end12.i126.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i126.i

do.end.i123.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i126.i

do.end12.i126.i:                                  ; preds = %do.end.i123.i, %if.end27.i.do.end12.i126.i_crit_edge
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call14.i124.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i110.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i124.i)
  %cmp.not.i125.i = icmp eq i32 %call14.i124.i, 2
  br i1 %cmp.not.i125.i, label %cx22700_readreg.exit130.i, label %if.end42.i.thread

if.end42.i.thread:                                ; preds = %do.end12.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i110.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i109.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i108.i) #6
  %code_rate_HP41.i11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %97 = ptrtoint ptr %code_rate_HP41.i11 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 9, ptr %code_rate_HP41.i11, align 4
  br label %if.else48.i

cx22700_readreg.exit130.i:                        ; preds = %do.end12.i126.i
  %98 = ptrtoint ptr %b1.i109.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %b1.i109.i, align 1
  %conv18.i127.i = zext i8 %99 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i110.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i109.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i108.i) #6
  %100 = lshr i32 %conv18.i127.i, 3
  %and32.i = and i32 %100, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and32.i)
  %cmp33.i = icmp ugt i32 %and32.i, 4
  br i1 %cmp33.i, label %cx22700_readreg.exit130.i.if.end42.i_crit_edge, label %if.else36.i

cx22700_readreg.exit130.i.if.end42.i_crit_edge:   ; preds = %cx22700_readreg.exit130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.else36.i:                                      ; preds = %cx22700_readreg.exit130.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx40.i = getelementptr [5 x i32], ptr @cx22700_get_tps.fec_tab, i32 0, i32 %and32.i
  %101 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx40.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else36.i, %cx22700_readreg.exit130.i.if.end42.i_crit_edge
  %.sink169.i = phi i32 [ %102, %if.else36.i ], [ 9, %cx22700_readreg.exit130.i.if.end42.i_crit_edge ]
  %code_rate_HP41.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %103 = ptrtoint ptr %code_rate_HP41.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink169.i, ptr %code_rate_HP41.i, align 4
  %and44.i = and i32 %conv18.i127.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and44.i)
  %cmp45.i = icmp ugt i32 %and44.i, 4
  br i1 %cmp45.i, label %if.end42.i.if.end53.i_crit_edge, label %if.end42.i.if.else48.i_crit_edge

if.end42.i.if.else48.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48.i

if.end42.i.if.end53.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.else48.i:                                      ; preds = %if.end42.i.if.else48.i_crit_edge, %if.end42.i.thread
  %and44.i14 = phi i32 [ 3, %if.end42.i.thread ], [ %and44.i, %if.end42.i.if.else48.i_crit_edge ]
  %arrayidx51.i = getelementptr [5 x i32], ptr @cx22700_get_tps.fec_tab, i32 0, i32 %and44.i14
  %104 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx51.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else48.i, %if.end42.i.if.end53.i_crit_edge
  %.sink168.i = phi i32 [ %105, %if.else48.i ], [ 9, %if.end42.i.if.end53.i_crit_edge ]
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %.sink168.i, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i131.i) #6
  %108 = ptrtoint ptr %b0.i131.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %b0.i131.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i132.i) #6
  %109 = ptrtoint ptr %b1.i132.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %b1.i132.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i133.i) #6
  %110 = getelementptr inbounds i8, ptr %msg.i133.i, i32 4
  %111 = call ptr @memset(ptr %110, i32 255, i32 16)
  %112 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %conv.i135.i = zext i8 %115 to i16
  %116 = ptrtoint ptr %msg.i133.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i135.i, ptr %msg.i133.i, align 4
  %flags.i136.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i136.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i136.i, align 2
  %118 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %110, align 4
  %buf.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 3
  %119 = ptrtoint ptr %buf.i138.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %b0.i131.i, ptr %buf.i138.i, align 4
  %arrayinit.element.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 1
  %120 = load i8, ptr %113, align 1
  %conv5.i140.i = zext i8 %120 to i16
  %121 = ptrtoint ptr %arrayinit.element.i139.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv5.i140.i, ptr %arrayinit.element.i139.i, align 4
  %flags6.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 1, i32 1
  %122 = ptrtoint ptr %flags6.i141.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %flags6.i141.i, align 2
  %len7.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 1, i32 2
  %123 = ptrtoint ptr %len7.i142.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %len7.i142.i, align 4
  %buf8.i143.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 1, i32 3
  %124 = ptrtoint ptr %buf8.i143.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %b1.i132.i, ptr %buf8.i143.i, align 4
  %125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i144.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i144.i, label %if.end53.i.do.end12.i149.i_crit_edge, label %do.end.i146.i

if.end53.i.do.end12.i149.i_crit_edge:             ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i149.i

do.end.i146.i:                                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i149.i

do.end12.i149.i:                                  ; preds = %do.end.i146.i, %if.end53.i.do.end12.i149.i_crit_edge
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call14.i147.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i133.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i147.i)
  %cmp.not.i148.i = icmp eq i32 %call14.i147.i, 2
  br i1 %cmp.not.i148.i, label %if.end17.i151.i, label %do.end12.i149.i.cx22700_readreg.exit153.i_crit_edge

do.end12.i149.i.cx22700_readreg.exit153.i_crit_edge: ; preds = %do.end12.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit153.i

if.end17.i151.i:                                  ; preds = %do.end12.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %b1.i132.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %b1.i132.i, align 1
  %conv18.i150.i = zext i8 %129 to i32
  br label %cx22700_readreg.exit153.i

cx22700_readreg.exit153.i:                        ; preds = %if.end17.i151.i, %do.end12.i149.i.cx22700_readreg.exit153.i_crit_edge
  %retval.0.i152.i = phi i32 [ %conv18.i150.i, %if.end17.i151.i ], [ -5, %do.end12.i149.i.cx22700_readreg.exit153.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i133.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i132.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i131.i) #6
  %130 = lshr i32 %retval.0.i152.i, 6
  %and58.i = and i32 %130, 3
  %guard_interval.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %131 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and58.i, ptr %guard_interval.i, align 4
  %conv56.i = lshr i32 %retval.0.i152.i, 5
  %and62.i = and i32 %conv56.i, 1
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %132 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and62.i, ptr %transmission_mode.i, align 4
  br label %cx22700_get_tps.exit

cx22700_get_tps.exit:                             ; preds = %cx22700_readreg.exit153.i, %cx22700_readreg.exit.i.cx22700_get_tps.exit_crit_edge
  %retval.0.i8 = phi i32 [ 0, %cx22700_readreg.exit153.i ], [ -11, %cx22700_readreg.exit.i.cx22700_get_tps.exit_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i62 = alloca [1 x i8], align 1
  %b1.i63 = alloca [1 x i8], align 1
  %msg.i64 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i39 = alloca [1 x i8], align 1
  %b1.i40 = alloca [1 x i8], align 1
  %msg.i41 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %23 to i32
  %phi.bo = shl nuw nsw i32 %conv18.i, 9
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end17.i ], [ -2560, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i39) #6
  %24 = ptrtoint ptr %b0.i39 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 14, ptr %b0.i39, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i40) #6
  %25 = ptrtoint ptr %b1.i40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i40, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i41) #6
  %26 = getelementptr inbounds i8, ptr %msg.i41, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i43 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i43, ptr %msg.i41, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i44, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i39, ptr %buf.i46, align 4
  %arrayinit.element.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 1
  %36 = load i8, ptr %29, align 1
  %conv5.i48 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i47 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i48, ptr %arrayinit.element.i47, align 4
  %flags6.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i49 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i49, align 2
  %len7.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i50 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i50, align 4
  %buf8.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i40, ptr %buf8.i51, align 4
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i52 = icmp eq i32 %41, 0
  br i1 %tobool.not.i52, label %cx22700_readreg.exit.do.end12.i57_crit_edge, label %do.end.i54

cx22700_readreg.exit.do.end12.i57_crit_edge:      ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i57

do.end.i54:                                       ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i57

do.end12.i57:                                     ; preds = %do.end.i54, %cx22700_readreg.exit.do.end12.i57_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call14.i55 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i41, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i55)
  %cmp.not.i56 = icmp eq i32 %call14.i55, 2
  br i1 %cmp.not.i56, label %if.end17.i59, label %do.end12.i57.cx22700_readreg.exit61_crit_edge

do.end12.i57.cx22700_readreg.exit61_crit_edge:    ; preds = %do.end12.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit61

if.end17.i59:                                     ; preds = %do.end12.i57
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %b1.i40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i40, align 1
  %conv18.i58 = zext i8 %45 to i32
  %phi.bo94 = shl nuw nsw i32 %conv18.i58, 1
  br label %cx22700_readreg.exit61

cx22700_readreg.exit61:                           ; preds = %if.end17.i59, %do.end12.i57.cx22700_readreg.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %phi.bo94, %if.end17.i59 ], [ -10, %do.end12.i57.cx22700_readreg.exit61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i41) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i40) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i39) #6
  %or = or i32 %retval.0.i60, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i62) #6
  %46 = ptrtoint ptr %b0.i62 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 7, ptr %b0.i62, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i63) #6
  %47 = ptrtoint ptr %b1.i63 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %b1.i63, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i64) #6
  %48 = getelementptr inbounds i8, ptr %msg.i64, i32 4
  %49 = call ptr @memset(ptr %48, i32 255, i32 16)
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv.i66 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i64 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i66, ptr %msg.i64, align 4
  %flags.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i67, align 2
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %48, align 4
  %buf.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 3
  %57 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %b0.i62, ptr %buf.i69, align 4
  %arrayinit.element.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1
  %58 = load i8, ptr %51, align 1
  %conv5.i71 = zext i8 %58 to i16
  %59 = ptrtoint ptr %arrayinit.element.i70 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv5.i71, ptr %arrayinit.element.i70, align 4
  %flags6.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 1
  %60 = ptrtoint ptr %flags6.i72 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags6.i72, align 2
  %len7.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 2
  %61 = ptrtoint ptr %len7.i73 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %len7.i73, align 4
  %buf8.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 3
  %62 = ptrtoint ptr %buf8.i74 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %b1.i63, ptr %buf8.i74, align 4
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i75 = icmp eq i32 %63, 0
  br i1 %tobool.not.i75, label %cx22700_readreg.exit61.do.end12.i80_crit_edge, label %do.end.i77

cx22700_readreg.exit61.do.end12.i80_crit_edge:    ; preds = %cx22700_readreg.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i80

do.end.i77:                                       ; preds = %cx22700_readreg.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %call.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i80

do.end12.i80:                                     ; preds = %do.end.i77, %cx22700_readreg.exit61.do.end12.i80_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call14.i78 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i64, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i78)
  %cmp.not.i79 = icmp eq i32 %call14.i78, 2
  br i1 %cmp.not.i79, label %cx22700_readreg.exit84, label %cx22700_readreg.exit84.thread

cx22700_readreg.exit84.thread:                    ; preds = %do.end12.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i64) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i63) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i62) #6
  %conv586 = and i32 %or, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %conv586)
  %cmp.not87 = icmp ne i32 %conv586, 65280
  %spec.select88 = zext i1 %cmp.not87 to i32
  br label %if.then9

cx22700_readreg.exit84:                           ; preds = %do.end12.i80
  %66 = ptrtoint ptr %b1.i63 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %b1.i63, align 1
  %conv18.i81 = zext i8 %67 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i64) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i63) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i62) #6
  %conv5 = and i32 %or, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %conv5)
  %cmp.not = icmp ne i32 %conv5, 65280
  %spec.select = zext i1 %cmp.not to i32
  %and = and i32 %conv18.i81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cx22700_readreg.exit84.if.end11_crit_edge, label %cx22700_readreg.exit84.if.then9_crit_edge

cx22700_readreg.exit84.if.then9_crit_edge:        ; preds = %cx22700_readreg.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

cx22700_readreg.exit84.if.end11_crit_edge:        ; preds = %cx22700_readreg.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %cx22700_readreg.exit84.if.then9_crit_edge, %cx22700_readreg.exit84.thread
  %spec.select93 = phi i32 [ %spec.select88, %cx22700_readreg.exit84.thread ], [ %spec.select, %cx22700_readreg.exit84.if.then9_crit_edge ]
  %retval.0.i8391 = phi i32 [ -5, %cx22700_readreg.exit84.thread ], [ %conv18.i81, %cx22700_readreg.exit84.if.then9_crit_edge ]
  %or10 = or i32 %spec.select93, 2
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %cx22700_readreg.exit84.if.end11_crit_edge
  %storemerge = phi i32 [ %or10, %if.then9 ], [ %spec.select, %cx22700_readreg.exit84.if.end11_crit_edge ]
  %retval.0.i8392 = phi i32 [ %retval.0.i8391, %if.then9 ], [ %conv18.i81, %cx22700_readreg.exit84.if.end11_crit_edge ]
  %and13 = and i32 %retval.0.i8392, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or22 = or i32 %storemerge, 12
  %68 = select i1 %tobool14.not, i32 %storemerge, i32 %or22
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %68)
  %cmp24 = icmp eq i32 %68, 15
  %69 = xor i1 %tobool14.not, true
  %70 = or i1 %cmp24, %69
  %simplifycfg.merge = select i1 %cmp24, i32 31, i32 %68
  %spec.select96 = select i1 %70, i32 %simplifycfg.merge, i32 %storemerge
  %71 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select96, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %24 = and i8 %23, 127
  %phi.bo = zext i8 %24 to i32
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end17.i ], [ 123, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %buf.i3, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %29 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i6 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i3, ptr %buf1.i, align 4
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i9 = icmp eq i32 %38, 0
  br i1 %tobool.not.i9, label %cx22700_readreg.exit.do.end4.i_crit_edge, label %do.end.i11

cx22700_readreg.exit.do.end4.i_crit_edge:         ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i11:                                       ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i11, %cx22700_readreg.exit.do.end4.i_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i12 = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i12, label %do.end4.i.cx22700_writereg.exit_crit_edge, label %do.end10.i

do.end4.i.cx22700_writereg.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit

do.end10.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 12, i32 noundef 0, i32 noundef %call5.i) #10
  br label %cx22700_writereg.exit

cx22700_writereg.exit:                            ; preds = %do.end10.i, %do.end4.i.cx22700_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %b0.i6 = alloca [1 x i8], align 1
  %b1.i7 = alloca [1 x i8], align 1
  %msg.i8 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %23 to i16
  %phi.bo = shl i16 %conv18.i, 9
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo, %if.end17.i ], [ -2560, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i6) #6
  %24 = ptrtoint ptr %b0.i6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 14, ptr %b0.i6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i7) #6
  %25 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i8) #6
  %26 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i10 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i11, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i6, ptr %buf.i13, align 4
  %arrayinit.element.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1
  %36 = load i8, ptr %29, align 1
  %conv5.i15 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i15, ptr %arrayinit.element.i14, align 4
  %flags6.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i16 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i16, align 2
  %len7.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i17 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i17, align 4
  %buf8.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i7, ptr %buf8.i18, align 4
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i19 = icmp eq i32 %41, 0
  br i1 %tobool.not.i19, label %cx22700_readreg.exit.do.end12.i24_crit_edge, label %do.end.i21

cx22700_readreg.exit.do.end12.i24_crit_edge:      ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i24

do.end.i21:                                       ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i24

do.end12.i24:                                     ; preds = %do.end.i21, %cx22700_readreg.exit.do.end12.i24_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call14.i22 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i8, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i22)
  %cmp.not.i23 = icmp eq i32 %call14.i22, 2
  br i1 %cmp.not.i23, label %if.end17.i26, label %do.end12.i24.cx22700_readreg.exit28_crit_edge

do.end12.i24.cx22700_readreg.exit28_crit_edge:    ; preds = %do.end12.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit28

if.end17.i26:                                     ; preds = %do.end12.i24
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i7, align 1
  %conv18.i25 = zext i8 %45 to i16
  %phi.bo29 = shl nuw nsw i16 %conv18.i25, 1
  br label %cx22700_readreg.exit28

cx22700_readreg.exit28:                           ; preds = %if.end17.i26, %do.end12.i24.cx22700_readreg.exit28_crit_edge
  %retval.0.i27 = phi i16 [ %phi.bo29, %if.end17.i26 ], [ -10, %do.end12.i24.cx22700_readreg.exit28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i6) #6
  %or = or i16 %retval.0.i27, %retval.0.i
  %conv4 = xor i16 %or, -1
  %46 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv4, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i6 = alloca [1 x i8], align 1
  %b1.i7 = alloca [1 x i8], align 1
  %msg.i8 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %23 to i16
  %phi.bo = shl i16 %conv18.i, 9
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo, %if.end17.i ], [ -2560, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i6) #6
  %24 = ptrtoint ptr %b0.i6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 14, ptr %b0.i6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i7) #6
  %25 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i8) #6
  %26 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i10 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i11, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i6, ptr %buf.i13, align 4
  %arrayinit.element.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1
  %36 = load i8, ptr %29, align 1
  %conv5.i15 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i15, ptr %arrayinit.element.i14, align 4
  %flags6.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i16 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i16, align 2
  %len7.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i17 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i17, align 4
  %buf8.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i7, ptr %buf8.i18, align 4
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i19 = icmp eq i32 %41, 0
  br i1 %tobool.not.i19, label %cx22700_readreg.exit.do.end12.i24_crit_edge, label %do.end.i21

cx22700_readreg.exit.do.end12.i24_crit_edge:      ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i24

do.end.i21:                                       ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i24

do.end12.i24:                                     ; preds = %do.end.i21, %cx22700_readreg.exit.do.end12.i24_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call14.i22 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i8, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i22)
  %cmp.not.i23 = icmp eq i32 %call14.i22, 2
  br i1 %cmp.not.i23, label %if.end17.i26, label %do.end12.i24.cx22700_readreg.exit28_crit_edge

do.end12.i24.cx22700_readreg.exit28_crit_edge:    ; preds = %do.end12.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit28

if.end17.i26:                                     ; preds = %do.end12.i24
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i7, align 1
  %conv18.i25 = zext i8 %45 to i16
  %phi.bo29 = shl nuw nsw i16 %conv18.i25, 1
  br label %cx22700_readreg.exit28

cx22700_readreg.exit28:                           ; preds = %if.end17.i26, %do.end12.i24.cx22700_readreg.exit28_crit_edge
  %retval.0.i27 = phi i16 [ %phi.bo29, %if.end17.i26 ], [ -10, %do.end12.i24.cx22700_readreg.exit28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i6) #6
  %or = or i16 %retval.0.i27, %retval.0.i
  %conv4 = xor i16 %or, -1
  %46 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv4, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %entry.do.end12.i_crit_edge, label %do.end.i

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %entry.do.end12.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end17.i, label %do.end12.i.cx22700_readreg.exit_crit_edge

do.end12.i.cx22700_readreg.exit_crit_edge:        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_readreg.exit

if.end17.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %23 to i32
  br label %cx22700_readreg.exit

cx22700_readreg.exit:                             ; preds = %if.end17.i, %do.end12.i.cx22700_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv18.i, %if.end17.i ], [ -5, %do.end12.i.cx22700_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %24 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 15, ptr %buf.i3, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %28 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i6 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i3, ptr %buf1.i, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i9 = icmp eq i32 %37, 0
  br i1 %tobool.not.i9, label %cx22700_readreg.exit.do.end4.i_crit_edge, label %do.end.i11

cx22700_readreg.exit.do.end4.i_crit_edge:         ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i11:                                       ; preds = %cx22700_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i11, %cx22700_readreg.exit.do.end4.i_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i12 = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i12, label %do.end4.i.cx22700_writereg.exit_crit_edge, label %do.end10.i

do.end4.i.cx22700_writereg.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit

do.end10.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 15, i32 noundef 0, i32 noundef %call5.i) #10
  br label %cx22700_writereg.exit

cx22700_writereg.exit:                            ; preds = %do.end10.i, %do.end4.i.cx22700_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22700_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.do.end4.i_crit_edge, label %do.end.i

if.then.do.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then.do.end4.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i, label %do.end4.i.cx22700_writereg.exit_crit_edge, label %do.end10.i

do.end4.i.cx22700_writereg.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit

do.end10.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 0, i32 noundef %call5.i) #10
  br label %cx22700_writereg.exit

cx22700_writereg.exit:                            ; preds = %do.end10.i, %do.end4.i.cx22700_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.cx22700_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv.i6 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i3, ptr %buf1.i9, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i10 = icmp eq i32 %29, 0
  br i1 %tobool.not.i10, label %if.else.do.end4.i15_crit_edge, label %do.end.i12

if.else.do.end4.i15_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i15

do.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %do.end4.i15

do.end4.i15:                                      ; preds = %do.end.i12, %if.else.do.end4.i15_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call5.i13 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i13)
  %cmp.not.i14 = icmp eq i32 %call5.i13, 1
  br i1 %cmp.not.i14, label %do.end4.i15.cx22700_writereg.exit20_crit_edge, label %do.end10.i17

do.end4.i15.cx22700_writereg.exit20_crit_edge:    ; preds = %do.end4.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22700_writereg.exit20

do.end10.i17:                                     ; preds = %do.end4.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 1, i32 noundef %call5.i13) #10
  br label %cx22700_writereg.exit20

cx22700_writereg.exit20:                          ; preds = %do.end10.i17, %do.end4.i15.cx22700_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %cleanup

cleanup:                                          ; preds = %cx22700_writereg.exit20, %cx22700_writereg.exit
  %retval.0.in.in = phi i1 [ %cmp.not.i, %cx22700_writereg.exit ], [ %cmp.not.i14, %cx22700_writereg.exit20 ]
  %retval.0.in = xor i1 %retval.0.in.in, true
  %retval.0 = sext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !55, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 428, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 429, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 431, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 432, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 433, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_cx22700_attach, !13, !"__ksymtab_cx22700_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 435, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 30, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 83, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cx22700_readreg._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @cx22700_readreg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @cx22700_ops, !23, !"cx22700_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 399, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 230, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cx22700_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cx22700_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 64, i32 2}
!31 = !{ptr @cx22700_writereg._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cx22700_writereg._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 69, i32 3}
!35 = !{ptr @cx22700_writereg._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cx22700_writereg._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @init_tab, !38, !"init_tab", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 36, i32 11}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 96, i32 2}
!41 = !{ptr @cx22700_set_inversion._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx22700_set_inversion._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @cx22700_set_tps.qam_tab, !44, !"qam_tab", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 115, i32 18}
!45 = !{ptr @cx22700_set_tps.fec_tab, !46, !"fec_tab", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 116, i32 18}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 119, i32 2}
!49 = !{ptr @cx22700_set_tps._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx22700_set_tps._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @cx22700_get_tps.qam_tab, !52, !"qam_tab", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 182, i32 34}
!53 = !{ptr @cx22700_get_tps.fec_tab, !54, !"fec_tab", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 183, i32 33}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/cx22700.c", i32 188, i32 2}
!57 = !{ptr @cx22700_get_tps._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cx22700_get_tps._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
