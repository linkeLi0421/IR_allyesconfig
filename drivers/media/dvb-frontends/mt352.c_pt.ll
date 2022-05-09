; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mt352.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mt352.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt352_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt352_attach\09\09\09\09"
module asm "\09.long\09__crc_mt352_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt352_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt352_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt352_attach:\09\09\09\09\09"
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
%struct.mt352_state = type { ptr, %struct.dvb_frontend, %struct.mt352_config }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@mt352_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink MT352 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @mt352_release, ptr null, ptr @mt352_init, ptr @mt352_sleep, ptr null, ptr null, ptr @_mt352_write, ptr null, ptr null, ptr @mt352_set_parameters, ptr @mt352_get_tune_settings, ptr @mt352_get_parameters, ptr @mt352_read_status, ptr @mt352_read_ber, ptr @mt352_read_signal_strength, ptr @mt352_read_snr, ptr @mt352_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [12 x i8] c"mt352.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [25 x i8] c"mt352.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [63 x i8] c"mt352.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"mt352.description=Zarlink MT352 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [60 x i8] c"mt352.author=Holger Waechtler, Daniel Mack, Antonio Mancuso\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"mt352.file=drivers/media/dvb-frontends/mt352\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [18 x i8] c"mt352.license=GPL\00", section ".modinfo", align 1
@__kstrtab_mt352_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt352_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt352_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt352_attach to i32), ptr @__kstrtab_mt352_attach, ptr @__kstrtabns_mt352_attach }, section "___ksymtab+mt352_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt352_read_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt352_read_register\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/dvb-frontends/mt352.c\00", [60 x i8] zeroinitializer }, align 32
@mt352_read_register._entry_ptr = internal global ptr @mt352_read_register._entry, section ".printk_index", align 4
@mt352_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017mt352: %s: hello\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt352_init\00", [21 x i8] zeroinitializer }, align 32
@mt352_init._entry_ptr = internal global ptr @mt352_init._entry, section ".printk_index", align 4
@mt352_single_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mt352_write() to reg %x failed (err = %d)!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt352_single_write\00", [45 x i8] zeroinitializer }, align 32
@mt352_single_write._entry_ptr = internal global ptr @mt352_single_write._entry, section ".printk_index", align 4
@mt352_calc_nominal_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017mt352: %s: bw %d, adc_clock %d => 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt352_calc_nominal_rate\00", [40 x i8] zeroinitializer }, align 32
@mt352_calc_nominal_rate._entry_ptr = internal global ptr @mt352_calc_nominal_rate._entry, section ".printk_index", align 4
@mt352_calc_input_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017mt352: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt352_calc_input_freq\00", [42 x i8] zeroinitializer }, align 32
@mt352_calc_input_freq._entry_ptr = internal global ptr @mt352_calc_input_freq._entry, section ".printk_index", align 4
@mt352_get_parameters.tps_fec_to_api = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\03\05\07\09\09\09", [24 x i8] zeroinitializer }, align 32
@switch.table.mt352_set_parameters = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 128, i32 256, i32 128, i32 384, i32 128, i32 512, i32 128, i32 0], [60 x i8] zeroinitializer }, align 32
@switch.table.mt352_get_parameters = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"mt352_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 556, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 38, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 83, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 509, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 52, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 123, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 149, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"tps_fec_to_api\00", align 1
@___asan_gen_.71 = private constant [39 x i8] c"../drivers/media/dvb-frontends/mt352.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 308, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [34 x i8] c"switch.table.mt352_set_parameters\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [34 x i8] c"switch.table.mt352_get_parameters\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_mt352_attach, ptr @__param_debug, ptr @mt352_calc_input_freq._entry, ptr @mt352_calc_input_freq._entry_ptr, ptr @mt352_calc_nominal_rate._entry, ptr @mt352_calc_nominal_rate._entry_ptr, ptr @mt352_init._entry, ptr @mt352_init._entry_ptr, ptr @mt352_read_register._entry, ptr @mt352_read_register._entry_ptr, ptr @mt352_single_write._entry, ptr @mt352_single_write._entry_ptr, ptr @mt352_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mt352_get_parameters.tps_fec_to_api, ptr @switch.table.mt352_set_parameters, ptr @switch.table.mt352_get_parameters], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_read_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_single_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_calc_nominal_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_calc_input_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_get_parameters.tps_fec_to_api to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt352_set_parameters to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt352_get_parameters to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt352_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %call7.i.i, align 8
  %config2 = getelementptr inbounds %struct.mt352_state, ptr %call7.i.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %config2, ptr %config, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config2, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %18 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %retval.0.i)
  %cmp4.not = icmp eq i32 %retval.0.i, 19
  br i1 %cmp4.not, label %if.end6, label %mt352_read_register.exit.error_crit_edge

mt352_read_register.exit.error_crit_edge:         ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %frontend = getelementptr inbounds %struct.mt352_state, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.mt352_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = call ptr @memcpy(ptr %ops, ptr @mt352_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mt352_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  br label %cleanup

error:                                            ; preds = %mt352_read_register.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end6
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end6 ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt352_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @mt352_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i16 = alloca [1 x i8], align 1
  %b1.i17 = alloca [1 x i8], align 1
  %msg.i18 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -119, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i, align 4
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
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %20 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %mt352_read_register.exit.if.then8_crit_edge, label %lor.lhs.false

mt352_read_register.exit.if.then8_crit_edge:      ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false:                                    ; preds = %mt352_read_register.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i16) #7
  %21 = ptrtoint ptr %b0.i16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -118, ptr %b0.i16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i17) #7
  %22 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %b1.i17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i18) #7
  %23 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %24 = call ptr @memset(ptr %23, i32 255, i32 16)
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %config.i, align 4
  %conv.i20 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i20, ptr %msg.i18, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i21, align 2
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %23, align 4
  %buf.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %b0.i16, ptr %buf.i23, align 4
  %arrayinit.element.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1
  %31 = ptrtoint ptr %arrayinit.element.i24 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i20, ptr %arrayinit.element.i24, align 4
  %flags6.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 1
  %32 = ptrtoint ptr %flags6.i25 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags6.i25, align 2
  %len7.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 2
  %33 = ptrtoint ptr %len7.i26 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %len7.i26, align 4
  %buf8.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 3
  %34 = ptrtoint ptr %buf8.i27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b1.i17, ptr %buf8.i27, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i28 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i18, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 2
  br i1 %cmp.not.i29, label %if.end.i33, label %do.end.i31

do.end.i31:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef %call.i28) #11
  br label %mt352_read_register.exit35

if.end.i33:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %b1.i17, align 1
  %conv14.i32 = zext i8 %38 to i32
  br label %mt352_read_register.exit35

mt352_read_register.exit35:                       ; preds = %if.end.i33, %do.end.i31
  %retval.0.i34 = phi i32 [ %call.i28, %do.end.i31 ], [ %conv14.i32, %if.end.i33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i17) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i16) #7
  %and6 = and i32 %retval.0.i34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %mt352_read_register.exit35.if.then8_crit_edge, label %mt352_read_register.exit35.cleanup_crit_edge

mt352_read_register.exit35.cleanup_crit_edge:     ; preds = %mt352_read_register.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt352_read_register.exit35.if.then8_crit_edge:    ; preds = %mt352_read_register.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %mt352_read_register.exit35.if.then8_crit_edge, %mt352_read_register.exit.if.then8_crit_edge
  %39 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %40 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %43 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 80, ptr %buf.i.i, align 1
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %40, align 4
  %config.i.i = getelementptr inbounds %struct.mt352_state, ptr %42, i32 0, i32 2
  %46 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %config.i.i, align 4
  %conv.i.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i, align 2
  %50 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %42, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mt352_single_write.exit.i.thread, label %mt352_single_write.exit.i

