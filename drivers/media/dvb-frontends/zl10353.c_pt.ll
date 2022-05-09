; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/zl10353.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10353.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zl10353_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_zl10353_attach\09\09\09\09"
module asm "\09.long\09__crc_zl10353_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10353_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10353_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10353_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10353_state = type { ptr, %struct.dvb_frontend, %struct.zl10353_config, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@zl10353_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ZL10353 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @zl10353_release, ptr null, ptr @zl10353_init, ptr @zl10353_sleep, ptr null, ptr null, ptr @zl10353_write, ptr null, ptr null, ptr @zl10353_set_parameters, ptr @zl10353_get_tune_settings, ptr @zl10353_get_parameters, ptr @zl10353_read_status, ptr @zl10353_read_ber, ptr @zl10353_read_signal_strength, ptr @zl10353_read_snr, ptr @zl10353_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zl10353_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"zl10353.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"zl10353.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"zl10353.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__param_str_debug_regs = internal constant [19 x i8] c"zl10353.debug_regs\00", align 1
@debug_regs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_regs = internal constant %struct.kernel_param { ptr @__param_str_debug_regs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug_regs } }, section "__param", align 4
@__UNIQUE_ID_debug_regstype292 = internal constant [32 x i8] c"zl10353.parmtype=debug_regs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_regs293 = internal constant [75 x i8] c"zl10353.parm=debug_regs:Turn on/off frontend register dumps (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [61 x i8] c"zl10353.description=Zarlink ZL10353 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [28 x i8] c"zl10353.author=Chris Pascoe\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"zl10353.file=drivers/media/dvb-frontends/zl10353\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"zl10353.license=GPL\00", section ".modinfo", align 1
@__kstrtab_zl10353_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10353_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10353_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10353_attach to i32), ptr @__kstrtab_zl10353_attach, ptr @__kstrtabns_zl10353_attach }, section "___ksymtab+zl10353_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zl10353_read_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zl10353_read_register\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/zl10353.c\00", [58 x i8] zeroinitializer }, align 32
@zl10353_read_register._entry_ptr = internal global ptr @zl10353_read_register._entry, section ".printk_index", align 4
@__const.zl10353_init.zl10353_reset_attach = private unnamed_addr constant [6 x i8] c"P\03dF\15\0F", align 1
@zl10353_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zl10353_dump_regs\00", [46 x i8] zeroinitializer }, align 32
@zl10353_dump_regs._entry_ptr = internal global ptr @zl10353_dump_regs._entry, section ".printk_index", align 4
@zl10353_dump_regs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%02x:\00", [24 x i8] zeroinitializer }, align 32
@zl10353_dump_regs._entry_ptr.7 = internal global ptr @zl10353_dump_regs._entry.5, section ".printk_index", align 4
@zl10353_dump_regs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@zl10353_dump_regs._entry_ptr.10 = internal global ptr @zl10353_dump_regs._entry.8, section ".printk_index", align 4
@zl10353_dump_regs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c --\00", [26 x i8] zeroinitializer }, align 32
@zl10353_dump_regs._entry_ptr.13 = internal global ptr @zl10353_dump_regs._entry.11, section ".printk_index", align 4
@zl10353_dump_regs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zl10353_dump_regs._entry_ptr.15 = internal global ptr @zl10353_dump_regs._entry.14, section ".printk_index", align 4
@zl10353_single_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"zl10353: write to reg %x failed (err = %d)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zl10353_single_write\00", [43 x i8] zeroinitializer }, align 32
@zl10353_single_write._entry_ptr = internal global ptr @zl10353_single_write._entry, section ".printk_index", align 4
@__const.zl10353_set_parameters.pllbuf = private unnamed_addr constant [6 x i8] c"g\00\00\00\00\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zl10353_calc_nominal_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017zl10353: %s: bw %d, adc_clock %d => 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zl10353_calc_nominal_rate\00", [38 x i8] zeroinitializer }, align 32
@zl10353_calc_nominal_rate._entry_ptr = internal global ptr @zl10353_calc_nominal_rate._entry, section ".printk_index", align 4
@zl10353_calc_input_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017zl10353: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zl10353_calc_input_freq\00", [40 x i8] zeroinitializer }, align 32
@zl10353_calc_input_freq._entry_ptr = internal global ptr @zl10353_calc_input_freq._entry, section ".printk_index", align 4
@zl10353_get_parameters.tps_fec_to_api = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\03\05\07\09\09\09", [24 x i8] zeroinitializer }, align 32
@switch.table.zl10353_set_parameters = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\80\00\80\80\80\00\80\00", [23 x i8] zeroinitializer }, align 32
@switch.table.zl10353_set_parameters.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\01\00\01\00\02\00\00", [23 x i8] zeroinitializer }, align 32
@switch.table.zl10353_get_parameters = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 25]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"zl10353_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 624, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 31, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"debug_regs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 37, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 78, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 96, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 97, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 101, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 103, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 107, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 47, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 126, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 154, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"tps_fec_to_api\00", align 1
@___asan_gen_.109 = private constant [41 x i8] c"../drivers/media/dvb-frontends/zl10353.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 365, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [36 x i8] c"switch.table.zl10353_set_parameters\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [39 x i8] c"switch.table.zl10353_set_parameters.22\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [36 x i8] c"switch.table.zl10353_get_parameters\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debug_regs293, ptr @__UNIQUE_ID_debug_regstype292, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_zl10353_attach, ptr @__param_debug, ptr @__param_debug_regs, ptr @zl10353_calc_input_freq._entry, ptr @zl10353_calc_input_freq._entry_ptr, ptr @zl10353_calc_nominal_rate._entry, ptr @zl10353_calc_nominal_rate._entry_ptr, ptr @zl10353_dump_regs._entry, ptr @zl10353_dump_regs._entry.11, ptr @zl10353_dump_regs._entry.14, ptr @zl10353_dump_regs._entry.5, ptr @zl10353_dump_regs._entry.8, ptr @zl10353_dump_regs._entry_ptr, ptr @zl10353_dump_regs._entry_ptr.10, ptr @zl10353_dump_regs._entry_ptr.13, ptr @zl10353_dump_regs._entry_ptr.15, ptr @zl10353_dump_regs._entry_ptr.7, ptr @zl10353_read_register._entry, ptr @zl10353_read_register._entry_ptr, ptr @zl10353_single_write._entry, ptr @zl10353_single_write._entry_ptr, ptr @zl10353_ops, ptr @debug, ptr @debug_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @zl10353_get_parameters.tps_fec_to_api, ptr @switch.table.zl10353_set_parameters, ptr @switch.table.zl10353_set_parameters.22, ptr @switch.table.zl10353_get_parameters], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_read_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_dump_regs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_dump_regs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_dump_regs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_dump_regs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_single_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_calc_nominal_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_calc_input_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10353_get_parameters.tps_fec_to_api to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zl10353_set_parameters to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zl10353_set_parameters.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zl10353_get_parameters to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zl10353_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1080) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %call7.i.i, align 8
  %config2 = getelementptr inbounds %struct.zl10353_state, ptr %call7.i.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %config2, ptr %config, i32 24)
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
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %18 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %19 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %zl10353_read_register.exit.error_crit_edge [
    i32 20, label %zl10353_read_register.exit.if.end9_crit_edge
    i32 24, label %zl10353_read_register.exit.if.end9_crit_edge23
    i32 25, label %zl10353_read_register.exit.if.end9_crit_edge24
  ]

zl10353_read_register.exit.if.end9_crit_edge24:   ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

zl10353_read_register.exit.if.end9_crit_edge23:   ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

zl10353_read_register.exit.if.end9_crit_edge:     ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

zl10353_read_register.exit.error_crit_edge:       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end9:                                          ; preds = %zl10353_read_register.exit.if.end9_crit_edge, %zl10353_read_register.exit.if.end9_crit_edge23, %zl10353_read_register.exit.if.end9_crit_edge24
  %frontend = getelementptr inbounds %struct.zl10353_state, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.zl10353_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = call ptr @memcpy(ptr %ops, ptr @zl10353_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.zl10353_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  br label %cleanup

error:                                            ; preds = %zl10353_read_register.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end9 ]
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
define internal void @zl10353_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @zl10353_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i43 = alloca [1 x i8], align 1
  %b1.i44 = alloca [1 x i8], align 1
  %msg.i45 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %zl10353_reset_attach = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zl10353_reset_attach) #7
  %2 = call ptr @memcpy(ptr %zl10353_reset_attach, ptr @__const.zl10353_init.zl10353_reset_attach, i32 6)
  %3 = load i32, ptr @debug_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zl10353_dump_regs(ptr noundef %fe)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parallel_ts = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %parallel_ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parallel_ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [6 x i8], ptr %zl10353_reset_attach, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, -33
  store i8 %8, ptr %arrayidx, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %clock_ctl_1 = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %clock_ctl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clock_ctl_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr inbounds [6 x i8], ptr %zl10353_reset_attach, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4.if.end11_crit_edge
  %pll_0 = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2, i32 7
  %12 = ptrtoint ptr %pll_0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr inbounds [6 x i8], ptr %zl10353_reset_attach, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %15 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 80, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %16 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %17, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %26 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %27 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %28 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b1.i, ptr %buf8.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef %call.i) #11
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %32 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %arrayidx19 = getelementptr inbounds [6 x i8], ptr %zl10353_reset_attach, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv20)
  %cmp.not = icmp eq i32 %retval.0.i, %conv20
  br i1 %cmp.not, label %lor.lhs.false, label %zl10353_read_register.exit.if.then27_crit_edge

zl10353_read_register.exit.if.then27_crit_edge:   ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.lhs.false:                                    ; preds = %zl10353_read_register.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i43) #7
  %35 = ptrtoint ptr %b0.i43 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 81, ptr %b0.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i44) #7
  %36 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %b1.i44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i45) #7
  %37 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %38 = call ptr @memset(ptr %37, i32 255, i32 16)
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %config.i, align 4
  %conv.i47 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i48, align 2
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %37, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b0.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1
  %45 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i47, ptr %arrayinit.element.i51, align 4
  %flags6.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 1
  %46 = ptrtoint ptr %flags6.i52 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %flags6.i52, align 2
  %len7.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 2
  %47 = ptrtoint ptr %len7.i53 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len7.i53, align 4
  %buf8.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 3
  %48 = ptrtoint ptr %buf8.i54 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %b1.i44, ptr %buf8.i54, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i55 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i45, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i55)
  %cmp.not.i56 = icmp eq i32 %call.i55, 2
  br i1 %cmp.not.i56, label %if.end.i60, label %do.end.i58

do.end.i58:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef %call.i55) #11
  br label %zl10353_read_register.exit62

if.end.i60:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %b1.i44, align 1
  %conv14.i59 = zext i8 %52 to i32
  br label %zl10353_read_register.exit62

zl10353_read_register.exit62:                     ; preds = %if.end.i60, %do.end.i58
  %retval.0.i61 = phi i32 [ %call.i55, %do.end.i58 ], [ %conv14.i59, %if.end.i60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i45) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i44) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i43) #7
  %arrayidx23 = getelementptr inbounds [6 x i8], ptr %zl10353_reset_attach, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i61, i32 %conv24)
  %cmp25.not = icmp eq i32 %retval.0.i61, %conv24
  br i1 %cmp25.not, label %zl10353_read_register.exit62.if.end32_crit_edge, label %zl10353_read_register.exit62.if.then27_crit_edge

zl10353_read_register.exit62.if.then27_crit_edge: ; preds = %zl10353_read_register.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

zl10353_read_register.exit62.if.end32_crit_edge:  ; preds = %zl10353_read_register.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %zl10353_read_register.exit62.if.then27_crit_edge, %zl10353_read_register.exit.if.then27_crit_edge
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %56 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %zl10353_single_write.exit.i.for.cond.i_crit_edge, %if.then27
  %i.0.i = phi i32 [ 0, %if.then27 ], [ %add2.i, %zl10353_single_write.exit.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, 5
  br i1 %exitcond.not.i, label %for.cond.i.zl10353_write.exit_crit_edge, label %for.body.i

for.cond.i.zl10353_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_write.exit

for.body.i:                                       ; preds = %for.cond.i
  %57 = ptrtoint ptr %zl10353_reset_attach to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %zl10353_reset_attach, align 1
  %59 = trunc i32 %i.0.i to i8
  %conv1.i = add i8 %58, %59
  %add2.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx3.i = getelementptr i8, ptr %zl10353_reset_attach, i32 %add2.i
  %60 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3.i, align 1
  %62 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %64 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv1.i, ptr %buf.i.i, align 1
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %61, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 196607, ptr %56, align 4
  %config.i.i = getelementptr inbounds %struct.zl10353_state, ptr %63, i32 0, i32 2
  %67 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %config.i.i, align 4
  %conv.i.i = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i.i, align 2
  %71 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %63, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %for.body.i.zl10353_single_write.exit.i_crit_edge, label %do.end.i.i

for.body.i.zl10353_single_write.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i8 %conv1.i to i32
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv3.i.i, i32 noundef %call.i.i) #11
  br label %zl10353_single_write.exit.i

