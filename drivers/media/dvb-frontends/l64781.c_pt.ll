; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/l64781.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/l64781.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+l64781_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_l64781_attach\09\09\09\09"
module asm "\09.long\09__crc_l64781_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l64781_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22l64781_attach\22\09\09\09\09\09"
module asm "__kstrtabns_l64781_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.l64781_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [13 x i8] c"l64781.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"l64781.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [64 x i8] c"l64781.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@l64781_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017l64781: No response to reset and configure broadcast...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l64781_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/l64781.c\00", [59 x i8] zeroinitializer }, align 32
@l64781_attach._entry_ptr = internal global ptr @l64781_attach._entry, section ".printk_index", align 4
@l64781_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017l64781: No response to read on I2C bus\0A\00", [54 x i8] zeroinitializer }, align 32
@l64781_attach._entry_ptr.5 = internal global ptr @l64781_attach._entry.3, section ".printk_index", align 4
@l64781_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017l64781: Device doesn't look like L64781\0A\00", [53 x i8] zeroinitializer }, align 32
@l64781_attach._entry_ptr.8 = internal global ptr @l64781_attach._entry.6, section ".printk_index", align 4
@l64781_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017l64781: Read 1 returned unexpected value\0A\00", [52 x i8] zeroinitializer }, align 32
@l64781_attach._entry_ptr.11 = internal global ptr @l64781_attach._entry.9, section ".printk_index", align 4
@l64781_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017l64781: Read 2 returned unexpected value\0A\00", [52 x i8] zeroinitializer }, align 32
@l64781_attach._entry_ptr.14 = internal global ptr @l64781_attach._entry.12, section ".printk_index", align 4
@l64781_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LSI L64781 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 -2147472210 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @l64781_release, ptr null, ptr @l64781_init, ptr @l64781_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apply_frontend_param, ptr @l64781_get_tune_settings, ptr @get_frontend, ptr @l64781_read_status, ptr @l64781_read_ber, ptr @l64781_read_signal_strength, ptr @l64781_read_snr, ptr @l64781_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"l64781.description=LSI L64781 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [46 x i8] c"l64781.author=Holger Waechtler, Marko Kohtala\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"l64781.file=drivers/media/dvb-frontends/l64781\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"l64781.license=GPL\00", section ".modinfo", align 1
@__kstrtab_l64781_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_l64781_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_l64781_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l64781_attach to i32), ptr @__kstrtab_l64781_attach, ptr @__kstrtabns_l64781_attach }, section "___ksymtab+l64781_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l64781_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017l64781: %s: write_reg error (reg == %02x) = %02x!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l64781_writereg\00", [16 x i8] zeroinitializer }, align 32
@l64781_writereg._entry_ptr = internal global ptr @l64781_writereg._entry, section ".printk_index", align 4
@apply_frontend_param.fec_tab = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\07\00\01\02\09\03\0A\04", [24 x i8] zeroinitializer }, align 32
@apply_frontend_param.qam_tab = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\04\00\06", [28 x i8] zeroinitializer }, align 32
@apply_frontend_param.guard_tab = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\04\08", [28 x i8] zeroinitializer }, align 32
@get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Unexpected value for transmission_mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_frontend\00", [19 x i8] zeroinitializer }, align 32
@get_frontend._entry_ptr = internal global ptr @get_frontend._entry, section ".printk_index", align 4
@get_frontend._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected value for code_rate_HP\0A\00", [61 x i8] zeroinitializer }, align 32
@get_frontend._entry_ptr.21 = internal global ptr @get_frontend._entry.19, section ".printk_index", align 4
@get_frontend._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected value for code_rate_LP\0A\00", [61 x i8] zeroinitializer }, align 32
@get_frontend._entry_ptr.24 = internal global ptr @get_frontend._entry.22, section ".printk_index", align 4
@get_frontend._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Unexpected value for modulation\0A\00", [61 x i8] zeroinitializer }, align 32
@get_frontend._entry_ptr.27 = internal global ptr @get_frontend._entry.25, section ".printk_index", align 4
@get_frontend._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected value for hierarchy\0A\00", [32 x i8] zeroinitializer }, align 32
@get_frontend._entry_ptr.30 = internal global ptr @get_frontend._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 34, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 513, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 519, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 528, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 537, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 546, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"l64781_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 562, i32 38 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 47, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"fec_tab\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 113, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"qam_tab\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 115, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"guard_tab\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 116, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 264, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 285, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 304, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [40 x i8] c"../drivers/media/dvb-frontends/l64781.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 335, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_l64781_attach, ptr @__param_debug, ptr @get_frontend._entry, ptr @get_frontend._entry.19, ptr @get_frontend._entry.22, ptr @get_frontend._entry.25, ptr @get_frontend._entry.28, ptr @get_frontend._entry_ptr, ptr @get_frontend._entry_ptr.21, ptr @get_frontend._entry_ptr.24, ptr @get_frontend._entry_ptr.27, ptr @get_frontend._entry_ptr.30, ptr @l64781_attach._entry, ptr @l64781_attach._entry.12, ptr @l64781_attach._entry.3, ptr @l64781_attach._entry.6, ptr @l64781_attach._entry.9, ptr @l64781_attach._entry_ptr, ptr @l64781_attach._entry_ptr.11, ptr @l64781_attach._entry_ptr.14, ptr @l64781_attach._entry_ptr.5, ptr @l64781_attach._entry_ptr.8, ptr @l64781_writereg._entry, ptr @l64781_writereg._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @l64781_ops, ptr @.str.15, ptr @.str.16, ptr @apply_frontend_param.fec_tab, ptr @apply_frontend_param.qam_tab, ptr @apply_frontend_param.guard_tab, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l64781_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_frontend_param.fec_tab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_frontend_param.qam_tab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_frontend_param.guard_tab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frontend._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frontend._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frontend._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frontend._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @l64781_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %buf.i191 = alloca [2 x i8], align 1
  %msg.i192 = alloca %struct.i2c_msg, align 4
  %b0.i172 = alloca [1 x i8], align 1
  %b1.i173 = alloca [1 x i8], align 1
  %msg.i174 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i156 = alloca [2 x i8], align 1
  %msg.i157 = alloca %struct.i2c_msg, align 4
  %b0.i137 = alloca [1 x i8], align 1
  %b1.i138 = alloca [1 x i8], align 1
  %msg.i139 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i127 = alloca [2 x i8], align 1
  %msg.i128 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i122 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [1 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #6
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 26, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #6
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 1
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1, ptr %buf6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1052) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.if.end97_crit_edge, label %if.end

entry.if.end97_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.end:                                           ; preds = %entry
  %config9 = getelementptr inbounds %struct.l64781_state, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %config9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %config, ptr %config9, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i2c, ptr %call7.i.i, align 8
  %first = getelementptr inbounds %struct.l64781_state, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %first to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %first, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %first, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #6
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 131071, ptr %19, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf1.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  br i1 %cmp.i.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.end
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %do.body.if.end97_crit_edge, label %do.end

do.body.if.end97_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end97

if.end21:                                         ; preds = %if.end
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %call24 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 2
  br i1 %cmp25.not, label %if.end39, label %do.body28

do.body28:                                        ; preds = %if.end21
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %do.body28.if.end97_crit_edge, label %do.end33

do.body28.if.end97_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %if.end97

if.end39:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %28 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 62, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %29 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i122) #6
  %30 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config9, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %msg.i122, align 4
  %flags.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i123, align 2
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %30, align 4
  %buf.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i, ptr %buf.i125, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1
  %40 = load i8, ptr %33, align 1
  %conv5.i = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 1
  %42 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 2
  %43 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 3
  %44 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b1.i, ptr %buf8.i, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %call.i126 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i122, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i126)
  %cmp.not.i = icmp eq i32 %call.i126, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end39.l64781_readreg.exit_crit_edge

if.end39.l64781_readreg.exit_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %48 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %if.end39.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i126, %if.end39.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i122) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp41.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp41.not, label %if.end55, label %do.body44

do.body44:                                        ; preds = %l64781_readreg.exit
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool45.not = icmp eq i32 %49, 0
  br i1 %tobool45.not, label %do.body44.error_crit_edge, label %do.end49

do.body44.error_crit_edge:                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %error

if.end55:                                         ; preds = %l64781_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i127) #6
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i127, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 62, ptr %buf.i127, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 90, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i128) #6
  %53 = getelementptr inbounds i8, ptr %msg.i128, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %55 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config9, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i130 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i128 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i130, ptr %msg.i128, align 4
  %flags.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i131, align 2
  %buf1.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 3
  %61 = ptrtoint ptr %buf1.i133 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i127, ptr %buf1.i133, align 4
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %call.i134 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i128, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i134)
  %cmp.not.i135 = icmp eq i32 %call.i134, 1
  br i1 %cmp.not.i135, label %if.end55.l64781_writereg.exit_crit_edge, label %do.body.i

if.end55.l64781_writereg.exit_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.body.i:                                        ; preds = %if.end55
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %do.body.i.l64781_writereg.exit_crit_edge, label %do.end.i

do.body.i.l64781_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 62, i32 noundef %call.i134) #10
  br label %l64781_writereg.exit

l64781_writereg.exit:                             ; preds = %do.end.i, %do.body.i.l64781_writereg.exit_crit_edge, %if.end55.l64781_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i128) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i127) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i137) #6
  %65 = ptrtoint ptr %b0.i137 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 26, ptr %b0.i137, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i138) #6
  %66 = ptrtoint ptr %b1.i138 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %b1.i138, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i139) #6
  %67 = getelementptr inbounds i8, ptr %msg.i139, i32 4
  %68 = call ptr @memset(ptr %67, i32 255, i32 16)
  %69 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %config9, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv.i141 = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i139 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i141, ptr %msg.i139, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i142, align 2
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %67, align 4
  %buf.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i144 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %b0.i137, ptr %buf.i144, align 4
  %arrayinit.element.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 1
  %77 = load i8, ptr %70, align 1
  %conv5.i146 = zext i8 %77 to i16
  %78 = ptrtoint ptr %arrayinit.element.i145 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv5.i146, ptr %arrayinit.element.i145, align 4
  %flags6.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 1, i32 1
  %79 = ptrtoint ptr %flags6.i147 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %flags6.i147, align 2
  %len7.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 1, i32 2
  %80 = ptrtoint ptr %len7.i148 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %len7.i148, align 4
  %buf8.i149 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 1, i32 3
  %81 = ptrtoint ptr %buf8.i149 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %b1.i138, ptr %buf8.i149, align 4
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  %call.i150 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i139, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 2
  br i1 %cmp.not.i151, label %if.end.i153, label %l64781_writereg.exit.l64781_readreg.exit155_crit_edge

l64781_writereg.exit.l64781_readreg.exit155_crit_edge: ; preds = %l64781_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit155

if.end.i153:                                      ; preds = %l64781_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %b1.i138 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %b1.i138, align 1
  %conv12.i152 = zext i8 %85 to i32
  br label %l64781_readreg.exit155

l64781_readreg.exit155:                           ; preds = %if.end.i153, %l64781_writereg.exit.l64781_readreg.exit155_crit_edge
  %retval.0.i154 = phi i32 [ %conv12.i152, %if.end.i153 ], [ %call.i150, %l64781_writereg.exit.l64781_readreg.exit155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i139) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i138) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i137) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i154)
  %cmp58.not = icmp eq i32 %retval.0.i154, 0
  br i1 %cmp58.not, label %if.end72, label %do.body61

do.body61:                                        ; preds = %l64781_readreg.exit155
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool62.not = icmp eq i32 %86, 0
  br i1 %tobool62.not, label %do.body61.if.then94_crit_edge, label %do.body61.if.then94.sink.split_crit_edge

do.body61.if.then94.sink.split_crit_edge:         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.sink.split

do.body61.if.then94_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

if.end72:                                         ; preds = %l64781_readreg.exit155
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i156) #6
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i156, i32 0, i32 1
  %88 = ptrtoint ptr %buf.i156 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 62, ptr %buf.i156, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -91, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i157) #6
  %90 = getelementptr inbounds i8, ptr %msg.i157, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 196607, ptr %90, align 4
  %92 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config9, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv.i159 = zext i8 %95 to i16
  %96 = ptrtoint ptr %msg.i157 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i159, ptr %msg.i157, align 4
  %flags.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i157, i32 0, i32 1
  %97 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i160, align 2
  %buf1.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i157, i32 0, i32 3
  %98 = ptrtoint ptr %buf1.i162 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %buf.i156, ptr %buf1.i162, align 4
  %99 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call7.i.i, align 8
  %call.i163 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i157, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i163)
  %cmp.not.i164 = icmp eq i32 %call.i163, 1
  br i1 %cmp.not.i164, label %if.end72.l64781_writereg.exit171_crit_edge, label %do.body.i166

if.end72.l64781_writereg.exit171_crit_edge:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit171

do.body.i166:                                     ; preds = %if.end72
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i165 = icmp eq i32 %101, 0
  br i1 %tobool.not.i165, label %do.body.i166.l64781_writereg.exit171_crit_edge, label %do.end.i168

do.body.i166.l64781_writereg.exit171_crit_edge:   ; preds = %do.body.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit171

do.end.i168:                                      ; preds = %do.body.i166
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 62, i32 noundef %call.i163) #10
  br label %l64781_writereg.exit171

l64781_writereg.exit171:                          ; preds = %do.end.i168, %do.body.i166.l64781_writereg.exit171_crit_edge, %if.end72.l64781_writereg.exit171_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i157) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i156) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i172) #6
  %102 = ptrtoint ptr %b0.i172 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 26, ptr %b0.i172, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i173) #6
  %103 = ptrtoint ptr %b1.i173 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %b1.i173, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i174) #6
  %104 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %105 = call ptr @memset(ptr %104, i32 255, i32 16)
  %106 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config9, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 1
  %conv.i176 = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i176, ptr %msg.i174, align 4
  %flags.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i177, align 2
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %104, align 4
  %buf.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %113 = ptrtoint ptr %buf.i179 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %b0.i172, ptr %buf.i179, align 4
  %arrayinit.element.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1
  %114 = load i8, ptr %107, align 1
  %conv5.i181 = zext i8 %114 to i16
  %115 = ptrtoint ptr %arrayinit.element.i180 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv5.i181, ptr %arrayinit.element.i180, align 4
  %flags6.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 1
  %116 = ptrtoint ptr %flags6.i182 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %flags6.i182, align 2
  %len7.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 2
  %117 = ptrtoint ptr %len7.i183 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %len7.i183, align 4
  %buf8.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 1, i32 3
  %118 = ptrtoint ptr %buf8.i184 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %b1.i173, ptr %buf8.i184, align 4
  %119 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call7.i.i, align 8
  %call.i185 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i174, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i185)
  %cmp.not.i186 = icmp eq i32 %call.i185, 2
  br i1 %cmp.not.i186, label %if.end.i188, label %l64781_writereg.exit171.l64781_readreg.exit190_crit_edge