mt352_single_write.exit.i.thread:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %_mt352_write.exit

mt352_single_write.exit.i:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 80, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %_mt352_write.exit

_mt352_write.exit:                                ; preds = %mt352_single_write.exit.i, %mt352_single_write.exit.i.thread
  %demod_init = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %demod_init to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %demod_init, align 4
  %call10 = call i32 %54(ptr noundef %fe) #7
  br label %cleanup

cleanup:                                          ; preds = %_mt352_write.exit, %mt352_read_register.exit35.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %_mt352_write.exit ], [ 0, %mt352_read_register.exit35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demodulator_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -119, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %1, align 4
  %config.i.i = getelementptr inbounds %struct.mt352_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i.i, align 4
  %conv.i.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i.i, align 2
  %11 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mt352_single_write.exit.i.thread, label %mt352_single_write.exit.i

mt352_single_write.exit.i.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %for.cond.i.1

mt352_single_write.exit.i:                        ; preds = %entry
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 137, i32 noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %phi.cmp, label %mt352_single_write.exit.i.for.cond.i.1_crit_edge, label %mt352_single_write.exit.i._mt352_write.exit_crit_edge

mt352_single_write.exit.i._mt352_write.exit_crit_edge: ; preds = %mt352_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mt352_write.exit

mt352_single_write.exit.i.for.cond.i.1_crit_edge: ; preds = %mt352_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.1

for.cond.i.1:                                     ; preds = %mt352_single_write.exit.i.for.cond.i.1_crit_edge, %mt352_single_write.exit.i.thread
  %14 = ptrtoint ptr %demodulator_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %demodulator_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -118, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %1, align 4
  %config.i.i.1 = getelementptr inbounds %struct.mt352_state, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %config.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config.i.i.1, align 4
  %conv.i.i.1 = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i.1, ptr %msg.i.i, align 4
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %23 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 4
  %call.i.i.1 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %call.i.i.1, 1
  br i1 %cmp.not.i.i.1, label %mt352_single_write.exit.i.1.thread, label %mt352_single_write.exit.i.1

mt352_single_write.exit.i.1.thread:               ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %_mt352_write.exit

mt352_single_write.exit.i.1:                      ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 138, i32 noundef %call.i.i.1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %_mt352_write.exit

_mt352_write.exit:                                ; preds = %mt352_single_write.exit.i.1, %mt352_single_write.exit.i.1.thread, %mt352_single_write.exit.i._mt352_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_mt352_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %ibuf, i32 noundef %ilen) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %ilen, -1
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %mt352_single_write.exit.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add2, %mt352_single_write.exit.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ibuf, align 1
  %4 = trunc i32 %i.0 to i8
  %conv1 = add i8 %3, %4
  %add2 = add nuw i32 %i.0, 1
  %arrayidx3 = getelementptr i8, ptr %ibuf, i32 %add2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demodulator_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1, ptr %buf.i, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %6, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %1, align 4
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.mt352_single_write.exit_crit_edge, label %do.end.i

for.body.mt352_single_write.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_single_write.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %conv1 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv3.i, i32 noundef %call.i) #11
  br label %mt352_single_write.exit

mt352_single_write.exit:                          ; preds = %do.end.i, %for.body.mt352_single_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %for.body.mt352_single_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mt352_single_write.exit.for.cond_crit_edge, label %mt352_single_write.exit.cleanup_crit_edge

mt352_single_write.exit.cleanup_crit_edge:        ; preds = %mt352_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt352_single_write.exit.for.cond_crit_edge:       ; preds = %mt352_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup:                                          ; preds = %mt352_single_write.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mt352_single_write.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i196 = alloca [2 x i8], align 1
  %msg.i.i197 = alloca %struct.i2c_msg, align 4
  %buf.i.i172 = alloca [2 x i8], align 1
  %msg.i.i173 = alloca %struct.i2c_msg, align 4
  %buf.i.i148 = alloca [2 x i8], align 1
  %msg.i.i149 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [13 x i8], ptr %buf, i32 0, i32 8
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %10 = getelementptr inbounds i8, ptr %buf, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 5)
  %12 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code_rate_HP, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 9
  br i1 %14, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 343, %switch.maskindex
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.mt352_set_parameters, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %17 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code_rate_LP, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %switch.lookup.cleanup_crit_edge [
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 5, label %sw.bb12
    i32 7, label %sw.bb14
    i32 1, label %switch.lookup.sw.epilog21_crit_edge
    i32 9, label %switch.lookup.sw.epilog21_crit_edge225
    i32 0, label %sw.bb17
  ]

switch.lookup.sw.epilog21_crit_edge225:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

switch.lookup.sw.epilog21_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %switch.load, 16
  br label %sw.epilog21

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %switch.load, 32
  br label %sw.epilog21

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %switch.load, 48
  br label %sw.epilog21

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %switch.load, 64
  br label %sw.epilog21

sw.bb17:                                          ; preds = %switch.lookup
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %20 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hierarchy, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %21, label %sw.bb17.cleanup_crit_edge [
    i32 4, label %sw.bb17.sw.epilog21_crit_edge
    i32 0, label %sw.bb17.sw.epilog21_crit_edge226
  ]

sw.bb17.sw.epilog21_crit_edge226:                 ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb17.sw.epilog21_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.bb17.sw.epilog21_crit_edge, %sw.bb17.sw.epilog21_crit_edge226, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %switch.lookup.sw.epilog21_crit_edge, %switch.lookup.sw.epilog21_crit_edge225
  %tps.1 = phi i32 [ %switch.load, %sw.bb17.sw.epilog21_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog21_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog21_crit_edge225 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %switch.load, %sw.bb17.sw.epilog21_crit_edge226 ]
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modulation, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %24, label %sw.epilog21.cleanup_crit_edge [
    i32 0, label %sw.epilog21.sw.epilog27_crit_edge
    i32 6, label %sw.epilog21.sw.bb22_crit_edge
    i32 1, label %sw.epilog21.sw.bb22_crit_edge227
    i32 3, label %sw.bb24
  ]

sw.epilog21.sw.bb22_crit_edge227:                 ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.epilog21.sw.bb22_crit_edge:                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.epilog21.sw.epilog27_crit_edge:                ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.epilog21.cleanup_crit_edge:                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog21.sw.bb22_crit_edge, %sw.epilog21.sw.bb22_crit_edge227
  %or23 = or i32 %tps.1, 8192
  br label %sw.epilog27

sw.bb24:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %or25 = or i32 %tps.1, 16384
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb24, %sw.bb22, %sw.epilog21.sw.epilog27_crit_edge
  %tps.2 = phi i32 [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ %tps.1, %sw.epilog21.sw.epilog27_crit_edge ]
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transmission_mode, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %27, label %sw.epilog27.cleanup_crit_edge [
    i32 0, label %sw.epilog27.sw.epilog32_crit_edge
    i32 2, label %sw.epilog27.sw.epilog32_crit_edge228
    i32 1, label %sw.bb29
  ]

sw.epilog27.sw.epilog32_crit_edge228:             ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

sw.epilog27.sw.epilog32_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

sw.epilog27.cleanup_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb29:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %or30 = or i32 %tps.2, 1
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb29, %sw.epilog27.sw.epilog32_crit_edge, %sw.epilog27.sw.epilog32_crit_edge228
  %tps.3 = phi i32 [ %or30, %sw.bb29 ], [ %tps.2, %sw.epilog27.sw.epilog32_crit_edge ], [ %tps.2, %sw.epilog27.sw.epilog32_crit_edge228 ]
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %29 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %guard_interval, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %30, label %sw.epilog32.cleanup_crit_edge [
    i32 0, label %sw.epilog32.sw.epilog41_crit_edge
    i32 4, label %sw.epilog32.sw.epilog41_crit_edge229
    i32 1, label %sw.bb34
    i32 2, label %sw.bb36
    i32 3, label %sw.bb38
  ]