zl10353_single_write.exit.i:                      ; preds = %do.end.i.i, %for.body.i.zl10353_single_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %for.body.i.zl10353_single_write.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %zl10353_single_write.exit.i.for.cond.i_crit_edge, label %zl10353_single_write.exit.i.zl10353_write.exit_crit_edge

zl10353_single_write.exit.i.zl10353_write.exit_crit_edge: ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_write.exit

zl10353_single_write.exit.i.for.cond.i_crit_edge: ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

zl10353_write.exit:                               ; preds = %zl10353_single_write.exit.i.zl10353_write.exit_crit_edge, %for.cond.i.zl10353_write.exit_crit_edge
  %74 = load i32, ptr @debug_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool29.not = icmp eq i32 %74, 0
  br i1 %tobool29.not, label %zl10353_write.exit.if.end32_crit_edge, label %if.then30

zl10353_write.exit.if.end32_crit_edge:            ; preds = %zl10353_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %zl10353_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @zl10353_dump_regs(ptr noundef %fe)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %zl10353_write.exit.if.end32_crit_edge, %zl10353_read_register.exit62.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zl10353_reset_attach) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
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
  store i8 80, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %1, align 4
  %config.i.i = getelementptr inbounds %struct.zl10353_state, ptr %3, i32 0, i32 2
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
  br i1 %cmp.not.i.i, label %zl10353_single_write.exit.i.thread, label %zl10353_single_write.exit.i

zl10353_single_write.exit.i.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %for.cond.i.1

zl10353_single_write.exit.i:                      ; preds = %entry
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 80, i32 noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %phi.cmp, label %zl10353_single_write.exit.i.for.cond.i.1_crit_edge, label %zl10353_single_write.exit.i.zl10353_write.exit_crit_edge

zl10353_single_write.exit.i.zl10353_write.exit_crit_edge: ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_write.exit

zl10353_single_write.exit.i.for.cond.i.1_crit_edge: ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.1

for.cond.i.1:                                     ; preds = %zl10353_single_write.exit.i.for.cond.i.1_crit_edge, %zl10353_single_write.exit.i.thread
  %14 = ptrtoint ptr %demodulator_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %demodulator_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 81, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 68, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %1, align 4
  %config.i.i.1 = getelementptr inbounds %struct.zl10353_state, ptr %15, i32 0, i32 2
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
  br i1 %cmp.not.i.i.1, label %zl10353_single_write.exit.i.1.thread, label %zl10353_single_write.exit.i.1

zl10353_single_write.exit.i.1.thread:             ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %zl10353_write.exit

zl10353_single_write.exit.i.1:                    ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 81, i32 noundef %call.i.i.1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %zl10353_write.exit

zl10353_write.exit:                               ; preds = %zl10353_single_write.exit.i.1, %zl10353_single_write.exit.i.1.thread, %zl10353_single_write.exit.i.zl10353_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %ibuf, i32 noundef %ilen) #0 align 64 {
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

for.cond:                                         ; preds = %zl10353_single_write.exit.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add2, %zl10353_single_write.exit.for.cond_crit_edge ]
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
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %8, i32 0, i32 2
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
  br i1 %cmp.not.i, label %for.body.zl10353_single_write.exit_crit_edge, label %do.end.i

for.body.zl10353_single_write.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %conv1 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv3.i, i32 noundef %call.i) #11
  br label %zl10353_single_write.exit

zl10353_single_write.exit:                        ; preds = %do.end.i, %for.body.zl10353_single_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %for.body.zl10353_single_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %zl10353_single_write.exit.for.cond_crit_edge, label %zl10353_single_write.exit.cleanup_crit_edge

zl10353_single_write.exit.cleanup_crit_edge:      ; preds = %zl10353_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

zl10353_single_write.exit.for.cond_crit_edge:     ; preds = %zl10353_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup:                                          ; preds = %zl10353_single_write.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %zl10353_single_write.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i766 = alloca [2 x i8], align 1
  %msg.i767 = alloca %struct.i2c_msg, align 4
  %buf.i752 = alloca [2 x i8], align 1
  %msg.i753 = alloca %struct.i2c_msg, align 4
  %buf.i738 = alloca [2 x i8], align 1
  %msg.i739 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i722 = alloca [2 x i8], align 1
  %msg.i723 = alloca %struct.i2c_msg, align 4
  %buf.i708 = alloca [2 x i8], align 1
  %msg.i709 = alloca %struct.i2c_msg, align 4
  %buf.i694 = alloca [2 x i8], align 1
  %msg.i695 = alloca %struct.i2c_msg, align 4
  %buf.i680 = alloca [2 x i8], align 1
  %msg.i681 = alloca %struct.i2c_msg, align 4
  %buf.i544 = alloca [2 x i8], align 1
  %msg.i545 = alloca %struct.i2c_msg, align 4
  %buf.i530 = alloca [2 x i8], align 1
  %msg.i531 = alloca %struct.i2c_msg, align 4
  %buf.i514 = alloca [2 x i8], align 1
  %msg.i515 = alloca %struct.i2c_msg, align 4
  %buf.i500 = alloca [2 x i8], align 1
  %msg.i501 = alloca %struct.i2c_msg, align 4
  %buf.i486 = alloca [2 x i8], align 1
  %msg.i487 = alloca %struct.i2c_msg, align 4
  %buf.i472 = alloca [2 x i8], align 1
  %msg.i473 = alloca %struct.i2c_msg, align 4
  %buf.i458 = alloca [2 x i8], align 1
  %msg.i459 = alloca %struct.i2c_msg, align 4
  %buf.i444 = alloca [2 x i8], align 1
  %msg.i445 = alloca %struct.i2c_msg, align 4
  %buf.i430 = alloca [2 x i8], align 1
  %msg.i431 = alloca %struct.i2c_msg, align 4
  %buf.i416 = alloca [2 x i8], align 1
  %msg.i417 = alloca %struct.i2c_msg, align 4
  %buf.i402 = alloca [2 x i8], align 1
  %msg.i403 = alloca %struct.i2c_msg, align 4
  %buf.i388 = alloca [2 x i8], align 1
  %msg.i389 = alloca %struct.i2c_msg, align 4
  %buf.i374 = alloca [2 x i8], align 1
  %msg.i375 = alloca %struct.i2c_msg, align 4
  %buf.i360 = alloca [2 x i8], align 1
  %msg.i361 = alloca %struct.i2c_msg, align 4
  %buf.i346 = alloca [2 x i8], align 1
  %msg.i347 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %pllbuf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pllbuf) #7
  %2 = call ptr @memcpy(ptr %pllbuf, ptr @__const.zl10353_set_parameters.pllbuf, i32 6)
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %frequency1 = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %frequency1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %frequency1, align 4
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 85, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf1.i, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.zl10353_single_write.exit_crit_edge, label %do.end.i

entry.zl10353_single_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 85, i32 noundef %call.i) #11
  br label %zl10353_single_write.exit

zl10353_single_write.exit:                        ; preds = %do.end.i, %entry.zl10353_single_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 42949600) #7
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i346) #7
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i346, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i346 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -22, ptr %buf.i346, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i347) #7
  %26 = getelementptr inbounds i8, ptr %msg.i347, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %config.i349 = getelementptr inbounds %struct.zl10353_state, ptr %22, i32 0, i32 2
  %28 = ptrtoint ptr %config.i349 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %config.i349, align 4
  %conv.i350 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i347 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i350, ptr %msg.i347, align 4
  %flags.i351 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i351 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i351, align 2
  %buf1.i353 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 3
  %32 = ptrtoint ptr %buf1.i353 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i346, ptr %buf1.i353, align 4
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %22, align 4
  %call.i354 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i347, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i354)
  %cmp.not.i355 = icmp eq i32 %call.i354, 1
  br i1 %cmp.not.i355, label %zl10353_single_write.exit.zl10353_single_write.exit359_crit_edge, label %do.end.i357

zl10353_single_write.exit.zl10353_single_write.exit359_crit_edge: ; preds = %zl10353_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit359

do.end.i357:                                      ; preds = %zl10353_single_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 234, i32 noundef %call.i354) #11
  br label %zl10353_single_write.exit359

zl10353_single_write.exit359:                     ; preds = %do.end.i357, %zl10353_single_write.exit.zl10353_single_write.exit359_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i347) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i346) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 42949600) #7
  %36 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i360) #7
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i360, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i360 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -22, ptr %buf.i360, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i361) #7
  %41 = getelementptr inbounds i8, ptr %msg.i361, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %config.i363 = getelementptr inbounds %struct.zl10353_state, ptr %37, i32 0, i32 2
  %43 = ptrtoint ptr %config.i363 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %config.i363, align 4
  %conv.i364 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i361 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i364, ptr %msg.i361, align 4
  %flags.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i365 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i365, align 2
  %buf1.i367 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361, i32 0, i32 3
  %47 = ptrtoint ptr %buf1.i367 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i360, ptr %buf1.i367, align 4
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %37, align 4
  %call.i368 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i361, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i368)
  %cmp.not.i369 = icmp eq i32 %call.i368, 1
  br i1 %cmp.not.i369, label %zl10353_single_write.exit359.zl10353_single_write.exit373_crit_edge, label %do.end.i371

zl10353_single_write.exit359.zl10353_single_write.exit373_crit_edge: ; preds = %zl10353_single_write.exit359
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit373

do.end.i371:                                      ; preds = %zl10353_single_write.exit359
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 234, i32 noundef %call.i368) #11
  br label %zl10353_single_write.exit373

zl10353_single_write.exit373:                     ; preds = %do.end.i371, %zl10353_single_write.exit359.zl10353_single_write.exit373_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i361) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i360) #7
  %50 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i374) #7
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i374, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i374 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 86, ptr %buf.i374, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 40, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i375) #7
  %55 = getelementptr inbounds i8, ptr %msg.i375, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %config.i377 = getelementptr inbounds %struct.zl10353_state, ptr %51, i32 0, i32 2
  %57 = ptrtoint ptr %config.i377 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %config.i377, align 4
  %conv.i378 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i375 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i378, ptr %msg.i375, align 4
  %flags.i379 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i375, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i379 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i379, align 2
  %buf1.i381 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i375, i32 0, i32 3
  %61 = ptrtoint ptr %buf1.i381 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i374, ptr %buf1.i381, align 4
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %51, align 4
  %call.i382 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i375, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i382)
  %cmp.not.i383 = icmp eq i32 %call.i382, 1
  br i1 %cmp.not.i383, label %zl10353_single_write.exit373.zl10353_single_write.exit387_crit_edge, label %do.end.i385

zl10353_single_write.exit373.zl10353_single_write.exit387_crit_edge: ; preds = %zl10353_single_write.exit373
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit387

do.end.i385:                                      ; preds = %zl10353_single_write.exit373
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 86, i32 noundef %call.i382) #11
  br label %zl10353_single_write.exit387

zl10353_single_write.exit387:                     ; preds = %do.end.i385, %zl10353_single_write.exit373.zl10353_single_write.exit387_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i375) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i374) #7
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %64 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.not = icmp ne i32 %65, 2
  %spec.select = zext i1 %cmp.not to i8
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %66 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp6.not = icmp eq i32 %67, 4
  %68 = or i8 %spec.select, 2
  %acq_ctl.1 = select i1 %cmp6.not, i8 %spec.select, i8 %68
  %69 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i388) #7
  %71 = getelementptr inbounds [2 x i8], ptr %buf.i388, i32 0, i32 1
  %72 = ptrtoint ptr %buf.i388 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 94, ptr %buf.i388, align 1
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %acq_ctl.1, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i389) #7
  %74 = getelementptr inbounds i8, ptr %msg.i389, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 196607, ptr %74, align 4
  %config.i391 = getelementptr inbounds %struct.zl10353_state, ptr %70, i32 0, i32 2
  %76 = ptrtoint ptr %config.i391 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %config.i391, align 4
  %conv.i392 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i389 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i392, ptr %msg.i389, align 4
  %flags.i393 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i389, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i393 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i393, align 2
  %buf1.i395 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i389, i32 0, i32 3
  %80 = ptrtoint ptr %buf1.i395 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i388, ptr %buf1.i395, align 4
  %81 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %70, align 4
  %call.i396 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i389, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i396)
  %cmp.not.i397 = icmp eq i32 %call.i396, 1
  br i1 %cmp.not.i397, label %zl10353_single_write.exit387.zl10353_single_write.exit401_crit_edge, label %do.end.i399

