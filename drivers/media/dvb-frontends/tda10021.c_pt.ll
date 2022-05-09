; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda10021.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10021.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda10021_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10021_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10021_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10021_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10021_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10021_attach:\09\09\09\09\09"
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
%struct.qam_params = type { i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10021_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda1002x_config = type { i8, i8 }

@tda10021_inittab = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"sj#\0A\027w\1A7j\17\8A\1E\86C@\B8?\A1\00\CD\01\00\FF\11\00|10 \00\00\02\00\00}\00\00\00\00\07\003\11\0D\95\08X\00\00\80\00\80\FF\00\00\04-/\FF\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@tda10021_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TDA10021: i2c-addr = 0x%02x, id = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10021_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda10021.c\00", [57 x i8] zeroinitializer }, align 32
@tda10021_attach._entry_ptr = internal global ptr @tda10021_attach._entry, section ".printk_index", align 4
@tda10021_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10021 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 451875, i32 7230000, i32 0, i32 65024 }, [8 x i8] c"\01\12\00\00\00\00\00\00", ptr null, ptr @tda10021_release, ptr null, ptr @tda10021_init, ptr @tda10021_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10021_set_parameters, ptr null, ptr @tda10021_get_frontend, ptr @tda10021_read_status, ptr @tda10021_read_ber, ptr @tda10021_read_signal_strength, ptr @tda10021_read_snr, ptr @tda10021_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10021_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_verbose = internal constant [17 x i8] c"tda10021.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [30 x i8] c"tda10021.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose291 = internal constant [82 x i8] c"tda10021.parm=verbose:print AFC offset after tuning for debugging the PWM setting\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [63 x i8] c"tda10021.description=Philips TDA10021 DVB-C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"tda10021.author=Ralph Metzler, Holger Waechtler, Markus Schulz\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"tda10021.file=drivers/media/dvb-frontends/tda10021\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"tda10021.license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10021_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10021_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10021_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10021_attach to i32), ptr @__kstrtab_tda10021_attach, ptr @__kstrtabns_tda10021_attach }, section "___ksymtab+tda10021_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda10021_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DVB: TDA10021: %s: readreg error (ret == %i)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10021_readreg\00", [47 x i8] zeroinitializer }, align 32
@tda10021_readreg._entry_ptr = internal global ptr @tda10021_readreg._entry, section ".printk_index", align 4
@_tda10021_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"DVB: TDA10021(%d): %s, writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_tda10021_writereg\00", [45 x i8] zeroinitializer }, align 32
@_tda10021_writereg._entry_ptr = internal global ptr @_tda10021_writereg._entry, section ".printk_index", align 4
@tda10021_set_parameters.qam_params = internal constant { [6 x %struct.qam_params], [34 x i8] } { [6 x %struct.qam_params] [%struct.qam_params { i8 20, i8 120, i8 120, i8 -116, i8 -106 }, %struct.qam_params { i8 0, i8 -116, i8 -121, i8 -94, i8 -111 }, %struct.qam_params { i8 4, i8 -116, i8 100, i8 116, i8 -106 }, %struct.qam_params { i8 8, i8 106, i8 70, i8 67, i8 106 }, %struct.qam_params { i8 12, i8 120, i8 54, i8 52, i8 126 }, %struct.qam_params { i8 16, i8 92, i8 38, i8 35, i8 107 }], [34 x i8] zeroinitializer }, align 32
@tda10021_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.7, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10021_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10021_get_frontend._entry_ptr = internal global ptr @tda10021_get_frontend._entry, section ".printk_index", align 4
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DVB: TDA10021(%d): AFC (%d) %dHz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DVB: TDA10021(%d): [AFC (%d) %dHz]\0A\00", [60 x i8] zeroinitializer }, align 32
@lock_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tda10021: lock tuner fails\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_tuner\00", [21 x i8] zeroinitializer }, align 32
@lock_tuner._entry_ptr = internal global ptr @lock_tuner._entry, section ".printk_index", align 4
@unlock_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda10021: unlock tuner fails\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unlock_tuner\00", [19 x i8] zeroinitializer }, align 32
@unlock_tuner._entry_ptr = internal global ptr @unlock_tuner._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"tda10021_inittab\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 48, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 471, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"tda10021_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 484, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 41, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 68, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"qam_params\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 236, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 398, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 99, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda10021.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 113, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__ksymtab_tda10021_attach, ptr @__param_verbose, ptr @_tda10021_writereg._entry, ptr @_tda10021_writereg._entry_ptr, ptr @lock_tuner._entry, ptr @lock_tuner._entry_ptr, ptr @tda10021_attach._entry, ptr @tda10021_attach._entry_ptr, ptr @tda10021_get_frontend._entry, ptr @tda10021_get_frontend._entry_ptr, ptr @tda10021_readreg._entry, ptr @tda10021_readreg._entry_ptr, ptr @unlock_tuner._entry, ptr @unlock_tuner._entry_ptr, ptr @tda10021_inittab, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tda10021_ops, ptr @verbose, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tda10021_set_parameters.qam_params, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_inittab to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_tda10021_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_set_parameters.qam_params to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10021_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlock_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10021_attach(ptr noundef %config, ptr noundef %i2c, i8 noundef zeroext %pwm) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %pwm3 = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %pwm3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %pwm, ptr %pwm3, align 8
  %reg0 = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %reg0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 115, ptr %reg0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 26, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %20 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and)
  %cmp5.not = icmp ne i32 %and, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %20)
  %cmp10 = icmp eq i8 %20, 125
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end.error_crit_edge, label %do.end

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv15 = zext i8 %24 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv15, i32 noundef %conv) #10
  %frontend = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %25 = call ptr @memcpy(ptr %ops, ptr @tda10021_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda10021_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %do.end ]
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
define internal void @tda10021_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @tda10021_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i25 = alloca [2 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf.i11 = alloca [2 x i8], align 1
  %msg.i12 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %dvb.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %_tda10021_writereg.exit.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %_tda10021_writereg.exit.for.body_crit_edge ]
  %conv = trunc i32 %i.038 to i8
  %arrayidx = getelementptr [64 x i8], ptr @tda10021_inittab, i32 0, i32 %i.038
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf.i, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %3, align 4
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %3, align 4
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body._tda10021_writereg.exit_crit_edge, label %do.end.i

for.body._tda10021_writereg.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvb.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %conv4.i = zext i8 %5 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %21, ptr noundef nonnull @.str.6, i32 noundef %i.038, i32 noundef %conv4.i, i32 noundef %call.i) #10
  br label %_tda10021_writereg.exit

_tda10021_writereg.exit:                          ; preds = %do.end.i, %for.body._tda10021_writereg.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %_tda10021_writereg.exit.for.body_crit_edge

_tda10021_writereg.exit.for.body_crit_edge:       ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %_tda10021_writereg.exit
  %pwm = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i11) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i11, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 52, ptr %buf.i11, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12) #6
  %27 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i14 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i14, ptr %msg.i12, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i15, align 2
  %buf1.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %35 = ptrtoint ptr %buf1.i17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i11, ptr %buf1.i17, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i18 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i18)
  %cmp.not.i19 = icmp eq i32 %call.i18, 1
  br i1 %cmp.not.i19, label %for.end._tda10021_writereg.exit24_crit_edge, label %do.end.i23