l64781_writereg.exit171.l64781_readreg.exit190_crit_edge: ; preds = %l64781_writereg.exit171
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit190

if.end.i188:                                      ; preds = %l64781_writereg.exit171
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %b1.i173 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %b1.i173, align 1
  %conv12.i187 = zext i8 %122 to i32
  br label %l64781_readreg.exit190

l64781_readreg.exit190:                           ; preds = %if.end.i188, %l64781_writereg.exit171.l64781_readreg.exit190_crit_edge
  %retval.0.i189 = phi i32 [ %conv12.i187, %if.end.i188 ], [ %call.i185, %l64781_writereg.exit171.l64781_readreg.exit190_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i174) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i173) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i172) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %retval.0.i189)
  %cmp75.not = icmp eq i32 %retval.0.i189, 161
  br i1 %cmp75.not, label %if.end89, label %do.body78

do.body78:                                        ; preds = %l64781_readreg.exit190
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool79.not = icmp eq i32 %123, 0
  br i1 %tobool79.not, label %do.body78.if.then94_crit_edge, label %do.body78.if.then94.sink.split_crit_edge

do.body78.if.then94.sink.split_crit_edge:         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.sink.split

do.body78.if.then94_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

if.end89:                                         ; preds = %l64781_readreg.exit190
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.l64781_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.l64781_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %124 = call ptr @memcpy(ptr %ops, ptr @l64781_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.l64781_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %125 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %do.end49, %do.body44.error_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp92 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp92, label %error.if.then94_crit_edge, label %error.if.end97_crit_edge

error.if.end97_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

error.if.then94_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

if.then94.sink.split:                             ; preds = %do.body78.if.then94.sink.split_crit_edge, %do.body61.if.then94.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.10, %do.body61.if.then94.sink.split_crit_edge ], [ @.str.13, %do.body78.if.then94.sink.split_crit_edge ]
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink) #10
  br label %if.then94

if.then94:                                        ; preds = %if.then94.sink.split, %error.if.then94_crit_edge, %do.body78.if.then94_crit_edge, %do.body61.if.then94_crit_edge
  %conv95 = trunc i32 %retval.0.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i191) #6
  %126 = getelementptr inbounds [2 x i8], ptr %buf.i191, i32 0, i32 1
  %127 = ptrtoint ptr %buf.i191 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 62, ptr %buf.i191, align 1
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv95, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i192) #6
  %129 = getelementptr inbounds i8, ptr %msg.i192, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196607, ptr %129, align 4
  %131 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config9, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  %conv.i194 = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i192 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i194, ptr %msg.i192, align 4
  %flags.i195 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i195 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i195, align 2
  %buf1.i197 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 3
  %137 = ptrtoint ptr %buf1.i197 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buf.i191, ptr %buf1.i197, align 4
  %138 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call7.i.i, align 8
  %call.i198 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i192, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i198)
  %cmp.not.i199 = icmp eq i32 %call.i198, 1
  br i1 %cmp.not.i199, label %if.then94.l64781_writereg.exit206_crit_edge, label %do.body.i201

if.then94.l64781_writereg.exit206_crit_edge:      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit206

do.body.i201:                                     ; preds = %if.then94
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i200 = icmp eq i32 %140, 0
  br i1 %tobool.not.i200, label %do.body.i201.l64781_writereg.exit206_crit_edge, label %do.end.i203

do.body.i201.l64781_writereg.exit206_crit_edge:   ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit206

do.end.i203:                                      ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 62, i32 noundef %call.i198) #10
  br label %l64781_writereg.exit206

l64781_writereg.exit206:                          ; preds = %do.end.i203, %do.body.i201.l64781_writereg.exit206_crit_edge, %if.then94.l64781_writereg.exit206_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i191) #6
  br label %if.end97

if.end97:                                         ; preds = %l64781_writereg.exit206, %error.if.end97_crit_edge, %do.end33, %do.body28.if.end97_crit_edge, %do.end, %do.body.if.end97_crit_edge, %entry.if.end97_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end89
  %retval.0 = phi ptr [ null, %if.end97 ], [ %frontend, %if.end89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l64781_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @l64781_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i124 = alloca [2 x i8], align 1
  %msg.i125 = alloca %struct.i2c_msg, align 4
  %buf.i108 = alloca [2 x i8], align 1
  %msg.i109 = alloca %struct.i2c_msg, align 4
  %buf.i92 = alloca [2 x i8], align 1
  %msg.i93 = alloca %struct.i2c_msg, align 4
  %buf.i76 = alloca [2 x i8], align 1
  %msg.i77 = alloca %struct.i2c_msg, align 4
  %buf.i60 = alloca [2 x i8], align 1
  %msg.i61 = alloca %struct.i2c_msg, align 4
  %buf.i44 = alloca [2 x i8], align 1
  %msg.i45 = alloca %struct.i2c_msg, align 4
  %buf.i28 = alloca [2 x i8], align 1
  %msg.i29 = alloca %struct.i2c_msg, align 4
  %buf.i21 = alloca [2 x i8], align 1
  %msg.i22 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [1 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #6
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131071, ptr %3, align 4
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf.i, ptr %buf1.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21) #6
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i21, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 62, ptr %buf.i21, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -91, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22) #6
  %13 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %msg.i22, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i23, align 2
  %buf1.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %21 = ptrtoint ptr %buf1.i25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i21, ptr %buf1.i25, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i26 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i22, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26)
  %cmp.not.i = icmp eq i32 %call.i26, 1
  br i1 %cmp.not.i, label %entry.l64781_writereg.exit_crit_edge, label %do.body.i

entry.l64781_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.l64781_writereg.exit_crit_edge, label %do.end.i

do.body.i.l64781_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 62, i32 noundef %call.i26) #10
  br label %l64781_writereg.exit

l64781_writereg.exit:                             ; preds = %do.end.i, %do.body.i.l64781_writereg.exit_crit_edge, %entry.l64781_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #6
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 42, ptr %buf.i28, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #6
  %28 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i31 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i32, align 2
  %buf1.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i28, ptr %buf1.i34, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i29, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 1
  br i1 %cmp.not.i36, label %l64781_writereg.exit.l64781_writereg.exit43_crit_edge, label %do.body.i38

l64781_writereg.exit.l64781_writereg.exit43_crit_edge: ; preds = %l64781_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit43

do.body.i38:                                      ; preds = %l64781_writereg.exit
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i37 = icmp eq i32 %39, 0
  br i1 %tobool.not.i37, label %do.body.i38.l64781_writereg.exit43_crit_edge, label %do.end.i40

do.body.i38.l64781_writereg.exit43_crit_edge:     ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit43

do.end.i40:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 42, i32 noundef %call.i35) #10
  br label %l64781_writereg.exit43

l64781_writereg.exit43:                           ; preds = %do.end.i40, %do.body.i38.l64781_writereg.exit43_crit_edge, %l64781_writereg.exit.l64781_writereg.exit43_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i44) #6
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i44, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 42, ptr %buf.i44, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45) #6
  %43 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.i47 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i48, align 2
  %buf1.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %51 = ptrtoint ptr %buf1.i50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i44, ptr %buf1.i50, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i45, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 1
  br i1 %cmp.not.i52, label %l64781_writereg.exit43.l64781_writereg.exit59_crit_edge, label %do.body.i54

l64781_writereg.exit43.l64781_writereg.exit59_crit_edge: ; preds = %l64781_writereg.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit59

do.body.i54:                                      ; preds = %l64781_writereg.exit43
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i53 = icmp eq i32 %54, 0
  br i1 %tobool.not.i53, label %do.body.i54.l64781_writereg.exit59_crit_edge, label %do.end.i56

do.body.i54.l64781_writereg.exit59_crit_edge:     ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit59

do.end.i56:                                       ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 42, i32 noundef %call.i51) #10
  br label %l64781_writereg.exit59

l64781_writereg.exit59:                           ; preds = %do.end.i56, %do.body.i54.l64781_writereg.exit59_crit_edge, %l64781_writereg.exit43.l64781_writereg.exit59_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i60) #6
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i60, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i60 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 7, ptr %buf.i60, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -114, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i61) #6
  %58 = getelementptr inbounds i8, ptr %msg.i61, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i63 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i61 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i63, ptr %msg.i61, align 4
  %flags.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i64, align 2
  %buf1.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 3
  %66 = ptrtoint ptr %buf1.i66 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i60, ptr %buf1.i66, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i67 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i61, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 1
  br i1 %cmp.not.i68, label %l64781_writereg.exit59.l64781_writereg.exit75_crit_edge, label %do.body.i70

l64781_writereg.exit59.l64781_writereg.exit75_crit_edge: ; preds = %l64781_writereg.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit75

do.body.i70:                                      ; preds = %l64781_writereg.exit59
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i69 = icmp eq i32 %69, 0
  br i1 %tobool.not.i69, label %do.body.i70.l64781_writereg.exit75_crit_edge, label %do.end.i72

do.body.i70.l64781_writereg.exit75_crit_edge:     ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit75

do.end.i72:                                       ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef %call.i67) #10
  br label %l64781_writereg.exit75

l64781_writereg.exit75:                           ; preds = %do.end.i72, %do.body.i70.l64781_writereg.exit75_crit_edge, %l64781_writereg.exit59.l64781_writereg.exit75_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i60) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i76) #6
  %70 = getelementptr inbounds [2 x i8], ptr %buf.i76, i32 0, i32 1
  %71 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 11, ptr %buf.i76, align 1
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -127, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77) #6
  %73 = getelementptr inbounds i8, ptr %msg.i77, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %73, align 4
  %75 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %conv.i79 = zext i8 %78 to i16
  %79 = ptrtoint ptr %msg.i77 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i79, ptr %msg.i77, align 4
  %flags.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i80, align 2
  %buf1.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 3
  %81 = ptrtoint ptr %buf1.i82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %buf.i76, ptr %buf1.i82, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i83 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i77, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i83)
  %cmp.not.i84 = icmp eq i32 %call.i83, 1
  br i1 %cmp.not.i84, label %l64781_writereg.exit75.l64781_writereg.exit91_crit_edge, label %do.body.i86

l64781_writereg.exit75.l64781_writereg.exit91_crit_edge: ; preds = %l64781_writereg.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit91

do.body.i86:                                      ; preds = %l64781_writereg.exit75
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i85 = icmp eq i32 %84, 0
  br i1 %tobool.not.i85, label %do.body.i86.l64781_writereg.exit91_crit_edge, label %do.end.i88

do.body.i86.l64781_writereg.exit91_crit_edge:     ; preds = %do.body.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit91

do.end.i88:                                       ; preds = %do.body.i86
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 11, i32 noundef %call.i83) #10
  br label %l64781_writereg.exit91

l64781_writereg.exit91:                           ; preds = %do.end.i88, %do.body.i86.l64781_writereg.exit91_crit_edge, %l64781_writereg.exit75.l64781_writereg.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i76) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i92) #6
  %85 = getelementptr inbounds [2 x i8], ptr %buf.i92, i32 0, i32 1
  %86 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 12, ptr %buf.i92, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -124, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i93) #6
  %88 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 196607, ptr %88, align 4
  %90 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %conv.i95 = zext i8 %93 to i16
  %94 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i95, ptr %msg.i93, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i96, align 2
  %buf1.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %96 = ptrtoint ptr %buf1.i98 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf.i92, ptr %buf1.i98, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call.i99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %msg.i93, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i99)
  %cmp.not.i100 = icmp eq i32 %call.i99, 1
  br i1 %cmp.not.i100, label %l64781_writereg.exit91.l64781_writereg.exit107_crit_edge, label %do.body.i102

l64781_writereg.exit91.l64781_writereg.exit107_crit_edge: ; preds = %l64781_writereg.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit107

do.body.i102:                                     ; preds = %l64781_writereg.exit91
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i101 = icmp eq i32 %99, 0
  br i1 %tobool.not.i101, label %do.body.i102.l64781_writereg.exit107_crit_edge, label %do.end.i104

do.body.i102.l64781_writereg.exit107_crit_edge:   ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit107

do.end.i104:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef %call.i99) #10
  br label %l64781_writereg.exit107

l64781_writereg.exit107:                          ; preds = %do.end.i104, %do.body.i102.l64781_writereg.exit107_crit_edge, %l64781_writereg.exit91.l64781_writereg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i92) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i108) #6
  %100 = getelementptr inbounds [2 x i8], ptr %buf.i108, i32 0, i32 1
  %101 = ptrtoint ptr %buf.i108 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 13, ptr %buf.i108, align 1
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -116, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109) #6
  %103 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %103, align 4
  %105 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1
  %conv.i111 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i111, ptr %msg.i109, align 4
  %flags.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i112, align 2
  %buf1.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %111 = ptrtoint ptr %buf1.i114 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i108, ptr %buf1.i114, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i115 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i109, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115)
  %cmp.not.i116 = icmp eq i32 %call.i115, 1
  br i1 %cmp.not.i116, label %l64781_writereg.exit107.l64781_writereg.exit123_crit_edge, label %do.body.i118

l64781_writereg.exit107.l64781_writereg.exit123_crit_edge: ; preds = %l64781_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit123

do.body.i118:                                     ; preds = %l64781_writereg.exit107
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i117 = icmp eq i32 %114, 0
  br i1 %tobool.not.i117, label %do.body.i118.l64781_writereg.exit123_crit_edge, label %do.end.i120

do.body.i118.l64781_writereg.exit123_crit_edge:   ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit123

do.end.i120:                                      ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef %call.i115) #10
  br label %l64781_writereg.exit123

l64781_writereg.exit123:                          ; preds = %do.end.i120, %do.body.i118.l64781_writereg.exit123_crit_edge, %l64781_writereg.exit107.l64781_writereg.exit123_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i108) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i124) #6
  %115 = getelementptr inbounds [2 x i8], ptr %buf.i124, i32 0, i32 1
  %116 = ptrtoint ptr %buf.i124 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 30, ptr %buf.i124, align 1
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 9, ptr %115, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125) #6
  %118 = getelementptr inbounds i8, ptr %msg.i125, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 196607, ptr %118, align 4
  %120 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 1
  %conv.i127 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i125 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i127, ptr %msg.i125, align 4
  %flags.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i128, align 2
  %buf1.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 3
  %126 = ptrtoint ptr %buf1.i130 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %buf.i124, ptr %buf1.i130, align 4
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %call.i131 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i125, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i131)
  %cmp.not.i132 = icmp eq i32 %call.i131, 1
  br i1 %cmp.not.i132, label %l64781_writereg.exit123.l64781_writereg.exit139_crit_edge, label %do.body.i134

l64781_writereg.exit123.l64781_writereg.exit139_crit_edge: ; preds = %l64781_writereg.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit139

do.body.i134:                                     ; preds = %l64781_writereg.exit123
  %129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i133 = icmp eq i32 %129, 0
  br i1 %tobool.not.i133, label %do.body.i134.l64781_writereg.exit139_crit_edge, label %do.end.i136

do.body.i134.l64781_writereg.exit139_crit_edge:   ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit139