zl10353_single_write.exit387.zl10353_single_write.exit401_crit_edge: ; preds = %zl10353_single_write.exit387
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit401

do.end.i399:                                      ; preds = %zl10353_single_write.exit387
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 94, i32 noundef %call.i396) #11
  br label %zl10353_single_write.exit401

zl10353_single_write.exit401:                     ; preds = %do.end.i399, %zl10353_single_write.exit387.zl10353_single_write.exit401_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i389) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i388) #7
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %83 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bandwidth_hz, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %84, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb17
    i32 8000000, label %zl10353_single_write.exit401.sw.bb22_crit_edge
  ]

zl10353_single_write.exit401.sw.bb22_crit_edge:   ; preds = %zl10353_single_write.exit401
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.bb:                                            ; preds = %zl10353_single_write.exit401
  %86 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i402) #7
  %88 = getelementptr inbounds [2 x i8], ptr %buf.i402, i32 0, i32 1
  %89 = ptrtoint ptr %buf.i402 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 92, ptr %buf.i402, align 1
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -105, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i403) #7
  %91 = getelementptr inbounds i8, ptr %msg.i403, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 196607, ptr %91, align 4
  %config.i405 = getelementptr inbounds %struct.zl10353_state, ptr %87, i32 0, i32 2
  %93 = ptrtoint ptr %config.i405 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %config.i405, align 4
  %conv.i406 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i403 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i406, ptr %msg.i403, align 4
  %flags.i407 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i403, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i407 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i407, align 2
  %buf1.i409 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i403, i32 0, i32 3
  %97 = ptrtoint ptr %buf1.i409 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i402, ptr %buf1.i409, align 4
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %87, align 4
  %call.i410 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i403, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i410)
  %cmp.not.i411 = icmp eq i32 %call.i410, 1
  br i1 %cmp.not.i411, label %sw.bb.zl10353_single_write.exit415_crit_edge, label %do.end.i413

sw.bb.zl10353_single_write.exit415_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit415

do.end.i413:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i412 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 92, i32 noundef %call.i410) #11
  br label %zl10353_single_write.exit415

zl10353_single_write.exit415:                     ; preds = %do.end.i413, %sw.bb.zl10353_single_write.exit415_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i403) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i402) #7
  %100 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i416) #7
  %102 = getelementptr inbounds [2 x i8], ptr %buf.i416, i32 0, i32 1
  %103 = ptrtoint ptr %buf.i416 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 100, ptr %buf.i416, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 52, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i417) #7
  %105 = getelementptr inbounds i8, ptr %msg.i417, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %105, align 4
  %config.i419 = getelementptr inbounds %struct.zl10353_state, ptr %101, i32 0, i32 2
  %107 = ptrtoint ptr %config.i419 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %config.i419, align 4
  %conv.i420 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i417 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i420, ptr %msg.i417, align 4
  %flags.i421 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i421 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i421, align 2
  %buf1.i423 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 0, i32 3
  %111 = ptrtoint ptr %buf1.i423 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i416, ptr %buf1.i423, align 4
  %112 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %101, align 4
  %call.i424 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i417, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i424)
  %cmp.not.i425 = icmp eq i32 %call.i424, 1
  br i1 %cmp.not.i425, label %zl10353_single_write.exit415.zl10353_single_write.exit429_crit_edge, label %do.end.i427

zl10353_single_write.exit415.zl10353_single_write.exit429_crit_edge: ; preds = %zl10353_single_write.exit415
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit429

do.end.i427:                                      ; preds = %zl10353_single_write.exit415
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i426 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 100, i32 noundef %call.i424) #11
  br label %zl10353_single_write.exit429

zl10353_single_write.exit429:                     ; preds = %do.end.i427, %zl10353_single_write.exit415.zl10353_single_write.exit429_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i417) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i416) #7
  %114 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i430) #7
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i430, i32 0, i32 1
  %117 = ptrtoint ptr %buf.i430 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -52, ptr %buf.i430, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -35, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i431) #7
  %119 = getelementptr inbounds i8, ptr %msg.i431, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196607, ptr %119, align 4
  %config.i433 = getelementptr inbounds %struct.zl10353_state, ptr %115, i32 0, i32 2
  %121 = ptrtoint ptr %config.i433 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %config.i433, align 4
  %conv.i434 = zext i8 %122 to i16
  %123 = ptrtoint ptr %msg.i431 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i434, ptr %msg.i431, align 4
  %flags.i435 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 1
  %124 = ptrtoint ptr %flags.i435 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i435, align 2
  %buf1.i437 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 3
  %125 = ptrtoint ptr %buf1.i437 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %buf.i430, ptr %buf1.i437, align 4
  %126 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %115, align 4
  %call.i438 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i431, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i438)
  %cmp.not.i439 = icmp eq i32 %call.i438, 1
  br i1 %cmp.not.i439, label %zl10353_single_write.exit429.zl10353_single_write.exit443_crit_edge, label %do.end.i441

zl10353_single_write.exit429.zl10353_single_write.exit443_crit_edge: ; preds = %zl10353_single_write.exit429
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit443

do.end.i441:                                      ; preds = %zl10353_single_write.exit429
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 204, i32 noundef %call.i438) #11
  br label %zl10353_single_write.exit443

zl10353_single_write.exit443:                     ; preds = %do.end.i441, %zl10353_single_write.exit429.zl10353_single_write.exit443_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i431) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i430) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %zl10353_single_write.exit401
  %128 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i444) #7
  %130 = getelementptr inbounds [2 x i8], ptr %buf.i444, i32 0, i32 1
  %131 = ptrtoint ptr %buf.i444 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 92, ptr %buf.i444, align 1
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -122, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i445) #7
  %133 = getelementptr inbounds i8, ptr %msg.i445, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 196607, ptr %133, align 4
  %config.i447 = getelementptr inbounds %struct.zl10353_state, ptr %129, i32 0, i32 2
  %135 = ptrtoint ptr %config.i447 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %config.i447, align 4
  %conv.i448 = zext i8 %136 to i16
  %137 = ptrtoint ptr %msg.i445 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i448, ptr %msg.i445, align 4
  %flags.i449 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i445, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i449 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i449, align 2
  %buf1.i451 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i445, i32 0, i32 3
  %139 = ptrtoint ptr %buf1.i451 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %buf.i444, ptr %buf1.i451, align 4
  %140 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %129, align 4
  %call.i452 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i445, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i452)
  %cmp.not.i453 = icmp eq i32 %call.i452, 1
  br i1 %cmp.not.i453, label %sw.bb17.zl10353_single_write.exit457_crit_edge, label %do.end.i455

sw.bb17.zl10353_single_write.exit457_crit_edge:   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit457

do.end.i455:                                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 92, i32 noundef %call.i452) #11
  br label %zl10353_single_write.exit457

zl10353_single_write.exit457:                     ; preds = %do.end.i455, %sw.bb17.zl10353_single_write.exit457_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i445) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i444) #7
  %142 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i458) #7
  %144 = getelementptr inbounds [2 x i8], ptr %buf.i458, i32 0, i32 1
  %145 = ptrtoint ptr %buf.i458 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 100, ptr %buf.i458, align 1
  %146 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 53, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i459) #7
  %147 = getelementptr inbounds i8, ptr %msg.i459, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 196607, ptr %147, align 4
  %config.i461 = getelementptr inbounds %struct.zl10353_state, ptr %143, i32 0, i32 2
  %149 = ptrtoint ptr %config.i461 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %config.i461, align 4
  %conv.i462 = zext i8 %150 to i16
  %151 = ptrtoint ptr %msg.i459 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv.i462, ptr %msg.i459, align 4
  %flags.i463 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i459, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i463 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i463, align 2
  %buf1.i465 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i459, i32 0, i32 3
  %153 = ptrtoint ptr %buf1.i465 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %buf.i458, ptr %buf1.i465, align 4
  %154 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %143, align 4
  %call.i466 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i459, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i466)
  %cmp.not.i467 = icmp eq i32 %call.i466, 1
  br i1 %cmp.not.i467, label %zl10353_single_write.exit457.zl10353_single_write.exit471_crit_edge, label %do.end.i469

zl10353_single_write.exit457.zl10353_single_write.exit471_crit_edge: ; preds = %zl10353_single_write.exit457
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit471

do.end.i469:                                      ; preds = %zl10353_single_write.exit457
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 100, i32 noundef %call.i466) #11
  br label %zl10353_single_write.exit471

zl10353_single_write.exit471:                     ; preds = %do.end.i469, %zl10353_single_write.exit457.zl10353_single_write.exit471_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i459) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i458) #7
  %156 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i472) #7
  %158 = getelementptr inbounds [2 x i8], ptr %buf.i472, i32 0, i32 1
  %159 = ptrtoint ptr %buf.i472 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -52, ptr %buf.i472, align 1
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 115, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i473) #7
  %161 = getelementptr inbounds i8, ptr %msg.i473, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 196607, ptr %161, align 4
  %config.i475 = getelementptr inbounds %struct.zl10353_state, ptr %157, i32 0, i32 2
  %163 = ptrtoint ptr %config.i475 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %config.i475, align 4
  %conv.i476 = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i473 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv.i476, ptr %msg.i473, align 4
  %flags.i477 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i473, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i477 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i477, align 2
  %buf1.i479 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i473, i32 0, i32 3
  %167 = ptrtoint ptr %buf1.i479 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %buf.i472, ptr %buf1.i479, align 4
  %168 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %157, align 4
  %call.i480 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %msg.i473, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i480)
  %cmp.not.i481 = icmp eq i32 %call.i480, 1
  br i1 %cmp.not.i481, label %zl10353_single_write.exit471.zl10353_single_write.exit485_crit_edge, label %do.end.i483

zl10353_single_write.exit471.zl10353_single_write.exit485_crit_edge: ; preds = %zl10353_single_write.exit471
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit485

do.end.i483:                                      ; preds = %zl10353_single_write.exit471
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i482 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 204, i32 noundef %call.i480) #11
  br label %zl10353_single_write.exit485

zl10353_single_write.exit485:                     ; preds = %do.end.i483, %zl10353_single_write.exit471.zl10353_single_write.exit485_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i473) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i472) #7
  br label %sw.epilog

sw.default:                                       ; preds = %zl10353_single_write.exit401
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 8000000, ptr %bandwidth_hz, align 4
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.default, %zl10353_single_write.exit401.sw.bb22_crit_edge
  %171 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i486) #7
  %173 = getelementptr inbounds [2 x i8], ptr %buf.i486, i32 0, i32 1
  %174 = ptrtoint ptr %buf.i486 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 92, ptr %buf.i486, align 1
  %175 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 117, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i487) #7
  %176 = getelementptr inbounds i8, ptr %msg.i487, i32 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 196607, ptr %176, align 4
  %config.i489 = getelementptr inbounds %struct.zl10353_state, ptr %172, i32 0, i32 2
  %178 = ptrtoint ptr %config.i489 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %config.i489, align 4
  %conv.i490 = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i487 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i490, ptr %msg.i487, align 4
  %flags.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i487, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i491 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i491, align 2
  %buf1.i493 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i487, i32 0, i32 3
  %182 = ptrtoint ptr %buf1.i493 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i486, ptr %buf1.i493, align 4
  %183 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %172, align 4
  %call.i494 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i487, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i494)
  %cmp.not.i495 = icmp eq i32 %call.i494, 1
  br i1 %cmp.not.i495, label %sw.bb22.zl10353_single_write.exit499_crit_edge, label %do.end.i497

sw.bb22.zl10353_single_write.exit499_crit_edge:   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit499

do.end.i497:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 92, i32 noundef %call.i494) #11
  br label %zl10353_single_write.exit499