for.end._tda10021_writereg.exit24_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit24

do.end.i23:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dvb.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %conv4.i21 = zext i8 %23 to i32
  %call5.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %41, ptr noundef nonnull @.str.6, i32 noundef 52, i32 noundef %conv4.i21, i32 noundef %call.i18) #10
  br label %_tda10021_writereg.exit24

_tda10021_writereg.exit24:                        ; preds = %do.end.i23, %for.end._tda10021_writereg.exit24_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i11) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i25) #6
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i25, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 42, ptr %buf.i25, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 35, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #6
  %45 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv.i28 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i28, ptr %msg.i26, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i29, align 2
  %buf1.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %53 = ptrtoint ptr %buf1.i31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i25, ptr %buf1.i31, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 1
  br i1 %cmp.not.i33, label %_tda10021_writereg.exit24._tda10021_writereg.exit37_crit_edge, label %do.end.i36

_tda10021_writereg.exit24._tda10021_writereg.exit37_crit_edge: ; preds = %_tda10021_writereg.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit37

do.end.i36:                                       ; preds = %_tda10021_writereg.exit24
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dvb.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %call5.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %59, ptr noundef nonnull @.str.6, i32 noundef 42, i32 noundef 35, i32 noundef %call.i32) #10
  br label %_tda10021_writereg.exit37

_tda10021_writereg.exit37:                        ; preds = %do.end.i36, %_tda10021_writereg.exit24._tda10021_writereg.exit37_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 27, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry._tda10021_writereg.exit_crit_edge, label %do.end.i

entry._tda10021_writereg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %19, ptr noundef nonnull @.str.6, i32 noundef 27, i32 noundef 2, i32 noundef %call.i) #10
  br label %_tda10021_writereg.exit

_tda10021_writereg.exit:                          ; preds = %do.end.i, %entry._tda10021_writereg.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf.i3, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %23 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv.i6 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %31 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i3, ptr %buf1.i9, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %_tda10021_writereg.exit._tda10021_writereg.exit15_crit_edge, label %do.end.i14

_tda10021_writereg.exit._tda10021_writereg.exit15_crit_edge: ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit15

do.end.i14:                                       ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i12 = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %dvb.i12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb.i12, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %call5.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %37, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 128, i32 noundef %call.i10) #10
  br label %_tda10021_writereg.exit15

_tda10021_writereg.exit15:                        ; preds = %do.end.i14, %_tda10021_writereg.exit._tda10021_writereg.exit15_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i3.i = alloca [2 x i8], align 1
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %buf.i.i168 = alloca [2 x i8], align 1
  %msg.i.i169 = alloca %struct.i2c_msg, align 4
  %buf.i154 = alloca [2 x i8], align 1
  %msg.i155 = alloca %struct.i2c_msg, align 4
  %buf.i140 = alloca [2 x i8], align 1
  %msg.i141 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i131 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i117 = alloca [2 x i8], align 1
  %msg.i118 = alloca %struct.i2c_msg, align 4
  %buf.i103 = alloca [2 x i8], align 1
  %msg.i104 = alloca %struct.i2c_msg, align 4
  %buf.i89 = alloca [2 x i8], align 1
  %msg.i90 = alloca %struct.i2c_msg, align 4
  %buf.i75 = alloca [2 x i8], align 1
  %msg.i76 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i58.i = alloca [2 x i8], align 1
  %msg.i59.i = alloca %struct.i2c_msg, align 4
  %buf.i44.i = alloca [2 x i8], align 1
  %msg.i45.i = alloca %struct.i2c_msg, align 4
  %buf.i30.i = alloca [2 x i8], align 1
  %msg.i31.i = alloca %struct.i2c_msg, align 4
  %buf.i16.i = alloca [2 x i8], align 1
  %msg.i17.i = alloca %struct.i2c_msg, align 4
  %buf.i2.i = alloca [2 x i8], align 1
  %msg.i3.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulation, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 18, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %is_annex_c.0.off0 = phi i1 [ true, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch = icmp ult i32 %3, 6
  br i1 %switch, label %sw.epilog4, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog4:                                       ; preds = %sw.epilog
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch74 = icmp ult i32 %8, 2
  br i1 %switch74, label %if.end, label %sw.epilog4.cleanup_crit_edge

sw.epilog4.cleanup_crit_edge:                     ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %9 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then7

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %call = tail call i32 %10(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.then7.if.end18_crit_edge, label %if.then13

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 %12(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then7.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %13 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %symbol_rate, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 500000) #6
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 28920000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3615000, i32 %16)
  %cmp4.i = icmp ult i32 %16, 3615000
  %NDEC.0.i = zext i1 %cmp4.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1807500, i32 %16)
  %cmp7.i = icmp ult i32 %16, 1807500
  %NDEC.1.i = select i1 %cmp7.i, i32 2, i32 %NDEC.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 903750, i32 %16)
  %cmp10.i = icmp ult i32 %16, 903750
  %NDEC.2.i = select i1 %cmp10.i, i32 3, i32 %NDEC.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4702439, i32 %16)
  %cmp13.i = icmp ult i32 %16, 4702439
  call void @__sanitizer_cov_trace_const_cmp4(i32 2351219, i32 %16)
  %cmp19.i = icmp ult i32 %16, 2351219
  call void @__sanitizer_cov_trace_const_cmp4(i32 1175609, i32 %16)
  %cmp25.i = icmp ult i32 %16, 1175609
  call void @__sanitizer_cov_trace_const_cmp4(i32 587804, i32 %16)
  %cmp31.i = icmp ult i32 %16, 587804
  %shl.i = shl nuw nsw i32 %16, %NDEC.2.i
  %shl34.i = shl nuw i32 %shl.i, 4
  %shl34.i.frozen = freeze i32 %shl34.i
  %div.i = udiv i32 %shl34.i.frozen, 3615000
  %17 = mul i32 %div.i, 3615000
  %rem.i.decomposed = sub i32 %shl34.i.frozen, %17
  %shl36.i = shl nuw nsw i32 %rem.i.decomposed, 8
  %shl37.i = shl nuw nsw i32 %div.i, 8
  %shl36.i.frozen = freeze i32 %shl36.i
  %div38.i = udiv i32 %shl36.i.frozen, 3615000
  %add.i = add nuw nsw i32 %div38.i, %shl37.i
  %18 = mul i32 %div38.i, 3615000
  %rem39.i.decomposed = sub i32 %shl36.i.frozen, %18
  %shl40.i = shl nuw nsw i32 %rem39.i.decomposed, 8
  %shl41.i = shl nuw nsw i32 %add.i, 8
  %add44.i = add nuw nsw i32 %shl40.i, 1807500
  %div45.i = udiv i32 %add44.i, 3615000
  %add46.i = add nuw nsw i32 %div45.i, %shl41.i
  %div47.i = udiv i32 1850880000, %shl.i
  %add48.i = add nuw nsw i32 %div47.i, 1
  %div491.i = lshr i32 %add48.i, 1
  %19 = tail call i32 @llvm.umin.i32(i32 %div491.i, i32 255) #6
  %SFIL.0.op.i = select i1 %cmp13.i, i8 83, i8 67
  %SFIL.1.op.i = select i1 %cmp4.i, i8 67, i8 %SFIL.0.op.i
  %SFIL.2.op.i = select i1 %cmp19.i, i8 83, i8 %SFIL.1.op.i
  %SFIL.3.op.i = select i1 %cmp7.i, i8 67, i8 %SFIL.2.op.i
  %SFIL.4.op.i = select i1 %cmp25.i, i8 83, i8 %SFIL.3.op.i
  %SFIL.5.op.op.i = select i1 %cmp10.i, i8 67, i8 %SFIL.4.op.i
  %or.i = select i1 %cmp31.i, i8 83, i8 %SFIL.5.op.op.i
  %conv.tr.i = trunc i32 %NDEC.2.i to i8
  %20 = shl nuw i8 %conv.tr.i, 6
  %conv62.i = or i8 %20, 10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %buf.i.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv62.i, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %config.i.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end18._tda10021_writereg.exit.i_crit_edge, label %do.end.i.i