do.end.i136:                                      ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 30, i32 noundef %call.i131) #10
  br label %l64781_writereg.exit139

l64781_writereg.exit139:                          ; preds = %do.end.i136, %do.body.i134.l64781_writereg.exit139_crit_edge, %l64781_writereg.exit123.l64781_writereg.exit139_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124) #6
  %first = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 3
  %130 = ptrtoint ptr %first to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load = load i8, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %l64781_writereg.exit139.if.end_crit_edge, label %if.then

l64781_writereg.exit139.if.end_crit_edge:         ; preds = %l64781_writereg.exit139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %l64781_writereg.exit139
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear = and i8 %bf.load, 127
  %131 = ptrtoint ptr %first to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %bf.clear, ptr %first, align 4
  call void @msleep(i32 noundef 200) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %l64781_writereg.exit139.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
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
  store i8 62, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 90, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %entry.l64781_writereg.exit_crit_edge, label %do.body.i

entry.l64781_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.l64781_writereg.exit_crit_edge, label %do.end.i

do.body.i.l64781_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 62, i32 noundef %call.i) #10
  br label %l64781_writereg.exit

l64781_writereg.exit:                             ; preds = %do.end.i, %do.body.i.l64781_writereg.exit_crit_edge, %entry.l64781_writereg.exit_crit_edge
  %not.cmp.not.i = xor i1 %cmp.not.i, true
  %cond.i = sext i1 %not.cmp.not.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apply_frontend_param(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i21.i450 = alloca [2 x i8], align 1
  %msg.i22.i451 = alloca %struct.i2c_msg, align 4
  %buf.i5.i = alloca [2 x i8], align 1
  %msg.i6.i = alloca %struct.i2c_msg, align 4
  %buf.i.i452 = alloca [2 x i8], align 1
  %msg.i.i453 = alloca %struct.i2c_msg, align 4
  %b0.i431 = alloca [1 x i8], align 1
  %b1.i432 = alloca [1 x i8], align 1
  %msg.i433 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i423 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i407 = alloca [2 x i8], align 1
  %msg.i408 = alloca %struct.i2c_msg, align 4
  %buf.i391 = alloca [2 x i8], align 1
  %msg.i392 = alloca %struct.i2c_msg, align 4
  %buf.i375 = alloca [2 x i8], align 1
  %msg.i376 = alloca %struct.i2c_msg, align 4
  %buf.i359 = alloca [2 x i8], align 1
  %msg.i360 = alloca %struct.i2c_msg, align 4
  %buf.i343 = alloca [2 x i8], align 1
  %msg.i344 = alloca %struct.i2c_msg, align 4
  %buf.i327 = alloca [2 x i8], align 1
  %msg.i328 = alloca %struct.i2c_msg, align 4
  %buf.i311 = alloca [2 x i8], align 1
  %msg.i312 = alloca %struct.i2c_msg, align 4
  %buf.i295 = alloca [2 x i8], align 1
  %msg.i296 = alloca %struct.i2c_msg, align 4
  %buf.i279 = alloca [2 x i8], align 1
  %msg.i280 = alloca %struct.i2c_msg, align 4
  %buf.i165.i = alloca [2 x i8], align 1
  %msg.i166.i = alloca %struct.i2c_msg, align 4
  %buf.i149.i = alloca [2 x i8], align 1
  %msg.i150.i = alloca %struct.i2c_msg, align 4
  %buf.i133.i = alloca [2 x i8], align 1
  %msg.i134.i = alloca %struct.i2c_msg, align 4
  %buf.i117.i = alloca [2 x i8], align 1
  %msg.i118.i = alloca %struct.i2c_msg, align 4
  %buf.i101.i = alloca [2 x i8], align 1
  %msg.i102.i = alloca %struct.i2c_msg, align 4
  %buf.i85.i = alloca [2 x i8], align 1
  %msg.i86.i = alloca %struct.i2c_msg, align 4
  %buf.i69.i = alloca [2 x i8], align 1
  %msg.i70.i = alloca %struct.i2c_msg, align 4
  %buf.i53.i = alloca [2 x i8], align 1
  %msg.i54.i = alloca %struct.i2c_msg, align 4
  %buf.i37.i = alloca [2 x i8], align 1
  %msg.i38.i = alloca %struct.i2c_msg, align 4
  %buf.i21.i = alloca [2 x i8], align 1
  %msg.i22.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i263 = alloca [2 x i8], align 1
  %msg.i264 = alloca %struct.i2c_msg, align 4
  %buf.i247 = alloca [2 x i8], align 1
  %msg.i248 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8000000, label %entry.sw.epilog_crit_edge
    i32 7000000, label %sw.bb1
    i32 6000000, label %sw.bb2
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

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %bw.0 = phi i32 [ 6, %sw.bb2 ], [ 7, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %5 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.epilog.if.end12_crit_edge, label %if.then

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %sw.epilog
  %call = tail call i32 %6(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.then.if.end12_crit_edge, label %if.then8

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 %8(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then.if.end12_crit_edge, %sw.epilog.if.end12_crit_edge
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp ult i32 %10, 2
  br i1 %switch, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %11 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code_rate_HP, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %12, label %if.end16.cleanup_crit_edge [
    i32 1, label %if.end16.if.end31_crit_edge
    i32 2, label %if.end16.if.end31_crit_edge475
    i32 3, label %if.end16.if.end31_crit_edge476
    i32 5, label %if.end16.if.end31_crit_edge477
    i32 7, label %if.end16.if.end31_crit_edge478
  ]

if.end16.if.end31_crit_edge478:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge477:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge476:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge475:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end16.if.end31_crit_edge, %if.end16.if.end31_crit_edge475, %if.end16.if.end31_crit_edge476, %if.end16.if.end31_crit_edge477, %if.end16.if.end31_crit_edge478
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %14 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32.not = icmp eq i32 %15, 0
  br i1 %cmp32.not, label %if.end31.if.end48_crit_edge, label %land.lhs.true33

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33:                                  ; preds = %if.end31
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %16 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code_rate_LP, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %17, label %land.lhs.true33.cleanup_crit_edge [
    i32 1, label %land.lhs.true33.if.end48_crit_edge
    i32 2, label %land.lhs.true33.if.end48_crit_edge479
    i32 3, label %land.lhs.true33.if.end48_crit_edge480
    i32 5, label %land.lhs.true33.if.end48_crit_edge481
    i32 7, label %land.lhs.true33.if.end48_crit_edge482
  ]

land.lhs.true33.if.end48_crit_edge482:            ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33.if.end48_crit_edge481:            ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33.if.end48_crit_edge480:            ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33.if.end48_crit_edge479:            ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33.if.end48_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true33.if.end48_crit_edge, %land.lhs.true33.if.end48_crit_edge479, %land.lhs.true33.if.end48_crit_edge480, %land.lhs.true33.if.end48_crit_edge481, %land.lhs.true33.if.end48_crit_edge482, %if.end31.if.end48_crit_edge
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %modulation, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %20, label %if.end48.cleanup_crit_edge [
    i32 0, label %if.end48.if.end57_crit_edge
    i32 1, label %if.end48.if.end57_crit_edge483
    i32 3, label %if.end48.if.end57_crit_edge484
  ]

if.end48.if.end57_crit_edge484:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end48.if.end57_crit_edge483:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.end48.if.end57_crit_edge, %if.end48.if.end57_crit_edge483, %if.end48.if.end57_crit_edge484
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch246 = icmp ult i32 %23, 2
  br i1 %switch246, label %if.end63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %24 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp66 = icmp ugt i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp73 = icmp ugt i32 %15, 3
  %or.cond = select i1 %cmp66, i1 true, i1 %cmp73
  br i1 %or.cond, label %if.end63.cleanup_crit_edge, label %if.end75

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end63
  %div = udiv i32 524288000, %bw.0
  %div76 = udiv i32 %div, 1000000
  %div77 = udiv i32 270582937, %bw.0
  %mul78 = mul nuw nsw i32 %bw.0, 6193152
  %arrayidx = getelementptr [4 x i8], ptr @apply_frontend_param.qam_tab, i32 0, i32 %20
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %27 to i32
  %mul80 = mul i32 %mul78, %conv
  %add = add nuw nsw i32 %12, 1
  %div82 = udiv i32 %mul80, %add
  %arrayidx84 = getelementptr [4 x i8], ptr @apply_frontend_param.guard_tab, i32 0, i32 %25
  %28 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %29 to i32
  %add86 = add nuw nsw i32 %conv85, 32
  %div87 = udiv i32 %div82, %add86
  %mul88 = mul i32 %div87, 1000
  %div89 = udiv i32 %mul88, 1008
  %mul91 = mul nuw nsw i32 %div89, %12
  %shl = shl nuw nsw i32 %23, 2
  %or = or i32 %25, %shl
  %conv94 = trunc i32 %or to i8
  %arrayidx96 = getelementptr [8 x i8], ptr @apply_frontend_param.fec_tab, i32 0, i32 %12
  %30 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx96, align 1
  br i1 %cmp32.not, label %if.end75.if.end107_crit_edge, label %if.then100

if.end75.if.end107_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then100:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP101 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %32 = ptrtoint ptr %code_rate_LP101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code_rate_LP101, align 4
  %.tr = trunc i32 %33 to i8
  %34 = shl i8 %.tr, 3
  %35 = add i8 %34, -8
  %conv106 = or i8 %35, %31
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %if.end75.if.end107_crit_edge
  %val0x05.0 = phi i8 [ %conv106, %if.then100 ], [ %31, %if.end75.if.end107_crit_edge ]
  %shl109 = shl nuw nsw i32 %15, 2
  %or111 = or i32 %20, %shl109
  %conv112 = trunc i32 %or111 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %buf.i, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv94, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %39 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %39, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i, ptr %buf1.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end107.l64781_writereg.exit_crit_edge, label %do.body.i

if.end107.l64781_writereg.exit_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.body.i:                                        ; preds = %if.end107
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %do.body.i.l64781_writereg.exit_crit_edge, label %do.end.i

do.body.i.l64781_writereg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef %call.i) #10
  br label %l64781_writereg.exit

l64781_writereg.exit:                             ; preds = %do.end.i, %do.body.i.l64781_writereg.exit_crit_edge, %if.end107.l64781_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i247) #6
  %51 = getelementptr inbounds [2 x i8], ptr %buf.i247, i32 0, i32 1
  %52 = ptrtoint ptr %buf.i247 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %buf.i247, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %val0x05.0, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i248) #6
  %54 = getelementptr inbounds i8, ptr %msg.i248, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %54, align 4
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv.i250 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i248 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i250, ptr %msg.i248, align 4
  %flags.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i251 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i251, align 2
  store i16 2, ptr %54, align 4
  %buf1.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 3
  %62 = ptrtoint ptr %buf1.i253 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf.i247, ptr %buf1.i253, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call.i254 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i248, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i254)
  %cmp.not.i255 = icmp eq i32 %call.i254, 1
  br i1 %cmp.not.i255, label %l64781_writereg.exit.l64781_writereg.exit262_crit_edge, label %do.body.i257

l64781_writereg.exit.l64781_writereg.exit262_crit_edge: ; preds = %l64781_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit262

do.body.i257:                                     ; preds = %l64781_writereg.exit
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i256 = icmp eq i32 %65, 0
  br i1 %tobool.not.i256, label %do.body.i257.l64781_writereg.exit262_crit_edge, label %do.end.i259

do.body.i257.l64781_writereg.exit262_crit_edge:   ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit262

do.end.i259:                                      ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef %call.i254) #10
  br label %l64781_writereg.exit262

l64781_writereg.exit262:                          ; preds = %do.end.i259, %do.body.i257.l64781_writereg.exit262_crit_edge, %l64781_writereg.exit.l64781_writereg.exit262_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i248) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i247) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i263) #6
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i263, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i263 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %buf.i263, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv112, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i264) #6
  %69 = getelementptr inbounds i8, ptr %msg.i264, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv.i266 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i264 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i266, ptr %msg.i264, align 4
  %flags.i267 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i267 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i267, align 2
  store i16 2, ptr %69, align 4
  %buf1.i269 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264, i32 0, i32 3
  %77 = ptrtoint ptr %buf1.i269 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i263, ptr %buf1.i269, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i270 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i264, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i270)
  %cmp.not.i271 = icmp eq i32 %call.i270, 1
  br i1 %cmp.not.i271, label %l64781_writereg.exit262.l64781_writereg.exit278_crit_edge, label %do.body.i273

l64781_writereg.exit262.l64781_writereg.exit278_crit_edge: ; preds = %l64781_writereg.exit262
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit278

do.body.i273:                                     ; preds = %l64781_writereg.exit262
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i272 = icmp eq i32 %80, 0
  br i1 %tobool.not.i272, label %do.body.i273.l64781_writereg.exit278_crit_edge, label %do.end.i275

do.body.i273.l64781_writereg.exit278_crit_edge:   ; preds = %do.body.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit278

do.end.i275:                                      ; preds = %do.body.i273
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef %call.i270) #10
  br label %l64781_writereg.exit278

l64781_writereg.exit278:                          ; preds = %do.end.i275, %do.body.i273.l64781_writereg.exit278_crit_edge, %l64781_writereg.exit262.l64781_writereg.exit278_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i264) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i263) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %81 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 7, ptr %buf.i.i, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -98, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %84 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv.i.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %l64781_writereg.exit278.l64781_writereg.exit.i_crit_edge, label %do.body.i.i

l64781_writereg.exit278.l64781_writereg.exit.i_crit_edge: ; preds = %l64781_writereg.exit278
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit.i

do.body.i.i:                                      ; preds = %l64781_writereg.exit278
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.l64781_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.l64781_writereg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef %call.i.i) #10
  br label %l64781_writereg.exit.i

l64781_writereg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.l64781_writereg.exit.i_crit_edge, %l64781_writereg.exit278.l64781_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21.i) #6
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i21.i, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i21.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 8, ptr %buf.i21.i, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22.i) #6
  %99 = getelementptr inbounds i8, ptr %msg.i22.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  %conv.i24.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i22.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i24.i, ptr %msg.i22.i, align 4
  %flags.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i25.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i25.i, align 2
  %buf1.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i27.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i21.i, ptr %buf1.i27.i, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i28.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i22.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28.i)
  %cmp.not.i29.i = icmp eq i32 %call.i28.i, 1
  br i1 %cmp.not.i29.i, label %l64781_writereg.exit.i.l64781_writereg.exit36.i_crit_edge, label %do.body.i31.i

l64781_writereg.exit.i.l64781_writereg.exit36.i_crit_edge: ; preds = %l64781_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit36.i

do.body.i31.i:                                    ; preds = %l64781_writereg.exit.i
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i30.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i30.i, label %do.body.i31.i.l64781_writereg.exit36.i_crit_edge, label %do.end.i33.i

do.body.i31.i.l64781_writereg.exit36.i_crit_edge: ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit36.i

do.end.i33.i:                                     ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef %call.i28.i) #10
  br label %l64781_writereg.exit36.i