zl10353_single_write.exit499:                     ; preds = %do.end.i497, %sw.bb22.zl10353_single_write.exit499_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i487) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i486) #7
  %185 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i500) #7
  %187 = getelementptr inbounds [2 x i8], ptr %buf.i500, i32 0, i32 1
  %188 = ptrtoint ptr %buf.i500 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 100, ptr %buf.i500, align 1
  %189 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 54, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i501) #7
  %190 = getelementptr inbounds i8, ptr %msg.i501, i32 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 196607, ptr %190, align 4
  %config.i503 = getelementptr inbounds %struct.zl10353_state, ptr %186, i32 0, i32 2
  %192 = ptrtoint ptr %config.i503 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %config.i503, align 4
  %conv.i504 = zext i8 %193 to i16
  %194 = ptrtoint ptr %msg.i501 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv.i504, ptr %msg.i501, align 4
  %flags.i505 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i501, i32 0, i32 1
  %195 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags.i505, align 2
  %buf1.i507 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i501, i32 0, i32 3
  %196 = ptrtoint ptr %buf1.i507 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %buf.i500, ptr %buf1.i507, align 4
  %197 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %186, align 4
  %call.i508 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i501, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i508)
  %cmp.not.i509 = icmp eq i32 %call.i508, 1
  br i1 %cmp.not.i509, label %zl10353_single_write.exit499.zl10353_single_write.exit513_crit_edge, label %do.end.i511

zl10353_single_write.exit499.zl10353_single_write.exit513_crit_edge: ; preds = %zl10353_single_write.exit499
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit513

do.end.i511:                                      ; preds = %zl10353_single_write.exit499
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 100, i32 noundef %call.i508) #11
  br label %zl10353_single_write.exit513

zl10353_single_write.exit513:                     ; preds = %do.end.i511, %zl10353_single_write.exit499.zl10353_single_write.exit513_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i501) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i500) #7
  %199 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i514) #7
  %201 = getelementptr inbounds [2 x i8], ptr %buf.i514, i32 0, i32 1
  %202 = ptrtoint ptr %buf.i514 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -52, ptr %buf.i514, align 1
  %203 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 115, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i515) #7
  %204 = getelementptr inbounds i8, ptr %msg.i515, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 196607, ptr %204, align 4
  %config.i517 = getelementptr inbounds %struct.zl10353_state, ptr %200, i32 0, i32 2
  %206 = ptrtoint ptr %config.i517 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %config.i517, align 4
  %conv.i518 = zext i8 %207 to i16
  %208 = ptrtoint ptr %msg.i515 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv.i518, ptr %msg.i515, align 4
  %flags.i519 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i519 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i519, align 2
  %buf1.i521 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 3
  %210 = ptrtoint ptr %buf1.i521 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %buf.i514, ptr %buf1.i521, align 4
  %211 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %200, align 4
  %call.i522 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %msg.i515, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i522)
  %cmp.not.i523 = icmp eq i32 %call.i522, 1
  br i1 %cmp.not.i523, label %zl10353_single_write.exit513.zl10353_single_write.exit527_crit_edge, label %do.end.i525

zl10353_single_write.exit513.zl10353_single_write.exit527_crit_edge: ; preds = %zl10353_single_write.exit513
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit527

do.end.i525:                                      ; preds = %zl10353_single_write.exit513
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 204, i32 noundef %call.i522) #11
  br label %zl10353_single_write.exit527

zl10353_single_write.exit527:                     ; preds = %do.end.i525, %zl10353_single_write.exit513.zl10353_single_write.exit527_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i515) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i514) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %zl10353_single_write.exit527, %zl10353_single_write.exit485, %zl10353_single_write.exit443
  %213 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bandwidth_hz, align 4
  %215 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %demodulator_priv, align 4
  %div.i = udiv i32 %214, 1000000
  %adc_clock1.i = getelementptr inbounds %struct.zl10353_state, ptr %216, i32 0, i32 2, i32 1
  %217 = ptrtoint ptr %adc_clock1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %adc_clock1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i = icmp eq i32 %218, 0
  %spec.select.i = select i1 %tobool.not.i, i32 450560, i32 %218
  %conv.mask.i = and i32 %div.i, 255
  %conv4.i = zext i32 %conv.mask.i to i64
  %mul.i = mul nuw nsw i64 %conv4.i, 1497965625
  %div523.i = lshr i32 %spec.select.i, 1
  %conv6.i = zext i32 %div523.i to i64
  %add.i = add nuw nsw i64 %mul.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp164.i.i.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !81

if.then168.i.i.i:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %add.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %spec.select.i
  %extract.t784 = trunc i32 %div172.i.i.i to i8
  %extract789795 = lshr i32 %div172.i.i.i, 8
  %extract.t790 = trunc i32 %extract789795 to i8
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %219 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select.i, i64 %add.i) #12, !srcloc !82
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %219, 1
  %extract.t31.i = trunc i64 %asmresult1.i.i.i.i to i32
  %extract.t785 = trunc i64 %asmresult1.i.i.i.i to i8
  %extract791796 = lshr i64 %asmresult1.i.i.i.i, 8
  %extract.t792 = trunc i64 %extract791796 to i8
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i.off0 = phi i8 [ %extract.t784, %if.then168.i.i.i ], [ %extract.t785, %if.else174.i.i.i ]
  %dividend.addr.0.i.i.off0.i.off8 = phi i8 [ %extract.t790, %if.then168.i.i.i ], [ %extract.t792, %if.else174.i.i.i ]
  %dividend.addr.0.i.i.off027.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t31.i, %if.else174.i.i.i ]
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool8.not.i = icmp eq i32 %220, 0
  br i1 %tobool8.not.i, label %div_u64.exit.i.zl10353_calc_nominal_rate.exit_crit_edge, label %do.end.i529

div_u64.exit.i.zl10353_calc_nominal_rate.exit_crit_edge: ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_calc_nominal_rate.exit

do.end.i529:                                      ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = and i32 %dividend.addr.0.i.i.off027.i, 65535
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %conv.mask.i, i32 noundef %spec.select.i, i32 noundef %conv12.i) #11
  br label %zl10353_calc_nominal_rate.exit

zl10353_calc_nominal_rate.exit:                   ; preds = %do.end.i529, %div_u64.exit.i.zl10353_calc_nominal_rate.exit_crit_edge
  %221 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i530) #7
  %223 = getelementptr inbounds [2 x i8], ptr %buf.i530, i32 0, i32 1
  %224 = ptrtoint ptr %buf.i530 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 101, ptr %buf.i530, align 1
  %225 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %dividend.addr.0.i.i.off0.i.off8, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i531) #7
  %226 = getelementptr inbounds i8, ptr %msg.i531, i32 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 196607, ptr %226, align 4
  %config.i533 = getelementptr inbounds %struct.zl10353_state, ptr %222, i32 0, i32 2
  %228 = ptrtoint ptr %config.i533 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %config.i533, align 4
  %conv.i534 = zext i8 %229 to i16
  %230 = ptrtoint ptr %msg.i531 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv.i534, ptr %msg.i531, align 4
  %flags.i535 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531, i32 0, i32 1
  %231 = ptrtoint ptr %flags.i535 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %flags.i535, align 2
  %buf1.i537 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531, i32 0, i32 3
  %232 = ptrtoint ptr %buf1.i537 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %buf.i530, ptr %buf1.i537, align 4
  %233 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %222, align 4
  %call.i538 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %msg.i531, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i538)
  %cmp.not.i539 = icmp eq i32 %call.i538, 1
  br i1 %cmp.not.i539, label %zl10353_calc_nominal_rate.exit.zl10353_single_write.exit543_crit_edge, label %do.end.i541

zl10353_calc_nominal_rate.exit.zl10353_single_write.exit543_crit_edge: ; preds = %zl10353_calc_nominal_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit543

do.end.i541:                                      ; preds = %zl10353_calc_nominal_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 101, i32 noundef %call.i538) #11
  br label %zl10353_single_write.exit543

zl10353_single_write.exit543:                     ; preds = %do.end.i541, %zl10353_calc_nominal_rate.exit.zl10353_single_write.exit543_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i531) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i530) #7
  %235 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i544) #7
  %237 = getelementptr inbounds [2 x i8], ptr %buf.i544, i32 0, i32 1
  %238 = ptrtoint ptr %buf.i544 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 102, ptr %buf.i544, align 1
  %239 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %dividend.addr.0.i.i.off0.i.off0, ptr %237, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i545) #7
  %240 = getelementptr inbounds i8, ptr %msg.i545, i32 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 196607, ptr %240, align 4
  %config.i547 = getelementptr inbounds %struct.zl10353_state, ptr %236, i32 0, i32 2
  %242 = ptrtoint ptr %config.i547 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %config.i547, align 4
  %conv.i548 = zext i8 %243 to i16
  %244 = ptrtoint ptr %msg.i545 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %conv.i548, ptr %msg.i545, align 4
  %flags.i549 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i545, i32 0, i32 1
  %245 = ptrtoint ptr %flags.i549 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 0, ptr %flags.i549, align 2
  %buf1.i551 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i545, i32 0, i32 3
  %246 = ptrtoint ptr %buf1.i551 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %buf.i544, ptr %buf1.i551, align 4
  %247 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %236, align 4
  %call.i552 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %msg.i545, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i552)
  %cmp.not.i553 = icmp eq i32 %call.i552, 1
  br i1 %cmp.not.i553, label %zl10353_single_write.exit543.zl10353_single_write.exit557_crit_edge, label %do.end.i555

zl10353_single_write.exit543.zl10353_single_write.exit557_crit_edge: ; preds = %zl10353_single_write.exit543
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit557

do.end.i555:                                      ; preds = %zl10353_single_write.exit543
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i554 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 102, i32 noundef %call.i552) #11
  br label %zl10353_single_write.exit557

zl10353_single_write.exit557:                     ; preds = %do.end.i555, %zl10353_single_write.exit543.zl10353_single_write.exit557_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i545) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i544) #7
  %249 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 3
  %251 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %bandwidth, align 4
  %252 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %demodulator_priv, align 4
  %adc_clock1.i559 = getelementptr inbounds %struct.zl10353_state, ptr %253, i32 0, i32 2, i32 1
  %254 = ptrtoint ptr %adc_clock1.i559 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %adc_clock1.i559, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool.not.i560 = icmp eq i32 %255, 0
  %spec.select.i561 = select i1 %tobool.not.i560, i32 450560, i32 %255
  %if25.i = getelementptr inbounds %struct.zl10353_state, ptr %253, i32 0, i32 2, i32 2
  %256 = ptrtoint ptr %if25.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %if25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool6.not.i = icmp eq i32 %257, 0
  %if2.0.i = select i1 %tobool6.not.i, i32 361667, i32 %257
  %mul.i562 = shl i32 %if2.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i561, i32 %mul.i562)
  %cmp.not.i563 = icmp ult i32 %spec.select.i561, %mul.i562
  br i1 %cmp.not.i563, label %if.else.i, label %entry.if.end16_crit_edge.i

entry.if.end16_crit_edge.i:                       ; preds = %zl10353_single_write.exit557
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = lshr i32 %spec.select.i561, 1
  br label %if.end16.i

if.else.i:                                        ; preds = %zl10353_single_write.exit557
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i = urem i32 %if2.0.i, %spec.select.i561
  %sub.i = sub i32 %spec.select.i561, %rem.i
  %div51.i = lshr i32 %spec.select.i561, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div51.i)
  %cmp12.i = icmp ugt i32 %sub.i, %div51.i
  %spec.select53.i = select i1 %cmp12.i, i32 %rem.i, i32 %sub.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %entry.if.end16_crit_edge.i
  %div1852.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end16_crit_edge.i ], [ %div51.i, %if.else.i ]
  %ife.0.i = phi i32 [ %if2.0.i, %entry.if.end16_crit_edge.i ], [ %spec.select53.i, %if.else.i ]
  %conv.i564 = sext i32 %ife.0.i to i64
  %mul17.i = shl nsw i64 %conv.i564, 16
  %conv19.i = zext i32 %div1852.pre-phi.i to i64
  %add.i565 = add nsw i64 %mul17.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i565)
  %cmp164.i.i.i670 = icmp ult i64 %add.i565, 4294967296
  br i1 %cmp164.i.i.i670, label %if.then168.i.i.i674, label %if.else174.i.i.i676, !prof !81

if.then168.i.i.i674:                              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i672 = trunc i64 %add.i565 to i32
  %div172.i.i.i673 = udiv i32 %conv169.i.i.i672, %spec.select.i561
  %extract.t55.i = trunc i32 %div172.i.i.i673 to i16
  br label %div_u64.exit.i678

if.else174.i.i.i676:                              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %258 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select.i561, i64 %add.i565) #12, !srcloc !82
  %asmresult1.i.i.i.i675 = extractvalue { i64, i64 } %258, 1
  %extract.t56.i = trunc i64 %asmresult1.i.i.i.i675 to i16
  %extract.t61.i = trunc i64 %asmresult1.i.i.i.i675 to i32
  br label %div_u64.exit.i678