if.end18._tda10021_writereg.exit.i_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit.i

do.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dvb.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %conv4.i.i = zext i8 %conv62.i to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %38, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef %conv4.i.i, i32 noundef %call.i.i) #10
  br label %_tda10021_writereg.exit.i

_tda10021_writereg.exit.i:                        ; preds = %do.end.i.i, %if.end18._tda10021_writereg.exit.i_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %conv64.i = trunc i32 %add46.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %39 = getelementptr inbounds [2 x i8], ptr %buf.i2.i, i32 0, i32 1
  %40 = ptrtoint ptr %buf.i2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %buf.i2.i, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv64.i, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3.i) #6
  %42 = getelementptr inbounds i8, ptr %msg.i3.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196607, ptr %42, align 4
  %44 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i5.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i5.i, ptr %msg.i3.i, align 4
  %flags.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i6.i, align 2
  %buf1.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 3
  %50 = ptrtoint ptr %buf1.i8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i2.i, ptr %buf1.i8.i, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %call.i9.i = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i3.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9.i)
  %cmp.not.i10.i = icmp eq i32 %call.i9.i, 1
  br i1 %cmp.not.i10.i, label %_tda10021_writereg.exit.i._tda10021_writereg.exit15.i_crit_edge, label %do.end.i14.i

_tda10021_writereg.exit.i._tda10021_writereg.exit15.i_crit_edge: ; preds = %_tda10021_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit15.i

do.end.i14.i:                                     ; preds = %_tda10021_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i11.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %dvb.i11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dvb.i11.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %conv4.i12.i = and i32 %add46.i, 255
  %call5.i13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %56, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef %conv4.i12.i, i32 noundef %call.i9.i) #10
  br label %_tda10021_writereg.exit15.i

_tda10021_writereg.exit15.i:                      ; preds = %do.end.i14.i, %_tda10021_writereg.exit.i._tda10021_writereg.exit15.i_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %57 = lshr i32 %add46.i, 8
  %conv67.i = trunc i32 %57 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16.i) #6
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i16.i, i32 0, i32 1
  %59 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 11, ptr %buf.i16.i, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv67.i, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17.i) #6
  %61 = getelementptr inbounds i8, ptr %msg.i17.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %63 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i19.i = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i17.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i19.i, ptr %msg.i17.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i20.i, align 2
  %buf1.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 3
  %69 = ptrtoint ptr %buf1.i22.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.i16.i, ptr %buf1.i22.i, align 4
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i17.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp.not.i24.i, label %_tda10021_writereg.exit15.i._tda10021_writereg.exit29.i_crit_edge, label %do.end.i28.i

_tda10021_writereg.exit15.i._tda10021_writereg.exit29.i_crit_edge: ; preds = %_tda10021_writereg.exit15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit29.i

do.end.i28.i:                                     ; preds = %_tda10021_writereg.exit15.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i25.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %dvb.i25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dvb.i25.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %conv4.i26.i = and i32 %57, 255
  %call5.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %75, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef %conv4.i26.i, i32 noundef %call.i23.i) #10
  br label %_tda10021_writereg.exit29.i

_tda10021_writereg.exit29.i:                      ; preds = %do.end.i28.i, %_tda10021_writereg.exit15.i._tda10021_writereg.exit29.i_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #6
  %76 = lshr i32 %add46.i, 16
  %77 = trunc i32 %76 to i8
  %conv71.i = and i8 %77, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i30.i) #6
  %78 = getelementptr inbounds [2 x i8], ptr %buf.i30.i, i32 0, i32 1
  %79 = ptrtoint ptr %buf.i30.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 12, ptr %buf.i30.i, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv71.i, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i) #6
  %81 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 196607, ptr %81, align 4
  %83 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %conv.i33.i = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i33.i, ptr %msg.i31.i, align 4
  %flags.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i34.i, align 2
  %buf1.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %89 = ptrtoint ptr %buf1.i36.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i30.i, ptr %buf1.i36.i, align 4
  %90 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %5, align 4
  %call.i37.i = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i31.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i37.i)
  %cmp.not.i38.i = icmp eq i32 %call.i37.i, 1
  br i1 %cmp.not.i38.i, label %_tda10021_writereg.exit29.i._tda10021_writereg.exit43.i_crit_edge, label %do.end.i42.i

_tda10021_writereg.exit29.i._tda10021_writereg.exit43.i_crit_edge: ; preds = %_tda10021_writereg.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit43.i

do.end.i42.i:                                     ; preds = %_tda10021_writereg.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i39.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %92 = ptrtoint ptr %dvb.i39.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dvb.i39.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %conv4.i40.i = zext i8 %conv71.i to i32
  %call5.i41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %95, ptr noundef nonnull @.str.6, i32 noundef 12, i32 noundef %conv4.i40.i, i32 noundef %call.i37.i) #10
  br label %_tda10021_writereg.exit43.i

_tda10021_writereg.exit43.i:                      ; preds = %do.end.i42.i, %_tda10021_writereg.exit29.i._tda10021_writereg.exit43.i_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i30.i) #6
  %conv73.i = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i44.i) #6
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i44.i, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i44.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 13, ptr %buf.i44.i, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv73.i, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45.i) #6
  %99 = getelementptr inbounds i8, ptr %msg.i45.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  %conv.i47.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i45.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i47.i, ptr %msg.i45.i, align 4
  %flags.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i48.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i48.i, align 2
  %buf1.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i50.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i44.i, ptr %buf1.i50.i, align 4
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %5, align 4
  %call.i51.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i45.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51.i)
  %cmp.not.i52.i = icmp eq i32 %call.i51.i, 1
  br i1 %cmp.not.i52.i, label %_tda10021_writereg.exit43.i._tda10021_writereg.exit57.i_crit_edge, label %do.end.i56.i

_tda10021_writereg.exit43.i._tda10021_writereg.exit57.i_crit_edge: ; preds = %_tda10021_writereg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit57.i

do.end.i56.i:                                     ; preds = %_tda10021_writereg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i53.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %110 = ptrtoint ptr %dvb.i53.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dvb.i53.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %call5.i55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %113, ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef %19, i32 noundef %call.i51.i) #10
  br label %_tda10021_writereg.exit57.i