l64781_writereg.exit36.i:                         ; preds = %do.end.i33.i, %do.body.i31.i.l64781_writereg.exit36.i_crit_edge, %l64781_writereg.exit.i.l64781_writereg.exit36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37.i) #6
  %111 = getelementptr inbounds [2 x i8], ptr %buf.i37.i, i32 0, i32 1
  %112 = ptrtoint ptr %buf.i37.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 9, ptr %buf.i37.i, align 1
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38.i) #6
  %114 = getelementptr inbounds i8, ptr %msg.i38.i, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 196607, ptr %114, align 4
  %116 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %conv.i40.i = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i38.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i40.i, ptr %msg.i38.i, align 4
  %flags.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i41.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i41.i, align 2
  %buf1.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf1.i43.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf.i37.i, ptr %buf1.i43.i, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %call.i44.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i38.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i44.i)
  %cmp.not.i45.i = icmp eq i32 %call.i44.i, 1
  br i1 %cmp.not.i45.i, label %l64781_writereg.exit36.i.l64781_writereg.exit52.i_crit_edge, label %do.body.i47.i

l64781_writereg.exit36.i.l64781_writereg.exit52.i_crit_edge: ; preds = %l64781_writereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit52.i

do.body.i47.i:                                    ; preds = %l64781_writereg.exit36.i
  %125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i46.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i46.i, label %do.body.i47.i.l64781_writereg.exit52.i_crit_edge, label %do.end.i49.i

do.body.i47.i.l64781_writereg.exit52.i_crit_edge: ; preds = %do.body.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit52.i

do.end.i49.i:                                     ; preds = %do.body.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef %call.i44.i) #10
  br label %l64781_writereg.exit52.i

l64781_writereg.exit52.i:                         ; preds = %do.end.i49.i, %do.body.i47.i.l64781_writereg.exit52.i_crit_edge, %l64781_writereg.exit36.i.l64781_writereg.exit52.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53.i) #6
  %126 = getelementptr inbounds [2 x i8], ptr %buf.i53.i, i32 0, i32 1
  %127 = ptrtoint ptr %buf.i53.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 10, ptr %buf.i53.i, align 1
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54.i) #6
  %129 = getelementptr inbounds i8, ptr %msg.i54.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196607, ptr %129, align 4
  %131 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  %conv.i56.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i54.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i56.i, ptr %msg.i54.i, align 4
  %flags.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i57.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i57.i, align 2
  %buf1.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf1.i59.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buf.i53.i, ptr %buf1.i59.i, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %call.i60.i = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i54.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60.i)
  %cmp.not.i61.i = icmp eq i32 %call.i60.i, 1
  br i1 %cmp.not.i61.i, label %l64781_writereg.exit52.i.l64781_writereg.exit68.i_crit_edge, label %do.body.i63.i

l64781_writereg.exit52.i.l64781_writereg.exit68.i_crit_edge: ; preds = %l64781_writereg.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit68.i

do.body.i63.i:                                    ; preds = %l64781_writereg.exit52.i
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i62.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i62.i, label %do.body.i63.i.l64781_writereg.exit68.i_crit_edge, label %do.end.i65.i

do.body.i63.i.l64781_writereg.exit68.i_crit_edge: ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit68.i

do.end.i65.i:                                     ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef %call.i60.i) #10
  br label %l64781_writereg.exit68.i

l64781_writereg.exit68.i:                         ; preds = %do.end.i65.i, %do.body.i63.i.l64781_writereg.exit68.i_crit_edge, %l64781_writereg.exit52.i.l64781_writereg.exit68.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i69.i) #6
  %141 = getelementptr inbounds [2 x i8], ptr %buf.i69.i, i32 0, i32 1
  %142 = ptrtoint ptr %buf.i69.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 7, ptr %buf.i69.i, align 1
  %143 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -114, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70.i) #6
  %144 = getelementptr inbounds i8, ptr %msg.i70.i, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 196607, ptr %144, align 4
  %146 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 1
  %conv.i72.i = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i70.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i72.i, ptr %msg.i70.i, align 4
  %flags.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i73.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i73.i, align 2
  %buf1.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 3
  %152 = ptrtoint ptr %buf1.i75.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %buf.i69.i, ptr %buf1.i75.i, align 4
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %call.i76.i = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i70.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i76.i)
  %cmp.not.i77.i = icmp eq i32 %call.i76.i, 1
  br i1 %cmp.not.i77.i, label %l64781_writereg.exit68.i.l64781_writereg.exit84.i_crit_edge, label %do.body.i79.i

l64781_writereg.exit68.i.l64781_writereg.exit84.i_crit_edge: ; preds = %l64781_writereg.exit68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit84.i

do.body.i79.i:                                    ; preds = %l64781_writereg.exit68.i
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i78.i = icmp eq i32 %155, 0
  br i1 %tobool.not.i78.i, label %do.body.i79.i.l64781_writereg.exit84.i_crit_edge, label %do.end.i81.i

do.body.i79.i.l64781_writereg.exit84.i_crit_edge: ; preds = %do.body.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit84.i

do.end.i81.i:                                     ; preds = %do.body.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef %call.i76.i) #10
  br label %l64781_writereg.exit84.i

l64781_writereg.exit84.i:                         ; preds = %do.end.i81.i, %do.body.i79.i.l64781_writereg.exit84.i_crit_edge, %l64781_writereg.exit68.i.l64781_writereg.exit84.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i69.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i85.i) #6
  %156 = getelementptr inbounds [2 x i8], ptr %buf.i85.i, i32 0, i32 1
  %157 = ptrtoint ptr %buf.i85.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 14, ptr %buf.i85.i, align 1
  %158 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %156, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i86.i) #6
  %159 = getelementptr inbounds i8, ptr %msg.i86.i, i32 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 196607, ptr %159, align 4
  %161 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %config.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  %conv.i88.i = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i86.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv.i88.i, ptr %msg.i86.i, align 4
  %flags.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86.i, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i89.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i89.i, align 2
  %buf1.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86.i, i32 0, i32 3
  %167 = ptrtoint ptr %buf1.i91.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %buf.i85.i, ptr %buf1.i91.i, align 4
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %call.i92.i = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %msg.i86.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i92.i)
  %cmp.not.i93.i = icmp eq i32 %call.i92.i, 1
  br i1 %cmp.not.i93.i, label %l64781_writereg.exit84.i.l64781_writereg.exit100.i_crit_edge, label %do.body.i95.i

l64781_writereg.exit84.i.l64781_writereg.exit100.i_crit_edge: ; preds = %l64781_writereg.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit100.i

do.body.i95.i:                                    ; preds = %l64781_writereg.exit84.i
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i94.i = icmp eq i32 %170, 0
  br i1 %tobool.not.i94.i, label %do.body.i95.i.l64781_writereg.exit100.i_crit_edge, label %do.end.i97.i

do.body.i95.i.l64781_writereg.exit100.i_crit_edge: ; preds = %do.body.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit100.i

do.end.i97.i:                                     ; preds = %do.body.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 14, i32 noundef %call.i92.i) #10
  br label %l64781_writereg.exit100.i

l64781_writereg.exit100.i:                        ; preds = %do.end.i97.i, %do.body.i95.i.l64781_writereg.exit100.i_crit_edge, %l64781_writereg.exit84.i.l64781_writereg.exit100.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i86.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i85.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i101.i) #6
  %171 = getelementptr inbounds [2 x i8], ptr %buf.i101.i, i32 0, i32 1
  %172 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 17, ptr %buf.i101.i, align 1
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -128, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102.i) #6
  %174 = getelementptr inbounds i8, ptr %msg.i102.i, i32 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 196607, ptr %174, align 4
  %176 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %config.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  %conv.i104.i = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i104.i, ptr %msg.i102.i, align 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i105.i, align 2
  %buf1.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf1.i107.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i101.i, ptr %buf1.i107.i, align 4
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %call.i108.i = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i102.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i108.i)
  %cmp.not.i109.i = icmp eq i32 %call.i108.i, 1
  br i1 %cmp.not.i109.i, label %l64781_writereg.exit100.i.l64781_writereg.exit116.i_crit_edge, label %do.body.i111.i

l64781_writereg.exit100.i.l64781_writereg.exit116.i_crit_edge: ; preds = %l64781_writereg.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit116.i

do.body.i111.i:                                   ; preds = %l64781_writereg.exit100.i
  %185 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i110.i = icmp eq i32 %185, 0
  br i1 %tobool.not.i110.i, label %do.body.i111.i.l64781_writereg.exit116.i_crit_edge, label %do.end.i113.i

do.body.i111.i.l64781_writereg.exit116.i_crit_edge: ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit116.i

do.end.i113.i:                                    ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 17, i32 noundef %call.i108.i) #10
  br label %l64781_writereg.exit116.i

l64781_writereg.exit116.i:                        ; preds = %do.end.i113.i, %do.body.i111.i.l64781_writereg.exit116.i_crit_edge, %l64781_writereg.exit100.i.l64781_writereg.exit116.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i117.i) #6
  %186 = getelementptr inbounds [2 x i8], ptr %buf.i117.i, i32 0, i32 1
  %187 = ptrtoint ptr %buf.i117.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 16, ptr %buf.i117.i, align 1
  %188 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118.i) #6
  %189 = getelementptr inbounds i8, ptr %msg.i118.i, i32 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 196607, ptr %189, align 4
  %191 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %config.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %192, align 1
  %conv.i120.i = zext i8 %194 to i16
  %195 = ptrtoint ptr %msg.i118.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv.i120.i, ptr %msg.i118.i, align 4
  %flags.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 1
  %196 = ptrtoint ptr %flags.i121.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %flags.i121.i, align 2
  %buf1.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 3
  %197 = ptrtoint ptr %buf1.i123.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %buf.i117.i, ptr %buf1.i123.i, align 4
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 4
  %call.i124.i = call i32 @i2c_transfer(ptr noundef %199, ptr noundef nonnull %msg.i118.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i124.i)
  %cmp.not.i125.i = icmp eq i32 %call.i124.i, 1
  br i1 %cmp.not.i125.i, label %l64781_writereg.exit116.i.l64781_writereg.exit132.i_crit_edge, label %do.body.i127.i

l64781_writereg.exit116.i.l64781_writereg.exit132.i_crit_edge: ; preds = %l64781_writereg.exit116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit132.i

do.body.i127.i:                                   ; preds = %l64781_writereg.exit116.i
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i126.i = icmp eq i32 %200, 0
  br i1 %tobool.not.i126.i, label %do.body.i127.i.l64781_writereg.exit132.i_crit_edge, label %do.end.i129.i

do.body.i127.i.l64781_writereg.exit132.i_crit_edge: ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit132.i

do.end.i129.i:                                    ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 16, i32 noundef %call.i124.i) #10
  br label %l64781_writereg.exit132.i

l64781_writereg.exit132.i:                        ; preds = %do.end.i129.i, %do.body.i127.i.l64781_writereg.exit132.i_crit_edge, %l64781_writereg.exit116.i.l64781_writereg.exit132.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i117.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133.i) #6
  %201 = getelementptr inbounds [2 x i8], ptr %buf.i133.i, i32 0, i32 1
  %202 = ptrtoint ptr %buf.i133.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 18, ptr %buf.i133.i, align 1
  %203 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i) #6
  %204 = getelementptr inbounds i8, ptr %msg.i134.i, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 196607, ptr %204, align 4
  %206 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %config.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 1
  %conv.i136.i = zext i8 %209 to i16
  %210 = ptrtoint ptr %msg.i134.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv.i136.i, ptr %msg.i134.i, align 4
  %flags.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i137.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i137.i, align 2
  %buf1.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 3
  %212 = ptrtoint ptr %buf1.i139.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %buf.i133.i, ptr %buf1.i139.i, align 4
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %call.i140.i = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i134.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i140.i)
  %cmp.not.i141.i = icmp eq i32 %call.i140.i, 1
  br i1 %cmp.not.i141.i, label %l64781_writereg.exit132.i.l64781_writereg.exit148.i_crit_edge, label %do.body.i143.i

l64781_writereg.exit132.i.l64781_writereg.exit148.i_crit_edge: ; preds = %l64781_writereg.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit148.i

do.body.i143.i:                                   ; preds = %l64781_writereg.exit132.i
  %215 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.not.i142.i = icmp eq i32 %215, 0
  br i1 %tobool.not.i142.i, label %do.body.i143.i.l64781_writereg.exit148.i_crit_edge, label %do.end.i145.i

do.body.i143.i.l64781_writereg.exit148.i_crit_edge: ; preds = %do.body.i143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit148.i

do.end.i145.i:                                    ; preds = %do.body.i143.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 18, i32 noundef %call.i140.i) #10
  br label %l64781_writereg.exit148.i

l64781_writereg.exit148.i:                        ; preds = %do.end.i145.i, %do.body.i143.i.l64781_writereg.exit148.i_crit_edge, %l64781_writereg.exit132.i.l64781_writereg.exit148.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i149.i) #6
  %216 = getelementptr inbounds [2 x i8], ptr %buf.i149.i, i32 0, i32 1
  %217 = ptrtoint ptr %buf.i149.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 19, ptr %buf.i149.i, align 1
  %218 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150.i) #6
  %219 = getelementptr inbounds i8, ptr %msg.i150.i, i32 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 196607, ptr %219, align 4
  %221 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 1
  %conv.i152.i = zext i8 %224 to i16
  %225 = ptrtoint ptr %msg.i150.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i152.i, ptr %msg.i150.i, align 4
  %flags.i153.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i153.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i153.i, align 2
  %buf1.i155.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 3
  %227 = ptrtoint ptr %buf1.i155.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %buf.i149.i, ptr %buf1.i155.i, align 4
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %call.i156.i = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i150.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i156.i)
  %cmp.not.i157.i = icmp eq i32 %call.i156.i, 1
  br i1 %cmp.not.i157.i, label %l64781_writereg.exit148.i.l64781_writereg.exit164.i_crit_edge, label %do.body.i159.i

l64781_writereg.exit148.i.l64781_writereg.exit164.i_crit_edge: ; preds = %l64781_writereg.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit164.i

do.body.i159.i:                                   ; preds = %l64781_writereg.exit148.i
  %230 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i158.i = icmp eq i32 %230, 0
  br i1 %tobool.not.i158.i, label %do.body.i159.i.l64781_writereg.exit164.i_crit_edge, label %do.end.i161.i

do.body.i159.i.l64781_writereg.exit164.i_crit_edge: ; preds = %do.body.i159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit164.i

do.end.i161.i:                                    ; preds = %do.body.i159.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 19, i32 noundef %call.i156.i) #10
  br label %l64781_writereg.exit164.i