div_u64.exit.i678:                                ; preds = %if.else174.i.i.i676, %if.then168.i.i.i674
  %dividend.addr.0.i.i.off0.i677 = phi i16 [ %extract.t55.i, %if.then168.i.i.i674 ], [ %extract.t56.i, %if.else174.i.i.i676 ]
  %dividend.addr.0.i.i.off057.i = phi i32 [ %div172.i.i.i673, %if.then168.i.i.i674 ], [ %extract.t61.i, %if.else174.i.i.i676 ]
  %conv21.i = sub i16 0, %dividend.addr.0.i.i.off0.i677
  %259 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool22.not.i = icmp eq i32 %259, 0
  br i1 %tobool22.not.i, label %div_u64.exit.i678.zl10353_calc_input_freq.exit_crit_edge, label %do.end.i679

div_u64.exit.i678.zl10353_calc_input_freq.exit_crit_edge: ; preds = %div_u64.exit.i678
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_calc_input_freq.exit

do.end.i679:                                      ; preds = %div_u64.exit.i678
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i = sub i32 0, %dividend.addr.0.i.i.off057.i
  %conv27.i = zext i16 %conv21.i to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %if2.0.i, i32 noundef %ife.0.i, i32 noundef %spec.select.i561, i32 noundef %sub26.i, i32 noundef %conv27.i) #11
  br label %zl10353_calc_input_freq.exit

zl10353_calc_input_freq.exit:                     ; preds = %do.end.i679, %div_u64.exit.i678.zl10353_calc_input_freq.exit_crit_edge
  %260 = lshr i16 %conv21.i, 8
  %conv38 = trunc i16 %260 to i8
  %261 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i680) #7
  %263 = getelementptr inbounds [2 x i8], ptr %buf.i680, i32 0, i32 1
  %264 = ptrtoint ptr %buf.i680 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 108, ptr %buf.i680, align 1
  %265 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv38, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i681) #7
  %266 = getelementptr inbounds i8, ptr %msg.i681, i32 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 196607, ptr %266, align 4
  %config.i683 = getelementptr inbounds %struct.zl10353_state, ptr %262, i32 0, i32 2
  %268 = ptrtoint ptr %config.i683 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %config.i683, align 4
  %conv.i684 = zext i8 %269 to i16
  %270 = ptrtoint ptr %msg.i681 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv.i684, ptr %msg.i681, align 4
  %flags.i685 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i681, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i685 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i685, align 2
  %buf1.i687 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i681, i32 0, i32 3
  %272 = ptrtoint ptr %buf1.i687 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %buf.i680, ptr %buf1.i687, align 4
  %273 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %262, align 4
  %call.i688 = call i32 @i2c_transfer(ptr noundef %274, ptr noundef nonnull %msg.i681, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i688)
  %cmp.not.i689 = icmp eq i32 %call.i688, 1
  br i1 %cmp.not.i689, label %zl10353_calc_input_freq.exit.zl10353_single_write.exit693_crit_edge, label %do.end.i691

zl10353_calc_input_freq.exit.zl10353_single_write.exit693_crit_edge: ; preds = %zl10353_calc_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit693

do.end.i691:                                      ; preds = %zl10353_calc_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i690 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef %call.i688) #11
  br label %zl10353_single_write.exit693

zl10353_single_write.exit693:                     ; preds = %do.end.i691, %zl10353_calc_input_freq.exit.zl10353_single_write.exit693_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i681) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i680) #7
  %conv42 = trunc i16 %conv21.i to i8
  %275 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i694) #7
  %277 = getelementptr inbounds [2 x i8], ptr %buf.i694, i32 0, i32 1
  %278 = ptrtoint ptr %buf.i694 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 109, ptr %buf.i694, align 1
  %279 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv42, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i695) #7
  %280 = getelementptr inbounds i8, ptr %msg.i695, i32 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 196607, ptr %280, align 4
  %config.i697 = getelementptr inbounds %struct.zl10353_state, ptr %276, i32 0, i32 2
  %282 = ptrtoint ptr %config.i697 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %config.i697, align 4
  %conv.i698 = zext i8 %283 to i16
  %284 = ptrtoint ptr %msg.i695 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.i698, ptr %msg.i695, align 4
  %flags.i699 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i695, i32 0, i32 1
  %285 = ptrtoint ptr %flags.i699 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %flags.i699, align 2
  %buf1.i701 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i695, i32 0, i32 3
  %286 = ptrtoint ptr %buf1.i701 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %buf.i694, ptr %buf1.i701, align 4
  %287 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %276, align 4
  %call.i702 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i695, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i702)
  %cmp.not.i703 = icmp eq i32 %call.i702, 1
  br i1 %cmp.not.i703, label %zl10353_single_write.exit693.zl10353_single_write.exit707_crit_edge, label %do.end.i705

zl10353_single_write.exit693.zl10353_single_write.exit707_crit_edge: ; preds = %zl10353_single_write.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit707

do.end.i705:                                      ; preds = %zl10353_single_write.exit693
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i704 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 109, i32 noundef %call.i702) #11
  br label %zl10353_single_write.exit707

zl10353_single_write.exit707:                     ; preds = %do.end.i705, %zl10353_single_write.exit693.zl10353_single_write.exit707_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i695) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i694) #7
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %289 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %code_rate_HP, align 4
  %switch.tableidx = add i32 %290, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %291 = icmp ult i32 %switch.tableidx, 9
  br i1 %291, label %switch.hole_check, label %zl10353_single_write.exit707.cleanup_crit_edge

zl10353_single_write.exit707.cleanup_crit_edge:   ; preds = %zl10353_single_write.exit707
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %zl10353_single_write.exit707
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 343, %switch.maskindex
  %292 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %292)
  %switch.lobit.not = icmp eq i16 %292, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.zl10353_set_parameters, i32 0, i32 %switch.tableidx
  %293 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %293)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep797 = getelementptr inbounds [9 x i8], ptr @switch.table.zl10353_set_parameters.22, i32 0, i32 %switch.tableidx
  %294 = ptrtoint ptr %switch.gep797 to i32
  call void @__asan_load1_noabort(i32 %294)
  %switch.load798 = load i8, ptr %switch.gep797, align 1
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %295 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %code_rate_LP, align 4
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %296, label %switch.lookup.cleanup_crit_edge [
    i32 2, label %sw.bb63
    i32 3, label %sw.bb67
    i32 5, label %sw.bb71
    i32 7, label %sw.bb75
    i32 1, label %switch.lookup.sw.epilog89_crit_edge
    i32 9, label %switch.lookup.sw.epilog89_crit_edge799
    i32 0, label %sw.bb80
  ]

switch.lookup.sw.epilog89_crit_edge799:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

switch.lookup.sw.epilog89_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb63:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t332 = or i8 %switch.load, 16
  br label %sw.epilog89

sw.bb67:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t331 = or i8 %switch.load, 32
  br label %sw.epilog89

sw.bb71:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t330 = or i8 %switch.load, 48
  br label %sw.epilog89

sw.bb75:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t329 = or i8 %switch.load, 64
  br label %sw.epilog89

sw.bb80:                                          ; preds = %switch.lookup
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %298 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %hierarchy, align 4
  %300 = zext i32 %299 to i64
  call void @__sanitizer_cov_trace_switch(i64 %300, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %299, label %sw.bb80.cleanup_crit_edge [
    i32 4, label %sw.bb80.sw.epilog89_crit_edge
    i32 0, label %sw.bb80.sw.epilog89_crit_edge800
  ]

sw.bb80.sw.epilog89_crit_edge800:                 ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

sw.bb80.sw.epilog89_crit_edge:                    ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

sw.bb80.cleanup_crit_edge:                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog89:                                      ; preds = %sw.bb80.sw.epilog89_crit_edge, %sw.bb80.sw.epilog89_crit_edge800, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %switch.lookup.sw.epilog89_crit_edge, %switch.lookup.sw.epilog89_crit_edge799
  %tps.1.off0 = phi i8 [ %switch.load, %sw.bb80.sw.epilog89_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog89_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog89_crit_edge799 ], [ %extract.t329, %sw.bb75 ], [ %extract.t330, %sw.bb71 ], [ %extract.t331, %sw.bb67 ], [ %extract.t332, %sw.bb63 ], [ %switch.load, %sw.bb80.sw.epilog89_crit_edge800 ]
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %301 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %modulation, align 4
  %303 = zext i32 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %302, label %sw.epilog89.cleanup_crit_edge [
    i32 0, label %sw.epilog89.sw.epilog99_crit_edge
    i32 6, label %sw.epilog89.sw.bb90_crit_edge
    i32 1, label %sw.epilog89.sw.bb90_crit_edge801
    i32 3, label %sw.bb94
  ]

sw.epilog89.sw.bb90_crit_edge801:                 ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90

sw.epilog89.sw.bb90_crit_edge:                    ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90

sw.epilog89.sw.epilog99_crit_edge:                ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99

sw.epilog89.cleanup_crit_edge:                    ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb90:                                          ; preds = %sw.epilog89.sw.bb90_crit_edge, %sw.epilog89.sw.bb90_crit_edge801
  %extract.t323 = or i8 %switch.load798, 32
  br label %sw.epilog99

sw.bb94:                                          ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t321 = or i8 %switch.load798, 64
  br label %sw.epilog99

sw.epilog99:                                      ; preds = %sw.bb94, %sw.bb90, %sw.epilog89.sw.epilog99_crit_edge
  %tps.2.off8 = phi i8 [ %extract.t321, %sw.bb94 ], [ %extract.t323, %sw.bb90 ], [ %switch.load798, %sw.epilog89.sw.epilog99_crit_edge ]
  %304 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %transmission_mode, align 4
  %306 = zext i32 %305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %305, label %sw.epilog99.cleanup_crit_edge [
    i32 0, label %sw.epilog99.sw.epilog107_crit_edge
    i32 2, label %sw.epilog99.sw.epilog107_crit_edge802
    i32 1, label %sw.bb102
  ]

sw.epilog99.sw.epilog107_crit_edge802:            ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

sw.epilog99.sw.epilog107_crit_edge:               ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

sw.epilog99.cleanup_crit_edge:                    ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb102:                                         ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t = or i8 %tps.1.off0, 1
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %sw.bb102, %sw.epilog99.sw.epilog107_crit_edge, %sw.epilog99.sw.epilog107_crit_edge802
  %tps.3.off0 = phi i8 [ %extract.t, %sw.bb102 ], [ %tps.1.off0, %sw.epilog99.sw.epilog107_crit_edge ], [ %tps.1.off0, %sw.epilog99.sw.epilog107_crit_edge802 ]
  %307 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %guard_interval, align 4
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %308, label %sw.epilog107.cleanup_crit_edge [
    i32 0, label %sw.epilog107.sw.epilog123_crit_edge
    i32 4, label %sw.epilog107.sw.epilog123_crit_edge803
    i32 1, label %sw.bb110
    i32 2, label %sw.bb114
    i32 3, label %sw.bb118
  ]

sw.epilog107.sw.epilog123_crit_edge803:           ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog123

sw.epilog107.sw.epilog123_crit_edge:              ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog123

sw.epilog107.cleanup_crit_edge:                   ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb110:                                         ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t302 = or i8 %tps.3.off0, 4
  br label %sw.epilog123

sw.bb114:                                         ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t301 = or i8 %tps.3.off0, 8
  br label %sw.epilog123

sw.bb118:                                         ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t300 = or i8 %tps.3.off0, 12
  br label %sw.epilog123

sw.epilog123:                                     ; preds = %sw.bb118, %sw.bb114, %sw.bb110, %sw.epilog107.sw.epilog123_crit_edge, %sw.epilog107.sw.epilog123_crit_edge803
  %tps.4.off0 = phi i8 [ %extract.t300, %sw.bb118 ], [ %extract.t301, %sw.bb114 ], [ %extract.t302, %sw.bb110 ], [ %tps.3.off0, %sw.epilog107.sw.epilog123_crit_edge ], [ %tps.3.off0, %sw.epilog107.sw.epilog123_crit_edge803 ]
  %hierarchy124 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %310 = ptrtoint ptr %hierarchy124 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %hierarchy124, align 4
  %312 = zext i32 %311 to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %311, label %sw.epilog123.cleanup_crit_edge [
    i32 4, label %sw.epilog123.sw.epilog139_crit_edge
    i32 0, label %sw.epilog123.sw.epilog139_crit_edge804
    i32 1, label %sw.bb126
    i32 2, label %sw.bb130
    i32 3, label %sw.bb134
  ]

sw.epilog123.sw.epilog139_crit_edge804:           ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog139

sw.epilog123.sw.epilog139_crit_edge:              ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog139

sw.epilog123.cleanup_crit_edge:                   ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb126:                                         ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t295 = or i8 %tps.2.off8, 4
  br label %sw.epilog139

sw.bb130:                                         ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t293 = or i8 %tps.2.off8, 8
  br label %sw.epilog139

sw.bb134:                                         ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t291 = or i8 %tps.2.off8, 12
  br label %sw.epilog139

sw.epilog139:                                     ; preds = %sw.bb134, %sw.bb130, %sw.bb126, %sw.epilog123.sw.epilog139_crit_edge, %sw.epilog123.sw.epilog139_crit_edge804
  %tps.5.off8 = phi i8 [ %extract.t291, %sw.bb134 ], [ %extract.t293, %sw.bb130 ], [ %extract.t295, %sw.bb126 ], [ %tps.2.off8, %sw.epilog123.sw.epilog139_crit_edge ], [ %tps.2.off8, %sw.epilog123.sw.epilog139_crit_edge804 ]
  %313 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i708) #7
  %315 = getelementptr inbounds [2 x i8], ptr %buf.i708, i32 0, i32 1
  %316 = ptrtoint ptr %buf.i708 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 110, ptr %buf.i708, align 1
  %317 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %tps.5.off8, ptr %315, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i709) #7
  %318 = getelementptr inbounds i8, ptr %msg.i709, i32 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 196607, ptr %318, align 4
  %config.i711 = getelementptr inbounds %struct.zl10353_state, ptr %314, i32 0, i32 2
  %320 = ptrtoint ptr %config.i711 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %config.i711, align 4
  %conv.i712 = zext i8 %321 to i16
  %322 = ptrtoint ptr %msg.i709 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv.i712, ptr %msg.i709, align 4
  %flags.i713 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i709, i32 0, i32 1
  %323 = ptrtoint ptr %flags.i713 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 0, ptr %flags.i713, align 2
  %buf1.i715 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i709, i32 0, i32 3
  %324 = ptrtoint ptr %buf1.i715 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %buf.i708, ptr %buf1.i715, align 4
  %325 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %314, align 4
  %call.i716 = call i32 @i2c_transfer(ptr noundef %326, ptr noundef nonnull %msg.i709, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i716)
  %cmp.not.i717 = icmp eq i32 %call.i716, 1
  br i1 %cmp.not.i717, label %sw.epilog139.zl10353_single_write.exit721_crit_edge, label %do.end.i719