_tda10021_writereg.exit57.i:                      ; preds = %do.end.i56.i, %_tda10021_writereg.exit43.i._tda10021_writereg.exit57.i_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58.i) #6
  %114 = getelementptr inbounds [2 x i8], ptr %buf.i58.i, i32 0, i32 1
  %115 = ptrtoint ptr %buf.i58.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 14, ptr %buf.i58.i, align 1
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %or.i, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59.i) #6
  %117 = getelementptr inbounds i8, ptr %msg.i59.i, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 196607, ptr %117, align 4
  %119 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 1
  %conv.i61.i = zext i8 %122 to i16
  %123 = ptrtoint ptr %msg.i59.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i61.i, ptr %msg.i59.i, align 4
  %flags.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 1
  %124 = ptrtoint ptr %flags.i62.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i62.i, align 2
  %buf1.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 3
  %125 = ptrtoint ptr %buf1.i64.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %buf.i58.i, ptr %buf1.i64.i, align 4
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %5, align 4
  %call.i65.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i59.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65.i)
  %cmp.not.i66.i = icmp eq i32 %call.i65.i, 1
  br i1 %cmp.not.i66.i, label %_tda10021_writereg.exit57.i.tda10021_set_symbolrate.exit_crit_edge, label %do.end.i70.i

_tda10021_writereg.exit57.i.tda10021_set_symbolrate.exit_crit_edge: ; preds = %_tda10021_writereg.exit57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_set_symbolrate.exit

do.end.i70.i:                                     ; preds = %_tda10021_writereg.exit57.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i67.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %dvb.i67.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dvb.i67.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %conv4.i68.i = zext i8 %or.i to i32
  %call5.i69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %131, ptr noundef nonnull @.str.6, i32 noundef 14, i32 noundef %conv4.i68.i, i32 noundef %call.i65.i) #10
  br label %tda10021_set_symbolrate.exit

tda10021_set_symbolrate.exit:                     ; preds = %do.end.i70.i, %_tda10021_writereg.exit57.i.tda10021_set_symbolrate.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i58.i) #6
  %pwm = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 3
  %132 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %134 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %135 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 52, ptr %buf.i, align 1
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %133, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %137 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 196607, ptr %137, align 4
  %139 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %config.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 1
  %conv.i = zext i8 %142 to i16
  %143 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %145 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %buf.i, ptr %buf1.i, align 4
  %146 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %5, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda10021_set_symbolrate.exit._tda10021_writereg.exit_crit_edge, label %do.end.i

tda10021_set_symbolrate.exit._tda10021_writereg.exit_crit_edge: ; preds = %tda10021_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit

do.end.i:                                         ; preds = %tda10021_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %148 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dvb.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %conv4.i = zext i8 %133 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %151, ptr noundef nonnull @.str.6, i32 noundef 52, i32 noundef %conv4.i, i32 noundef %call.i) #10
  br label %_tda10021_writereg.exit

_tda10021_writereg.exit:                          ; preds = %do.end.i, %tda10021_set_symbolrate.exit._tda10021_writereg.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %arrayidx = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %3
  %agcref = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %3, i32 1
  %152 = ptrtoint ptr %agcref to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %agcref, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i75) #6
  %154 = getelementptr inbounds [2 x i8], ptr %buf.i75, i32 0, i32 1
  %155 = ptrtoint ptr %buf.i75 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %buf.i75, align 1
  %156 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %153, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i76) #6
  %157 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 196607, ptr %157, align 4
  %159 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %config.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %160, align 1
  %conv.i78 = zext i8 %162 to i16
  %163 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv.i78, ptr %msg.i76, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %164 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %flags.i79, align 2
  %buf1.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %165 = ptrtoint ptr %buf1.i81 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %buf.i75, ptr %buf1.i81, align 4
  %166 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %5, align 4
  %call.i82 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msg.i76, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82)
  %cmp.not.i83 = icmp eq i32 %call.i82, 1
  br i1 %cmp.not.i83, label %_tda10021_writereg.exit._tda10021_writereg.exit88_crit_edge, label %do.end.i87

_tda10021_writereg.exit._tda10021_writereg.exit88_crit_edge: ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit88

do.end.i87:                                       ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i84 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %168 = ptrtoint ptr %dvb.i84 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dvb.i84, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %conv4.i85 = zext i8 %153 to i32
  %call5.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %171, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %conv4.i85, i32 noundef %call.i82) #10
  br label %_tda10021_writereg.exit88

_tda10021_writereg.exit88:                        ; preds = %do.end.i87, %_tda10021_writereg.exit._tda10021_writereg.exit88_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i75) #6
  %lthr = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %3, i32 2
  %172 = ptrtoint ptr %lthr to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %lthr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i89) #6
  %174 = getelementptr inbounds [2 x i8], ptr %buf.i89, i32 0, i32 1
  %175 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 5, ptr %buf.i89, align 1
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %173, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90) #6
  %177 = getelementptr inbounds i8, ptr %msg.i90, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 196607, ptr %177, align 4
  %179 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config.i.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 1
  %conv.i92 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i90 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv.i92, ptr %msg.i90, align 4
  %flags.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i93 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i93, align 2
  %buf1.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 3
  %185 = ptrtoint ptr %buf1.i95 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %buf.i89, ptr %buf1.i95, align 4
  %186 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %5, align 4
  %call.i96 = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i90, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i96)
  %cmp.not.i97 = icmp eq i32 %call.i96, 1
  br i1 %cmp.not.i97, label %_tda10021_writereg.exit88._tda10021_writereg.exit102_crit_edge, label %do.end.i101

_tda10021_writereg.exit88._tda10021_writereg.exit102_crit_edge: ; preds = %_tda10021_writereg.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit102

do.end.i101:                                      ; preds = %_tda10021_writereg.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i98 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %188 = ptrtoint ptr %dvb.i98 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dvb.i98, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %conv4.i99 = zext i8 %173 to i32
  %call5.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %191, ptr noundef nonnull @.str.6, i32 noundef 5, i32 noundef %conv4.i99, i32 noundef %call.i96) #10
  br label %_tda10021_writereg.exit102

_tda10021_writereg.exit102:                       ; preds = %do.end.i101, %_tda10021_writereg.exit88._tda10021_writereg.exit102_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i89) #6
  %mseth = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %3, i32 3
  %192 = ptrtoint ptr %mseth to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %mseth, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i103) #6
  %194 = getelementptr inbounds [2 x i8], ptr %buf.i103, i32 0, i32 1
  %195 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 8, ptr %buf.i103, align 1
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %193, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104) #6
  %197 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 196607, ptr %197, align 4
  %199 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %config.i.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %200, align 1
  %conv.i106 = zext i8 %202 to i16
  %203 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i106, ptr %msg.i104, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i107, align 2
  %buf1.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %205 = ptrtoint ptr %buf1.i109 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %buf.i103, ptr %buf1.i109, align 4
  %206 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %5, align 4
  %call.i110 = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i104, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i110)
  %cmp.not.i111 = icmp eq i32 %call.i110, 1
  br i1 %cmp.not.i111, label %_tda10021_writereg.exit102._tda10021_writereg.exit116_crit_edge, label %do.end.i115

_tda10021_writereg.exit102._tda10021_writereg.exit116_crit_edge: ; preds = %_tda10021_writereg.exit102
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit116