l64781_writereg.exit164.i:                        ; preds = %do.end.i161.i, %do.body.i159.i.l64781_writereg.exit164.i_crit_edge, %l64781_writereg.exit148.i.l64781_writereg.exit164.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i149.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i165.i) #6
  %231 = getelementptr inbounds [2 x i8], ptr %buf.i165.i, i32 0, i32 1
  %232 = ptrtoint ptr %buf.i165.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 17, ptr %buf.i165.i, align 1
  %233 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %231, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166.i) #6
  %234 = getelementptr inbounds i8, ptr %msg.i166.i, i32 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 196607, ptr %234, align 4
  %236 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %config.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %237, align 1
  %conv.i168.i = zext i8 %239 to i16
  %240 = ptrtoint ptr %msg.i166.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv.i168.i, ptr %msg.i166.i, align 4
  %flags.i169.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166.i, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i169.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i169.i, align 2
  %buf1.i171.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166.i, i32 0, i32 3
  %242 = ptrtoint ptr %buf1.i171.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %buf.i165.i, ptr %buf1.i171.i, align 4
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  %call.i172.i = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %msg.i166.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172.i)
  %cmp.not.i173.i = icmp eq i32 %call.i172.i, 1
  br i1 %cmp.not.i173.i, label %l64781_writereg.exit164.i.reset_afc.exit_crit_edge, label %do.body.i175.i

l64781_writereg.exit164.i.reset_afc.exit_crit_edge: ; preds = %l64781_writereg.exit164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_afc.exit

do.body.i175.i:                                   ; preds = %l64781_writereg.exit164.i
  %245 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i174.i = icmp eq i32 %245, 0
  br i1 %tobool.not.i174.i, label %do.body.i175.i.reset_afc.exit_crit_edge, label %do.end.i177.i

do.body.i175.i.reset_afc.exit_crit_edge:          ; preds = %do.body.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_afc.exit

do.end.i177.i:                                    ; preds = %do.body.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 17, i32 noundef %call.i172.i) #10
  br label %reset_afc.exit

reset_afc.exit:                                   ; preds = %do.end.i177.i, %do.body.i175.i.reset_afc.exit_crit_edge, %l64781_writereg.exit164.i.reset_afc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i165.i) #6
  %246 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp117 = icmp eq i32 %247, 0
  %conv119 = select i1 %cmp117, i8 1, i8 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i279) #6
  %248 = getelementptr inbounds [2 x i8], ptr %buf.i279, i32 0, i32 1
  %249 = ptrtoint ptr %buf.i279 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 21, ptr %buf.i279, align 1
  %250 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv119, ptr %248, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i280) #6
  %251 = getelementptr inbounds i8, ptr %msg.i280, i32 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %251, align 4
  %253 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %config.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %254, align 1
  %conv.i282 = zext i8 %256 to i16
  %257 = ptrtoint ptr %msg.i280 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.i282, ptr %msg.i280, align 4
  %flags.i283 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i280, i32 0, i32 1
  %258 = ptrtoint ptr %flags.i283 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 0, ptr %flags.i283, align 2
  store i16 2, ptr %251, align 4
  %buf1.i285 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i280, i32 0, i32 3
  %259 = ptrtoint ptr %buf1.i285 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %buf.i279, ptr %buf1.i285, align 4
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 4
  %call.i286 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %msg.i280, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i286)
  %cmp.not.i287 = icmp eq i32 %call.i286, 1
  br i1 %cmp.not.i287, label %reset_afc.exit.l64781_writereg.exit294_crit_edge, label %do.body.i289

reset_afc.exit.l64781_writereg.exit294_crit_edge: ; preds = %reset_afc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit294

do.body.i289:                                     ; preds = %reset_afc.exit
  %262 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool.not.i288 = icmp eq i32 %262, 0
  br i1 %tobool.not.i288, label %do.body.i289.l64781_writereg.exit294_crit_edge, label %do.end.i291

do.body.i289.l64781_writereg.exit294_crit_edge:   ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit294

do.end.i291:                                      ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 21, i32 noundef %call.i286) #10
  br label %l64781_writereg.exit294

l64781_writereg.exit294:                          ; preds = %do.end.i291, %do.body.i289.l64781_writereg.exit294_crit_edge, %reset_afc.exit.l64781_writereg.exit294_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i280) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i279) #6
  %conv122 = trunc i32 %div77 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i295) #6
  %263 = getelementptr inbounds [2 x i8], ptr %buf.i295, i32 0, i32 1
  %264 = ptrtoint ptr %buf.i295 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 22, ptr %buf.i295, align 1
  %265 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv122, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i296) #6
  %266 = getelementptr inbounds i8, ptr %msg.i296, i32 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 -1, ptr %266, align 4
  %268 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %config.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %269, align 1
  %conv.i298 = zext i8 %271 to i16
  %272 = ptrtoint ptr %msg.i296 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv.i298, ptr %msg.i296, align 4
  %flags.i299 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 0, i32 1
  %273 = ptrtoint ptr %flags.i299 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %flags.i299, align 2
  store i16 2, ptr %266, align 4
  %buf1.i301 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 0, i32 3
  %274 = ptrtoint ptr %buf1.i301 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %buf.i295, ptr %buf1.i301, align 4
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 4
  %call.i302 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %msg.i296, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i302)
  %cmp.not.i303 = icmp eq i32 %call.i302, 1
  br i1 %cmp.not.i303, label %l64781_writereg.exit294.l64781_writereg.exit310_crit_edge, label %do.body.i305

l64781_writereg.exit294.l64781_writereg.exit310_crit_edge: ; preds = %l64781_writereg.exit294
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit310

do.body.i305:                                     ; preds = %l64781_writereg.exit294
  %277 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i304 = icmp eq i32 %277, 0
  br i1 %tobool.not.i304, label %do.body.i305.l64781_writereg.exit310_crit_edge, label %do.end.i307

do.body.i305.l64781_writereg.exit310_crit_edge:   ; preds = %do.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit310

do.end.i307:                                      ; preds = %do.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 22, i32 noundef %call.i302) #10
  br label %l64781_writereg.exit310

l64781_writereg.exit310:                          ; preds = %do.end.i307, %do.body.i305.l64781_writereg.exit310_crit_edge, %l64781_writereg.exit294.l64781_writereg.exit310_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i296) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i295) #6
  %shr = lshr i32 %div77, 8
  %conv125 = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i311) #6
  %278 = getelementptr inbounds [2 x i8], ptr %buf.i311, i32 0, i32 1
  %279 = ptrtoint ptr %buf.i311 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 23, ptr %buf.i311, align 1
  %280 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv125, ptr %278, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i312) #6
  %281 = getelementptr inbounds i8, ptr %msg.i312, i32 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 196607, ptr %281, align 4
  %283 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %config.i, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %284, align 1
  %conv.i314 = zext i8 %286 to i16
  %287 = ptrtoint ptr %msg.i312 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %conv.i314, ptr %msg.i312, align 4
  %flags.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i312, i32 0, i32 1
  %288 = ptrtoint ptr %flags.i315 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 0, ptr %flags.i315, align 2
  %buf1.i317 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i312, i32 0, i32 3
  %289 = ptrtoint ptr %buf1.i317 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %buf.i311, ptr %buf1.i317, align 4
  %290 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %1, align 4
  %call.i318 = call i32 @i2c_transfer(ptr noundef %291, ptr noundef nonnull %msg.i312, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i318)
  %cmp.not.i319 = icmp eq i32 %call.i318, 1
  br i1 %cmp.not.i319, label %l64781_writereg.exit310.l64781_writereg.exit326_crit_edge, label %do.body.i321

l64781_writereg.exit310.l64781_writereg.exit326_crit_edge: ; preds = %l64781_writereg.exit310
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit326

do.body.i321:                                     ; preds = %l64781_writereg.exit310
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool.not.i320 = icmp eq i32 %292, 0
  br i1 %tobool.not.i320, label %do.body.i321.l64781_writereg.exit326_crit_edge, label %do.end.i323

do.body.i321.l64781_writereg.exit326_crit_edge:   ; preds = %do.body.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit326

do.end.i323:                                      ; preds = %do.body.i321
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 23, i32 noundef %call.i318) #10
  br label %l64781_writereg.exit326

l64781_writereg.exit326:                          ; preds = %do.end.i323, %do.body.i321.l64781_writereg.exit326_crit_edge, %l64781_writereg.exit310.l64781_writereg.exit326_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i312) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i311) #6
  %and = lshr i32 %div77, 16
  %conv129 = trunc i32 %and to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i327) #6
  %293 = getelementptr inbounds [2 x i8], ptr %buf.i327, i32 0, i32 1
  %294 = ptrtoint ptr %buf.i327 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 24, ptr %buf.i327, align 1
  %295 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv129, ptr %293, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i328) #6
  %296 = getelementptr inbounds i8, ptr %msg.i328, i32 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 196607, ptr %296, align 4
  %298 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %config.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %299, align 1
  %conv.i330 = zext i8 %301 to i16
  %302 = ptrtoint ptr %msg.i328 to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv.i330, ptr %msg.i328, align 4
  %flags.i331 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i328, i32 0, i32 1
  %303 = ptrtoint ptr %flags.i331 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %flags.i331, align 2
  %buf1.i333 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i328, i32 0, i32 3
  %304 = ptrtoint ptr %buf1.i333 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %buf.i327, ptr %buf1.i333, align 4
  %305 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %1, align 4
  %call.i334 = call i32 @i2c_transfer(ptr noundef %306, ptr noundef nonnull %msg.i328, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i334)
  %cmp.not.i335 = icmp eq i32 %call.i334, 1
  br i1 %cmp.not.i335, label %l64781_writereg.exit326.l64781_writereg.exit342_crit_edge, label %do.body.i337

l64781_writereg.exit326.l64781_writereg.exit342_crit_edge: ; preds = %l64781_writereg.exit326
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit342

do.body.i337:                                     ; preds = %l64781_writereg.exit326
  %307 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool.not.i336 = icmp eq i32 %307, 0
  br i1 %tobool.not.i336, label %do.body.i337.l64781_writereg.exit342_crit_edge, label %do.end.i339

do.body.i337.l64781_writereg.exit342_crit_edge:   ; preds = %do.body.i337
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit342

do.end.i339:                                      ; preds = %do.body.i337
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 24, i32 noundef %call.i334) #10
  br label %l64781_writereg.exit342

l64781_writereg.exit342:                          ; preds = %do.end.i339, %do.body.i337.l64781_writereg.exit342_crit_edge, %l64781_writereg.exit326.l64781_writereg.exit342_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i328) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i327) #6
  %conv132 = trunc i32 %mul91 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i343) #6
  %308 = getelementptr inbounds [2 x i8], ptr %buf.i343, i32 0, i32 1
  %309 = ptrtoint ptr %buf.i343 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 27, ptr %buf.i343, align 1
  %310 = ptrtoint ptr %308 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv132, ptr %308, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i344) #6
  %311 = getelementptr inbounds i8, ptr %msg.i344, i32 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 196607, ptr %311, align 4
  %313 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %config.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %314, align 1
  %conv.i346 = zext i8 %316 to i16
  %317 = ptrtoint ptr %msg.i344 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv.i346, ptr %msg.i344, align 4
  %flags.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i344, i32 0, i32 1
  %318 = ptrtoint ptr %flags.i347 to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 0, ptr %flags.i347, align 2
  %buf1.i349 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i344, i32 0, i32 3
  %319 = ptrtoint ptr %buf1.i349 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %buf.i343, ptr %buf1.i349, align 4
  %320 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %1, align 4
  %call.i350 = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %msg.i344, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i350)
  %cmp.not.i351 = icmp eq i32 %call.i350, 1
  br i1 %cmp.not.i351, label %l64781_writereg.exit342.l64781_writereg.exit358_crit_edge, label %do.body.i353

l64781_writereg.exit342.l64781_writereg.exit358_crit_edge: ; preds = %l64781_writereg.exit342
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit358

do.body.i353:                                     ; preds = %l64781_writereg.exit342
  %322 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool.not.i352 = icmp eq i32 %322, 0
  br i1 %tobool.not.i352, label %do.body.i353.l64781_writereg.exit358_crit_edge, label %do.end.i355

do.body.i353.l64781_writereg.exit358_crit_edge:   ; preds = %do.body.i353
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit358

do.end.i355:                                      ; preds = %do.body.i353
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 27, i32 noundef %call.i350) #10
  br label %l64781_writereg.exit358

l64781_writereg.exit358:                          ; preds = %do.end.i355, %do.body.i353.l64781_writereg.exit358_crit_edge, %l64781_writereg.exit342.l64781_writereg.exit358_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i344) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i343) #6
  %shr134 = lshr i32 %mul91, 8
  %conv136 = trunc i32 %shr134 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i359) #6
  %323 = getelementptr inbounds [2 x i8], ptr %buf.i359, i32 0, i32 1
  %324 = ptrtoint ptr %buf.i359 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 28, ptr %buf.i359, align 1
  %325 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %conv136, ptr %323, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i360) #6
  %326 = getelementptr inbounds i8, ptr %msg.i360, i32 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 196607, ptr %326, align 4
  %328 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %config.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %329, align 1
  %conv.i362 = zext i8 %331 to i16
  %332 = ptrtoint ptr %msg.i360 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %conv.i362, ptr %msg.i360, align 4
  %flags.i363 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360, i32 0, i32 1
  %333 = ptrtoint ptr %flags.i363 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 0, ptr %flags.i363, align 2
  %buf1.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360, i32 0, i32 3
  %334 = ptrtoint ptr %buf1.i365 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %buf.i359, ptr %buf1.i365, align 4
  %335 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %1, align 4
  %call.i366 = call i32 @i2c_transfer(ptr noundef %336, ptr noundef nonnull %msg.i360, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i366)
  %cmp.not.i367 = icmp eq i32 %call.i366, 1
  br i1 %cmp.not.i367, label %l64781_writereg.exit358.l64781_writereg.exit374_crit_edge, label %do.body.i369

l64781_writereg.exit358.l64781_writereg.exit374_crit_edge: ; preds = %l64781_writereg.exit358
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit374

do.body.i369:                                     ; preds = %l64781_writereg.exit358
  %337 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool.not.i368 = icmp eq i32 %337, 0
  br i1 %tobool.not.i368, label %do.body.i369.l64781_writereg.exit374_crit_edge, label %do.end.i371

do.body.i369.l64781_writereg.exit374_crit_edge:   ; preds = %do.body.i369
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit374

do.end.i371:                                      ; preds = %do.body.i369
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 28, i32 noundef %call.i366) #10
  br label %l64781_writereg.exit374