sw.epilog32.sw.epilog41_crit_edge229:             ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41

sw.epilog32.sw.epilog41_crit_edge:                ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41

sw.epilog32.cleanup_crit_edge:                    ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb34:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %or35 = or i32 %tps.3, 4
  br label %sw.epilog41

sw.bb36:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %or37 = or i32 %tps.3, 8
  br label %sw.epilog41

sw.bb38:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %or39 = or i32 %tps.3, 12
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.bb38, %sw.bb36, %sw.bb34, %sw.epilog32.sw.epilog41_crit_edge, %sw.epilog32.sw.epilog41_crit_edge229
  %tps.4 = phi i32 [ %or39, %sw.bb38 ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %tps.3, %sw.epilog32.sw.epilog41_crit_edge ], [ %tps.3, %sw.epilog32.sw.epilog41_crit_edge229 ]
  %hierarchy42 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %32 = ptrtoint ptr %hierarchy42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hierarchy42, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %33, label %sw.epilog41.cleanup_crit_edge [
    i32 4, label %sw.epilog41.sw.epilog51_crit_edge
    i32 0, label %sw.epilog41.sw.epilog51_crit_edge230
    i32 1, label %sw.bb44
    i32 2, label %sw.bb46
    i32 3, label %sw.bb48
  ]

sw.epilog41.sw.epilog51_crit_edge230:             ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog51

sw.epilog41.sw.epilog51_crit_edge:                ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog51

sw.epilog41.cleanup_crit_edge:                    ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb44:                                          ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  %or45 = or i32 %tps.4, 1024
  br label %sw.epilog51

sw.bb46:                                          ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  %or47 = or i32 %tps.4, 2048
  br label %sw.epilog51

sw.bb48:                                          ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  %or49 = or i32 %tps.4, 3072
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.bb48, %sw.bb46, %sw.bb44, %sw.epilog41.sw.epilog51_crit_edge, %sw.epilog41.sw.epilog51_crit_edge230
  %tps.5 = phi i32 [ %or49, %sw.bb48 ], [ %or47, %sw.bb46 ], [ %or45, %sw.bb44 ], [ %tps.4, %sw.epilog41.sw.epilog51_crit_edge ], [ %tps.4, %sw.epilog41.sw.epilog51_crit_edge230 ]
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 81, ptr %buf, align 1
  %shr = lshr i32 %tps.5, 8
  %conv = trunc i32 %shr to i8
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %2, align 1
  %conv54 = trunc i32 %tps.5 to i8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv54, ptr %3, align 1
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 80, ptr %4, align 1
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %39 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %40)
  %switch.selectcmp.i = icmp eq i32 %40, 7000000
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %40)
  %switch.selectcmp25.i = icmp eq i32 %40, 6000000
  %switch.select26.i = select i1 %switch.selectcmp25.i, i32 6, i32 %switch.select.i
  %adc_clock3.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %adc_clock3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %adc_clock3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  %adc_clock.0.i = select i1 %tobool.not.i, i32 20480, i32 %42
  %mul6.i = shl nuw nsw i32 %switch.select26.i, 22
  %div.i = udiv i32 %mul6.i, 56
  %mul7.i = mul nuw nsw i32 %div.i, 1000
  %div8.i = udiv i32 %mul7.i, %adc_clock.0.i
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool9.not.i = icmp eq i32 %43, 0
  br i1 %tobool9.not.i, label %sw.epilog51.mt352_calc_nominal_rate.exit_crit_edge, label %do.end.i

sw.epilog51.mt352_calc_nominal_rate.exit_crit_edge: ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_calc_nominal_rate.exit

do.end.i:                                         ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %switch.select26.i, i32 noundef %adc_clock.0.i, i32 noundef %div8.i) #11
  br label %mt352_calc_nominal_rate.exit

mt352_calc_nominal_rate.exit:                     ; preds = %do.end.i, %sw.epilog51.mt352_calc_nominal_rate.exit_crit_edge
  %shr.i = lshr i32 %div8.i, 8
  %conv.i = trunc i32 %shr.i to i8
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %5, align 1
  %conv16.i = trunc i32 %div8.i to i8
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv16.i, ptr %6, align 1
  %46 = ptrtoint ptr %adc_clock3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adc_clock3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i142 = icmp eq i32 %47, 0
  %spec.select.i = select i1 %tobool.not.i142, i32 20480, i32 %47
  %if25.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %if25.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %if25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool6.not.i = icmp eq i32 %49, 0
  %if2.0.i = select i1 %tobool6.not.i, i32 36167, i32 %49
  %mul.i = shl i32 %if2.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %mul.i)
  %cmp.not.i = icmp slt i32 %spec.select.i, %mul.i
  br i1 %cmp.not.i, label %if.else.i, label %mt352_calc_nominal_rate.exit.if.end16.i_crit_edge

mt352_calc_nominal_rate.exit.if.end16.i_crit_edge: ; preds = %mt352_calc_nominal_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %mt352_calc_nominal_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i = srem i32 %if2.0.i, %spec.select.i
  %sub.i = sub i32 %spec.select.i, %rem.i
  %div.i143 = sdiv i32 %spec.select.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div.i143)
  %cmp12.i = icmp sgt i32 %sub.i, %div.i143
  %spec.select49.i = select i1 %cmp12.i, i32 %rem.i, i32 %sub.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %mt352_calc_nominal_rate.exit.if.end16.i_crit_edge
  %ife.0.i = phi i32 [ %if2.0.i, %mt352_calc_nominal_rate.exit.if.end16.i_crit_edge ], [ %spec.select49.i, %if.else.i ]
  %mul17.i = mul i32 %ife.0.i, -16374
  %div18.i = sdiv i32 %mul17.i, %spec.select.i
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool19.not.i = icmp eq i32 %50, 0
  br i1 %tobool19.not.i, label %if.end16.i.mt352_calc_input_freq.exit_crit_edge, label %do.end.i145

if.end16.i.mt352_calc_input_freq.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_calc_input_freq.exit

do.end.i145:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %div18.i, 16383
  %call.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %if2.0.i, i32 noundef %ife.0.i, i32 noundef %spec.select.i, i32 noundef %div18.i, i32 noundef %and.i) #11
  br label %mt352_calc_input_freq.exit

mt352_calc_input_freq.exit:                       ; preds = %do.end.i145, %if.end16.i.mt352_calc_input_freq.exit_crit_edge
  %51 = lshr i32 %div18.i, 8
  %conv.i146 = trunc i32 %51 to i8
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i146, ptr %7, align 1
  %conv27.i = trunc i32 %div18.i to i8
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv27.i, ptr %8, align 1
  %no_tuner = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %no_tuner to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %no_tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %mt352_calc_input_freq.exit
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %56 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_params, align 4
  %tobool60.not = icmp eq ptr %57, null
  br i1 %tobool60.not, label %if.then59.if.end72_crit_edge, label %if.then61