do.end.i115:                                      ; preds = %_tda10021_writereg.exit102
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i112 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %208 = ptrtoint ptr %dvb.i112 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dvb.i112, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %conv4.i113 = zext i8 %193 to i32
  %call5.i114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %211, ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef %conv4.i113, i32 noundef %call.i110) #10
  br label %_tda10021_writereg.exit116

_tda10021_writereg.exit116:                       ; preds = %do.end.i115, %_tda10021_writereg.exit102._tda10021_writereg.exit116_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i103) #6
  %aref = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %3, i32 4
  %212 = ptrtoint ptr %aref to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %aref, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i117) #6
  %214 = getelementptr inbounds [2 x i8], ptr %buf.i117, i32 0, i32 1
  %215 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 9, ptr %buf.i117, align 1
  %216 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %213, ptr %214, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118) #6
  %217 = getelementptr inbounds i8, ptr %msg.i118, i32 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 196607, ptr %217, align 4
  %219 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %config.i.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %220, align 1
  %conv.i120 = zext i8 %222 to i16
  %223 = ptrtoint ptr %msg.i118 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv.i120, ptr %msg.i118, align 4
  %flags.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 1
  %224 = ptrtoint ptr %flags.i121 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %flags.i121, align 2
  %buf1.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 3
  %225 = ptrtoint ptr %buf1.i123 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %buf.i117, ptr %buf1.i123, align 4
  %226 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %5, align 4
  %call.i124 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %msg.i118, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i124)
  %cmp.not.i125 = icmp eq i32 %call.i124, 1
  br i1 %cmp.not.i125, label %_tda10021_writereg.exit116._tda10021_writereg.exit130_crit_edge, label %do.end.i129

_tda10021_writereg.exit116._tda10021_writereg.exit130_crit_edge: ; preds = %_tda10021_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit130

do.end.i129:                                      ; preds = %_tda10021_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i126 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %228 = ptrtoint ptr %dvb.i126 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dvb.i126, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %229, align 4
  %conv4.i127 = zext i8 %213 to i32
  %call5.i128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %231, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef %conv4.i127, i32 noundef %call.i124) #10
  br label %_tda10021_writereg.exit130

_tda10021_writereg.exit130:                       ; preds = %do.end.i129, %_tda10021_writereg.exit116._tda10021_writereg.exit130_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i117) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %232 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 61, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %233 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i131) #6
  %234 = getelementptr inbounds i8, ptr %msg.i131, i32 4
  %235 = call ptr @memset(ptr %234, i32 255, i32 16)
  %236 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %config.i.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %237, align 1
  %conv.i133 = zext i8 %239 to i16
  %240 = ptrtoint ptr %msg.i131 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv.i133, ptr %msg.i131, align 4
  %flags.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i134 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i134, align 2
  %242 = ptrtoint ptr %234 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 1, ptr %234, align 4
  %buf.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 3
  %243 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %b0.i, ptr %buf.i136, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 1
  %244 = load i8, ptr %237, align 1
  %conv5.i = zext i8 %244 to i16
  %245 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 1, i32 1
  %246 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 1, i32 2
  %247 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 1, i32 3
  %248 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %b1.i, ptr %buf8.i, align 4
  %249 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %5, align 4
  %call.i137 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %msg.i131, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i137)
  %cmp.not.i138 = icmp eq i32 %call.i137, 2
  br i1 %cmp.not.i138, label %_tda10021_writereg.exit130.tda10021_readreg.exit_crit_edge, label %do.end.i139

_tda10021_writereg.exit130.tda10021_readreg.exit_crit_edge: ; preds = %_tda10021_writereg.exit130
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i139:                                      ; preds = %_tda10021_writereg.exit130
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i137) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i139, %_tda10021_writereg.exit130.tda10021_readreg.exit_crit_edge
  %251 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i131) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br i1 %is_annex_c.0.off0, label %if.then30, label %if.else

if.then30:                                        ; preds = %tda10021_readreg.exit
  %253 = or i8 %252, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i140) #6
  %254 = getelementptr inbounds [2 x i8], ptr %buf.i140, i32 0, i32 1
  %255 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 61, ptr %buf.i140, align 1
  %256 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %253, ptr %254, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i141) #6
  %257 = getelementptr inbounds i8, ptr %msg.i141, i32 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 196607, ptr %257, align 4
  %259 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %config.i.i, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %260, align 1
  %conv.i143 = zext i8 %262 to i16
  %263 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.i143, ptr %msg.i141, align 4
  %flags.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 1
  %264 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %flags.i144, align 2
  %buf1.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 3
  %265 = ptrtoint ptr %buf1.i146 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %buf.i140, ptr %buf1.i146, align 4
  %266 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %5, align 4
  %call.i147 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %msg.i141, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i147)
  %cmp.not.i148 = icmp eq i32 %call.i147, 1
  br i1 %cmp.not.i148, label %if.then30._tda10021_writereg.exit153_crit_edge, label %do.end.i152

if.then30._tda10021_writereg.exit153_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit153

do.end.i152:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i149 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %268 = ptrtoint ptr %dvb.i149 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dvb.i149, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  %conv4.i150 = zext i8 %253 to i32
  %call5.i151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %271, ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef %conv4.i150, i32 noundef %call.i147) #10
  br label %_tda10021_writereg.exit153

_tda10021_writereg.exit153:                       ; preds = %do.end.i152, %if.then30._tda10021_writereg.exit153_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i141) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i140) #6
  br label %if.end35

if.else:                                          ; preds = %tda10021_readreg.exit
  %and = and i8 %252, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i154) #6
  %272 = getelementptr inbounds [2 x i8], ptr %buf.i154, i32 0, i32 1
  %273 = ptrtoint ptr %buf.i154 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 61, ptr %buf.i154, align 1
  %274 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %and, ptr %272, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i155) #6
  %275 = getelementptr inbounds i8, ptr %msg.i155, i32 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 196607, ptr %275, align 4
  %277 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %config.i.i, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %278, align 1
  %conv.i157 = zext i8 %280 to i16
  %281 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv.i157, ptr %msg.i155, align 4
  %flags.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 1
  %282 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 0, ptr %flags.i158, align 2
  %buf1.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 3
  %283 = ptrtoint ptr %buf1.i160 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %buf.i154, ptr %buf1.i160, align 4
  %284 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %5, align 4
  %call.i161 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i155, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i161)
  %cmp.not.i162 = icmp eq i32 %call.i161, 1
  br i1 %cmp.not.i162, label %if.else._tda10021_writereg.exit167_crit_edge, label %do.end.i166

if.else._tda10021_writereg.exit167_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit167

do.end.i166:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i163 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %286 = ptrtoint ptr %dvb.i163 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dvb.i163, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %conv4.i164 = zext i8 %and to i32
  %call5.i165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %289, ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef %conv4.i164, i32 noundef %call.i161) #10
  br label %_tda10021_writereg.exit167

_tda10021_writereg.exit167:                       ; preds = %do.end.i166, %if.else._tda10021_writereg.exit167_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i155) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154) #6
  br label %if.end35