l64781_writereg.exit374:                          ; preds = %do.end.i371, %do.body.i369.l64781_writereg.exit374_crit_edge, %l64781_writereg.exit358.l64781_writereg.exit374_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i360) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i359) #6
  %shr138 = lshr i32 %mul91, 16
  %and139 = and i32 %shr138, 127
  %338 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %339)
  %cmp141 = icmp eq i32 %339, 1
  %cond143 = select i1 %cmp141, i32 128, i32 0
  %or144 = or i32 %cond143, %and139
  %conv145 = trunc i32 %or144 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i375) #6
  %340 = getelementptr inbounds [2 x i8], ptr %buf.i375, i32 0, i32 1
  %341 = ptrtoint ptr %buf.i375 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 29, ptr %buf.i375, align 1
  %342 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv145, ptr %340, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i376) #6
  %343 = getelementptr inbounds i8, ptr %msg.i376, i32 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 196607, ptr %343, align 4
  %345 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %config.i, align 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %346, align 1
  %conv.i378 = zext i8 %348 to i16
  %349 = ptrtoint ptr %msg.i376 to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %conv.i378, ptr %msg.i376, align 4
  %flags.i379 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i376, i32 0, i32 1
  %350 = ptrtoint ptr %flags.i379 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %flags.i379, align 2
  %buf1.i381 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i376, i32 0, i32 3
  %351 = ptrtoint ptr %buf1.i381 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %buf.i375, ptr %buf1.i381, align 4
  %352 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %1, align 4
  %call.i382 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %msg.i376, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i382)
  %cmp.not.i383 = icmp eq i32 %call.i382, 1
  br i1 %cmp.not.i383, label %l64781_writereg.exit374.l64781_writereg.exit390_crit_edge, label %do.body.i385

l64781_writereg.exit374.l64781_writereg.exit390_crit_edge: ; preds = %l64781_writereg.exit374
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit390

do.body.i385:                                     ; preds = %l64781_writereg.exit374
  %354 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool.not.i384 = icmp eq i32 %354, 0
  br i1 %tobool.not.i384, label %do.body.i385.l64781_writereg.exit390_crit_edge, label %do.end.i387

do.body.i385.l64781_writereg.exit390_crit_edge:   ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit390

do.end.i387:                                      ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 29, i32 noundef %call.i382) #10
  br label %l64781_writereg.exit390

l64781_writereg.exit390:                          ; preds = %do.end.i387, %do.body.i385.l64781_writereg.exit390_crit_edge, %l64781_writereg.exit374.l64781_writereg.exit390_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i376) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i375) #6
  %355 = trunc i32 %div76 to i8
  %conv148 = sub nsw i8 0, %355
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i391) #6
  %356 = getelementptr inbounds [2 x i8], ptr %buf.i391, i32 0, i32 1
  %357 = ptrtoint ptr %buf.i391 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 34, ptr %buf.i391, align 1
  %358 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv148, ptr %356, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i392) #6
  %359 = getelementptr inbounds i8, ptr %msg.i392, i32 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 196607, ptr %359, align 4
  %361 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %config.i, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %362, align 1
  %conv.i394 = zext i8 %364 to i16
  %365 = ptrtoint ptr %msg.i392 to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv.i394, ptr %msg.i392, align 4
  %flags.i395 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 1
  %366 = ptrtoint ptr %flags.i395 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 0, ptr %flags.i395, align 2
  %buf1.i397 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 3
  %367 = ptrtoint ptr %buf1.i397 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %buf.i391, ptr %buf1.i397, align 4
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %1, align 4
  %call.i398 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i392, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i398)
  %cmp.not.i399 = icmp eq i32 %call.i398, 1
  br i1 %cmp.not.i399, label %l64781_writereg.exit390.l64781_writereg.exit406_crit_edge, label %do.body.i401

l64781_writereg.exit390.l64781_writereg.exit406_crit_edge: ; preds = %l64781_writereg.exit390
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit406

do.body.i401:                                     ; preds = %l64781_writereg.exit390
  %370 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool.not.i400 = icmp eq i32 %370, 0
  br i1 %tobool.not.i400, label %do.body.i401.l64781_writereg.exit406_crit_edge, label %do.end.i403

do.body.i401.l64781_writereg.exit406_crit_edge:   ; preds = %do.body.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit406

do.end.i403:                                      ; preds = %do.body.i401
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 34, i32 noundef %call.i398) #10
  br label %l64781_writereg.exit406

l64781_writereg.exit406:                          ; preds = %do.end.i403, %do.body.i401.l64781_writereg.exit406_crit_edge, %l64781_writereg.exit390.l64781_writereg.exit406_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i392) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i391) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i407) #6
  %371 = getelementptr inbounds [2 x i8], ptr %buf.i407, i32 0, i32 1
  %372 = ptrtoint ptr %buf.i407 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 35, ptr %buf.i407, align 1
  %373 = ptrtoint ptr %371 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 63, ptr %371, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i408) #6
  %374 = getelementptr inbounds i8, ptr %msg.i408, i32 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 196607, ptr %374, align 4
  %376 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %config.i, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %377, align 1
  %conv.i410 = zext i8 %379 to i16
  %380 = ptrtoint ptr %msg.i408 to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 %conv.i410, ptr %msg.i408, align 4
  %flags.i411 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i408, i32 0, i32 1
  %381 = ptrtoint ptr %flags.i411 to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 0, ptr %flags.i411, align 2
  %buf1.i413 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i408, i32 0, i32 3
  %382 = ptrtoint ptr %buf1.i413 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %buf.i407, ptr %buf1.i413, align 4
  %383 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %1, align 4
  %call.i414 = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %msg.i408, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i414)
  %cmp.not.i415 = icmp eq i32 %call.i414, 1
  br i1 %cmp.not.i415, label %l64781_writereg.exit406.l64781_writereg.exit422_crit_edge, label %do.body.i417

l64781_writereg.exit406.l64781_writereg.exit422_crit_edge: ; preds = %l64781_writereg.exit406
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit422

do.body.i417:                                     ; preds = %l64781_writereg.exit406
  %385 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool.not.i416 = icmp eq i32 %385, 0
  br i1 %tobool.not.i416, label %do.body.i417.l64781_writereg.exit422_crit_edge, label %do.end.i419

do.body.i417.l64781_writereg.exit422_crit_edge:   ; preds = %do.body.i417
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit422

do.end.i419:                                      ; preds = %do.body.i417
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 35, i32 noundef %call.i414) #10
  br label %l64781_writereg.exit422

l64781_writereg.exit422:                          ; preds = %do.end.i419, %do.body.i417.l64781_writereg.exit422_crit_edge, %l64781_writereg.exit406.l64781_writereg.exit422_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i408) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i407) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %386 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %387 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i423) #6
  %388 = getelementptr inbounds i8, ptr %msg.i423, i32 4
  %389 = call ptr @memset(ptr %388, i32 255, i32 16)
  %390 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %config.i, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %391, align 1
  %conv.i425 = zext i8 %393 to i16
  %394 = ptrtoint ptr %msg.i423 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %conv.i425, ptr %msg.i423, align 4
  %flags.i426 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 0, i32 1
  %395 = ptrtoint ptr %flags.i426 to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 0, ptr %flags.i426, align 2
  %396 = ptrtoint ptr %388 to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 1, ptr %388, align 4
  %buf.i428 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 0, i32 3
  %397 = ptrtoint ptr %buf.i428 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %b0.i, ptr %buf.i428, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 1
  %398 = load i8, ptr %391, align 1
  %conv5.i = zext i8 %398 to i16
  %399 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 1, i32 1
  %400 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 1, i32 2
  %401 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 1, i32 3
  %402 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %b1.i, ptr %buf8.i, align 4
  %403 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %1, align 4
  %call.i429 = call i32 @i2c_transfer(ptr noundef %404, ptr noundef nonnull %msg.i423, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i423) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i431) #6
  %405 = ptrtoint ptr %b0.i431 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 1, ptr %b0.i431, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i432) #6
  %406 = ptrtoint ptr %b1.i432 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %b1.i432, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i433) #6
  %407 = getelementptr inbounds i8, ptr %msg.i433, i32 4
  %408 = call ptr @memset(ptr %407, i32 255, i32 16)
  %409 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %config.i, align 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %410, align 1
  %conv.i435 = zext i8 %412 to i16
  %413 = ptrtoint ptr %msg.i433 to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %conv.i435, ptr %msg.i433, align 4
  %flags.i436 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 0, i32 1
  %414 = ptrtoint ptr %flags.i436 to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 0, ptr %flags.i436, align 2
  %415 = ptrtoint ptr %407 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 1, ptr %407, align 4
  %buf.i438 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 0, i32 3
  %416 = ptrtoint ptr %buf.i438 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %b0.i431, ptr %buf.i438, align 4
  %arrayinit.element.i439 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 1
  %417 = load i8, ptr %410, align 1
  %conv5.i440 = zext i8 %417 to i16
  %418 = ptrtoint ptr %arrayinit.element.i439 to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %conv5.i440, ptr %arrayinit.element.i439, align 4
  %flags6.i441 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 1, i32 1
  %419 = ptrtoint ptr %flags6.i441 to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 1, ptr %flags6.i441, align 2
  %len7.i442 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 1, i32 2
  %420 = ptrtoint ptr %len7.i442 to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 1, ptr %len7.i442, align 4
  %buf8.i443 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i433, i32 1, i32 3
  %421 = ptrtoint ptr %buf8.i443 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %b1.i432, ptr %buf8.i443, align 4
  %422 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %1, align 4
  %call.i444 = call i32 @i2c_transfer(ptr noundef %423, ptr noundef nonnull %msg.i433, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i433) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i432) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i431) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i452) #6
  %424 = getelementptr inbounds [2 x i8], ptr %buf.i.i452, i32 0, i32 1
  %425 = ptrtoint ptr %buf.i.i452 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 42, ptr %buf.i.i452, align 1
  %426 = ptrtoint ptr %424 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %424, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i453) #6
  %427 = getelementptr inbounds i8, ptr %msg.i.i453, i32 4
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 196607, ptr %427, align 4
  %429 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %config.i, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %430, align 1
  %conv.i.i455 = zext i8 %432 to i16
  %433 = ptrtoint ptr %msg.i.i453 to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %conv.i.i455, ptr %msg.i.i453, align 4
  %flags.i.i456 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i453, i32 0, i32 1
  %434 = ptrtoint ptr %flags.i.i456 to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 0, ptr %flags.i.i456, align 2
  %buf1.i.i457 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i453, i32 0, i32 3
  %435 = ptrtoint ptr %buf1.i.i457 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %buf.i.i452, ptr %buf1.i.i457, align 4
  %436 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %1, align 4
  %call.i.i458 = call i32 @i2c_transfer(ptr noundef %437, ptr noundef nonnull %msg.i.i453, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i458)
  %cmp.not.i.i459 = icmp eq i32 %call.i.i458, 1
  br i1 %cmp.not.i.i459, label %l64781_writereg.exit422.l64781_writereg.exit.i464_crit_edge, label %do.body.i.i461

l64781_writereg.exit422.l64781_writereg.exit.i464_crit_edge: ; preds = %l64781_writereg.exit422
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit.i464

do.body.i.i461:                                   ; preds = %l64781_writereg.exit422
  %438 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool.not.i.i460 = icmp eq i32 %438, 0
  br i1 %tobool.not.i.i460, label %do.body.i.i461.l64781_writereg.exit.i464_crit_edge, label %do.end.i.i463

do.body.i.i461.l64781_writereg.exit.i464_crit_edge: ; preds = %do.body.i.i461
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit.i464

do.end.i.i463:                                    ; preds = %do.body.i.i461
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 42, i32 noundef %call.i.i458) #10
  br label %l64781_writereg.exit.i464

l64781_writereg.exit.i464:                        ; preds = %do.end.i.i463, %do.body.i.i461.l64781_writereg.exit.i464_crit_edge, %l64781_writereg.exit422.l64781_writereg.exit.i464_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i453) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i452) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5.i) #6
  %439 = getelementptr inbounds [2 x i8], ptr %buf.i5.i, i32 0, i32 1
  %440 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 42, ptr %buf.i5.i, align 1
  %441 = ptrtoint ptr %439 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 1, ptr %439, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6.i) #6
  %442 = getelementptr inbounds i8, ptr %msg.i6.i, i32 4
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 196607, ptr %442, align 4
  %444 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %config.i, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %445, align 1
  %conv.i8.i = zext i8 %447 to i16
  %448 = ptrtoint ptr %msg.i6.i to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 %conv.i8.i, ptr %msg.i6.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 1
  %449 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 0, ptr %flags.i9.i, align 2
  %buf1.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 3
  %450 = ptrtoint ptr %buf1.i11.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %buf.i5.i, ptr %buf1.i11.i, align 4
  %451 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %1, align 4
  %call.i12.i = call i32 @i2c_transfer(ptr noundef %452, ptr noundef nonnull %msg.i6.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12.i)
  %cmp.not.i13.i = icmp eq i32 %call.i12.i, 1
  br i1 %cmp.not.i13.i, label %l64781_writereg.exit.i464.l64781_writereg.exit20.i_crit_edge, label %do.body.i15.i

l64781_writereg.exit.i464.l64781_writereg.exit20.i_crit_edge: ; preds = %l64781_writereg.exit.i464
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit20.i

do.body.i15.i:                                    ; preds = %l64781_writereg.exit.i464
  %453 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %tobool.not.i14.i = icmp eq i32 %453, 0
  br i1 %tobool.not.i14.i, label %do.body.i15.i.l64781_writereg.exit20.i_crit_edge, label %do.end.i17.i

do.body.i15.i.l64781_writereg.exit20.i_crit_edge: ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_writereg.exit20.i

do.end.i17.i:                                     ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 42, i32 noundef %call.i12.i) #10
  br label %l64781_writereg.exit20.i

l64781_writereg.exit20.i:                         ; preds = %do.end.i17.i, %do.body.i15.i.l64781_writereg.exit20.i_crit_edge, %l64781_writereg.exit.i464.l64781_writereg.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21.i450) #6
  %454 = getelementptr inbounds [2 x i8], ptr %buf.i21.i450, i32 0, i32 1
  %455 = ptrtoint ptr %buf.i21.i450 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 42, ptr %buf.i21.i450, align 1
  %456 = ptrtoint ptr %454 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 2, ptr %454, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22.i451) #6
  %457 = getelementptr inbounds i8, ptr %msg.i22.i451, i32 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 196607, ptr %457, align 4
  %459 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %config.i, align 4
  %461 = ptrtoint ptr %460 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %460, align 1
  %conv.i24.i465 = zext i8 %462 to i16
  %463 = ptrtoint ptr %msg.i22.i451 to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 %conv.i24.i465, ptr %msg.i22.i451, align 4
  %flags.i25.i466 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i451, i32 0, i32 1
  %464 = ptrtoint ptr %flags.i25.i466 to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 0, ptr %flags.i25.i466, align 2
  %buf1.i27.i467 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i451, i32 0, i32 3
  %465 = ptrtoint ptr %buf1.i27.i467 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %buf.i21.i450, ptr %buf1.i27.i467, align 4
  %466 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %1, align 4
  %call.i28.i468 = call i32 @i2c_transfer(ptr noundef %467, ptr noundef nonnull %msg.i22.i451, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28.i468)
  %cmp.not.i29.i469 = icmp eq i32 %call.i28.i468, 1
  br i1 %cmp.not.i29.i469, label %l64781_writereg.exit20.i.apply_tps.exit_crit_edge, label %do.body.i31.i471

l64781_writereg.exit20.i.apply_tps.exit_crit_edge: ; preds = %l64781_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apply_tps.exit