sw.epilog139.zl10353_single_write.exit721_crit_edge: ; preds = %sw.epilog139
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit721

do.end.i719:                                      ; preds = %sw.epilog139
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i718 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 110, i32 noundef %call.i716) #11
  br label %zl10353_single_write.exit721

zl10353_single_write.exit721:                     ; preds = %do.end.i719, %sw.epilog139.zl10353_single_write.exit721_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i709) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i708) #7
  %327 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i722) #7
  %329 = getelementptr inbounds [2 x i8], ptr %buf.i722, i32 0, i32 1
  %330 = ptrtoint ptr %buf.i722 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 111, ptr %buf.i722, align 1
  %331 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %tps.4.off0, ptr %329, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i723) #7
  %332 = getelementptr inbounds i8, ptr %msg.i723, i32 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 196607, ptr %332, align 4
  %config.i725 = getelementptr inbounds %struct.zl10353_state, ptr %328, i32 0, i32 2
  %334 = ptrtoint ptr %config.i725 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %config.i725, align 4
  %conv.i726 = zext i8 %335 to i16
  %336 = ptrtoint ptr %msg.i723 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv.i726, ptr %msg.i723, align 4
  %flags.i727 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i723, i32 0, i32 1
  %337 = ptrtoint ptr %flags.i727 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %flags.i727, align 2
  %buf1.i729 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i723, i32 0, i32 3
  %338 = ptrtoint ptr %buf1.i729 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %buf.i722, ptr %buf1.i729, align 4
  %339 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %328, align 4
  %call.i730 = call i32 @i2c_transfer(ptr noundef %340, ptr noundef nonnull %msg.i723, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i730)
  %cmp.not.i731 = icmp eq i32 %call.i730, 1
  br i1 %cmp.not.i731, label %zl10353_single_write.exit721.zl10353_single_write.exit735_crit_edge, label %do.end.i733

zl10353_single_write.exit721.zl10353_single_write.exit735_crit_edge: ; preds = %zl10353_single_write.exit721
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit735

do.end.i733:                                      ; preds = %zl10353_single_write.exit721
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i732 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 111, i32 noundef %call.i730) #11
  br label %zl10353_single_write.exit735

zl10353_single_write.exit735:                     ; preds = %do.end.i733, %zl10353_single_write.exit721.zl10353_single_write.exit735_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i723) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i722) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %341 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %342, null
  br i1 %tobool.not, label %zl10353_single_write.exit735.if.end153_crit_edge, label %if.then149

zl10353_single_write.exit735.if.end153_crit_edge: ; preds = %zl10353_single_write.exit735
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then149:                                       ; preds = %zl10353_single_write.exit735
  call void @__sanitizer_cov_trace_pc() #9
  %call152 = call i32 %342(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %zl10353_single_write.exit735.if.end153_crit_edge
  %no_tuner = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2, i32 3
  %343 = ptrtoint ptr %no_tuner to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %no_tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool154.not = icmp eq i32 %344, 0
  br i1 %tobool154.not, label %if.else, label %if.then155

if.then155:                                       ; preds = %if.end153
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %345 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %set_params, align 4
  %tobool157.not = icmp eq ptr %346, null
  br i1 %tobool157.not, label %if.then155.if.end185_crit_edge, label %if.then158

if.then155.if.end185_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then158:                                       ; preds = %if.then155
  %call162 = call i32 %346(ptr noundef %fe) #7
  %347 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool165.not = icmp eq ptr %348, null
  br i1 %tobool165.not, label %if.then158.if.end185_crit_edge, label %if.then166

if.then158.if.end185_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then166:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = call i32 %348(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end185

if.else:                                          ; preds = %if.end153
  %calc_regs = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 15
  %349 = ptrtoint ptr %calc_regs to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %calc_regs, align 4
  %tobool174.not = icmp eq ptr %350, null
  br i1 %tobool174.not, label %if.else.if.end185_crit_edge, label %if.then175

if.else.if.end185_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then175:                                       ; preds = %if.else
  %add.ptr = getelementptr inbounds i8, ptr %pllbuf, i32 1
  %call179 = call i32 %350(ptr noundef %fe, ptr noundef %add.ptr, i32 noundef 5) #7
  %351 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %add.ptr, align 1
  %shl = shl i8 %352, 1
  store i8 %shl, ptr %add.ptr, align 1
  %353 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %354 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %zl10353_single_write.exit.i.for.cond.i_crit_edge, %if.then175
  %i.0.i = phi i32 [ 0, %if.then175 ], [ %add2.i, %zl10353_single_write.exit.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, 5
  br i1 %exitcond.not.i, label %for.cond.i.if.end185_crit_edge, label %for.body.i

for.cond.i.if.end185_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

for.body.i:                                       ; preds = %for.cond.i
  %355 = ptrtoint ptr %pllbuf to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %pllbuf, align 1
  %357 = trunc i32 %i.0.i to i8
  %conv1.i = add i8 %356, %357
  %add2.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx3.i = getelementptr i8, ptr %pllbuf, i32 %add2.i
  %358 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx3.i, align 1
  %360 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %362 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv1.i, ptr %buf.i.i, align 1
  %363 = ptrtoint ptr %353 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %359, ptr %353, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %364 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 196607, ptr %354, align 4
  %config.i.i = getelementptr inbounds %struct.zl10353_state, ptr %361, i32 0, i32 2
  %365 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %config.i.i, align 4
  %conv.i.i = zext i8 %366 to i16
  %367 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %368 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 0, ptr %flags.i.i, align 2
  %369 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %370 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %361, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %for.body.i.zl10353_single_write.exit.i_crit_edge, label %do.end.i.i

for.body.i.zl10353_single_write.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i8 %conv1.i to i32
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv3.i.i, i32 noundef %call.i.i) #11
  br label %zl10353_single_write.exit.i

zl10353_single_write.exit.i:                      ; preds = %do.end.i.i, %for.body.i.zl10353_single_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %for.body.i.zl10353_single_write.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %tobool.not.i736 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i736, label %zl10353_single_write.exit.i.for.cond.i_crit_edge, label %zl10353_single_write.exit.i.if.end185_crit_edge

zl10353_single_write.exit.i.if.end185_crit_edge:  ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

zl10353_single_write.exit.i.for.cond.i_crit_edge: ; preds = %zl10353_single_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end185:                                        ; preds = %zl10353_single_write.exit.i.if.end185_crit_edge, %for.cond.i.if.end185_crit_edge, %if.else.if.end185_crit_edge, %if.then166, %if.then158.if.end185_crit_edge, %if.then155.if.end185_crit_edge
  %372 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i738) #7
  %374 = getelementptr inbounds [2 x i8], ptr %buf.i738, i32 0, i32 1
  %375 = ptrtoint ptr %buf.i738 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 95, ptr %buf.i738, align 1
  %376 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 19, ptr %374, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i739) #7
  %377 = getelementptr inbounds i8, ptr %msg.i739, i32 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 196607, ptr %377, align 4
  %config.i741 = getelementptr inbounds %struct.zl10353_state, ptr %373, i32 0, i32 2
  %379 = ptrtoint ptr %config.i741 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %config.i741, align 4
  %conv.i742 = zext i8 %380 to i16
  %381 = ptrtoint ptr %msg.i739 to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %conv.i742, ptr %msg.i739, align 4
  %flags.i743 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i739, i32 0, i32 1
  %382 = ptrtoint ptr %flags.i743 to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 0, ptr %flags.i743, align 2
  %buf1.i745 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i739, i32 0, i32 3
  %383 = ptrtoint ptr %buf1.i745 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %buf.i738, ptr %buf1.i745, align 4
  %384 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %373, align 4
  %call.i746 = call i32 @i2c_transfer(ptr noundef %385, ptr noundef nonnull %msg.i739, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i746)
  %cmp.not.i747 = icmp eq i32 %call.i746, 1
  br i1 %cmp.not.i747, label %if.end185.zl10353_single_write.exit751_crit_edge, label %do.end.i749

if.end185.zl10353_single_write.exit751_crit_edge: ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit751

do.end.i749:                                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 95, i32 noundef %call.i746) #11
  br label %zl10353_single_write.exit751

zl10353_single_write.exit751:                     ; preds = %do.end.i749, %if.end185.zl10353_single_write.exit751_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i739) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i738) #7
  %386 = ptrtoint ptr %no_tuner to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %no_tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool189.not = icmp eq i32 %387, 0
  br i1 %tobool189.not, label %lor.lhs.false190, label %zl10353_single_write.exit751.if.then196_crit_edge

zl10353_single_write.exit751.if.then196_crit_edge: ; preds = %zl10353_single_write.exit751
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then196

lor.lhs.false190:                                 ; preds = %zl10353_single_write.exit751
  %calc_regs193 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 15
  %388 = ptrtoint ptr %calc_regs193 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %calc_regs193, align 4
  %cmp194 = icmp eq ptr %389, null
  br i1 %cmp194, label %lor.lhs.false190.if.then196_crit_edge, label %if.else198

lor.lhs.false190.if.then196_crit_edge:            ; preds = %lor.lhs.false190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then196

if.then196:                                       ; preds = %lor.lhs.false190.if.then196_crit_edge, %zl10353_single_write.exit751.if.then196_crit_edge
  %390 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i752) #7
  %392 = getelementptr inbounds [2 x i8], ptr %buf.i752, i32 0, i32 1
  %393 = ptrtoint ptr %buf.i752 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 113, ptr %buf.i752, align 1
  %394 = ptrtoint ptr %392 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 1, ptr %392, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i753) #7
  %395 = getelementptr inbounds i8, ptr %msg.i753, i32 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 196607, ptr %395, align 4
  %config.i755 = getelementptr inbounds %struct.zl10353_state, ptr %391, i32 0, i32 2
  %397 = ptrtoint ptr %config.i755 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %config.i755, align 4
  %conv.i756 = zext i8 %398 to i16
  %399 = ptrtoint ptr %msg.i753 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %conv.i756, ptr %msg.i753, align 4
  %flags.i757 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i753, i32 0, i32 1
  %400 = ptrtoint ptr %flags.i757 to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 0, ptr %flags.i757, align 2
  %buf1.i759 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i753, i32 0, i32 3
  %401 = ptrtoint ptr %buf1.i759 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %buf.i752, ptr %buf1.i759, align 4
  %402 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %391, align 4
  %call.i760 = call i32 @i2c_transfer(ptr noundef %403, ptr noundef nonnull %msg.i753, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i760)
  %cmp.not.i761 = icmp eq i32 %call.i760, 1
  br i1 %cmp.not.i761, label %if.then196.zl10353_single_write.exit765_crit_edge, label %do.end.i763