if.end35:                                         ; preds = %_tda10021_writereg.exit167, %_tda10021_writereg.exit153
  %290 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx, align 1
  %292 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %inversion, align 4
  %reg01.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 4
  %294 = ptrtoint ptr %reg01.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %reg01.i, align 1
  %296 = and i8 %295, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %293)
  %cmp.i = icmp eq i32 %293, 1
  %297 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %config.i.i, align 4
  %invert.i = getelementptr inbounds %struct.tda1002x_config, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %invert.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %cmp6.i = icmp eq i8 %300, 0
  %xor2.i = xor i1 %cmp.i, %cmp6.i
  %reg0.masked.i = and i8 %291, -33
  %301 = or i8 %296, %reg0.masked.i
  %masksel.i = select i1 %xor2.i, i8 0, i8 32
  %reg0.addr.0.i = or i8 %301, %masksel.i
  %and15.i = and i8 %reg0.addr.0.i, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i168) #6
  %302 = getelementptr inbounds [2 x i8], ptr %buf.i.i168, i32 0, i32 1
  %303 = ptrtoint ptr %buf.i.i168 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 0, ptr %buf.i.i168, align 1
  %304 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %and15.i, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i169) #6
  %305 = getelementptr inbounds i8, ptr %msg.i.i169, i32 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 196607, ptr %305, align 4
  %307 = ptrtoint ptr %298 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %298, align 1
  %conv.i.i171 = zext i8 %308 to i16
  %309 = ptrtoint ptr %msg.i.i169 to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %conv.i.i171, ptr %msg.i.i169, align 4
  %flags.i.i172 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 0, i32 1
  %310 = ptrtoint ptr %flags.i.i172 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 0, ptr %flags.i.i172, align 2
  %buf1.i.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 0, i32 3
  %311 = ptrtoint ptr %buf1.i.i173 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %buf.i.i168, ptr %buf1.i.i173, align 4
  %312 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %5, align 4
  %call.i.i174 = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %msg.i.i169, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i174)
  %cmp.not.i.i175 = icmp eq i32 %call.i.i174, 1
  br i1 %cmp.not.i.i175, label %if.end35._tda10021_writereg.exit.i180_crit_edge, label %do.end.i.i179

if.end35._tda10021_writereg.exit.i180_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit.i180

do.end.i.i179:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i.i176 = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %314 = ptrtoint ptr %dvb.i.i176 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dvb.i.i176, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %315, align 4
  %conv4.i.i177 = zext i8 %and15.i to i32
  %call5.i.i178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %317, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %conv4.i.i177, i32 noundef %call.i.i174) #10
  br label %_tda10021_writereg.exit.i180

_tda10021_writereg.exit.i180:                     ; preds = %do.end.i.i179, %if.end35._tda10021_writereg.exit.i180_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i169) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i168) #6
  %318 = or i8 %reg0.addr.0.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3.i) #6
  %319 = getelementptr inbounds [2 x i8], ptr %buf.i3.i, i32 0, i32 1
  %320 = ptrtoint ptr %buf.i3.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %buf.i3.i, align 1
  %321 = ptrtoint ptr %319 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %318, ptr %319, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #6
  %322 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 196607, ptr %322, align 4
  %324 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %config.i.i, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %325, align 1
  %conv.i6.i = zext i8 %327 to i16
  %328 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv.i6.i, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %329 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %flags.i7.i, align 2
  %buf1.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %330 = ptrtoint ptr %buf1.i9.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %buf.i3.i, ptr %buf1.i9.i, align 4
  %331 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %5, align 4
  %call.i10.i = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i10.i, 1
  br i1 %cmp.not.i11.i, label %_tda10021_writereg.exit.i180.tda10021_setup_reg0.exit_crit_edge, label %do.end.i15.i

_tda10021_writereg.exit.i180.tda10021_setup_reg0.exit_crit_edge: ; preds = %_tda10021_writereg.exit.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_setup_reg0.exit

do.end.i15.i:                                     ; preds = %_tda10021_writereg.exit.i180
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i12.i = getelementptr inbounds %struct.tda10021_state, ptr %5, i32 0, i32 2, i32 2
  %333 = ptrtoint ptr %dvb.i12.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dvb.i12.i, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %334, align 4
  %conv4.i13.i = zext i8 %318 to i32
  %call5.i14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %336, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %conv4.i13.i, i32 noundef %call.i10.i) #10
  br label %tda10021_setup_reg0.exit

tda10021_setup_reg0.exit:                         ; preds = %do.end.i15.i, %_tda10021_writereg.exit.i180.tda10021_setup_reg0.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3.i) #6
  %337 = ptrtoint ptr %reg01.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %reg0.addr.0.i, ptr %reg01.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %tda10021_setup_reg0.exit, %sw.epilog4.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda10021_setup_reg0.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %b0.i48 = alloca [1 x i8], align 1
  %b1.i49 = alloca [1 x i8], align 1
  %msg.i50 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 17, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i48) #6
  %23 = ptrtoint ptr %b0.i48 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 25, ptr %b0.i48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i49) #6
  %24 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i49, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i50) #6
  %25 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i52 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i52, ptr %msg.i50, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i53, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i48, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i57 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i57, ptr %arrayinit.element.i56, align 4
  %flags6.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i58 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i58, align 2
  %len7.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i59 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i59, align 4
  %buf8.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i49, ptr %buf8.i60, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i61 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i50, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 2
  br i1 %cmp.not.i62, label %tda10021_readreg.exit.tda10021_readreg.exit65_crit_edge, label %do.end.i64

tda10021_readreg.exit.tda10021_readreg.exit65_crit_edge: ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit65

do.end.i64:                                       ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i61) #10
  br label %tda10021_readreg.exit65

tda10021_readreg.exit65:                          ; preds = %do.end.i64, %tda10021_readreg.exit.tda10021_readreg.exit65_crit_edge
  %42 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i49, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i49) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i48) #6
  %44 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  %45 = and i8 %22, 2
  br i1 %tobool.not, label %tda10021_readreg.exit65.if.end7_crit_edge, label %do.end

tda10021_readreg.exit65.if.end7_crit_edge:        ; preds = %tda10021_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %tda10021_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool3.not = icmp eq i8 %45, 0
  %cond = select i1 %tobool3.not, ptr @.str.9, ptr @.str.8
  %dvb = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %conv4 = sext i8 %43 to i32
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %50 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %symbol_rate, align 4
  %52 = mul i32 %51, %conv4
  %sub = sub i32 0, %52
  %shr = ashr i32 %sub, 10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %cond, i32 noundef %49, i32 noundef %conv4, i32 noundef %shr) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %tda10021_readreg.exit65.if.end7_crit_edge
  %reg0 = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg0, align 1
  %55 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i, align 4
  %invert = getelementptr inbounds %struct.tda1002x_config, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp12 = icmp ne i8 %58, 0
  %59 = and i8 %54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %60 = icmp ne i8 %59, 0
  %not.tobool14.not = xor i1 %60, %cmp12
  %cond15 = zext i1 %not.tobool14.not to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %61 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond15, ptr %inversion, align 4
  %62 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reg0, align 1
  %64 = lshr i8 %63, 2
  %65 = and i8 %64, 7
  %narrow = add nuw nsw i8 %65, 1
  %add = zext i8 %narrow to i32
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %66 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %modulation, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %67 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %fec_inner, align 4
  %68 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %p, align 4
  %add20 = add i32 %69, 31250
  %70 = urem i32 %add20, 62500
  %mul21 = sub i32 %add20, %70
  store i32 %mul21, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool24.not = icmp eq i8 %45, 0
  br i1 %tobool24.not, label %if.end7.if.end32_crit_edge, label %if.then25

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %symbol_rate26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %71 = ptrtoint ptr %symbol_rate26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %symbol_rate26, align 4
  %conv27 = sext i8 %43 to i32
  %mul28 = mul i32 %72, %conv27
  %shr29 = ashr i32 %mul28, 10
  %sub31 = sub i32 %mul21, %shr29
  %73 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub31, ptr %p, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end7.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 1
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %23 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tda10021_readreg.exit.if.end_crit_edge, label %if.then