do.body.i31.i471:                                 ; preds = %l64781_writereg.exit20.i
  %468 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %468)
  %tobool.not.i30.i470 = icmp eq i32 %468, 0
  br i1 %tobool.not.i30.i470, label %do.body.i31.i471.apply_tps.exit_crit_edge, label %do.end.i33.i473

do.body.i31.i471.apply_tps.exit_crit_edge:        ; preds = %do.body.i31.i471
  call void @__sanitizer_cov_trace_pc() #8
  br label %apply_tps.exit

do.end.i33.i473:                                  ; preds = %do.body.i31.i471
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i32.i472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 42, i32 noundef %call.i28.i468) #10
  br label %apply_tps.exit

apply_tps.exit:                                   ; preds = %do.end.i33.i473, %do.body.i31.i471.apply_tps.exit_crit_edge, %l64781_writereg.exit20.i.apply_tps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22.i451) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21.i450) #6
  br label %cleanup

cleanup:                                          ; preds = %apply_tps.exit, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %apply_tps.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %land.lhs.true33.cleanup_crit_edge ], [ -22, %if.end48.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ -22, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @l64781_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4000, ptr %fesettings, align 4
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
define internal i32 @get_frontend(ptr nocapture noundef readonly %fe, ptr noundef %p) #0 align 64 {
entry:
  %b0.i219 = alloca [1 x i8], align 1
  %b1.i220 = alloca [1 x i8], align 1
  %msg.i221 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i200 = alloca [1 x i8], align 1
  %b1.i201 = alloca [1 x i8], align 1
  %msg.i202 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i181 = alloca [1 x i8], align 1
  %b1.i182 = alloca [1 x i8], align 1
  %msg.i183 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i162 = alloca [1 x i8], align 1
  %b1.i163 = alloca [1 x i8], align 1
  %msg.i164 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i143 = alloca [1 x i8], align 1
  %b1.i144 = alloca [1 x i8], align 1
  %msg.i145 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i124 = alloca [1 x i8], align 1
  %b1.i125 = alloca [1 x i8], align 1
  %msg.i126 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 4, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 3
  %guard_interval6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 8
  %23 = ptrtoint ptr %guard_interval6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %guard_interval6, align 4
  %24 = lshr i32 %retval.0.i, 2
  %and7 = and i32 %24, 3
  %25 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and7, label %do.end [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb9
  ]

sw.bb8:                                           ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  %26 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %transmission_mode, align 4
  br label %sw.epilog13

sw.bb9:                                           ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %transmission_mode10 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  %27 = ptrtoint ptr %transmission_mode10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %transmission_mode10, align 4
  br label %sw.epilog13

do.end:                                           ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %do.end, %sw.bb9, %sw.bb8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i124) #6
  %28 = ptrtoint ptr %b0.i124 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %b0.i124, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i125) #6
  %29 = ptrtoint ptr %b1.i125 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i125, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i126) #6
  %30 = getelementptr inbounds i8, ptr %msg.i126, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i128 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i126 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i128, ptr %msg.i126, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i129, align 2
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %30, align 4
  %buf.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i131 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i124, ptr %buf.i131, align 4
  %arrayinit.element.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 1
  %40 = load i8, ptr %33, align 1
  %conv5.i133 = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element.i132 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i133, ptr %arrayinit.element.i132, align 4
  %flags6.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 1, i32 1
  %42 = ptrtoint ptr %flags6.i134 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags6.i134, align 2
  %len7.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 1, i32 2
  %43 = ptrtoint ptr %len7.i135 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len7.i135, align 4
  %buf8.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 1, i32 3
  %44 = ptrtoint ptr %buf8.i136 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b1.i125, ptr %buf8.i136, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i137 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i126, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i137)
  %cmp.not.i138 = icmp eq i32 %call.i137, 2
  br i1 %cmp.not.i138, label %if.end.i140, label %sw.epilog13.l64781_readreg.exit142_crit_edge

sw.epilog13.l64781_readreg.exit142_crit_edge:     ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit142

if.end.i140:                                      ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %b1.i125 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i125, align 1
  %conv12.i139 = zext i8 %48 to i32
  br label %l64781_readreg.exit142

l64781_readreg.exit142:                           ; preds = %if.end.i140, %sw.epilog13.l64781_readreg.exit142_crit_edge
  %retval.0.i141 = phi i32 [ %conv12.i139, %if.end.i140 ], [ %call.i137, %sw.epilog13.l64781_readreg.exit142_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i126) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i125) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i124) #6
  %and15 = and i32 %retval.0.i141, 7
  %49 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and15, label %do.end28 [
    i32 0, label %sw.bb16
    i32 1, label %sw.bb17
    i32 2, label %sw.bb19
    i32 3, label %sw.bb21
    i32 4, label %sw.bb23
  ]

sw.bb16:                                          ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %50 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %code_rate_HP, align 4
  br label %sw.epilog31

sw.bb17:                                          ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_HP18 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %51 = ptrtoint ptr %code_rate_HP18 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %code_rate_HP18, align 4
  br label %sw.epilog31

sw.bb19:                                          ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_HP20 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %52 = ptrtoint ptr %code_rate_HP20 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %code_rate_HP20, align 4
  br label %sw.epilog31

sw.bb21:                                          ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_HP22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %53 = ptrtoint ptr %code_rate_HP22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %code_rate_HP22, align 4
  br label %sw.epilog31

sw.bb23:                                          ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_HP24 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %54 = ptrtoint ptr %code_rate_HP24 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7, ptr %code_rate_HP24, align 4
  br label %sw.epilog31

do.end28:                                         ; preds = %l64781_readreg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %do.end28, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb16
  %55 = lshr i32 %retval.0.i141, 3
  %and33 = and i32 %55, 7
  %56 = zext i32 %and33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and33, label %do.end46 [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb35
    i32 2, label %sw.bb37
    i32 3, label %sw.bb39
    i32 4, label %sw.bb41
  ]

sw.bb34:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %57 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %code_rate_LP, align 4
  br label %sw.epilog49

sw.bb35:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %58 = ptrtoint ptr %code_rate_LP36 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %code_rate_LP36, align 4
  br label %sw.epilog49

sw.bb37:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %59 = ptrtoint ptr %code_rate_LP38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %code_rate_LP38, align 4
  br label %sw.epilog49

sw.bb39:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %60 = ptrtoint ptr %code_rate_LP40 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %code_rate_LP40, align 4
  br label %sw.epilog49

sw.bb41:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %code_rate_LP42 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %61 = ptrtoint ptr %code_rate_LP42 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7, ptr %code_rate_LP42, align 4
  br label %sw.epilog49

do.end46:                                         ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %do.end46, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i143) #6
  %62 = ptrtoint ptr %b0.i143 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 6, ptr %b0.i143, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i144) #6
  %63 = ptrtoint ptr %b1.i144 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %b1.i144, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i145) #6
  %64 = getelementptr inbounds i8, ptr %msg.i145, i32 4
  %65 = call ptr @memset(ptr %64, i32 255, i32 16)
  %66 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv.i147 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i145 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i147, ptr %msg.i145, align 4
  %flags.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i148, align 2
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %64, align 4
  %buf.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i150 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %b0.i143, ptr %buf.i150, align 4
  %arrayinit.element.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 1
  %74 = load i8, ptr %67, align 1
  %conv5.i152 = zext i8 %74 to i16
  %75 = ptrtoint ptr %arrayinit.element.i151 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv5.i152, ptr %arrayinit.element.i151, align 4
  %flags6.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 1, i32 1
  %76 = ptrtoint ptr %flags6.i153 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %flags6.i153, align 2
  %len7.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 1, i32 2
  %77 = ptrtoint ptr %len7.i154 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %len7.i154, align 4
  %buf8.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 1, i32 3
  %78 = ptrtoint ptr %buf8.i155 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %b1.i144, ptr %buf8.i155, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i156 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i145, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i156)
  %cmp.not.i157 = icmp eq i32 %call.i156, 2
  br i1 %cmp.not.i157, label %if.end.i159, label %sw.epilog49.l64781_readreg.exit161_crit_edge

sw.epilog49.l64781_readreg.exit161_crit_edge:     ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit161

if.end.i159:                                      ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %b1.i144 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %b1.i144, align 1
  %conv12.i158 = zext i8 %82 to i32
  br label %l64781_readreg.exit161

l64781_readreg.exit161:                           ; preds = %if.end.i159, %sw.epilog49.l64781_readreg.exit161_crit_edge
  %retval.0.i160 = phi i32 [ %conv12.i158, %if.end.i159 ], [ %call.i156, %sw.epilog49.l64781_readreg.exit161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i145) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i144) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i143) #6
  %and51 = and i32 %retval.0.i160, 3
  %83 = zext i32 %and51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and51, label %do.end60 [
    i32 0, label %sw.bb52
    i32 1, label %sw.bb53
    i32 2, label %sw.bb55
  ]

sw.bb52:                                          ; preds = %l64781_readreg.exit161
  call void @__sanitizer_cov_trace_pc() #8
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %84 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %modulation, align 4
  br label %sw.epilog63

sw.bb53:                                          ; preds = %l64781_readreg.exit161
  call void @__sanitizer_cov_trace_pc() #8
  %modulation54 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %85 = ptrtoint ptr %modulation54 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %modulation54, align 4
  br label %sw.epilog63

sw.bb55:                                          ; preds = %l64781_readreg.exit161
  call void @__sanitizer_cov_trace_pc() #8
  %modulation56 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %86 = ptrtoint ptr %modulation56 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %modulation56, align 4
  br label %sw.epilog63

do.end60:                                         ; preds = %l64781_readreg.exit161
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %do.end60, %sw.bb55, %sw.bb53, %sw.bb52
  %87 = lshr i32 %retval.0.i160, 2
  %and65 = and i32 %87, 7
  %88 = zext i32 %and65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and65, label %do.end76 [
    i32 0, label %sw.bb66
    i32 1, label %sw.bb67
    i32 2, label %sw.bb69
    i32 3, label %sw.bb71
  ]

sw.bb66:                                          ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %89 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %hierarchy, align 4
  br label %sw.epilog79

sw.bb67:                                          ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  %hierarchy68 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %90 = ptrtoint ptr %hierarchy68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %hierarchy68, align 4
  br label %sw.epilog79

sw.bb69:                                          ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  %hierarchy70 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %91 = ptrtoint ptr %hierarchy70 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %hierarchy70, align 4
  br label %sw.epilog79

sw.bb71:                                          ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  %hierarchy72 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %92 = ptrtoint ptr %hierarchy72 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %hierarchy72, align 4
  br label %sw.epilog79

do.end76:                                         ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %sw.epilog79

sw.epilog79:                                      ; preds = %do.end76, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i162) #6
  %93 = ptrtoint ptr %b0.i162 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 29, ptr %b0.i162, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i163) #6
  %94 = ptrtoint ptr %b1.i163 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %b1.i163, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i164) #6
  %95 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %96 = call ptr @memset(ptr %95, i32 255, i32 16)
  %97 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %config.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  %conv.i166 = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i166, ptr %msg.i164, align 4
  %flags.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i167, align 2
  %103 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %95, align 4
  %buf.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %104 = ptrtoint ptr %buf.i169 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %b0.i162, ptr %buf.i169, align 4
  %arrayinit.element.i170 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 1
  %105 = load i8, ptr %98, align 1
  %conv5.i171 = zext i8 %105 to i16
  %106 = ptrtoint ptr %arrayinit.element.i170 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv5.i171, ptr %arrayinit.element.i170, align 4
  %flags6.i172 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 1, i32 1
  %107 = ptrtoint ptr %flags6.i172 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %flags6.i172, align 2
  %len7.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 1, i32 2
  %108 = ptrtoint ptr %len7.i173 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %len7.i173, align 4
  %buf8.i174 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 1, i32 3
  %109 = ptrtoint ptr %buf8.i174 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %b1.i163, ptr %buf8.i174, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call.i175 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i164, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i175)
  %cmp.not.i176 = icmp eq i32 %call.i175, 2
  br i1 %cmp.not.i176, label %if.end.i178, label %sw.epilog79.l64781_readreg.exit180_crit_edge

sw.epilog79.l64781_readreg.exit180_crit_edge:     ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit180

if.end.i178:                                      ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %b1.i163 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %b1.i163, align 1
  %conv12.i177 = zext i8 %113 to i32
  br label %l64781_readreg.exit180

l64781_readreg.exit180:                           ; preds = %if.end.i178, %sw.epilog79.l64781_readreg.exit180_crit_edge
  %retval.0.i179 = phi i32 [ %conv12.i177, %if.end.i178 ], [ %call.i175, %sw.epilog79.l64781_readreg.exit180_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i164) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i163) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i162) #6
  %and81 = lshr i32 %retval.0.i179, 7
  %and81.lobit = and i32 %and81, 1
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %114 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and81.lobit, ptr %inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i181) #6
  %115 = ptrtoint ptr %b0.i181 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 8, ptr %b0.i181, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i182) #6
  %116 = ptrtoint ptr %b1.i182 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %b1.i182, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i183) #6
  %117 = getelementptr inbounds i8, ptr %msg.i183, i32 4
  %118 = call ptr @memset(ptr %117, i32 255, i32 16)
  %119 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 1
  %conv.i185 = zext i8 %122 to i16
  %123 = ptrtoint ptr %msg.i183 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i185, ptr %msg.i183, align 4
  %flags.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 0, i32 1
  %124 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i186, align 2
  %125 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1, ptr %117, align 4
  %buf.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 0, i32 3
  %126 = ptrtoint ptr %buf.i188 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %b0.i181, ptr %buf.i188, align 4
  %arrayinit.element.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 1
  %127 = load i8, ptr %120, align 1
  %conv5.i190 = zext i8 %127 to i16
  %128 = ptrtoint ptr %arrayinit.element.i189 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv5.i190, ptr %arrayinit.element.i189, align 4
  %flags6.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 1, i32 1
  %129 = ptrtoint ptr %flags6.i191 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 1, ptr %flags6.i191, align 2
  %len7.i192 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 1, i32 2
  %130 = ptrtoint ptr %len7.i192 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %len7.i192, align 4
  %buf8.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183, i32 1, i32 3
  %131 = ptrtoint ptr %buf8.i193 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %b1.i182, ptr %buf8.i193, align 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %call.i194 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i183, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i194)
  %cmp.not.i195 = icmp eq i32 %call.i194, 2
  br i1 %cmp.not.i195, label %if.end.i197, label %l64781_readreg.exit180.l64781_readreg.exit199_crit_edge

l64781_readreg.exit180.l64781_readreg.exit199_crit_edge: ; preds = %l64781_readreg.exit180
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit199

if.end.i197:                                      ; preds = %l64781_readreg.exit180
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %b1.i182 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %b1.i182, align 1
  %conv12.i196 = zext i8 %135 to i32
  br label %l64781_readreg.exit199