if.then59.if.end72_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then61:                                        ; preds = %if.then59
  %call = tail call i32 %57(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %58 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool66.not = icmp eq ptr %59, null
  br i1 %tobool66.not, label %if.then61.if.end72_crit_edge, label %if.then67

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 %59(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.then61.if.end72_crit_edge, %if.then59.if.end72_crit_edge
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %61 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %mt352_single_write.exit.i.for.cond.i_crit_edge, %if.end72
  %i.0.i = phi i32 [ 0, %if.end72 ], [ %add2.i, %mt352_single_write.exit.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, 7
  br i1 %exitcond.not.i, label %for.cond.i._mt352_write.exit_crit_edge, label %for.body.i

for.cond.i._mt352_write.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mt352_write.exit

for.body.i:                                       ; preds = %for.cond.i
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buf, align 1
  %64 = trunc i32 %i.0.i to i8
  %conv1.i = add i8 %63, %64
  %add2.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 %add2.i
  %65 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx3.i, align 1
  %67 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %69 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1.i, ptr %buf.i.i, align 1
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %66, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %61, align 4
  %config.i.i = getelementptr inbounds %struct.mt352_state, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %config.i.i, align 4
  %conv.i.i = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %75 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i.i, align 2
  %76 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %68, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %for.body.i.mt352_single_write.exit.i_crit_edge, label %do.end.i.i

for.body.i.mt352_single_write.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_single_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i8 %conv1.i to i32
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv3.i.i, i32 noundef %call.i.i) #11
  br label %mt352_single_write.exit.i

mt352_single_write.exit.i:                        ; preds = %do.end.i.i, %for.body.i.mt352_single_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %for.body.i.mt352_single_write.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %tobool.not.i147 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i147, label %mt352_single_write.exit.i.for.cond.i_crit_edge, label %mt352_single_write.exit.i._mt352_write.exit_crit_edge

mt352_single_write.exit.i._mt352_write.exit_crit_edge: ; preds = %mt352_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mt352_write.exit

mt352_single_write.exit.i.for.cond.i_crit_edge:   ; preds = %mt352_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_mt352_write.exit:                                ; preds = %mt352_single_write.exit.i._mt352_write.exit_crit_edge, %for.cond.i._mt352_write.exit_crit_edge
  %79 = getelementptr inbounds [2 x i8], ptr %buf.i.i148, i32 0, i32 1
  %80 = getelementptr inbounds i8, ptr %msg.i.i149, i32 4
  %flags.i.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 0, i32 1
  %buf1.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 0, i32 3
  %81 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i148) #7
  %83 = ptrtoint ptr %buf.i.i148 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 94, ptr %buf.i.i148, align 1
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i149) #7
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %80, align 4
  %config.i.i159 = getelementptr inbounds %struct.mt352_state, ptr %82, i32 0, i32 2
  %86 = ptrtoint ptr %config.i.i159 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %config.i.i159, align 4
  %conv.i.i160 = zext i8 %87 to i16
  %88 = ptrtoint ptr %msg.i.i149 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i.i160, ptr %msg.i.i149, align 4
  %89 = ptrtoint ptr %flags.i.i151 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i.i151, align 2
  %90 = ptrtoint ptr %buf1.i.i152 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf.i.i148, ptr %buf1.i.i152, align 4
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %82, align 4
  %call.i.i161 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i.i149, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i161)
  %cmp.not.i.i162 = icmp eq i32 %call.i.i161, 1
  br i1 %cmp.not.i.i162, label %mt352_single_write.exit.i169.thread, label %mt352_single_write.exit.i169

mt352_single_write.exit.i169.thread:              ; preds = %_mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i149) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i148) #7
  br label %cleanup

mt352_single_write.exit.i169:                     ; preds = %_mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 94, i32 noundef %call.i.i161) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i149) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i148) #7
  br label %cleanup

if.else:                                          ; preds = %mt352_calc_input_freq.exit
  %calc_regs = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 15
  %93 = ptrtoint ptr %calc_regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %calc_regs, align 4
  %tobool78.not = icmp eq ptr %94, null
  br i1 %tobool78.not, label %if.else.cleanup_crit_edge, label %if.then79

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then79:                                        ; preds = %if.else
  %call85 = call i32 %94(ptr noundef %fe, ptr noundef %9, i32 noundef 5) #7
  %95 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %9, align 1
  %shl = shl i8 %96, 1
  store i8 %shl, ptr %9, align 1
  %97 = getelementptr inbounds [2 x i8], ptr %buf.i.i172, i32 0, i32 1
  %98 = getelementptr inbounds i8, ptr %msg.i.i173, i32 4
  %flags.i.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i173, i32 0, i32 1
  %buf1.i.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i173, i32 0, i32 3
  br label %for.cond.i179

for.cond.i179:                                    ; preds = %mt352_single_write.exit.i193.for.cond.i179_crit_edge, %if.then79
  %i.0.i177 = phi i32 [ 0, %if.then79 ], [ %add2.i181, %mt352_single_write.exit.i193.for.cond.i179_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.0.i177)
  %exitcond.not.i178 = icmp eq i32 %i.0.i177, 12
  br i1 %exitcond.not.i178, label %for.cond.i179._mt352_write.exit195_crit_edge, label %for.body.i187

for.cond.i179._mt352_write.exit195_crit_edge:     ; preds = %for.cond.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mt352_write.exit195

for.body.i187:                                    ; preds = %for.cond.i179
  %99 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %buf, align 1
  %101 = trunc i32 %i.0.i177 to i8
  %conv1.i180 = add i8 %100, %101
  %add2.i181 = add nuw nsw i32 %i.0.i177, 1
  %arrayidx3.i182 = getelementptr i8, ptr %buf, i32 %add2.i181
  %102 = ptrtoint ptr %arrayidx3.i182 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx3.i182, align 1
  %104 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i172) #7
  %106 = ptrtoint ptr %buf.i.i172 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv1.i180, ptr %buf.i.i172, align 1
  %107 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %103, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i173) #7
  %108 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 196607, ptr %98, align 4
  %config.i.i183 = getelementptr inbounds %struct.mt352_state, ptr %105, i32 0, i32 2
  %109 = ptrtoint ptr %config.i.i183 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %config.i.i183, align 4
  %conv.i.i184 = zext i8 %110 to i16
  %111 = ptrtoint ptr %msg.i.i173 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv.i.i184, ptr %msg.i.i173, align 4
  %112 = ptrtoint ptr %flags.i.i175 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %flags.i.i175, align 2
  %113 = ptrtoint ptr %buf1.i.i176 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %buf.i.i172, ptr %buf1.i.i176, align 4
  %114 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %105, align 4
  %call.i.i185 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %msg.i.i173, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i185)
  %cmp.not.i.i186 = icmp eq i32 %call.i.i185, 1
  br i1 %cmp.not.i.i186, label %for.body.i187.mt352_single_write.exit.i193_crit_edge, label %do.end.i.i190

for.body.i187.mt352_single_write.exit.i193_crit_edge: ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_single_write.exit.i193

do.end.i.i190:                                    ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i188 = zext i8 %conv1.i180 to i32
  %call4.i.i189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv3.i.i188, i32 noundef %call.i.i185) #11
  br label %mt352_single_write.exit.i193

mt352_single_write.exit.i193:                     ; preds = %do.end.i.i190, %for.body.i187.mt352_single_write.exit.i193_crit_edge
  %retval.0.i.i191 = phi i32 [ %call.i.i185, %do.end.i.i190 ], [ 0, %for.body.i187.mt352_single_write.exit.i193_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i173) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i172) #7
  %tobool.not.i192 = icmp eq i32 %retval.0.i.i191, 0
  br i1 %tobool.not.i192, label %mt352_single_write.exit.i193.for.cond.i179_crit_edge, label %mt352_single_write.exit.i193._mt352_write.exit195_crit_edge

mt352_single_write.exit.i193._mt352_write.exit195_crit_edge: ; preds = %mt352_single_write.exit.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mt352_write.exit195

mt352_single_write.exit.i193.for.cond.i179_crit_edge: ; preds = %mt352_single_write.exit.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i179