tda10021_readreg.exit.if.end_crit_edge:           ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or = or i32 %25, 3
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tda10021_readreg.exit.if.end_crit_edge
  %and1 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  %or4 = or i32 %27, 12
  store i32 %or4, ptr %status, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %and6 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %or9 = or i32 %29, 16
  store i32 %or9, ptr %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i73 = alloca [2 x i8], align 1
  %msg.i74 = alloca %struct.i2c_msg, align 4
  %b0.i55 = alloca [1 x i8], align 1
  %b1.i56 = alloca [1 x i8], align 1
  %msg.i57 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i37 = alloca [1 x i8], align 1
  %b1.i38 = alloca [1 x i8], align 1
  %msg.i39 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i19 = alloca [1 x i8], align 1
  %b1.i20 = alloca [1 x i8], align 1
  %msg.i21 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 20, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i19) #6
  %23 = ptrtoint ptr %b0.i19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 21, ptr %b0.i19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i20) #6
  %24 = ptrtoint ptr %b1.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i20, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i21) #6
  %25 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i23 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i24, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i19, ptr %buf.i26, align 4
  %arrayinit.element.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i28 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i28, ptr %arrayinit.element.i27, align 4
  %flags6.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i29, align 2
  %len7.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i30, align 4
  %buf8.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i20, ptr %buf8.i31, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 2
  br i1 %cmp.not.i33, label %tda10021_readreg.exit.tda10021_readreg.exit36_crit_edge, label %do.end.i35

tda10021_readreg.exit.tda10021_readreg.exit36_crit_edge: ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit36

do.end.i35:                                       ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i32) #10
  br label %tda10021_readreg.exit36

tda10021_readreg.exit36:                          ; preds = %do.end.i35, %tda10021_readreg.exit.tda10021_readreg.exit36_crit_edge
  %42 = ptrtoint ptr %b1.i20 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i20, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i21) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i19) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i37) #6
  %44 = ptrtoint ptr %b0.i37 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 22, ptr %b0.i37, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i38) #6
  %45 = ptrtoint ptr %b1.i38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %b1.i38, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i39) #6
  %46 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i41 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i42, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b0.i37, ptr %buf.i44, align 4
  %arrayinit.element.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1
  %56 = load i8, ptr %49, align 1
  %conv5.i46 = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i45 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv5.i46, ptr %arrayinit.element.i45, align 4
  %flags6.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 1
  %58 = ptrtoint ptr %flags6.i47 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags6.i47, align 2
  %len7.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 2
  %59 = ptrtoint ptr %len7.i48 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len7.i48, align 4
  %buf8.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 3
  %60 = ptrtoint ptr %buf8.i49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b1.i38, ptr %buf8.i49, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i50 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i39, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i50)
  %cmp.not.i51 = icmp eq i32 %call.i50, 2
  br i1 %cmp.not.i51, label %tda10021_readreg.exit36.tda10021_readreg.exit54_crit_edge, label %do.end.i53

tda10021_readreg.exit36.tda10021_readreg.exit54_crit_edge: ; preds = %tda10021_readreg.exit36
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit54

do.end.i53:                                       ; preds = %tda10021_readreg.exit36
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i50) #10
  br label %tda10021_readreg.exit54

tda10021_readreg.exit54:                          ; preds = %do.end.i53, %tda10021_readreg.exit36.tda10021_readreg.exit54_crit_edge
  %63 = ptrtoint ptr %b1.i38 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b1.i38, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i39) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i38) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i37) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i55) #6
  %65 = ptrtoint ptr %b0.i55 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 16, ptr %b0.i55, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i56) #6
  %66 = ptrtoint ptr %b1.i56 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %b1.i56, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i57) #6
  %67 = getelementptr inbounds i8, ptr %msg.i57, i32 4
  %68 = call ptr @memset(ptr %67, i32 255, i32 16)
  %69 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %config.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv.i59 = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i59, ptr %msg.i57, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i60, align 2
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %67, align 4
  %buf.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %b0.i55, ptr %buf.i62, align 4
  %arrayinit.element.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1
  %77 = load i8, ptr %70, align 1
  %conv5.i64 = zext i8 %77 to i16
  %78 = ptrtoint ptr %arrayinit.element.i63 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv5.i64, ptr %arrayinit.element.i63, align 4
  %flags6.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 1
  %79 = ptrtoint ptr %flags6.i65 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %flags6.i65, align 2
  %len7.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 2
  %80 = ptrtoint ptr %len7.i66 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %len7.i66, align 4
  %buf8.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 3
  %81 = ptrtoint ptr %buf8.i67 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %b1.i56, ptr %buf8.i67, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i68 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i57, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i68)
  %cmp.not.i69 = icmp eq i32 %call.i68, 2
  br i1 %cmp.not.i69, label %tda10021_readreg.exit54.tda10021_readreg.exit72_crit_edge, label %do.end.i71

tda10021_readreg.exit54.tda10021_readreg.exit72_crit_edge: ; preds = %tda10021_readreg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit72

do.end.i71:                                       ; preds = %tda10021_readreg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i68) #10
  br label %tda10021_readreg.exit72

tda10021_readreg.exit72:                          ; preds = %do.end.i71, %tda10021_readreg.exit54.tda10021_readreg.exit72_crit_edge
  %84 = ptrtoint ptr %b1.i56 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %b1.i56, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i57) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i56) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i55) #6
  %86 = and i8 %85, 63
  %87 = or i8 %86, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #6
  %88 = getelementptr inbounds [2 x i8], ptr %buf.i73, i32 0, i32 1
  %89 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 16, ptr %buf.i73, align 1
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %87, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74) #6
  %91 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 196607, ptr %91, align 4
  %93 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  %conv.i76 = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i76, ptr %msg.i74, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i77, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %99 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i73, ptr %buf1.i, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %call.i79 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i74, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i79)
  %cmp.not.i80 = icmp eq i32 %call.i79, 1
  br i1 %cmp.not.i80, label %tda10021_readreg.exit72._tda10021_writereg.exit_crit_edge, label %do.end.i81

tda10021_readreg.exit72._tda10021_writereg.exit_crit_edge: ; preds = %tda10021_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit

do.end.i81:                                       ; preds = %tda10021_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dvb.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %conv4.i = zext i8 %87 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %105, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef %conv4.i, i32 noundef %call.i79) #10
  br label %_tda10021_writereg.exit