if.then196.zl10353_single_write.exit765_crit_edge: ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit765

do.end.i763:                                      ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i762 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 113, i32 noundef %call.i760) #11
  br label %zl10353_single_write.exit765

zl10353_single_write.exit765:                     ; preds = %do.end.i763, %if.then196.zl10353_single_write.exit765_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i753) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i752) #7
  br label %cleanup

if.else198:                                       ; preds = %lor.lhs.false190
  %404 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i766) #7
  %406 = getelementptr inbounds [2 x i8], ptr %buf.i766, i32 0, i32 1
  %407 = ptrtoint ptr %buf.i766 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 112, ptr %buf.i766, align 1
  %408 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 1, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i767) #7
  %409 = getelementptr inbounds i8, ptr %msg.i767, i32 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 196607, ptr %409, align 4
  %config.i769 = getelementptr inbounds %struct.zl10353_state, ptr %405, i32 0, i32 2
  %411 = ptrtoint ptr %config.i769 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %config.i769, align 4
  %conv.i770 = zext i8 %412 to i16
  %413 = ptrtoint ptr %msg.i767 to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %conv.i770, ptr %msg.i767, align 4
  %flags.i771 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i767, i32 0, i32 1
  %414 = ptrtoint ptr %flags.i771 to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 0, ptr %flags.i771, align 2
  %buf1.i773 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i767, i32 0, i32 3
  %415 = ptrtoint ptr %buf1.i773 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %buf.i766, ptr %buf1.i773, align 4
  %416 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %405, align 4
  %call.i774 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %msg.i767, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i774)
  %cmp.not.i775 = icmp eq i32 %call.i774, 1
  br i1 %cmp.not.i775, label %if.else198.zl10353_single_write.exit779_crit_edge, label %do.end.i777

if.else198.zl10353_single_write.exit779_crit_edge: ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit779

do.end.i777:                                      ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 112, i32 noundef %call.i774) #11
  br label %zl10353_single_write.exit779

zl10353_single_write.exit779:                     ; preds = %do.end.i777, %if.else198.zl10353_single_write.exit779_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i767) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i766) #7
  br label %cleanup

cleanup:                                          ; preds = %zl10353_single_write.exit779, %zl10353_single_write.exit765, %sw.epilog123.cleanup_crit_edge, %sw.epilog107.cleanup_crit_edge, %sw.epilog99.cleanup_crit_edge, %sw.epilog89.cleanup_crit_edge, %sw.bb80.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %zl10353_single_write.exit707.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %zl10353_single_write.exit707.cleanup_crit_edge ], [ -22, %sw.bb80.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog89.cleanup_crit_edge ], [ -22, %sw.epilog99.cleanup_crit_edge ], [ -22, %sw.epilog107.cleanup_crit_edge ], [ -22, %sw.epilog123.cleanup_crit_edge ], [ 0, %zl10353_single_write.exit779 ], [ 0, %zl10353_single_write.exit765 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pllbuf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @zl10353_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %fe_tune_settings, align 4
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
define internal i32 @zl10353_get_parameters(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #0 align 64 {
entry:
  %b0.i130 = alloca [1 x i8], align 1
  %b1.i131 = alloca [1 x i8], align 1
  %msg.i132 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i110 = alloca [1 x i8], align 1
  %b1.i111 = alloca [1 x i8], align 1
  %msg.i112 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i90 = alloca [1 x i8], align 1
  %b1.i91 = alloca [1 x i8], align 1
  %msg.i92 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 6, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %call.i) #11
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i90) #7
  %20 = ptrtoint ptr %b0.i90 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %b0.i90, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i91) #7
  %21 = ptrtoint ptr %b1.i91 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b1.i91, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i92) #7
  %22 = getelementptr inbounds i8, ptr %msg.i92, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i94 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i92 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i94, ptr %msg.i92, align 4
  %flags.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i95, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i90, ptr %buf.i97, align 4
  %arrayinit.element.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i98 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i94, ptr %arrayinit.element.i98, align 4
  %flags6.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i99 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i99, align 2
  %len7.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i100 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i100, align 4
  %buf8.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i91, ptr %buf8.i101, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i102 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i92, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i102)
  %cmp.not.i103 = icmp eq i32 %call.i102, 2
  br i1 %cmp.not.i103, label %if.end.i107, label %do.end.i105

do.end.i105:                                      ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef %call.i102) #11
  br label %zl10353_read_register.exit109

if.end.i107:                                      ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i91 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i91, align 1
  %conv14.i106 = zext i8 %37 to i32
  br label %zl10353_read_register.exit109

zl10353_read_register.exit109:                    ; preds = %if.end.i107, %do.end.i105
  %retval.0.i108 = phi i32 [ %call.i102, %do.end.i105 ], [ %conv14.i106, %if.end.i107 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i92) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i91) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i90) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i108)
  %cmp2 = icmp slt i32 %retval.0.i108, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %zl10353_read_register.exit109.cleanup_crit_edge, label %if.end

zl10353_read_register.exit109.cleanup_crit_edge:  ; preds = %zl10353_read_register.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %zl10353_read_register.exit109
  %and = and i32 %retval.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  %and5 = and i32 %retval.0.i108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  %or.cond89 = select i1 %cmp3, i1 true, i1 %cmp6
  br i1 %or.cond89, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i110) #7
  %38 = ptrtoint ptr %b0.i110 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 29, ptr %b0.i110, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i111) #7
  %39 = ptrtoint ptr %b1.i111 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i111, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i112) #7
  %40 = getelementptr inbounds i8, ptr %msg.i112, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config.i, align 4
  %conv.i114 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i112 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i114, ptr %msg.i112, align 4
  %flags.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i115, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i110, ptr %buf.i117, align 4
  %arrayinit.element.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i118 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i114, ptr %arrayinit.element.i118, align 4
  %flags6.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 1, i32 1
  %49 = ptrtoint ptr %flags6.i119 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags6.i119, align 2
  %len7.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 1, i32 2
  %50 = ptrtoint ptr %len7.i120 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len7.i120, align 4
  %buf8.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112, i32 1, i32 3
  %51 = ptrtoint ptr %buf8.i121 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b1.i111, ptr %buf8.i121, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i122 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i112, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i122)
  %cmp.not.i123 = icmp eq i32 %call.i122, 2
  br i1 %cmp.not.i123, label %if.end.i127, label %do.end.i125

do.end.i125:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %call.i122) #11
  br label %zl10353_read_register.exit129

if.end.i127:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i111 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i111, align 1
  %conv14.i126 = zext i8 %55 to i32
  br label %zl10353_read_register.exit129

zl10353_read_register.exit129:                    ; preds = %if.end.i127, %do.end.i125
  %retval.0.i128 = phi i32 [ %call.i122, %do.end.i125 ], [ %conv14.i126, %if.end.i127 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i112) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i111) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i110) #7
  %shl = shl i32 %retval.0.i128, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i130) #7
  %56 = ptrtoint ptr %b0.i130 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 30, ptr %b0.i130, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i131) #7
  %57 = ptrtoint ptr %b1.i131 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %b1.i131, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i132) #7
  %58 = getelementptr inbounds i8, ptr %msg.i132, i32 4
  %59 = call ptr @memset(ptr %58, i32 255, i32 16)
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %config.i, align 4
  %conv.i134 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i132 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i134, ptr %msg.i132, align 4
  %flags.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i135 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i135, align 2
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %58, align 4
  %buf.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b0.i130, ptr %buf.i137, align 4
  %arrayinit.element.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 1
  %66 = ptrtoint ptr %arrayinit.element.i138 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i134, ptr %arrayinit.element.i138, align 4
  %flags6.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 1, i32 1
  %67 = ptrtoint ptr %flags6.i139 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags6.i139, align 2
  %len7.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 1, i32 2
  %68 = ptrtoint ptr %len7.i140 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %len7.i140, align 4
  %buf8.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i132, i32 1, i32 3
  %69 = ptrtoint ptr %buf8.i141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %b1.i131, ptr %buf8.i141, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i142 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i132, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i142)
  %cmp.not.i143 = icmp eq i32 %call.i142, 2
  br i1 %cmp.not.i143, label %if.end.i147, label %do.end.i145

do.end.i145:                                      ; preds = %zl10353_read_register.exit129
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 30, i32 noundef %call.i142) #11
  br label %zl10353_read_register.exit149

if.end.i147:                                      ; preds = %zl10353_read_register.exit129
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %b1.i131 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i131, align 1
  %conv14.i146 = zext i8 %73 to i32
  br label %zl10353_read_register.exit149

zl10353_read_register.exit149:                    ; preds = %if.end.i147, %do.end.i145
  %retval.0.i148 = phi i32 [ %call.i142, %do.end.i145 ], [ %conv14.i146, %if.end.i147 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i132) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i131) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i130) #7
  %or = or i32 %retval.0.i148, %shl
  %74 = lshr i32 %or, 7
  %and12 = and i32 %74, 7
  %arrayidx = getelementptr [8 x i8], ptr @zl10353_get_parameters.tps_fec_to_api, i32 0, i32 %and12
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %76 to i32
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %77 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv13, ptr %code_rate_HP, align 4
  %78 = lshr i32 %retval.0.i148, 4
  %and16 = and i32 %78, 7
  %arrayidx17 = getelementptr [8 x i8], ptr @zl10353_get_parameters.tps_fec_to_api, i32 0, i32 %and16
  %79 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %80 to i32
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %81 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv18, ptr %code_rate_LP, align 4
  %82 = lshr i32 %or, 13
  %and21 = and i32 %82, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and21)
  %.not = icmp eq i32 %and21, 3
  br i1 %.not, label %zl10353_read_register.exit149.sw.epilog_crit_edge, label %switch.lookup

zl10353_read_register.exit149.sw.epilog_crit_edge: ; preds = %zl10353_read_register.exit149
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %zl10353_read_register.exit149
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.zl10353_get_parameters, i32 0, i32 %and21
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %zl10353_read_register.exit149.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 6, %zl10353_read_register.exit149.sw.epilog_crit_edge ]
  %modulation26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %84 = ptrtoint ptr %modulation26 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink, ptr %modulation26, align 4
  %and28 = and i32 %retval.0.i148, 1
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %85 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and28, ptr %transmission_mode, align 4
  %86 = lshr i32 %retval.0.i148, 2
  %and31 = and i32 %86, 3
  %guard_interval38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %87 = ptrtoint ptr %guard_interval38 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and31, ptr %guard_interval38, align 4
  %conv11 = lshr i32 %or, 10
  %and44 = and i32 %conv11, 7
  %88 = call i32 @llvm.umin.i32(i32 %and44, i32 4)
  %hierarchy53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %89 = ptrtoint ptr %hierarchy53 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %hierarchy53, align 4
  %frequency = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 5
  %90 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frequency, align 4
  %92 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %c, align 4
  %bandwidth = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 3
  %93 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bandwidth, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %95 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %bandwidth_hz, align 4
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %96 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %inversion, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %zl10353_read_register.exit109.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -121, %zl10353_read_register.exit109.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
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
  store i8 6, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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
  br i1 %cmp.not.i, label %zl10353_read_register.exit.thread, label %zl10353_read_register.exit

zl10353_read_register.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  br label %if.end

zl10353_read_register.exit:                       ; preds = %entry
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %zl10353_read_register.exit.cleanup_crit_edge, label %zl10353_read_register.exit.if.end_crit_edge

zl10353_read_register.exit.if.end_crit_edge:      ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

zl10353_read_register.exit.cleanup_crit_edge:     ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %zl10353_read_register.exit.if.end_crit_edge, %zl10353_read_register.exit.thread
  %retval.0.i92 = phi i32 [ %conv14.i, %zl10353_read_register.exit.thread ], [ %call.i, %zl10353_read_register.exit.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i50) #7
  %20 = ptrtoint ptr %b0.i50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %b0.i50, align 1
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
  br i1 %cmp.not.i63, label %zl10353_read_register.exit69.thread, label %zl10353_read_register.exit69

zl10353_read_register.exit69.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i51, align 1
  %conv14.i66 = zext i8 %37 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i51) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i50) #7
  br label %if.end4