_mt352_write.exit195:                             ; preds = %mt352_single_write.exit.i193._mt352_write.exit195_crit_edge, %for.cond.i179._mt352_write.exit195_crit_edge
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i.i196, i32 0, i32 1
  %117 = getelementptr inbounds i8, ptr %msg.i.i197, i32 4
  %flags.i.i199 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i197, i32 0, i32 1
  %buf1.i.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i197, i32 0, i32 3
  %118 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i196) #7
  %120 = ptrtoint ptr %buf.i.i196 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 93, ptr %buf.i.i196, align 1
  %121 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i197) #7
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 196607, ptr %117, align 4
  %config.i.i207 = getelementptr inbounds %struct.mt352_state, ptr %119, i32 0, i32 2
  %123 = ptrtoint ptr %config.i.i207 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %config.i.i207, align 4
  %conv.i.i208 = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i.i197 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i.i208, ptr %msg.i.i197, align 4
  %126 = ptrtoint ptr %flags.i.i199 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i.i199, align 2
  %127 = ptrtoint ptr %buf1.i.i200 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i.i196, ptr %buf1.i.i200, align 4
  %128 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %119, align 4
  %call.i.i209 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i.i197, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i209)
  %cmp.not.i.i210 = icmp eq i32 %call.i.i209, 1
  br i1 %cmp.not.i.i210, label %mt352_single_write.exit.i217.thread, label %mt352_single_write.exit.i217

mt352_single_write.exit.i217.thread:              ; preds = %_mt352_write.exit195
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i197) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i196) #7
  br label %cleanup

mt352_single_write.exit.i217:                     ; preds = %_mt352_write.exit195
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 93, i32 noundef %call.i.i209) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i197) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i196) #7
  br label %cleanup

cleanup:                                          ; preds = %mt352_single_write.exit.i217, %mt352_single_write.exit.i217.thread, %if.else.cleanup_crit_edge, %mt352_single_write.exit.i169, %mt352_single_write.exit.i169.thread, %sw.epilog41.cleanup_crit_edge, %sw.epilog32.cleanup_crit_edge, %sw.epilog27.cleanup_crit_edge, %sw.epilog21.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog21.cleanup_crit_edge ], [ -22, %sw.epilog27.cleanup_crit_edge ], [ -22, %sw.epilog32.cleanup_crit_edge ], [ -22, %sw.epilog41.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %mt352_single_write.exit.i217.thread ], [ 0, %mt352_single_write.exit.i217 ], [ 0, %mt352_single_write.exit.i169.thread ], [ 0, %mt352_single_write.exit.i169 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt352_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %fe_tune_settings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fe_tune_settings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fe_tune_settings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_get_parameters(ptr nocapture noundef readonly %fe, ptr noundef writeonly %op) #0 align 64 {
entry:
  %b0.i213 = alloca [1 x i8], align 1
  %b1.i214 = alloca [1 x i8], align 1
  %msg.i215 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i193 = alloca [1 x i8], align 1
  %b1.i194 = alloca [1 x i8], align 1
  %msg.i195 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i173 = alloca [1 x i8], align 1
  %b1.i174 = alloca [1 x i8], align 1
  %msg.i175 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i153 = alloca [1 x i8], align 1
  %b1.i154 = alloca [1 x i8], align 1
  %msg.i155 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i133 = alloca [1 x i8], align 1
  %b1.i134 = alloca [1 x i8], align 1
  %msg.i135 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i113 = alloca [1 x i8], align 1
  %b1.i114 = alloca [1 x i8], align 1
  %msg.i115 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %and = and i32 %retval.0.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp.not = icmp eq i32 %and, 192
  br i1 %cmp.not, label %if.end, label %mt352_read_register.exit.cleanup_crit_edge

mt352_read_register.exit.cleanup_crit_edge:       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mt352_read_register.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i113) #7
  %20 = ptrtoint ptr %b0.i113 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 30, ptr %b0.i113, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i114) #7
  %21 = ptrtoint ptr %b1.i114 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i114, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i115) #7
  %22 = getelementptr inbounds i8, ptr %msg.i115, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i117 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i115 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i117, ptr %msg.i115, align 4
  %flags.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i118 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i118, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i120 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i113, ptr %buf.i120, align 4
  %arrayinit.element.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i121 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i117, ptr %arrayinit.element.i121, align 4
  %flags6.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i122 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i122, align 2
  %len7.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i123 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i123, align 4
  %buf8.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i114, ptr %buf8.i124, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i125 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i115, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i125)
  %cmp.not.i126 = icmp eq i32 %call.i125, 2
  br i1 %cmp.not.i126, label %if.end.i130, label %do.end.i128

do.end.i128:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 30, i32 noundef %call.i125) #11
  br label %mt352_read_register.exit132

if.end.i130:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i114 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i114, align 1
  %conv14.i129 = zext i8 %37 to i32
  br label %mt352_read_register.exit132

mt352_read_register.exit132:                      ; preds = %if.end.i130, %do.end.i128
  %retval.0.i131 = phi i32 [ %call.i125, %do.end.i128 ], [ %conv14.i129, %if.end.i130 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i115) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i114) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i113) #7
  %shl = shl i32 %retval.0.i131, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i133) #7
  %38 = ptrtoint ptr %b0.i133 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 31, ptr %b0.i133, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i134) #7
  %39 = ptrtoint ptr %b1.i134 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i134, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i135) #7
  %40 = getelementptr inbounds i8, ptr %msg.i135, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config.i, align 4
  %conv.i137 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i135 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i137, ptr %msg.i135, align 4
  %flags.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i138, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i133, ptr %buf.i140, align 4
  %arrayinit.element.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i141 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i137, ptr %arrayinit.element.i141, align 4
  %flags6.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 1, i32 1
  %49 = ptrtoint ptr %flags6.i142 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags6.i142, align 2
  %len7.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 1, i32 2
  %50 = ptrtoint ptr %len7.i143 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len7.i143, align 4
  %buf8.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 1, i32 3
  %51 = ptrtoint ptr %buf8.i144 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b1.i134, ptr %buf8.i144, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i145 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i135, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i145)
  %cmp.not.i146 = icmp eq i32 %call.i145, 2
  br i1 %cmp.not.i146, label %if.end.i150, label %do.end.i148

do.end.i148:                                      ; preds = %mt352_read_register.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, i32 noundef %call.i145) #11
  br label %mt352_read_register.exit152

if.end.i150:                                      ; preds = %mt352_read_register.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i134 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i134, align 1
  %conv14.i149 = zext i8 %55 to i32
  br label %mt352_read_register.exit152

mt352_read_register.exit152:                      ; preds = %if.end.i150, %do.end.i148
  %retval.0.i151 = phi i32 [ %call.i145, %do.end.i148 ], [ %conv14.i149, %if.end.i150 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i135) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i134) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i133) #7
  %or = or i32 %retval.0.i151, %shl
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i153) #7
  %56 = ptrtoint ptr %b0.i153 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 89, ptr %b0.i153, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i154) #7
  %57 = ptrtoint ptr %b1.i154 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %b1.i154, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i155) #7
  %58 = getelementptr inbounds i8, ptr %msg.i155, i32 4
  %59 = call ptr @memset(ptr %58, i32 255, i32 16)
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %config.i, align 4
  %conv.i157 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i157, ptr %msg.i155, align 4
  %flags.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i158, align 2
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %58, align 4
  %buf.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i160 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b0.i153, ptr %buf.i160, align 4
  %arrayinit.element.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 1
  %66 = ptrtoint ptr %arrayinit.element.i161 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i157, ptr %arrayinit.element.i161, align 4
  %flags6.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 1, i32 1
  %67 = ptrtoint ptr %flags6.i162 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags6.i162, align 2
  %len7.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 1, i32 2
  %68 = ptrtoint ptr %len7.i163 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %len7.i163, align 4
  %buf8.i164 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 1, i32 3
  %69 = ptrtoint ptr %buf8.i164 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %b1.i154, ptr %buf8.i164, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i165 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i155, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i165)
  %cmp.not.i166 = icmp eq i32 %call.i165, 2
  br i1 %cmp.not.i166, label %if.end.i170, label %do.end.i168