l64781_readreg.exit199:                           ; preds = %if.end.i197, %l64781_readreg.exit180.l64781_readreg.exit199_crit_edge
  %retval.0.i198 = phi i32 [ %conv12.i196, %if.end.i197 ], [ %call.i194, %l64781_readreg.exit180.l64781_readreg.exit199_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i183) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i182) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i181) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i200) #6
  %136 = ptrtoint ptr %b0.i200 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 9, ptr %b0.i200, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i201) #6
  %137 = ptrtoint ptr %b1.i201 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %b1.i201, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i202) #6
  %138 = getelementptr inbounds i8, ptr %msg.i202, i32 4
  %139 = call ptr @memset(ptr %138, i32 255, i32 16)
  %140 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 1
  %conv.i204 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i202 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i204, ptr %msg.i202, align 4
  %flags.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i205, align 2
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %138, align 4
  %buf.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 0, i32 3
  %147 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %b0.i200, ptr %buf.i207, align 4
  %arrayinit.element.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 1
  %148 = load i8, ptr %141, align 1
  %conv5.i209 = zext i8 %148 to i16
  %149 = ptrtoint ptr %arrayinit.element.i208 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv5.i209, ptr %arrayinit.element.i208, align 4
  %flags6.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 1, i32 1
  %150 = ptrtoint ptr %flags6.i210 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 1, ptr %flags6.i210, align 2
  %len7.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 1, i32 2
  %151 = ptrtoint ptr %len7.i211 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %len7.i211, align 4
  %buf8.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i202, i32 1, i32 3
  %152 = ptrtoint ptr %buf8.i212 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %b1.i201, ptr %buf8.i212, align 4
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %call.i213 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i202, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i213)
  %cmp.not.i214 = icmp eq i32 %call.i213, 2
  br i1 %cmp.not.i214, label %if.end.i216, label %l64781_readreg.exit199.l64781_readreg.exit218_crit_edge

l64781_readreg.exit199.l64781_readreg.exit218_crit_edge: ; preds = %l64781_readreg.exit199
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit218

if.end.i216:                                      ; preds = %l64781_readreg.exit199
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %b1.i201 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %b1.i201, align 1
  %conv12.i215 = zext i8 %156 to i32
  br label %l64781_readreg.exit218

l64781_readreg.exit218:                           ; preds = %if.end.i216, %l64781_readreg.exit199.l64781_readreg.exit218_crit_edge
  %retval.0.i217 = phi i32 [ %conv12.i215, %if.end.i216 ], [ %call.i213, %l64781_readreg.exit199.l64781_readreg.exit218_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i202) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i201) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i200) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i219) #6
  %157 = ptrtoint ptr %b0.i219 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 10, ptr %b0.i219, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i220) #6
  %158 = ptrtoint ptr %b1.i220 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %b1.i220, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i221) #6
  %159 = getelementptr inbounds i8, ptr %msg.i221, i32 4
  %160 = call ptr @memset(ptr %159, i32 255, i32 16)
  %161 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %config.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  %conv.i223 = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i221 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv.i223, ptr %msg.i221, align 4
  %flags.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i224 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i224, align 2
  %167 = ptrtoint ptr %159 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %159, align 4
  %buf.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 3
  %168 = ptrtoint ptr %buf.i226 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %b0.i219, ptr %buf.i226, align 4
  %arrayinit.element.i227 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 1
  %169 = load i8, ptr %162, align 1
  %conv5.i228 = zext i8 %169 to i16
  %170 = ptrtoint ptr %arrayinit.element.i227 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv5.i228, ptr %arrayinit.element.i227, align 4
  %flags6.i229 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 1, i32 1
  %171 = ptrtoint ptr %flags6.i229 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1, ptr %flags6.i229, align 2
  %len7.i230 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 1, i32 2
  %172 = ptrtoint ptr %len7.i230 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 1, ptr %len7.i230, align 4
  %buf8.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 1, i32 3
  %173 = ptrtoint ptr %buf8.i231 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %b1.i220, ptr %buf8.i231, align 4
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %call.i232 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i221, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i232)
  %cmp.not.i233 = icmp eq i32 %call.i232, 2
  br i1 %cmp.not.i233, label %if.end.i235, label %l64781_readreg.exit218.l64781_readreg.exit237_crit_edge

l64781_readreg.exit218.l64781_readreg.exit237_crit_edge: ; preds = %l64781_readreg.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit237

if.end.i235:                                      ; preds = %l64781_readreg.exit218
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %b1.i220 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %b1.i220, align 1
  %conv12.i234 = zext i8 %177 to i32
  br label %l64781_readreg.exit237

l64781_readreg.exit237:                           ; preds = %if.end.i235, %l64781_readreg.exit218.l64781_readreg.exit237_crit_edge
  %retval.0.i236 = phi i32 [ %conv12.i234, %if.end.i235 ], [ %call.i232, %l64781_readreg.exit218.l64781_readreg.exit237_crit_edge ]
  %shl = shl i32 %retval.0.i217, 8
  %or = or i32 %shl, %retval.0.i198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i221) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i220) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i219) #6
  %shl85 = shl i32 %retval.0.i236, 16
  %or86 = or i32 %or, %shl85
  %178 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %p, align 4
  %add = add i32 %179, %or86
  store i32 %add, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i70 = alloca [1 x i8], align 1
  %b1.i71 = alloca [1 x i8], align 1
  %msg.i72 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i51 = alloca [1 x i8], align 1
  %b1.i52 = alloca [1 x i8], align 1
  %msg.i53 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i32 = alloca [1 x i8], align 1
  %b1.i33 = alloca [1 x i8], align 1
  %msg.i34 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 50, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i32) #6
  %23 = ptrtoint ptr %b0.i32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 14, ptr %b0.i32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i33) #6
  %24 = ptrtoint ptr %b1.i33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i33, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i34) #6
  %25 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i36 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i37, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i32, ptr %buf.i39, align 4
  %arrayinit.element.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i41 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i40 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i41, ptr %arrayinit.element.i40, align 4
  %flags6.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i42 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i42, align 2
  %len7.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i43 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i43, align 4
  %buf8.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i33, ptr %buf8.i44, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i34, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 2
  br i1 %cmp.not.i46, label %if.end.i48, label %l64781_readreg.exit.l64781_readreg.exit50_crit_edge

l64781_readreg.exit.l64781_readreg.exit50_crit_edge: ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit50

if.end.i48:                                       ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %b1.i33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i33, align 1
  %conv12.i47 = zext i8 %43 to i32
  br label %l64781_readreg.exit50

l64781_readreg.exit50:                            ; preds = %if.end.i48, %l64781_readreg.exit.l64781_readreg.exit50_crit_edge
  %retval.0.i49 = phi i32 [ %conv12.i47, %if.end.i48 ], [ %call.i45, %l64781_readreg.exit.l64781_readreg.exit50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i33) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i32) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i51) #6
  %44 = ptrtoint ptr %b0.i51 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %b0.i51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i52) #6
  %45 = ptrtoint ptr %b1.i52 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %b1.i52, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i53) #6
  %46 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i55 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i56, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b0.i51, ptr %buf.i58, align 4
  %arrayinit.element.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1
  %56 = load i8, ptr %49, align 1
  %conv5.i60 = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i59 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv5.i60, ptr %arrayinit.element.i59, align 4
  %flags6.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 1
  %58 = ptrtoint ptr %flags6.i61 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags6.i61, align 2
  %len7.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 2
  %59 = ptrtoint ptr %len7.i62 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len7.i62, align 4
  %buf8.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 3
  %60 = ptrtoint ptr %buf8.i63 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b1.i52, ptr %buf8.i63, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i64 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i53, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i53) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i52) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i51) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i70) #6
  %63 = ptrtoint ptr %b0.i70 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %b0.i70, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i71) #6
  %64 = ptrtoint ptr %b1.i71 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %b1.i71, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i72) #6
  %65 = getelementptr inbounds i8, ptr %msg.i72, i32 4
  %66 = call ptr @memset(ptr %65, i32 255, i32 16)
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv.i74 = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i72 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i74, ptr %msg.i72, align 4
  %flags.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i75, align 2
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %65, align 4
  %buf.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %b0.i70, ptr %buf.i77, align 4
  %arrayinit.element.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1
  %75 = load i8, ptr %68, align 1
  %conv5.i79 = zext i8 %75 to i16
  %76 = ptrtoint ptr %arrayinit.element.i78 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv5.i79, ptr %arrayinit.element.i78, align 4
  %flags6.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 1
  %77 = ptrtoint ptr %flags6.i80 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags6.i80, align 2
  %len7.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 2
  %78 = ptrtoint ptr %len7.i81 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %len7.i81, align 4
  %buf8.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 3
  %79 = ptrtoint ptr %buf8.i82 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %b1.i71, ptr %buf8.i82, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i83 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i72, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i71) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i49)
  %cmp = icmp sgt i32 %retval.0.i49, 5
  %spec.select = zext i1 %cmp to i32
  %and = and i32 %retval.0.i, 2
  %82 = or i32 %and, %spec.select
  %83 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %status, align 4
  %and7 = and i32 %retval.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %l64781_readreg.exit50.if.end11_crit_edge, label %if.then9

l64781_readreg.exit50.if.end11_crit_edge:         ; preds = %l64781_readreg.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %l64781_readreg.exit50
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %status, align 4
  %or10 = or i32 %85, 4
  store i32 %or10, ptr %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %l64781_readreg.exit50.if.end11_crit_edge
  %and12 = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %status, align 4
  %or15 = or i32 %87, 8
  store i32 %or15, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %retval.0.i)
  %cmp17 = icmp eq i32 %retval.0.i, 127
  br i1 %cmp17, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status, align 4
  %or19 = or i32 %89, 16
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i3 = alloca [1 x i8], align 1
  %b1.i4 = alloca [1 x i8], align 1
  %msg.i5 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 57, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i3) #6
  %23 = ptrtoint ptr %b0.i3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 58, ptr %b0.i3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i4) #6
  %24 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i5) #6
  %25 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i7 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i7, ptr %msg.i5, align 4
  %flags.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i8, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i3, ptr %buf.i10, align 4
  %arrayinit.element.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i12 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i11 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i12, ptr %arrayinit.element.i11, align 4
  %flags6.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i13 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i13, align 2
  %len7.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i14 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i14, align 4
  %buf8.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i4, ptr %buf8.i15, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i5, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 2
  br i1 %cmp.not.i17, label %if.end.i19, label %l64781_readreg.exit.l64781_readreg.exit21_crit_edge

l64781_readreg.exit.l64781_readreg.exit21_crit_edge: ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit21

if.end.i19:                                       ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i4, align 1
  %conv12.i18 = zext i8 %43 to i32
  br label %l64781_readreg.exit21

l64781_readreg.exit21:                            ; preds = %if.end.i19, %l64781_readreg.exit.l64781_readreg.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %conv12.i18, %if.end.i19 ], [ %call.i16, %l64781_readreg.exit.l64781_readreg.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i3) #6
  %shl = shl i32 %retval.0.i20, 8
  %or = or i32 %shl, %retval.0.i
  %44 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
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
  store i8 14, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = trunc i32 %retval.0.i to i16
  %24 = and i16 %23, 255
  %conv3 = mul nuw i16 %24, 257
  %25 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv3, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
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
  store i8 51, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = trunc i32 %retval.0.i to i16
  %24 = and i16 %23, 255
  %25 = xor i16 %24, 255
  %conv3 = mul nuw i16 %25, 257
  %26 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv3, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l64781_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i3 = alloca [1 x i8], align 1
  %b1.i4 = alloca [1 x i8], align 1
  %msg.i5 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 55, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.l64781_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.l64781_readreg.exit_crit_edge

entry.l64781_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %l64781_readreg.exit

l64781_readreg.exit:                              ; preds = %if.end.i, %entry.l64781_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.l64781_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i3) #6
  %23 = ptrtoint ptr %b0.i3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 56, ptr %b0.i3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i4) #6
  %24 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i5) #6
  %25 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i7 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i7, ptr %msg.i5, align 4
  %flags.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i8, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i3, ptr %buf.i10, align 4
  %arrayinit.element.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i12 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i11 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i12, ptr %arrayinit.element.i11, align 4
  %flags6.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i13 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i13, align 2
  %len7.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i14 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i14, align 4
  %buf8.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i4, ptr %buf8.i15, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i5, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 2
  br i1 %cmp.not.i17, label %if.end.i19, label %l64781_readreg.exit.l64781_readreg.exit21_crit_edge

l64781_readreg.exit.l64781_readreg.exit21_crit_edge: ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %l64781_readreg.exit21

if.end.i19:                                       ; preds = %l64781_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i4, align 1
  %conv12.i18 = zext i8 %43 to i32
  br label %l64781_readreg.exit21

l64781_readreg.exit21:                            ; preds = %if.end.i19, %l64781_readreg.exit.l64781_readreg.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %conv12.i18, %if.end.i19 ], [ %call.i16, %l64781_readreg.exit.l64781_readreg.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i3) #6
  %shl = shl i32 %retval.0.i20, 8
  %or = or i32 %shl, %retval.0.i
  %44 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !36, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 37, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 513, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @l64781_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @l64781_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 519, i32 3}
!13 = !{ptr @l64781_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @l64781_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 528, i32 3}
!17 = !{ptr @l64781_attach._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @l64781_attach._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 537, i32 3}
!21 = !{ptr @l64781_attach._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @l64781_attach._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 546, i32 3}
!25 = !{ptr @l64781_attach._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @l64781_attach._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_description292, !28, !"__UNIQUE_ID_description292", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 592, i32 1}
!29 = !{ptr @__UNIQUE_ID_author293, !30, !"__UNIQUE_ID_author293", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 593, i32 1}
!31 = !{ptr @__UNIQUE_ID_file294, !32, !"__UNIQUE_ID_file294", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 594, i32 1}
!33 = !{ptr @__UNIQUE_ID_license295, !32, !"__UNIQUE_ID_license295", i1 false, i1 false}
!34 = !{ptr @__ksymtab_l64781_attach, !35, !"__ksymtab_l64781_attach", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 596, i32 1}
!36 = !{ptr @debug, !37, !"debug", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 34, i32 12}
!38 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 47, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @l64781_writereg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @l64781_writereg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @l64781_ops, !45, !"l64781_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 562, i32 38}
!46 = !{ptr @apply_frontend_param.fec_tab, !47, !"fec_tab", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 113, i32 18}
!48 = !{ptr @apply_frontend_param.qam_tab, !49, !"qam_tab", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 115, i32 18}
!50 = !{ptr @apply_frontend_param.guard_tab, !51, !"guard_tab", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 116, i32 18}
!52 = distinct !{null, !53, !"ppm", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 118, i32 19}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 264, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @get_frontend._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @get_frontend._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 285, i32 3}
!61 = !{ptr @get_frontend._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @get_frontend._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 304, i32 3}
!65 = !{ptr @get_frontend._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @get_frontend._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 319, i32 3}
!69 = !{ptr @get_frontend._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @get_frontend._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/l64781.c", i32 335, i32 3}
!73 = !{ptr @get_frontend._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @get_frontend._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