zl10353_read_register.exit69:                     ; preds = %if.end
  %call13.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef %call.i62) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i51) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp2 = icmp slt i32 %call.i62, 0
  br i1 %cmp2, label %zl10353_read_register.exit69.cleanup_crit_edge, label %zl10353_read_register.exit69.if.end4_crit_edge

zl10353_read_register.exit69.if.end4_crit_edge:   ; preds = %zl10353_read_register.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

zl10353_read_register.exit69.cleanup_crit_edge:   ; preds = %zl10353_read_register.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %zl10353_read_register.exit69.if.end4_crit_edge, %zl10353_read_register.exit69.thread
  %retval.0.i6895 = phi i32 [ %conv14.i66, %zl10353_read_register.exit69.thread ], [ %call.i62, %zl10353_read_register.exit69.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i70) #7
  %38 = ptrtoint ptr %b0.i70 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %b0.i70, align 1
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
  br i1 %cmp.not.i83, label %zl10353_read_register.exit89.thread, label %zl10353_read_register.exit89

zl10353_read_register.exit89.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i71 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i71, align 1
  %conv14.i86 = zext i8 %55 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i71) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i70) #7
  br label %if.end8

zl10353_read_register.exit89:                     ; preds = %if.end4
  %call13.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %call.i82) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i72) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i71) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp6 = icmp slt i32 %call.i82, 0
  br i1 %cmp6, label %zl10353_read_register.exit89.cleanup_crit_edge, label %zl10353_read_register.exit89.if.end8_crit_edge

zl10353_read_register.exit89.if.end8_crit_edge:   ; preds = %zl10353_read_register.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

zl10353_read_register.exit89.cleanup_crit_edge:   ; preds = %zl10353_read_register.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %zl10353_read_register.exit89.if.end8_crit_edge, %zl10353_read_register.exit89.thread
  %retval.0.i8898 = phi i32 [ %conv14.i86, %zl10353_read_register.exit89.thread ], [ %call.i82, %zl10353_read_register.exit89.if.end8_crit_edge ]
  %and = lshr i32 %retval.0.i92, 1
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
  %and21 = and i32 %retval.0.i6895, 16
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

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %zl10353_read_register.exit89.cleanup_crit_edge, %zl10353_read_register.exit69.cleanup_crit_edge, %zl10353_read_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %zl10353_read_register.exit.cleanup_crit_edge ], [ -121, %zl10353_read_register.exit69.cleanup_crit_edge ], [ -121, %zl10353_read_register.exit89.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
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
  store i8 17, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef %call.i) #11
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i7) #7
  %20 = ptrtoint ptr %b0.i7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %b0.i7, align 1
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

do.end.i22:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef %call.i19) #11
  br label %zl10353_read_register.exit26

if.end.i24:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i8, align 1
  %conv14.i23 = zext i8 %37 to i32
  br label %zl10353_read_register.exit26

zl10353_read_register.exit26:                     ; preds = %if.end.i24, %do.end.i22
  %retval.0.i25 = phi i32 [ %call.i19, %do.end.i22 ], [ %conv14.i23, %if.end.i24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i7) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i27) #7
  %38 = ptrtoint ptr %b0.i27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 19, ptr %b0.i27, align 1
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

do.end.i42:                                       ; preds = %zl10353_read_register.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 19, i32 noundef %call.i39) #11
  br label %zl10353_read_register.exit46

if.end.i44:                                       ; preds = %zl10353_read_register.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b1.i28, align 1
  %conv14.i43 = zext i8 %55 to i32
  br label %zl10353_read_register.exit46

zl10353_read_register.exit46:                     ; preds = %if.end.i44, %do.end.i42
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
define internal i32 @zl10353_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
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
  store i8 10, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 10, i32 noundef %call.i) #11
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i7) #7
  %20 = ptrtoint ptr %b0.i7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 11, ptr %b0.i7, align 1
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

do.end.i22:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 11, i32 noundef %call.i19) #11
  br label %zl10353_read_register.exit26

if.end.i24:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i8, align 1
  %conv14.i23 = zext i8 %37 to i32
  br label %zl10353_read_register.exit26

zl10353_read_register.exit26:                     ; preds = %if.end.i24, %do.end.i22
  %retval.0.i25 = phi i32 [ %call.i19, %do.end.i22 ], [ %conv14.i23, %if.end.i24 ]
  %shl = shl i32 %retval.0.i, 10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i7) #7
  %shl2 = shl i32 %retval.0.i25, 2
  %or = or i32 %shl2, %shl
  %38 = trunc i32 %or to i16
  %conv5 = xor i16 %38, -4
  %39 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
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
  %2 = load i32, ptr @debug_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zl10353_dump_regs(ptr noundef %fe)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef %call.i) #11
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %20 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv1 = and i32 %retval.0.i, 255
  %mul = mul nuw nsw i32 %conv1, 10
  %div4 = lshr i32 %mul, 3
  %conv2 = trunc i32 %div4 to i16
  %21 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv2, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
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
  store i8 20, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
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
  br label %zl10353_read_register.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %19 to i32
  br label %zl10353_read_register.exit

zl10353_read_register.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv14.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i7) #7
  %20 = ptrtoint ptr %b0.i7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 21, ptr %b0.i7, align 1
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

do.end.i22:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 21, i32 noundef %call.i19) #11
  br label %zl10353_read_register.exit26

if.end.i24:                                       ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i8, align 1
  %conv14.i23 = zext i8 %37 to i32
  br label %zl10353_read_register.exit26

zl10353_read_register.exit26:                     ; preds = %if.end.i24, %do.end.i22
  %retval.0.i25 = phi i32 [ %call.i19, %do.end.i22 ], [ %conv14.i23, %if.end.i24 ]
  %shl = shl i32 %retval.0.i, 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i7) #7
  %or = or i32 %retval.0.i25, %shl
  %ucblocks2 = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %ucblocks2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucblocks2, align 4
  %add = add i32 %39, %or
  store i32 %add, ptr %ucblocks2, align 4
  %40 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10353_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %disable_i2c_gate_ctrl = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %disable_i2c_gate_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disable_i2c_gate_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  %spec.select = select i1 %tobool1.not, i8 10, i8 26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 98, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf1.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.zl10353_single_write.exit_crit_edge, label %do.end.i

if.end.zl10353_single_write.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10353_single_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 98, i32 noundef %call.i) #11
  br label %zl10353_single_write.exit

zl10353_single_write.exit:                        ; preds = %do.end.i, %if.end.zl10353_single_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end.zl10353_single_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %zl10353_single_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %zl10353_single_write.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zl10353_dump_regs(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
if.end9.peel:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.zl10353_state, ptr %1, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %call8.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = call ptr @memset(ptr %2, i32 255, i32 16)
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i.peel = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.peel, ptr %msg.i, align 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %2, align 4
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.peel, ptr %arrayinit.element.i, align 4
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1.i, ptr %buf8.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i.peel = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.peel)
  %cmp.not.i.peel = icmp eq i32 %call.i.peel, 2
  br i1 %cmp.not.i.peel, label %zl10353_read_register.exit.thread.peel, label %zl10353_read_register.exit.peel

zl10353_read_register.exit.peel:                  ; preds = %if.end9.peel
  %call13.i.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.peel) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.peel)
  %cmp11.peel = icmp sgt i32 %call.i.peel, -1
  br i1 %cmp11.peel, label %zl10353_read_register.exit.peel.do.end16.peel_crit_edge, label %do.end23.peel

zl10353_read_register.exit.peel.do.end16.peel_crit_edge: ; preds = %zl10353_read_register.exit.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.peel

do.end23.peel:                                    ; preds = %zl10353_read_register.exit.peel
  call void @__sanitizer_cov_trace_pc() #9
  %call25.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %for.cond.preheader

zl10353_read_register.exit.thread.peel:           ; preds = %if.end9.peel
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  %conv14.i.peel = zext i8 %19 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  br label %do.end16.peel

do.end16.peel:                                    ; preds = %zl10353_read_register.exit.thread.peel, %zl10353_read_register.exit.peel.do.end16.peel_crit_edge
  %retval.0.i45.peel = phi i32 [ %conv14.i.peel, %zl10353_read_register.exit.thread.peel ], [ %call.i.peel, %zl10353_read_register.exit.peel.do.end16.peel_crit_edge ]
  %conv19.peel = and i32 %retval.0.i45.peel, 255
  %call20.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv19.peel) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end16.peel, %do.end23.peel
  br label %for.cond

for.cond:                                         ; preds = %if.end26.for.cond_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end26.for.cond_crit_edge ], [ 1, %for.cond.preheader ]
  %rem = and i32 %indvars.iv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %do.end5, label %for.cond.if.end9_crit_edge

for.cond.if.end9_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end5:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %indvars.iv) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end5, %for.cond.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %20 = trunc i32 %indvars.iv to i8
  %21 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %23 = call ptr @memset(ptr %2, i32 255, i32 16)
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %msg.i, align 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %2, align 4
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i, ptr %buf.i, align 4
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %31 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i, align 2
  %32 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i, align 4
  %33 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i, ptr %buf8.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %zl10353_read_register.exit.thread, label %zl10353_read_register.exit

zl10353_read_register.exit.thread:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i, align 1
  %conv14.i = zext i8 %37 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  br label %do.end16

zl10353_read_register.exit:                       ; preds = %if.end9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %indvars.iv, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp11 = icmp sgt i32 %call.i, -1
  br i1 %cmp11, label %zl10353_read_register.exit.do.end16_crit_edge, label %do.end23

zl10353_read_register.exit.do.end16_crit_edge:    ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %zl10353_read_register.exit.do.end16_crit_edge, %zl10353_read_register.exit.thread
  %retval.0.i45 = phi i32 [ %conv14.i, %zl10353_read_register.exit.thread ], [ %call.i, %zl10353_read_register.exit.do.end16_crit_edge ]
  %conv19 = and i32 %retval.0.i45, 255
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv19) #11
  br label %if.end26

do.end23:                                         ; preds = %zl10353_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %do.end16
  %cmp28 = icmp eq i32 %indvars.iv, 255
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %cmp28, label %do.end34, label %if.end26.for.cond_crit_edge, !llvm.loop !83

if.end26.for.cond_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  ret void
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

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 658, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 659, i32 1}
!5 = !{ptr @__param_debug_regs, !6, !"__param_debug_regs", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 661, i32 1}
!7 = !{ptr @__UNIQUE_ID_debug_regstype292, !6, !"__UNIQUE_ID_debug_regstype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug_regs293, !9, !"__UNIQUE_ID_debug_regs293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 662, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 664, i32 1}
!12 = !{ptr @__UNIQUE_ID_author295, !13, !"__UNIQUE_ID_author295", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 665, i32 1}
!14 = !{ptr @__UNIQUE_ID_file296, !15, !"__UNIQUE_ID_file296", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 666, i32 1}
!16 = !{ptr @__UNIQUE_ID_license297, !15, !"__UNIQUE_ID_license297", i1 false, i1 false}
!17 = !{ptr @__ksymtab_zl10353_attach, !18, !"__ksymtab_zl10353_attach", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 668, i32 1}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 31, i32 12}
!21 = !{ptr @debug_regs, !22, !"debug_regs", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 37, i32 12}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 78, i32 3}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zl10353_read_register._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @zl10353_read_register._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @zl10353_ops, !30, !"zl10353_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 624, i32 38}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 96, i32 5}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @zl10353_dump_regs._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @zl10353_dump_regs._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 97, i32 4}
!38 = !{ptr @zl10353_dump_regs._entry.5, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @zl10353_dump_regs._entry_ptr.7, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 101, i32 4}
!42 = !{ptr @zl10353_dump_regs._entry.8, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @zl10353_dump_regs._entry_ptr.10, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 103, i32 4}
!46 = !{ptr @zl10353_dump_regs._entry.11, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @zl10353_dump_regs._entry_ptr.13, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @zl10353_dump_regs._entry.14, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 107, i32 2}
!50 = !{ptr @zl10353_dump_regs._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"zl10353_softdown", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 160, i32 12}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 47, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @zl10353_single_write._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @zl10353_single_write._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 126, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @zl10353_calc_nominal_rate._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @zl10353_calc_nominal_rate._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 154, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @zl10353_calc_input_freq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @zl10353_calc_input_freq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @zl10353_get_parameters.tps_fec_to_api, !69, !"tps_fec_to_api", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/zl10353.c", i32 365, i32 18}
!70 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!71 = !{ptr @__param_str_debug_regs, !6, !"__param_str_debug_regs", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148613943, i64 2148614223, i64 2148614557, i64 2148614891}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.peeled.count", i32 1}