do.end.i168:                                      ; preds = %mt352_read_register.exit152
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef %call.i165) #11
  br label %mt352_read_register.exit172

if.end.i170:                                      ; preds = %mt352_read_register.exit152
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %b1.i154 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i154, align 1
  %conv14.i169 = zext i8 %73 to i32
  br label %mt352_read_register.exit172

mt352_read_register.exit172:                      ; preds = %if.end.i170, %do.end.i168
  %retval.0.i171 = phi i32 [ %call.i165, %do.end.i168 ], [ %conv14.i169, %if.end.i170 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i155) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i154) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i153) #7
  %shl4 = shl i32 %retval.0.i171, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i173) #7
  %74 = ptrtoint ptr %b0.i173 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 90, ptr %b0.i173, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i174) #7
  %75 = ptrtoint ptr %b1.i174 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %b1.i174, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i175) #7
  %76 = getelementptr inbounds i8, ptr %msg.i175, i32 4
  %77 = call ptr @memset(ptr %76, i32 255, i32 16)
  %78 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %config.i, align 4
  %conv.i177 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i175 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i177, ptr %msg.i175, align 4
  %flags.i178 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i178 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i178, align 2
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %76, align 4
  %buf.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i180 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %b0.i173, ptr %buf.i180, align 4
  %arrayinit.element.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 1
  %84 = ptrtoint ptr %arrayinit.element.i181 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i177, ptr %arrayinit.element.i181, align 4
  %flags6.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 1, i32 1
  %85 = ptrtoint ptr %flags6.i182 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %flags6.i182, align 2
  %len7.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 1, i32 2
  %86 = ptrtoint ptr %len7.i183 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %len7.i183, align 4
  %buf8.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175, i32 1, i32 3
  %87 = ptrtoint ptr %buf8.i184 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %b1.i174, ptr %buf8.i184, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call.i185 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i175, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i185)
  %cmp.not.i186 = icmp eq i32 %call.i185, 2
  br i1 %cmp.not.i186, label %if.end.i190, label %do.end.i188

do.end.i188:                                      ; preds = %mt352_read_register.exit172
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef %call.i185) #11
  br label %mt352_read_register.exit192

if.end.i190:                                      ; preds = %mt352_read_register.exit172
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %b1.i174 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %b1.i174, align 1
  %conv14.i189 = zext i8 %91 to i32
  br label %mt352_read_register.exit192

mt352_read_register.exit192:                      ; preds = %if.end.i190, %do.end.i188
  %retval.0.i191 = phi i32 [ %call.i185, %do.end.i188 ], [ %conv14.i189, %if.end.i190 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i175) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i174) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i173) #7
  %or6 = or i32 %retval.0.i191, %shl4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i193) #7
  %92 = ptrtoint ptr %b0.i193 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 84, ptr %b0.i193, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i194) #7
  %93 = ptrtoint ptr %b1.i194 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %b1.i194, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i195) #7
  %94 = getelementptr inbounds i8, ptr %msg.i195, i32 4
  %95 = call ptr @memset(ptr %94, i32 255, i32 16)
  %96 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %config.i, align 4
  %conv.i197 = zext i8 %97 to i16
  %98 = ptrtoint ptr %msg.i195 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i197, ptr %msg.i195, align 4
  %flags.i198 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i198 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i198, align 2
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %94, align 4
  %buf.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 3
  %101 = ptrtoint ptr %buf.i200 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %b0.i193, ptr %buf.i200, align 4
  %arrayinit.element.i201 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1
  %102 = ptrtoint ptr %arrayinit.element.i201 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i197, ptr %arrayinit.element.i201, align 4
  %flags6.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 1
  %103 = ptrtoint ptr %flags6.i202 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %flags6.i202, align 2
  %len7.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 2
  %104 = ptrtoint ptr %len7.i203 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %len7.i203, align 4
  %buf8.i204 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 3
  %105 = ptrtoint ptr %buf8.i204 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %b1.i194, ptr %buf8.i204, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call.i205 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i195, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i205)
  %cmp.not.i206 = icmp eq i32 %call.i205, 2
  br i1 %cmp.not.i206, label %if.end.i210, label %do.end.i208

do.end.i208:                                      ; preds = %mt352_read_register.exit192
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef %call.i205) #11
  br label %mt352_read_register.exit212

if.end.i210:                                      ; preds = %mt352_read_register.exit192
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %b1.i194 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %b1.i194, align 1
  %conv14.i209 = zext i8 %109 to i32
  br label %mt352_read_register.exit212

mt352_read_register.exit212:                      ; preds = %if.end.i210, %do.end.i208
  %retval.0.i211 = phi i32 [ %call.i205, %do.end.i208 ], [ %conv14.i209, %if.end.i210 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i195) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i194) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i193) #7
  %110 = lshr i32 %or, 7
  %and11 = and i32 %110, 7
  %arrayidx = getelementptr [8 x i8], ptr @mt352_get_parameters.tps_fec_to_api, i32 0, i32 %and11
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %112 to i32
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 11
  %113 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv12, ptr %code_rate_HP, align 4
  %114 = lshr i32 %retval.0.i151, 4
  %and15 = and i32 %114, 7
  %arrayidx16 = getelementptr [8 x i8], ptr @mt352_get_parameters.tps_fec_to_api, i32 0, i32 %and15
  %115 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %116 to i32
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 12
  %117 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv17, ptr %code_rate_LP, align 4
  %118 = lshr i32 %or, 13
  %and20 = and i32 %118, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and20)
  %.not = icmp eq i32 %and20, 3
  br i1 %.not, label %mt352_read_register.exit212.sw.epilog_crit_edge, label %switch.lookup