_tda10021_writereg.exit:                          ; preds = %do.end.i81, %tda10021_readreg.exit72._tda10021_writereg.exit_crit_edge
  %conv2 = zext i8 %43 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv = zext i8 %22 to i32
  %or = or i32 %shl, %conv
  %106 = and i8 %64, 15
  %and = zext i8 %106 to i32
  %shl5 = shl nuw nsw i32 %and, 16
  %or6 = or i32 %shl5, %or
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #6
  %mul = mul nuw nsw i32 %or6, 10
  %107 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i10 = alloca [1 x i8], align 1
  %b1.i11 = alloca [1 x i8], align 1
  %msg.i12 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 2, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i10) #6
  %23 = ptrtoint ptr %b0.i10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 23, ptr %b0.i10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i11) #6
  %24 = ptrtoint ptr %b1.i11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i12) #6
  %25 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i14 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i14, ptr %msg.i12, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i15, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i10, ptr %buf.i17, align 4
  %arrayinit.element.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i19 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i19, ptr %arrayinit.element.i18, align 4
  %flags6.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i20, align 2
  %len7.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i21 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i21, align 4
  %buf8.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i11, ptr %buf8.i22, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i23 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i12, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i23)
  %cmp.not.i24 = icmp eq i32 %call.i23, 2
  br i1 %cmp.not.i24, label %tda10021_readreg.exit.tda10021_readreg.exit27_crit_edge, label %do.end.i26

tda10021_readreg.exit.tda10021_readreg.exit27_crit_edge: ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit27

do.end.i26:                                       ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i23) #10
  br label %tda10021_readreg.exit27

tda10021_readreg.exit27:                          ; preds = %do.end.i26, %tda10021_readreg.exit.tda10021_readreg.exit27_crit_edge
  %42 = ptrtoint ptr %b1.i11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i11) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i10) #6
  %44 = shl i8 %22, 6
  %sext = ashr i8 %44, 7
  %spec.select = xor i8 %43, %sext
  %conv4 = zext i8 %spec.select to i16
  %or = mul nuw i16 %conv4, 257
  %45 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
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
  store i8 24, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %neg = xor i8 %22, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %23 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i20 = alloca [2 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %buf.i11 = alloca [2 x i8], align 1
  %msg.i12 = alloca %struct.i2c_msg, align 4
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
  store i8 19, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
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
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.tda10021_readreg.exit_crit_edge, label %do.end.i

entry.tda10021_readreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10021_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #10
  br label %tda10021_readreg.exit

tda10021_readreg.exit:                            ; preds = %do.end.i, %entry.tda10021_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = and i8 %22, 127
  %and = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %23)
  %cmp = icmp eq i8 %23, 127
  %spec.select = select i1 %cmp, i32 -1, i32 %and
  %24 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i11) #6
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i11, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %buf.i11, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -104, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12) #6
  %28 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i14 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i14, ptr %msg.i12, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i15, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i11, ptr %buf1.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i17 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i17)
  %cmp.not.i18 = icmp eq i32 %call.i17, 1
  br i1 %cmp.not.i18, label %tda10021_readreg.exit._tda10021_writereg.exit_crit_edge, label %do.end.i19

tda10021_readreg.exit._tda10021_writereg.exit_crit_edge: ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit

do.end.i19:                                       ; preds = %tda10021_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dvb.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %42, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 152, i32 noundef %call.i17) #10
  br label %_tda10021_writereg.exit

_tda10021_writereg.exit:                          ; preds = %do.end.i19, %tda10021_readreg.exit._tda10021_writereg.exit_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i11) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i20) #6
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i20, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %buf.i20, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -72, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #6
  %46 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i23 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i24, align 2
  %buf1.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %54 = ptrtoint ptr %buf1.i26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i20, ptr %buf1.i26, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i21, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %_tda10021_writereg.exit._tda10021_writereg.exit32_crit_edge, label %do.end.i31

_tda10021_writereg.exit._tda10021_writereg.exit32_crit_edge: ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_tda10021_writereg.exit32

do.end.i31:                                       ; preds = %_tda10021_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dvb.i29 = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %dvb.i29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dvb.i29, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %call5.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %60, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 184, i32 noundef %call.i27) #10
  br label %_tda10021_writereg.exit32

_tda10021_writereg.exit32:                        ; preds = %do.end.i31, %_tda10021_writereg.exit._tda10021_writereg.exit32_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i20) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10021_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg_post.i = alloca %struct.i2c_msg, align 4
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
  store i8 15, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv2.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf3.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.lock_tuner.exit_crit_edge, label %do.end.i

if.then.lock_tuner.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_tuner.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %lock_tuner.exit

lock_tuner.exit:                                  ; preds = %do.end.i, %if.then.lock_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %buf.i3, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 64, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_post.i) #6
  %19 = getelementptr inbounds i8, ptr %msg_post.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %config.i4 = getelementptr inbounds %struct.tda10021_state, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %config.i4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i4, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv2.i5 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg_post.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv2.i5, ptr %msg_post.i, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_post.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i6, align 2
  %buf3.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg_post.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf3.i8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i3, ptr %buf3.i8, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i9 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg_post.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9)
  %cmp.not.i10 = icmp eq i32 %call.i9, 1
  br i1 %cmp.not.i10, label %if.else.unlock_tuner.exit_crit_edge, label %do.end.i12

if.else.unlock_tuner.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_tuner.exit

do.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %unlock_tuner.exit

unlock_tuner.exit:                                ; preds = %do.end.i12, %if.else.unlock_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_post.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %if.end

if.end:                                           ; preds = %unlock_tuner.exit, %lock_tuner.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 471, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda10021_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda10021_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__param_verbose, !7, !"__param_verbose", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 519, i32 1}
!8 = !{ptr @__UNIQUE_ID_verbosetype290, !7, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_verbose291, !10, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 520, i32 1}
!11 = !{ptr @__UNIQUE_ID_description292, !12, !"__UNIQUE_ID_description292", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 522, i32 1}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 523, i32 1}
!15 = !{ptr @__UNIQUE_ID_file294, !16, !"__UNIQUE_ID_file294", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 524, i32 1}
!17 = !{ptr @__UNIQUE_ID_license295, !16, !"__UNIQUE_ID_license295", i1 false, i1 false}
!18 = !{ptr @__ksymtab_tda10021_attach, !19, !"__ksymtab_tda10021_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 526, i32 1}
!20 = !{ptr @verbose, !21, !"verbose", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 41, i32 12}
!22 = !{ptr @tda10021_inittab, !23, !"tda10021_inittab", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 48, i32 11}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 86, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tda10021_readreg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tda10021_readreg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tda10021_ops, !30, !"tda10021_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 484, i32 38}
!31 = distinct !{null, !32, !"tda10021_inittab_size", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 47, i32 12}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 68, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_tda10021_writereg._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @_tda10021_writereg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tda10021_set_parameters.qam_params, !39, !"qam_params", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 236, i32 33}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 398, i32 3}
!42 = !{ptr @tda10021_get_frontend._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tda10021_get_frontend._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 99, i32 3}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lock_tuner._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @lock_tuner._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/tda10021.c", i32 113, i32 3}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @unlock_tuner._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @unlock_tuner._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__param_str_verbose, !7, !"__param_str_verbose", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