mt352_read_register.exit212.sw.epilog_crit_edge:  ; preds = %mt352_read_register.exit212
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %mt352_read_register.exit212
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt352_get_parameters, i32 0, i32 %and20
  %119 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %mt352_read_register.exit212.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 6, %mt352_read_register.exit212.sw.epilog_crit_edge ]
  %modulation25 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 1
  %120 = ptrtoint ptr %modulation25 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink, ptr %modulation25, align 4
  %and27 = and i32 %retval.0.i151, 1
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 6
  %121 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and27, ptr %transmission_mode, align 4
  %122 = lshr i32 %retval.0.i151, 2
  %and30 = and i32 %122, 3
  %guard_interval37 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 8
  %123 = ptrtoint ptr %guard_interval37 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and30, ptr %guard_interval37, align 4
  %conv10 = lshr i32 %or, 10
  %and43 = and i32 %conv10, 7
  %124 = call i32 @llvm.umin.i32(i32 %and43, i32 4)
  %hierarchy52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 9
  %125 = ptrtoint ptr %hierarchy52 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %hierarchy52, align 4
  %conv54 = and i32 %or6, 65535
  %126 = mul nuw nsw i32 %conv54, 500
  %mul = add nsw i32 %126, -108500
  %div55 = sdiv i32 %mul, 3
  %mul56 = mul i32 %div55, 1000
  %127 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %mul56, ptr %op, align 4
  %trunc = trunc i32 %retval.0.i211 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %trunc)
  %switch.selectcmp = icmp eq i8 %trunc, 100
  %switch.select = select i1 %switch.selectcmp, i32 7000000, i32 6000000
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %trunc)
  %switch.selectcmp237 = icmp eq i8 %trunc, 114
  %switch.select238 = select i1 %switch.selectcmp237, i32 8000000, i32 %switch.select
  %bandwidth_hz65 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 7
  %128 = ptrtoint ptr %bandwidth_hz65 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %switch.select238, ptr %bandwidth_hz65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i213) #7
  %129 = ptrtoint ptr %b0.i213 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %b0.i213, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i214) #7
  %130 = ptrtoint ptr %b1.i214 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %b1.i214, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i215) #7
  %131 = getelementptr inbounds i8, ptr %msg.i215, i32 4
  %132 = call ptr @memset(ptr %131, i32 255, i32 16)
  %133 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %config.i, align 4
  %conv.i217 = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i215 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i217, ptr %msg.i215, align 4
  %flags.i218 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i218 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i218, align 2
  %137 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %131, align 4
  %buf.i220 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 0, i32 3
  %138 = ptrtoint ptr %buf.i220 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %b0.i213, ptr %buf.i220, align 4
  %arrayinit.element.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 1
  %139 = ptrtoint ptr %arrayinit.element.i221 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i217, ptr %arrayinit.element.i221, align 4
  %flags6.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 1, i32 1
  %140 = ptrtoint ptr %flags6.i222 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %flags6.i222, align 2
  %len7.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 1, i32 2
  %141 = ptrtoint ptr %len7.i223 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %len7.i223, align 4
  %buf8.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215, i32 1, i32 3
  %142 = ptrtoint ptr %buf8.i224 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %b1.i214, ptr %buf8.i224, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %call.i225 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i215, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i225)
  %cmp.not.i226 = icmp eq i32 %call.i225, 2
  br i1 %cmp.not.i226, label %if.end.i230, label %do.end.i228

do.end.i228:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i225) #11
  br label %mt352_read_register.exit232

if.end.i230:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %b1.i214 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %b1.i214, align 1
  %conv14.i229 = zext i8 %146 to i32
  br label %mt352_read_register.exit232

mt352_read_register.exit232:                      ; preds = %if.end.i230, %do.end.i228
  %retval.0.i231 = phi i32 [ %call.i225, %do.end.i228 ], [ %conv14.i229, %if.end.i230 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i215) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i214) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i213) #7
  %inversion75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %op, i32 0, i32 4
  %and71 = lshr i32 %retval.0.i231, 1
  %and71.lobit = and i32 %and71, 1
  %147 = xor i32 %and71.lobit, 1
  %148 = ptrtoint ptr %inversion75 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %inversion75, align 4
  br label %cleanup

cleanup:                                          ; preds = %mt352_read_register.exit232, %mt352_read_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mt352_read_register.exit.cleanup_crit_edge ], [ 0, %mt352_read_register.exit232 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i70 = alloca [1 x i8], align 1
  %b1.i71 = alloca [1 x i8], align 1
  %msg.i72 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i50 = alloca [1 x i8], align 1
  %b1.i51 = alloca [1 x i8], align 1
  %msg.i52 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mt352_read_register.exit.thread, label %mt352_read_register.exit

mt352_read_register.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  br label %if.end

mt352_read_register.exit:                         ; preds = %entry
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mt352_read_register.exit.cleanup_crit_edge, label %mt352_read_register.exit.if.end_crit_edge

mt352_read_register.exit.if.end_crit_edge:        ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mt352_read_register.exit.cleanup_crit_edge:       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mt352_read_register.exit.if.end_crit_edge, %mt352_read_register.exit.thread
  %retval.0.i92 = phi i32 [ %conv14.i, %mt352_read_register.exit.thread ], [ %call.i, %mt352_read_register.exit.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i50) #7
  %20 = ptrtoint ptr %b0.i50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %b0.i50, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i51) #7
  %21 = ptrtoint ptr %b1.i51 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i51, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i52) #7
  %22 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i54 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i54, ptr %msg.i52, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i55, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i50, ptr %buf.i57, align 4
  %arrayinit.element.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i58 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i54, ptr %arrayinit.element.i58, align 4
  %flags6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i59 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i59, align 2
  %len7.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i60 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i60, align 4
  %buf8.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i51, ptr %buf8.i61, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i62 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i52, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 2
  br i1 %cmp.not.i63, label %mt352_read_register.exit69.thread, label %mt352_read_register.exit69

mt352_read_register.exit69.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i51, align 1
  %conv14.i66 = zext i8 %37 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i51) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i50) #7
  br label %if.end4

mt352_read_register.exit69:                       ; preds = %if.end
  %call13.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i62) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i51) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp2 = icmp slt i32 %call.i62, 0
  br i1 %cmp2, label %mt352_read_register.exit69.cleanup_crit_edge, label %mt352_read_register.exit69.if.end4_crit_edge

mt352_read_register.exit69.if.end4_crit_edge:     ; preds = %mt352_read_register.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

mt352_read_register.exit69.cleanup_crit_edge:     ; preds = %mt352_read_register.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %mt352_read_register.exit69.if.end4_crit_edge, %mt352_read_register.exit69.thread
  %retval.0.i6895 = phi i32 [ %conv14.i66, %mt352_read_register.exit69.thread ], [ %call.i62, %mt352_read_register.exit69.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i70) #7
  %38 = ptrtoint ptr %b0.i70 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %b0.i70, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i71) #7
  %39 = ptrtoint ptr %b1.i71 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i71, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i72) #7
  %40 = getelementptr inbounds i8, ptr %msg.i72, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config.i, align 4
  %conv.i74 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i72 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i74, ptr %msg.i72, align 4
  %flags.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i75, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i70, ptr %buf.i77, align 4
  %arrayinit.element.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i78 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i74, ptr %arrayinit.element.i78, align 4
  %flags6.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 1
  %49 = ptrtoint ptr %flags6.i79 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags6.i79, align 2
  %len7.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 2
  %50 = ptrtoint ptr %len7.i80 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len7.i80, align 4
  %buf8.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72, i32 1, i32 3
  %51 = ptrtoint ptr %buf8.i81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b1.i71, ptr %buf8.i81, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i82 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i72, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i82)
  %cmp.not.i83 = icmp eq i32 %call.i82, 2
  br i1 %cmp.not.i83, label %mt352_read_register.exit89.thread, label %mt352_read_register.exit89

mt352_read_register.exit89.thread:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i71 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i71, align 1
  %conv14.i86 = zext i8 %55 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i71) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i70) #7
  br label %if.end8

mt352_read_register.exit89:                       ; preds = %if.end4
  %call13.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %call.i82) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i71) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp6 = icmp slt i32 %call.i82, 0
  br i1 %cmp6, label %mt352_read_register.exit89.cleanup_crit_edge, label %mt352_read_register.exit89.if.end8_crit_edge

mt352_read_register.exit89.if.end8_crit_edge:     ; preds = %mt352_read_register.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

mt352_read_register.exit89.cleanup_crit_edge:     ; preds = %mt352_read_register.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %mt352_read_register.exit89.if.end8_crit_edge, %mt352_read_register.exit89.thread
  %retval.0.i8898 = phi i32 [ %conv14.i86, %mt352_read_register.exit89.thread ], [ %call.i82, %mt352_read_register.exit89.if.end8_crit_edge ]
  %and = lshr i32 %retval.0.i92, 3
  %56 = and i32 %and, 2
  %and11 = shl nuw i32 %retval.0.i92, 1
  %57 = and i32 %and11, 4
  %58 = or i32 %57, %56
  %59 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %status, align 4
  %and16 = and i32 %retval.0.i92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end8.if.end20_crit_edge, label %if.then18

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status, align 4
  %or19 = or i32 %61, 16
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end8.if.end20_crit_edge
  %and21 = and i32 %retval.0.i6895, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %status, align 4
  %or24 = or i32 %63, 8
  store i32 %or24, ptr %status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %and26 = and i32 %retval.0.i8898, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %or29 = or i32 %65, 1
  store i32 %or29, ptr %status, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 4
  %and31 = and i32 %67, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 14
  br i1 %cmp32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %and34 = and i32 %67, -17
  %68 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and34, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %mt352_read_register.exit89.cleanup_crit_edge, %mt352_read_register.exit69.cleanup_crit_edge, %mt352_read_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %mt352_read_register.exit.cleanup_crit_edge ], [ -121, %mt352_read_register.exit69.cleanup_crit_edge ], [ -121, %mt352_read_register.exit89.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i27 = alloca [1 x i8], align 1
  %b1.i28 = alloca [1 x i8], align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i7 = alloca [1 x i8], align 1
  %b1.i8 = alloca [1 x i8], align 1
  %msg.i9 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 13, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i7) #7
  %20 = ptrtoint ptr %b0.i7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 14, ptr %b0.i7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i8) #7
  %21 = ptrtoint ptr %b1.i8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i9) #7
  %22 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i11 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i11, ptr %msg.i9, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i12, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i7, ptr %buf.i14, align 4
  %arrayinit.element.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i15 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i11, ptr %arrayinit.element.i15, align 4
  %flags6.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i16 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i16, align 2
  %len7.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i17 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i17, align 4
  %buf8.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i8, ptr %buf8.i18, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i19 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i19)
  %cmp.not.i20 = icmp eq i32 %call.i19, 2
  br i1 %cmp.not.i20, label %if.end.i24, label %do.end.i22

do.end.i22:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i19) #11
  br label %mt352_read_register.exit26

if.end.i24:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i8, align 1
  %conv14.i23 = zext i8 %37 to i32
  br label %mt352_read_register.exit26

mt352_read_register.exit26:                       ; preds = %if.end.i24, %do.end.i22
  %retval.0.i25 = phi i32 [ %call.i19, %do.end.i22 ], [ %conv14.i23, %if.end.i24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i7) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i27) #7
  %38 = ptrtoint ptr %b0.i27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 15, ptr %b0.i27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i28) #7
  %39 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #7
  %40 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config.i, align 4
  %conv.i31 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i32, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i27, ptr %buf.i34, align 4
  %arrayinit.element.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i35 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i31, ptr %arrayinit.element.i35, align 4
  %flags6.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %49 = ptrtoint ptr %flags6.i36 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags6.i36, align 2
  %len7.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %50 = ptrtoint ptr %len7.i37 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len7.i37, align 4
  %buf8.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %51 = ptrtoint ptr %buf8.i38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b1.i28, ptr %buf8.i38, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i39 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i29, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i39)
  %cmp.not.i40 = icmp eq i32 %call.i39, 2
  br i1 %cmp.not.i40, label %if.end.i44, label %do.end.i42

do.end.i42:                                       ; preds = %mt352_read_register.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef %call.i39) #11
  br label %mt352_read_register.exit46

if.end.i44:                                       ; preds = %mt352_read_register.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i28, align 1
  %conv14.i43 = zext i8 %55 to i32
  br label %mt352_read_register.exit46

mt352_read_register.exit46:                       ; preds = %if.end.i44, %do.end.i42
  %retval.0.i45 = phi i32 [ %call.i39, %do.end.i42 ], [ %conv14.i43, %if.end.i44 ]
  %shl = shl i32 %retval.0.i, 16
  %shl2 = shl i32 %retval.0.i25, 8
  %or = or i32 %shl2, %shl
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i28) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i27) #7
  %or4 = or i32 %or, %retval.0.i45
  %56 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or4, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i6 = alloca [1 x i8], align 1
  %b1.i7 = alloca [1 x i8], align 1
  %msg.i8 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 20, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i6) #7
  %20 = ptrtoint ptr %b0.i6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 21, ptr %b0.i6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i7) #7
  %21 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i8) #7
  %22 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i10 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i11, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i6, ptr %buf.i13, align 4
  %arrayinit.element.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i14 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i10, ptr %arrayinit.element.i14, align 4
  %flags6.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i15 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i15, align 2
  %len7.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i16 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i16, align 4
  %buf8.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i7, ptr %buf8.i17, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i18 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i8, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i18)
  %cmp.not.i19 = icmp eq i32 %call.i18, 2
  br i1 %cmp.not.i19, label %if.end.i23, label %do.end.i21

do.end.i21:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 21, i32 noundef %call.i18) #11
  br label %mt352_read_register.exit25

if.end.i23:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i7, align 1
  %conv14.i22 = zext i8 %37 to i32
  br label %mt352_read_register.exit25

mt352_read_register.exit25:                       ; preds = %if.end.i23, %do.end.i21
  %retval.0.i24 = phi i32 [ %call.i18, %do.end.i21 ], [ %conv14.i22, %if.end.i23 ]
  %and = shl i32 %retval.0.i, 12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i6) #7
  %shl2 = shl i32 %retval.0.i24, 4
  %or = or i32 %shl2, %and
  %38 = trunc i32 %or to i16
  %conv4 = xor i16 %38, -1
  %39 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %20 = trunc i32 %retval.0.i to i16
  %21 = and i16 %20, 255
  %conv3 = mul nuw i16 %21, 257
  %22 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv3, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i3 = alloca [1 x i8], align 1
  %b1.i4 = alloca [1 x i8], align 1
  %msg.i5 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.mt352_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef %call.i) #11
  br label %mt352_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %mt352_read_register.exit

mt352_read_register.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i3) #7
  %20 = ptrtoint ptr %b0.i3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %b0.i3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i4) #7
  %21 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i5) #7
  %22 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i7 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i7, ptr %msg.i5, align 4
  %flags.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i8, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i3, ptr %buf.i10, align 4
  %arrayinit.element.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i11 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i7, ptr %arrayinit.element.i11, align 4
  %flags6.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i12 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i12, align 2
  %len7.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i13, align 4
  %buf8.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i4, ptr %buf8.i14, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i5, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 2
  br i1 %cmp.not.i16, label %if.end.i20, label %do.end.i18

do.end.i18:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef %call.i15) #11
  br label %mt352_read_register.exit22

if.end.i20:                                       ; preds = %mt352_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i4, align 1
  %conv14.i19 = zext i8 %37 to i32
  br label %mt352_read_register.exit22

mt352_read_register.exit22:                       ; preds = %if.end.i20, %do.end.i18
  %retval.0.i21 = phi i32 [ %call.i15, %do.end.i18 ], [ %conv14.i19, %if.end.i20 ]
  %shl = shl i32 %retval.0.i, 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i3) #7
  %or = or i32 %retval.0.i21, %shl
  %38 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 589, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 590, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 592, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 593, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 594, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mt352_attach, !13, !"__ksymtab_mt352_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 596, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 38, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 83, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt352_read_register._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt352_read_register._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mt352_ops, !23, !"mt352_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 556, i32 38}
!24 = distinct !{null, !25, !"mt352_reset_attach", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 507, i32 12}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 509, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mt352_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt352_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"mt352_softdown", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 93, i32 12}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 52, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mt352_single_write._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt352_single_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"tuner_go", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 160, i32 23}
!40 = distinct !{null, !41, !"fsm_go", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 161, i32 23}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 123, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mt352_calc_nominal_rate._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt352_calc_nominal_rate._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 149, i32 2}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt352_calc_input_freq._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt352_calc_input_freq._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mt352_get_parameters.tps_fec_to_api, !53, !"tps_fec_to_api", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/mt352.c", i32 308, i32 18}
!54 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
