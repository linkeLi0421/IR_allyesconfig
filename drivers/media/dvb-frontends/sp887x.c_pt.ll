; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/sp887x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/sp887x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sp887x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_sp887x_attach\09\09\09\09"
module asm "\09.long\09__crc_sp887x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sp887x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22sp887x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_sp887x_attach:\09\09\09\09\09"
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
%struct.sp887x_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.sp887x_config = type { i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@sp887x_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Spase SP887x DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50500000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1073753774 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @sp887x_release, ptr null, ptr @sp887x_init, ptr @sp887x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp887x_setup_frontend_parameters, ptr @sp887x_get_tune_settings, ptr null, ptr @sp887x_read_status, ptr @sp887x_read_ber, ptr @sp887x_read_signal_strength, ptr @sp887x_read_snr, ptr @sp887x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp887x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [13 x i8] c"sp887x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"sp887x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [64 x i8] c"sp887x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"sp887x.description=Spase sp887x DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [47 x i8] c"sp887x.file=drivers/media/dvb-frontends/sp887x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"sp887x.license=GPL\00", section ".modinfo", align 1
@__kstrtab_sp887x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sp887x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_sp887x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sp887x_attach to i32), ptr @__kstrtab_sp887x_attach, ptr @__kstrtabns_sp887x_attach }, section "___ksymtab+sp887x_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sp887x_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: readreg error (ret == %i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sp887x_readreg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/sp887x.c\00", [59 x i8] zeroinitializer }, align 32
@sp887x_readreg._entry_ptr = internal global ptr @sp887x_readreg._entry, section ".printk_index", align 4
@sp887x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sp887x: waiting for firmware upload (%s)...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp887x_init\00", [20 x i8] zeroinitializer }, align 32
@sp887x_init._entry_ptr = internal global ptr @sp887x_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-fe-sp887x.fw\00", [47 x i8] zeroinitializer }, align 32
@sp887x_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sp887x: no firmware upload (timeout or file not found?)\0A\00", [39 x i8] zeroinitializer }, align 32
@sp887x_init._entry_ptr.8 = internal global ptr @sp887x_init._entry.6, section ".printk_index", align 4
@sp887x_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sp887x: writing firmware to device failed\0A\00", [53 x i8] zeroinitializer }, align 32
@sp887x_init._entry_ptr.11 = internal global ptr @sp887x_init._entry.9, section ".printk_index", align 4
@sp887x_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sp887x: firmware upload complete\0A\00", [62 x i8] zeroinitializer }, align 32
@sp887x_init._entry_ptr.14 = internal global ptr @sp887x_init._entry.12, section ".printk_index", align 4
@sp887x_initial_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017sp887x: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sp887x_initial_setup\00", [43 x i8] zeroinitializer }, align 32
@sp887x_initial_setup._entry_ptr = internal global ptr @sp887x_initial_setup._entry, section ".printk_index", align 4
@sp887x_initial_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: firmware upload... \00", [40 x i8] zeroinitializer }, align 32
@sp887x_initial_setup._entry_ptr.19 = internal global ptr @sp887x_initial_setup._entry.17, section ".printk_index", align 4
@sp887x_initial_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failed.\0A\00", [23 x i8] zeroinitializer }, align 32
@sp887x_initial_setup._entry_ptr.22 = internal global ptr @sp887x_initial_setup._entry.20, section ".printk_index", align 4
@sp887x_initial_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: i2c error (err == %i)\0A\00", [37 x i8] zeroinitializer }, align 32
@sp887x_initial_setup._entry_ptr.25 = internal global ptr @sp887x_initial_setup._entry.23, section ".printk_index", align 4
@sp887x_microcontroller_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.26, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sp887x_microcontroller_stop\00", [36 x i8] zeroinitializer }, align 32
@sp887x_microcontroller_stop._entry_ptr = internal global ptr @sp887x_microcontroller_stop._entry, section ".printk_index", align 4
@i2c_writebytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: i2c write error (addr %02x, err == %i)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_writebytes\00", [17 x i8] zeroinitializer }, align 32
@i2c_writebytes._entry_ptr = internal global ptr @i2c_writebytes._entry, section ".printk_index", align 4
@sp887x_setup_agc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.29, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sp887x_setup_agc\00", [47 x i8] zeroinitializer }, align 32
@sp887x_setup_agc._entry_ptr = internal global ptr @sp887x_setup_agc._entry, section ".printk_index", align 4
@sp887x_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: writereg error (reg %03x, data %03x, ret == %i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sp887x_writereg\00", [16 x i8] zeroinitializer }, align 32
@sp887x_writereg._entry_ptr = internal global ptr @sp887x_writereg._entry, section ".printk_index", align 4
@sp887x_correct_offsets.srate_correction = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1879617, i32 4544878, i32 8098561], [20 x i8] zeroinitializer }, align 32
@sp887x_microcontroller_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.32, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sp887x_microcontroller_start\00", [35 x i8] zeroinitializer }, align 32
@sp887x_microcontroller_start._entry_ptr = internal global ptr @sp887x_microcontroller_start._entry, section ".printk_index", align 4
@sp887x_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017sp887x: sp887x: implement tuner adjustment (%+i steps)!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sp887x_read_status\00", [45 x i8] zeroinitializer }, align 32
@sp887x_read_status._entry_ptr = internal global ptr @sp887x_read_status._entry, section ".printk_index", align 4
@switch.table.sp887x_setup_frontend_parameters = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 1024, i16 0, i16 2048, i16 0, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@switch.table.sp887x_setup_frontend_parameters.35 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4294967175, i64 4294967282]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"sp887x_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 592, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 34, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 85, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 526, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 529, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 536, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 539, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 145, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 156, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 181, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 182, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 94, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 46, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 115, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 67, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"srate_correction\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 307, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 104, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [40 x i8] c"../drivers/media/dvb-frontends/sp887x.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 444, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [46 x i8] c"switch.table.sp887x_setup_frontend_parameters\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [49 x i8] c"switch.table.sp887x_setup_frontend_parameters.35\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_sp887x_attach, ptr @__param_debug, ptr @i2c_writebytes._entry, ptr @i2c_writebytes._entry_ptr, ptr @sp887x_init._entry, ptr @sp887x_init._entry.12, ptr @sp887x_init._entry.6, ptr @sp887x_init._entry.9, ptr @sp887x_init._entry_ptr, ptr @sp887x_init._entry_ptr.11, ptr @sp887x_init._entry_ptr.14, ptr @sp887x_init._entry_ptr.8, ptr @sp887x_initial_setup._entry, ptr @sp887x_initial_setup._entry.17, ptr @sp887x_initial_setup._entry.20, ptr @sp887x_initial_setup._entry.23, ptr @sp887x_initial_setup._entry_ptr, ptr @sp887x_initial_setup._entry_ptr.19, ptr @sp887x_initial_setup._entry_ptr.22, ptr @sp887x_initial_setup._entry_ptr.25, ptr @sp887x_microcontroller_start._entry, ptr @sp887x_microcontroller_start._entry_ptr, ptr @sp887x_microcontroller_stop._entry, ptr @sp887x_microcontroller_stop._entry_ptr, ptr @sp887x_read_status._entry, ptr @sp887x_read_status._entry_ptr, ptr @sp887x_readreg._entry, ptr @sp887x_readreg._entry_ptr, ptr @sp887x_setup_agc._entry, ptr @sp887x_setup_agc._entry_ptr, ptr @sp887x_writereg._entry, ptr @sp887x_writereg._entry_ptr, ptr @sp887x_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @sp887x_correct_offsets.srate_correction, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @switch.table.sp887x_setup_frontend_parameters, ptr @switch.table.sp887x_setup_frontend_parameters.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_initial_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_initial_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_initial_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_initial_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_microcontroller_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_writebytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_setup_agc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_correct_offsets.srate_correction to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_microcontroller_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp887x_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sp887x_setup_frontend_parameters to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sp887x_setup_frontend_parameters.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sp887x_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  %config1 = getelementptr inbounds %struct.sp887x_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.sp887x_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialised, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %b0.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %8 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf13.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp887x_readreg.exit, label %sp887x_readreg.exit.thread

sp887x_readreg.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  br label %error

sp887x_readreg.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %frontend = getelementptr inbounds %struct.sp887x_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.sp887x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %22 = call ptr @memcpy(ptr %ops, ptr @sp887x_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.sp887x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %sp887x_readreg.exit.thread, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %sp887x_readreg.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %sp887x_readreg.exit ]
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
define internal void @sp887x_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @sp887x_init(ptr noundef %fe) #0 align 64 {
entry:
  %b0.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %b0.i224.i = alloca [4 x i8], align 1
  %msg.i225.i = alloca %struct.i2c_msg, align 4
  %b0.i210.i = alloca [4 x i8], align 1
  %msg.i211.i = alloca %struct.i2c_msg, align 4
  %b0.i186.i.i = alloca [4 x i8], align 1
  %msg.i187.i.i = alloca %struct.i2c_msg, align 4
  %b0.i173.i.i = alloca [4 x i8], align 1
  %msg.i174.i.i = alloca %struct.i2c_msg, align 4
  %b0.i160.i.i = alloca [4 x i8], align 1
  %msg.i161.i.i = alloca %struct.i2c_msg, align 4
  %b0.i147.i.i = alloca [4 x i8], align 1
  %msg.i148.i.i = alloca %struct.i2c_msg, align 4
  %b0.i134.i.i = alloca [4 x i8], align 1
  %msg.i135.i.i = alloca %struct.i2c_msg, align 4
  %b0.i121.i.i = alloca [4 x i8], align 1
  %msg.i122.i.i = alloca %struct.i2c_msg, align 4
  %b0.i108.i.i = alloca [4 x i8], align 1
  %msg.i109.i.i = alloca %struct.i2c_msg, align 4
  %b0.i95.i.i = alloca [4 x i8], align 1
  %msg.i96.i.i = alloca %struct.i2c_msg, align 4
  %b0.i82.i.i = alloca [4 x i8], align 1
  %msg.i83.i.i = alloca %struct.i2c_msg, align 4
  %b0.i69.i.i = alloca [4 x i8], align 1
  %msg.i70.i.i = alloca %struct.i2c_msg, align 4
  %b0.i56.i.i = alloca [4 x i8], align 1
  %msg.i57.i.i = alloca %struct.i2c_msg, align 4
  %b0.i43.i.i = alloca [4 x i8], align 1
  %msg.i44.i.i = alloca %struct.i2c_msg, align 4
  %b0.i30.i.i = alloca [4 x i8], align 1
  %msg.i31.i.i = alloca %struct.i2c_msg, align 4
  %b0.i.i.i = alloca [4 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %b0.i194.i = alloca [4 x i8], align 1
  %msg.i195.i = alloca %struct.i2c_msg, align 4
  %b0.i180.i = alloca [4 x i8], align 1
  %msg.i181.i = alloca %struct.i2c_msg, align 4
  %b0.i166.i = alloca [4 x i8], align 1
  %msg.i167.i = alloca %struct.i2c_msg, align 4
  %b0.i152.i = alloca [4 x i8], align 1
  %msg.i153.i = alloca %struct.i2c_msg, align 4
  %b0.i138.i = alloca [4 x i8], align 1
  %msg.i139.i = alloca %struct.i2c_msg, align 4
  %b0.i124.i = alloca [4 x i8], align 1
  %msg.i125.i = alloca %struct.i2c_msg, align 4
  %b0.i110.i = alloca [4 x i8], align 1
  %msg.i111.i = alloca %struct.i2c_msg, align 4
  %msg.i103.i = alloca %struct.i2c_msg, align 4
  %b0.i89.i = alloca [4 x i8], align 1
  %msg.i90.i = alloca %struct.i2c_msg, align 4
  %b0.i75.i = alloca [4 x i8], align 1
  %msg.i76.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [32 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %initialised = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialised, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #11
  %config = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %request_firmware = getelementptr inbounds %struct.sp887x_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %request_firmware to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_firmware, align 4
  %call1 = call i32 %7(ptr noundef %fe, ptr noundef nonnull %fw, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %do.end
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %10 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #7
  %12 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 1
  %13 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 2
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 10
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.do.end3.i_crit_edge, label %do.end.i

if.end.do.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16394, i32 %16)
  %cmp.i = icmp slt i32 %16, 16394
  br i1 %cmp.i, label %do.end3.i.do.end14_crit_edge, label %if.end5.i

do.end3.i.do.end14_crit_edge:                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end5.i:                                        ; preds = %do.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i.i) #7
  %20 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 15, ptr %b0.i.i, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 26, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %config.i.i = getelementptr inbounds %struct.sp887x_state, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv12.i.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv12.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i.i, align 2
  store i16 4, ptr %27, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %11, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  %38 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %do.end.i.i [
    i32 1, label %if.end5.i.sp887x_writereg.exit.i_crit_edge
    i32 -121, label %if.end5.i.sp887x_writereg.exit.i_crit_edge50
    i32 -14, label %if.end5.i.sp887x_writereg.exit.i_crit_edge51
  ]

if.end5.i.sp887x_writereg.exit.i_crit_edge51:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i

if.end5.i.sp887x_writereg.exit.i_crit_edge50:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i

if.end5.i.sp887x_writereg.exit.i_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i

do.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3866, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %sp887x_writereg.exit.i

sp887x_writereg.exit.i:                           ; preds = %do.end.i.i, %if.end5.i.sp887x_writereg.exit.i_crit_edge, %if.end5.i.sp887x_writereg.exit.i_crit_edge50, %if.end5.i.sp887x_writereg.exit.i_crit_edge51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i.i) #7
  call fastcc void @sp887x_microcontroller_stop(ptr noundef %11) #7
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i75.i) #7
  %39 = getelementptr inbounds [4 x i8], ptr %b0.i75.i, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i8], ptr %b0.i75.i, i32 0, i32 2
  %41 = getelementptr inbounds [4 x i8], ptr %b0.i75.i, i32 0, i32 3
  %42 = ptrtoint ptr %b0.i75.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -113, ptr %b0.i75.i, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %39, align 1
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 31, ptr %40, align 1
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i76.i) #7
  %46 = getelementptr inbounds i8, ptr %msg.i76.i, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4
  %48 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv12.i78.i = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i76.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv12.i78.i, ptr %msg.i76.i, align 4
  %flags.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i79.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i79.i, align 2
  store i16 4, ptr %46, align 4
  %buf.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i81.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b0.i75.i, ptr %buf.i81.i, align 4
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %11, align 4
  %call.i82.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i76.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82.i)
  %cmp.not.i83.i = icmp eq i32 %call.i82.i, 1
  br i1 %cmp.not.i83.i, label %sp887x_writereg.exit.i.sp887x_writereg.exit88.i_crit_edge, label %if.then.i84.i

sp887x_writereg.exit.i.sp887x_writereg.exit88.i_crit_edge: ; preds = %sp887x_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit88.i

if.then.i84.i:                                    ; preds = %sp887x_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 36616, i32 noundef 8191, i32 noundef %call.i82.i) #11
  br label %sp887x_writereg.exit88.i

sp887x_writereg.exit88.i:                         ; preds = %if.then.i84.i, %sp887x_writereg.exit.i.sp887x_writereg.exit88.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i75.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i89.i) #7
  %57 = getelementptr inbounds [4 x i8], ptr %b0.i89.i, i32 0, i32 1
  %58 = getelementptr inbounds [4 x i8], ptr %b0.i89.i, i32 0, i32 2
  %59 = getelementptr inbounds [4 x i8], ptr %b0.i89.i, i32 0, i32 3
  %60 = ptrtoint ptr %b0.i89.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -113, ptr %b0.i89.i, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %57, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %58, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90.i) #7
  %64 = getelementptr inbounds i8, ptr %msg.i90.i, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4
  %66 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv12.i92.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i90.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv12.i92.i, ptr %msg.i90.i, align 4
  %flags.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i93.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i93.i, align 2
  store i16 4, ptr %64, align 4
  %buf.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i95.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %b0.i89.i, ptr %buf.i95.i, align 4
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %11, align 4
  %call.i96.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i90.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i96.i)
  %cmp.not.i97.i = icmp eq i32 %call.i96.i, 1
  br i1 %cmp.not.i97.i, label %sp887x_writereg.exit88.i.sp887x_writereg.exit102.i_crit_edge, label %if.then.i98.i

sp887x_writereg.exit88.i.sp887x_writereg.exit102.i_crit_edge: ; preds = %sp887x_writereg.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit102.i

if.then.i98.i:                                    ; preds = %sp887x_writereg.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 36618, i32 noundef 0, i32 noundef %call.i96.i) #11
  br label %sp887x_writereg.exit102.i

sp887x_writereg.exit102.i:                        ; preds = %if.then.i98.i, %sp887x_writereg.exit88.i.sp887x_writereg.exit102.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i89.i) #7
  %75 = getelementptr inbounds i8, ptr %msg.i103.i, i32 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 1
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sp887x_writereg.exit102.i
  %i.0245.i = phi i32 [ 0, %sp887x_writereg.exit102.i ], [ %add38.i, %for.inc.i.for.body.i_crit_edge ]
  %sub.i = sub nuw nsw i32 16384, %i.0245.i
  %76 = call i32 @llvm.smin.i32(i32 %sub.i, i32 30) #7
  %77 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -49, ptr %buf.i, align 1
  %78 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 10, ptr %12, align 1
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 %i.0245.i
  %79 = call ptr @memcpy(ptr %13, ptr %add.ptr21.i, i32 %76)
  %80 = trunc i32 %76 to i8
  %conv.i = add nuw nsw i8 %80, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i103.i) #7
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %75, align 4
  %82 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv.i.i = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i103.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i, ptr %msg.i103.i, align 4
  %87 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i105.i, align 2
  %conv2.i.i = zext i8 %conv.i to i16
  store i16 %conv2.i.i, ptr %75, align 4
  %88 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i, ptr %buf3.i.i, align 4
  %89 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %11, align 4
  %call.i106.i = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i103.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i106.i)
  %cmp.not.i107.i = icmp eq i32 %call.i106.i, 1
  br i1 %cmp.not.i107.i, label %for.inc.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv7.i.i = zext i8 %94 to i32
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i, i32 noundef %call.i106.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i103.i) #7
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef -121) #11
  br label %do.end14

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i103.i) #7
  %add38.i = add nuw nsw i32 %i.0245.i, 30
  %cmp14.i = icmp ult i32 %i.0245.i, 16354
  br i1 %cmp14.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i110.i) #7
  %95 = getelementptr inbounds [4 x i8], ptr %b0.i110.i, i32 0, i32 1
  %96 = getelementptr inbounds [4 x i8], ptr %b0.i110.i, i32 0, i32 2
  %97 = getelementptr inbounds [4 x i8], ptr %b0.i110.i, i32 0, i32 3
  %98 = ptrtoint ptr %b0.i110.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 12, ptr %b0.i110.i, align 1
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 19, ptr %95, align 1
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %96, align 1
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i111.i) #7
  %102 = getelementptr inbounds i8, ptr %msg.i111.i, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %102, align 4
  %104 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  %conv12.i113.i = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i111.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv12.i113.i, ptr %msg.i111.i, align 4
  %flags.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111.i, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i114.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i114.i, align 2
  store i16 4, ptr %102, align 4
  %buf.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf.i116.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %b0.i110.i, ptr %buf.i116.i, align 4
  %111 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %11, align 4
  %call.i117.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i111.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i117.i)
  %cmp.not.i118.i = icmp eq i32 %call.i117.i, 1
  br i1 %cmp.not.i118.i, label %for.end.i.sp887x_writereg.exit123.i_crit_edge, label %if.then.i119.i

for.end.i.sp887x_writereg.exit123.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit123.i

if.then.i119.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3091, i32 noundef 1, i32 noundef %call.i117.i) #11
  br label %sp887x_writereg.exit123.i

sp887x_writereg.exit123.i:                        ; preds = %if.then.i119.i, %for.end.i.sp887x_writereg.exit123.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i111.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i110.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i124.i) #7
  %113 = getelementptr inbounds [4 x i8], ptr %b0.i124.i, i32 0, i32 1
  %114 = getelementptr inbounds [4 x i8], ptr %b0.i124.i, i32 0, i32 2
  %115 = getelementptr inbounds [4 x i8], ptr %b0.i124.i, i32 0, i32 3
  %116 = ptrtoint ptr %b0.i124.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 12, ptr %b0.i124.i, align 1
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 20, ptr %113, align 1
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %114, align 1
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %115, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125.i) #7
  %120 = getelementptr inbounds i8, ptr %msg.i125.i, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %120, align 4
  %122 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %config.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 4
  %conv12.i127.i = zext i8 %125 to i16
  %126 = ptrtoint ptr %msg.i125.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv12.i127.i, ptr %msg.i125.i, align 4
  %flags.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i128.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i128.i, align 2
  store i16 4, ptr %120, align 4
  %buf.i130.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i130.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %b0.i124.i, ptr %buf.i130.i, align 4
  %129 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %11, align 4
  %call.i131.i = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i125.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i131.i)
  %cmp.not.i132.i = icmp eq i32 %call.i131.i, 1
  br i1 %cmp.not.i132.i, label %sp887x_writereg.exit123.i.sp887x_writereg.exit137.i_crit_edge, label %if.then.i133.i

sp887x_writereg.exit123.i.sp887x_writereg.exit137.i_crit_edge: ; preds = %sp887x_writereg.exit123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit137.i

if.then.i133.i:                                   ; preds = %sp887x_writereg.exit123.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3092, i32 noundef 0, i32 noundef %call.i131.i) #11
  br label %sp887x_writereg.exit137.i

sp887x_writereg.exit137.i:                        ; preds = %if.then.i133.i, %sp887x_writereg.exit123.i.sp887x_writereg.exit137.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i124.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i138.i) #7
  %131 = getelementptr inbounds [4 x i8], ptr %b0.i138.i, i32 0, i32 1
  %132 = getelementptr inbounds [4 x i8], ptr %b0.i138.i, i32 0, i32 2
  %133 = getelementptr inbounds [4 x i8], ptr %b0.i138.i, i32 0, i32 3
  %134 = ptrtoint ptr %b0.i138.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 12, ptr %b0.i138.i, align 1
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 26, ptr %131, align 1
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 8, ptr %132, align 1
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 114, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i139.i) #7
  %138 = getelementptr inbounds i8, ptr %msg.i139.i, i32 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %138, align 4
  %140 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 4
  %conv12.i141.i = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i139.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv12.i141.i, ptr %msg.i139.i, align 4
  %flags.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139.i, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i142.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i142.i, align 2
  store i16 4, ptr %138, align 4
  %buf.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139.i, i32 0, i32 3
  %146 = ptrtoint ptr %buf.i144.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %b0.i138.i, ptr %buf.i144.i, align 4
  %147 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %11, align 4
  %call.i145.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i139.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i145.i)
  %cmp.not.i146.i = icmp eq i32 %call.i145.i, 1
  br i1 %cmp.not.i146.i, label %sp887x_writereg.exit137.i.sp887x_writereg.exit151.i_crit_edge, label %if.then.i147.i

sp887x_writereg.exit137.i.sp887x_writereg.exit151.i_crit_edge: ; preds = %sp887x_writereg.exit137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit151.i

if.then.i147.i:                                   ; preds = %sp887x_writereg.exit137.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3098, i32 noundef 2162, i32 noundef %call.i145.i) #11
  br label %sp887x_writereg.exit151.i

sp887x_writereg.exit151.i:                        ; preds = %if.then.i147.i, %sp887x_writereg.exit137.i.sp887x_writereg.exit151.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i138.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i152.i) #7
  %149 = getelementptr inbounds [4 x i8], ptr %b0.i152.i, i32 0, i32 1
  %150 = getelementptr inbounds [4 x i8], ptr %b0.i152.i, i32 0, i32 2
  %151 = getelementptr inbounds [4 x i8], ptr %b0.i152.i, i32 0, i32 3
  %152 = ptrtoint ptr %b0.i152.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 12, ptr %b0.i152.i, align 1
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 27, ptr %149, align 1
  %154 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %150, align 1
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i153.i) #7
  %156 = getelementptr inbounds i8, ptr %msg.i153.i, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %156, align 4
  %158 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 4
  %conv12.i155.i = zext i8 %161 to i16
  %162 = ptrtoint ptr %msg.i153.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv12.i155.i, ptr %msg.i153.i, align 4
  %flags.i156.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 0, i32 1
  %163 = ptrtoint ptr %flags.i156.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %flags.i156.i, align 2
  store i16 4, ptr %156, align 4
  %buf.i158.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 0, i32 3
  %164 = ptrtoint ptr %buf.i158.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %b0.i152.i, ptr %buf.i158.i, align 4
  %165 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %11, align 4
  %call.i159.i = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i153.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i159.i)
  %cmp.not.i160.i = icmp eq i32 %call.i159.i, 1
  br i1 %cmp.not.i160.i, label %sp887x_writereg.exit151.i.sp887x_writereg.exit165.i_crit_edge, label %if.then.i161.i

sp887x_writereg.exit151.i.sp887x_writereg.exit165.i_crit_edge: ; preds = %sp887x_writereg.exit151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit165.i

if.then.i161.i:                                   ; preds = %sp887x_writereg.exit151.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3099, i32 noundef 1, i32 noundef %call.i159.i) #11
  br label %sp887x_writereg.exit165.i

sp887x_writereg.exit165.i:                        ; preds = %if.then.i161.i, %sp887x_writereg.exit151.i.sp887x_writereg.exit165.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i153.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i152.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i166.i) #7
  %167 = getelementptr inbounds [4 x i8], ptr %b0.i166.i, i32 0, i32 1
  %168 = getelementptr inbounds [4 x i8], ptr %b0.i166.i, i32 0, i32 2
  %169 = getelementptr inbounds [4 x i8], ptr %b0.i166.i, i32 0, i32 3
  %170 = ptrtoint ptr %b0.i166.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 12, ptr %b0.i166.i, align 1
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 28, ptr %167, align 1
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %168, align 1
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i167.i) #7
  %174 = getelementptr inbounds i8, ptr %msg.i167.i, i32 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %174, align 4
  %176 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %config.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 4
  %conv12.i169.i = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i167.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv12.i169.i, ptr %msg.i167.i, align 4
  %flags.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i167.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i170.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i170.i, align 2
  store i16 4, ptr %174, align 4
  %buf.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i167.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf.i172.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %b0.i166.i, ptr %buf.i172.i, align 4
  %183 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %11, align 4
  %call.i173.i = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i167.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i173.i)
  %cmp.not.i174.i = icmp eq i32 %call.i173.i, 1
  br i1 %cmp.not.i174.i, label %sp887x_writereg.exit165.i.sp887x_writereg.exit179.i_crit_edge, label %if.then.i175.i

sp887x_writereg.exit165.i.sp887x_writereg.exit179.i_crit_edge: ; preds = %sp887x_writereg.exit165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit179.i

if.then.i175.i:                                   ; preds = %sp887x_writereg.exit165.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3100, i32 noundef 0, i32 noundef %call.i173.i) #11
  br label %sp887x_writereg.exit179.i

sp887x_writereg.exit179.i:                        ; preds = %if.then.i175.i, %sp887x_writereg.exit165.i.sp887x_writereg.exit179.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i167.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i166.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i180.i) #7
  %185 = getelementptr inbounds [4 x i8], ptr %b0.i180.i, i32 0, i32 1
  %186 = getelementptr inbounds [4 x i8], ptr %b0.i180.i, i32 0, i32 2
  %187 = getelementptr inbounds [4 x i8], ptr %b0.i180.i, i32 0, i32 3
  %188 = ptrtoint ptr %b0.i180.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 12, ptr %b0.i180.i, align 1
  %189 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 26, ptr %185, align 1
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 8, ptr %186, align 1
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 113, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i181.i) #7
  %192 = getelementptr inbounds i8, ptr %msg.i181.i, i32 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %192, align 4
  %194 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %config.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %195, align 4
  %conv12.i183.i = zext i8 %197 to i16
  %198 = ptrtoint ptr %msg.i181.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv12.i183.i, ptr %msg.i181.i, align 4
  %flags.i184.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i184.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i184.i, align 2
  store i16 4, ptr %192, align 4
  %buf.i186.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf.i186.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %b0.i180.i, ptr %buf.i186.i, align 4
  %201 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %11, align 4
  %call.i187.i = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i181.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i187.i)
  %cmp.not.i188.i = icmp eq i32 %call.i187.i, 1
  br i1 %cmp.not.i188.i, label %sp887x_writereg.exit179.i.sp887x_writereg.exit193.i_crit_edge, label %if.then.i189.i

sp887x_writereg.exit179.i.sp887x_writereg.exit193.i_crit_edge: ; preds = %sp887x_writereg.exit179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit193.i

if.then.i189.i:                                   ; preds = %sp887x_writereg.exit179.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3098, i32 noundef 2161, i32 noundef %call.i187.i) #11
  br label %sp887x_writereg.exit193.i

sp887x_writereg.exit193.i:                        ; preds = %if.then.i189.i, %sp887x_writereg.exit179.i.sp887x_writereg.exit193.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i181.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i180.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i194.i) #7
  %203 = getelementptr inbounds [4 x i8], ptr %b0.i194.i, i32 0, i32 1
  %204 = getelementptr inbounds [4 x i8], ptr %b0.i194.i, i32 0, i32 2
  %205 = getelementptr inbounds [4 x i8], ptr %b0.i194.i, i32 0, i32 3
  %206 = ptrtoint ptr %b0.i194.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 3, ptr %b0.i194.i, align 1
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %203, align 1
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %204, align 1
  %209 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 2, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i195.i) #7
  %210 = getelementptr inbounds i8, ptr %msg.i195.i, i32 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -1, ptr %210, align 4
  %212 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %config.i.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %213, align 4
  %conv12.i197.i = zext i8 %215 to i16
  %216 = ptrtoint ptr %msg.i195.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %conv12.i197.i, ptr %msg.i195.i, align 4
  %flags.i198.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 1
  %217 = ptrtoint ptr %flags.i198.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 0, ptr %flags.i198.i, align 2
  store i16 4, ptr %210, align 4
  %buf.i200.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 3
  %218 = ptrtoint ptr %buf.i200.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %b0.i194.i, ptr %buf.i200.i, align 4
  %219 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %11, align 4
  %call.i201.i = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %msg.i195.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i201.i)
  %cmp.not.i202.i = icmp eq i32 %call.i201.i, 1
  br i1 %cmp.not.i202.i, label %sp887x_writereg.exit193.i.sp887x_writereg.exit207.i_crit_edge, label %if.then.i203.i

sp887x_writereg.exit193.i.sp887x_writereg.exit207.i_crit_edge: ; preds = %sp887x_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit207.i

if.then.i203.i:                                   ; preds = %sp887x_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i204.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 769, i32 noundef 2, i32 noundef %call.i201.i) #11
  br label %sp887x_writereg.exit207.i

sp887x_writereg.exit207.i:                        ; preds = %if.then.i203.i, %sp887x_writereg.exit193.i.sp887x_writereg.exit207.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i195.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i194.i) #7
  %221 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i.i = icmp eq i32 %221, 0
  br i1 %tobool.not.i.i, label %sp887x_writereg.exit207.i.do.end2.i.i_crit_edge, label %do.end.i209.i

sp887x_writereg.exit207.i.do.end2.i.i_crit_edge:  ; preds = %sp887x_writereg.exit207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2.i.i

do.end.i209.i:                                    ; preds = %sp887x_writereg.exit207.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.29) #11
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i209.i, %sp887x_writereg.exit207.i.do.end2.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i.i.i) #7
  %222 = getelementptr inbounds [4 x i8], ptr %b0.i.i.i, i32 0, i32 1
  %223 = getelementptr inbounds [4 x i8], ptr %b0.i.i.i, i32 0, i32 2
  %224 = getelementptr inbounds [4 x i8], ptr %b0.i.i.i, i32 0, i32 3
  %225 = ptrtoint ptr %b0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 3, ptr %b0.i.i.i, align 1
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 60, ptr %222, align 1
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %223, align 1
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 84, ptr %224, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %229 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 327679, ptr %229, align 4
  %231 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %config.i.i, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %232, align 4
  %conv12.i.i.i = zext i8 %234 to i16
  %235 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv12.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %237 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %b0.i.i.i, ptr %buf.i.i.i, align 4
  %238 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %11, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %239, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %do.end2.i.i.sp887x_writereg.exit.i.i_crit_edge, label %if.then.i.i.i

do.end2.i.i.sp887x_writereg.exit.i.i_crit_edge:   ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 828, i32 noundef 84, i32 noundef %call.i.i.i) #11
  br label %sp887x_writereg.exit.i.i

sp887x_writereg.exit.i.i:                         ; preds = %if.then.i.i.i, %do.end2.i.i.sp887x_writereg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i30.i.i) #7
  %240 = getelementptr inbounds [4 x i8], ptr %b0.i30.i.i, i32 0, i32 1
  %241 = getelementptr inbounds [4 x i8], ptr %b0.i30.i.i, i32 0, i32 2
  %242 = getelementptr inbounds [4 x i8], ptr %b0.i30.i.i, i32 0, i32 3
  %243 = ptrtoint ptr %b0.i30.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 3, ptr %b0.i30.i.i, align 1
  %244 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 59, ptr %240, align 1
  %245 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 0, ptr %241, align 1
  %246 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 76, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i.i) #7
  %247 = getelementptr inbounds i8, ptr %msg.i31.i.i, i32 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 327679, ptr %247, align 4
  %249 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %config.i.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %250, align 4
  %conv12.i33.i.i = zext i8 %252 to i16
  %253 = ptrtoint ptr %msg.i31.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv12.i33.i.i, ptr %msg.i31.i.i, align 4
  %flags.i34.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i.i, i32 0, i32 1
  %254 = ptrtoint ptr %flags.i34.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 0, ptr %flags.i34.i.i, align 2
  %buf.i36.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i.i, i32 0, i32 3
  %255 = ptrtoint ptr %buf.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %b0.i30.i.i, ptr %buf.i36.i.i, align 4
  %256 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %11, align 4
  %call.i37.i.i = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i31.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i37.i.i)
  %cmp.not.i38.i.i = icmp eq i32 %call.i37.i.i, 1
  br i1 %cmp.not.i38.i.i, label %sp887x_writereg.exit.i.i.sp887x_writereg.exit42.i.i_crit_edge, label %if.then.i39.i.i

sp887x_writereg.exit.i.i.sp887x_writereg.exit42.i.i_crit_edge: ; preds = %sp887x_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit42.i.i

if.then.i39.i.i:                                  ; preds = %sp887x_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 827, i32 noundef 76, i32 noundef %call.i37.i.i) #11
  br label %sp887x_writereg.exit42.i.i

sp887x_writereg.exit42.i.i:                       ; preds = %if.then.i39.i.i, %sp887x_writereg.exit.i.i.sp887x_writereg.exit42.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i30.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i43.i.i) #7
  %258 = getelementptr inbounds [4 x i8], ptr %b0.i43.i.i, i32 0, i32 1
  %259 = getelementptr inbounds [4 x i8], ptr %b0.i43.i.i, i32 0, i32 2
  %260 = getelementptr inbounds [4 x i8], ptr %b0.i43.i.i, i32 0, i32 3
  %261 = ptrtoint ptr %b0.i43.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 3, ptr %b0.i43.i.i, align 1
  %262 = ptrtoint ptr %258 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 40, ptr %258, align 1
  %263 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %259, align 1
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i.i) #7
  %265 = getelementptr inbounds i8, ptr %msg.i44.i.i, i32 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 327679, ptr %265, align 4
  %267 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %config.i.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %268, align 4
  %conv12.i46.i.i = zext i8 %270 to i16
  %271 = ptrtoint ptr %msg.i44.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv12.i46.i.i, ptr %msg.i44.i.i, align 4
  %flags.i47.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i.i, i32 0, i32 1
  %272 = ptrtoint ptr %flags.i47.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 0, ptr %flags.i47.i.i, align 2
  %buf.i49.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i.i, i32 0, i32 3
  %273 = ptrtoint ptr %buf.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %b0.i43.i.i, ptr %buf.i49.i.i, align 4
  %274 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %11, align 4
  %call.i50.i.i = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %msg.i44.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50.i.i)
  %cmp.not.i51.i.i = icmp eq i32 %call.i50.i.i, 1
  br i1 %cmp.not.i51.i.i, label %sp887x_writereg.exit42.i.i.sp887x_writereg.exit55.i.i_crit_edge, label %if.then.i52.i.i

sp887x_writereg.exit42.i.i.sp887x_writereg.exit55.i.i_crit_edge: ; preds = %sp887x_writereg.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit55.i.i

if.then.i52.i.i:                                  ; preds = %sp887x_writereg.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 808, i32 noundef 0, i32 noundef %call.i50.i.i) #11
  br label %sp887x_writereg.exit55.i.i

sp887x_writereg.exit55.i.i:                       ; preds = %if.then.i52.i.i, %sp887x_writereg.exit42.i.i.sp887x_writereg.exit55.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i43.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i56.i.i) #7
  %276 = getelementptr inbounds [4 x i8], ptr %b0.i56.i.i, i32 0, i32 1
  %277 = getelementptr inbounds [4 x i8], ptr %b0.i56.i.i, i32 0, i32 2
  %278 = getelementptr inbounds [4 x i8], ptr %b0.i56.i.i, i32 0, i32 3
  %279 = ptrtoint ptr %b0.i56.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 3, ptr %b0.i56.i.i, align 1
  %280 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 39, ptr %276, align 1
  %281 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 0, ptr %277, align 1
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 5, ptr %278, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57.i.i) #7
  %283 = getelementptr inbounds i8, ptr %msg.i57.i.i, i32 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 327679, ptr %283, align 4
  %285 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %config.i.i, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %286, align 4
  %conv12.i59.i.i = zext i8 %288 to i16
  %289 = ptrtoint ptr %msg.i57.i.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv12.i59.i.i, ptr %msg.i57.i.i, align 4
  %flags.i60.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i.i, i32 0, i32 1
  %290 = ptrtoint ptr %flags.i60.i.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 0, ptr %flags.i60.i.i, align 2
  %buf.i62.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i.i, i32 0, i32 3
  %291 = ptrtoint ptr %buf.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %b0.i56.i.i, ptr %buf.i62.i.i, align 4
  %292 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %11, align 4
  %call.i63.i.i = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %msg.i57.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i63.i.i)
  %cmp.not.i64.i.i = icmp eq i32 %call.i63.i.i, 1
  br i1 %cmp.not.i64.i.i, label %sp887x_writereg.exit55.i.i.sp887x_writereg.exit68.i.i_crit_edge, label %if.then.i65.i.i

sp887x_writereg.exit55.i.i.sp887x_writereg.exit68.i.i_crit_edge: ; preds = %sp887x_writereg.exit55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit68.i.i

if.then.i65.i.i:                                  ; preds = %sp887x_writereg.exit55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i66.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 807, i32 noundef 5, i32 noundef %call.i63.i.i) #11
  br label %sp887x_writereg.exit68.i.i

sp887x_writereg.exit68.i.i:                       ; preds = %if.then.i65.i.i, %sp887x_writereg.exit55.i.i.sp887x_writereg.exit68.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i56.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i69.i.i) #7
  %294 = getelementptr inbounds [4 x i8], ptr %b0.i69.i.i, i32 0, i32 1
  %295 = getelementptr inbounds [4 x i8], ptr %b0.i69.i.i, i32 0, i32 2
  %296 = getelementptr inbounds [4 x i8], ptr %b0.i69.i.i, i32 0, i32 3
  %297 = ptrtoint ptr %b0.i69.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 3, ptr %b0.i69.i.i, align 1
  %298 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 38, ptr %294, align 1
  %299 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 0, ptr %295, align 1
  %300 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %296, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70.i.i) #7
  %301 = getelementptr inbounds i8, ptr %msg.i70.i.i, i32 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 327679, ptr %301, align 4
  %303 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %config.i.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %304, align 4
  %conv12.i72.i.i = zext i8 %306 to i16
  %307 = ptrtoint ptr %msg.i70.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %conv12.i72.i.i, ptr %msg.i70.i.i, align 4
  %flags.i73.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i.i, i32 0, i32 1
  %308 = ptrtoint ptr %flags.i73.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 0, ptr %flags.i73.i.i, align 2
  %buf.i75.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i.i, i32 0, i32 3
  %309 = ptrtoint ptr %buf.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %b0.i69.i.i, ptr %buf.i75.i.i, align 4
  %310 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %11, align 4
  %call.i76.i.i = call i32 @i2c_transfer(ptr noundef %311, ptr noundef nonnull %msg.i70.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i76.i.i)
  %cmp.not.i77.i.i = icmp eq i32 %call.i76.i.i, 1
  br i1 %cmp.not.i77.i.i, label %sp887x_writereg.exit68.i.i.sp887x_writereg.exit81.i.i_crit_edge, label %if.then.i78.i.i

sp887x_writereg.exit68.i.i.sp887x_writereg.exit81.i.i_crit_edge: ; preds = %sp887x_writereg.exit68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit81.i.i

if.then.i78.i.i:                                  ; preds = %sp887x_writereg.exit68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i79.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 806, i32 noundef 1, i32 noundef %call.i76.i.i) #11
  br label %sp887x_writereg.exit81.i.i

sp887x_writereg.exit81.i.i:                       ; preds = %if.then.i78.i.i, %sp887x_writereg.exit68.i.i.sp887x_writereg.exit81.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i69.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i82.i.i) #7
  %312 = getelementptr inbounds [4 x i8], ptr %b0.i82.i.i, i32 0, i32 1
  %313 = getelementptr inbounds [4 x i8], ptr %b0.i82.i.i, i32 0, i32 2
  %314 = getelementptr inbounds [4 x i8], ptr %b0.i82.i.i, i32 0, i32 3
  %315 = ptrtoint ptr %b0.i82.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 3, ptr %b0.i82.i.i, align 1
  %316 = ptrtoint ptr %312 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 37, ptr %312, align 1
  %317 = ptrtoint ptr %313 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %313, align 1
  %318 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 1, ptr %314, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i83.i.i) #7
  %319 = getelementptr inbounds i8, ptr %msg.i83.i.i, i32 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 327679, ptr %319, align 4
  %321 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %config.i.i, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %322, align 4
  %conv12.i85.i.i = zext i8 %324 to i16
  %325 = ptrtoint ptr %msg.i83.i.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %conv12.i85.i.i, ptr %msg.i83.i.i, align 4
  %flags.i86.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83.i.i, i32 0, i32 1
  %326 = ptrtoint ptr %flags.i86.i.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 0, ptr %flags.i86.i.i, align 2
  %buf.i88.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83.i.i, i32 0, i32 3
  %327 = ptrtoint ptr %buf.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %b0.i82.i.i, ptr %buf.i88.i.i, align 4
  %328 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %11, align 4
  %call.i89.i.i = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %msg.i83.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i89.i.i)
  %cmp.not.i90.i.i = icmp eq i32 %call.i89.i.i, 1
  br i1 %cmp.not.i90.i.i, label %sp887x_writereg.exit81.i.i.sp887x_writereg.exit94.i.i_crit_edge, label %if.then.i91.i.i

sp887x_writereg.exit81.i.i.sp887x_writereg.exit94.i.i_crit_edge: ; preds = %sp887x_writereg.exit81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit94.i.i

if.then.i91.i.i:                                  ; preds = %sp887x_writereg.exit81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i92.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 805, i32 noundef 1, i32 noundef %call.i89.i.i) #11
  br label %sp887x_writereg.exit94.i.i

sp887x_writereg.exit94.i.i:                       ; preds = %if.then.i91.i.i, %sp887x_writereg.exit81.i.i.sp887x_writereg.exit94.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i83.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i82.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i95.i.i) #7
  %330 = getelementptr inbounds [4 x i8], ptr %b0.i95.i.i, i32 0, i32 1
  %331 = getelementptr inbounds [4 x i8], ptr %b0.i95.i.i, i32 0, i32 2
  %332 = getelementptr inbounds [4 x i8], ptr %b0.i95.i.i, i32 0, i32 3
  %333 = ptrtoint ptr %b0.i95.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 3, ptr %b0.i95.i.i, align 1
  %334 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 36, ptr %330, align 1
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 0, ptr %331, align 1
  %336 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 1, ptr %332, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i96.i.i) #7
  %337 = getelementptr inbounds i8, ptr %msg.i96.i.i, i32 4
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 327679, ptr %337, align 4
  %339 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %config.i.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %340, align 4
  %conv12.i98.i.i = zext i8 %342 to i16
  %343 = ptrtoint ptr %msg.i96.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv12.i98.i.i, ptr %msg.i96.i.i, align 4
  %flags.i99.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %flags.i99.i.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 0, ptr %flags.i99.i.i, align 2
  %buf.i101.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96.i.i, i32 0, i32 3
  %345 = ptrtoint ptr %buf.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %b0.i95.i.i, ptr %buf.i101.i.i, align 4
  %346 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %11, align 4
  %call.i102.i.i = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %msg.i96.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i102.i.i)
  %cmp.not.i103.i.i = icmp eq i32 %call.i102.i.i, 1
  br i1 %cmp.not.i103.i.i, label %sp887x_writereg.exit94.i.i.sp887x_writereg.exit107.i.i_crit_edge, label %if.then.i104.i.i

sp887x_writereg.exit94.i.i.sp887x_writereg.exit107.i.i_crit_edge: ; preds = %sp887x_writereg.exit94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit107.i.i

if.then.i104.i.i:                                 ; preds = %sp887x_writereg.exit94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i105.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 804, i32 noundef 1, i32 noundef %call.i102.i.i) #11
  br label %sp887x_writereg.exit107.i.i

sp887x_writereg.exit107.i.i:                      ; preds = %if.then.i104.i.i, %sp887x_writereg.exit94.i.i.sp887x_writereg.exit107.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i96.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i95.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i108.i.i) #7
  %348 = getelementptr inbounds [4 x i8], ptr %b0.i108.i.i, i32 0, i32 1
  %349 = getelementptr inbounds [4 x i8], ptr %b0.i108.i.i, i32 0, i32 2
  %350 = getelementptr inbounds [4 x i8], ptr %b0.i108.i.i, i32 0, i32 3
  %351 = ptrtoint ptr %b0.i108.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 3, ptr %b0.i108.i.i, align 1
  %352 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 24, ptr %348, align 1
  %353 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %349, align 1
  %354 = ptrtoint ptr %350 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 80, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109.i.i) #7
  %355 = getelementptr inbounds i8, ptr %msg.i109.i.i, i32 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 327679, ptr %355, align 4
  %357 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %config.i.i, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %358, align 4
  %conv12.i111.i.i = zext i8 %360 to i16
  %361 = ptrtoint ptr %msg.i109.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %conv12.i111.i.i, ptr %msg.i109.i.i, align 4
  %flags.i112.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i.i, i32 0, i32 1
  %362 = ptrtoint ptr %flags.i112.i.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 0, ptr %flags.i112.i.i, align 2
  %buf.i114.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i.i, i32 0, i32 3
  %363 = ptrtoint ptr %buf.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %b0.i108.i.i, ptr %buf.i114.i.i, align 4
  %364 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %11, align 4
  %call.i115.i.i = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %msg.i109.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115.i.i)
  %cmp.not.i116.i.i = icmp eq i32 %call.i115.i.i, 1
  br i1 %cmp.not.i116.i.i, label %sp887x_writereg.exit107.i.i.sp887x_writereg.exit120.i.i_crit_edge, label %if.then.i117.i.i

sp887x_writereg.exit107.i.i.sp887x_writereg.exit120.i.i_crit_edge: ; preds = %sp887x_writereg.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit120.i.i

if.then.i117.i.i:                                 ; preds = %sp887x_writereg.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i118.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 792, i32 noundef 80, i32 noundef %call.i115.i.i) #11
  br label %sp887x_writereg.exit120.i.i

sp887x_writereg.exit120.i.i:                      ; preds = %if.then.i117.i.i, %sp887x_writereg.exit107.i.i.sp887x_writereg.exit120.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i108.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i121.i.i) #7
  %366 = getelementptr inbounds [4 x i8], ptr %b0.i121.i.i, i32 0, i32 1
  %367 = getelementptr inbounds [4 x i8], ptr %b0.i121.i.i, i32 0, i32 2
  %368 = getelementptr inbounds [4 x i8], ptr %b0.i121.i.i, i32 0, i32 3
  %369 = ptrtoint ptr %b0.i121.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 3, ptr %b0.i121.i.i, align 1
  %370 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 23, ptr %366, align 1
  %371 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 3, ptr %367, align 1
  %372 = ptrtoint ptr %368 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 -2, ptr %368, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i122.i.i) #7
  %373 = getelementptr inbounds i8, ptr %msg.i122.i.i, i32 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 327679, ptr %373, align 4
  %375 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %config.i.i, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %376, align 4
  %conv12.i124.i.i = zext i8 %378 to i16
  %379 = ptrtoint ptr %msg.i122.i.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %conv12.i124.i.i, ptr %msg.i122.i.i, align 4
  %flags.i125.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122.i.i, i32 0, i32 1
  %380 = ptrtoint ptr %flags.i125.i.i to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 0, ptr %flags.i125.i.i, align 2
  %buf.i127.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122.i.i, i32 0, i32 3
  %381 = ptrtoint ptr %buf.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %b0.i121.i.i, ptr %buf.i127.i.i, align 4
  %382 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %11, align 4
  %call.i128.i.i = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %msg.i122.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128.i.i)
  %cmp.not.i129.i.i = icmp eq i32 %call.i128.i.i, 1
  br i1 %cmp.not.i129.i.i, label %sp887x_writereg.exit120.i.i.sp887x_writereg.exit133.i.i_crit_edge, label %if.then.i130.i.i

sp887x_writereg.exit120.i.i.sp887x_writereg.exit133.i.i_crit_edge: ; preds = %sp887x_writereg.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit133.i.i

if.then.i130.i.i:                                 ; preds = %sp887x_writereg.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i131.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 791, i32 noundef 1022, i32 noundef %call.i128.i.i) #11
  br label %sp887x_writereg.exit133.i.i

sp887x_writereg.exit133.i.i:                      ; preds = %if.then.i130.i.i, %sp887x_writereg.exit120.i.i.sp887x_writereg.exit133.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i121.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i134.i.i) #7
  %384 = getelementptr inbounds [4 x i8], ptr %b0.i134.i.i, i32 0, i32 1
  %385 = getelementptr inbounds [4 x i8], ptr %b0.i134.i.i, i32 0, i32 2
  %386 = getelementptr inbounds [4 x i8], ptr %b0.i134.i.i, i32 0, i32 3
  %387 = ptrtoint ptr %b0.i134.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 3, ptr %b0.i134.i.i, align 1
  %388 = ptrtoint ptr %384 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 22, ptr %384, align 1
  %389 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %385, align 1
  %390 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 1, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i135.i.i) #7
  %391 = getelementptr inbounds i8, ptr %msg.i135.i.i, i32 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 327679, ptr %391, align 4
  %393 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %config.i.i, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %394, align 4
  %conv12.i137.i.i = zext i8 %396 to i16
  %397 = ptrtoint ptr %msg.i135.i.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %conv12.i137.i.i, ptr %msg.i135.i.i, align 4
  %flags.i138.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i.i, i32 0, i32 1
  %398 = ptrtoint ptr %flags.i138.i.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 0, ptr %flags.i138.i.i, align 2
  %buf.i140.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i.i, i32 0, i32 3
  %399 = ptrtoint ptr %buf.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %b0.i134.i.i, ptr %buf.i140.i.i, align 4
  %400 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %11, align 4
  %call.i141.i.i = call i32 @i2c_transfer(ptr noundef %401, ptr noundef nonnull %msg.i135.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141.i.i)
  %cmp.not.i142.i.i = icmp eq i32 %call.i141.i.i, 1
  br i1 %cmp.not.i142.i.i, label %sp887x_writereg.exit133.i.i.sp887x_writereg.exit146.i.i_crit_edge, label %if.then.i143.i.i

sp887x_writereg.exit133.i.i.sp887x_writereg.exit146.i.i_crit_edge: ; preds = %sp887x_writereg.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit146.i.i

if.then.i143.i.i:                                 ; preds = %sp887x_writereg.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i144.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 790, i32 noundef 1, i32 noundef %call.i141.i.i) #11
  br label %sp887x_writereg.exit146.i.i

sp887x_writereg.exit146.i.i:                      ; preds = %if.then.i143.i.i, %sp887x_writereg.exit133.i.i.sp887x_writereg.exit146.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i134.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i147.i.i) #7
  %402 = getelementptr inbounds [4 x i8], ptr %b0.i147.i.i, i32 0, i32 1
  %403 = getelementptr inbounds [4 x i8], ptr %b0.i147.i.i, i32 0, i32 2
  %404 = getelementptr inbounds [4 x i8], ptr %b0.i147.i.i, i32 0, i32 3
  %405 = ptrtoint ptr %b0.i147.i.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 3, ptr %b0.i147.i.i, align 1
  %406 = ptrtoint ptr %402 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 19, ptr %402, align 1
  %407 = ptrtoint ptr %403 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 0, ptr %403, align 1
  %408 = ptrtoint ptr %404 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 5, ptr %404, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i148.i.i) #7
  %409 = getelementptr inbounds i8, ptr %msg.i148.i.i, i32 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 327679, ptr %409, align 4
  %411 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %config.i.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %412, align 4
  %conv12.i150.i.i = zext i8 %414 to i16
  %415 = ptrtoint ptr %msg.i148.i.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %conv12.i150.i.i, ptr %msg.i148.i.i, align 4
  %flags.i151.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148.i.i, i32 0, i32 1
  %416 = ptrtoint ptr %flags.i151.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 0, ptr %flags.i151.i.i, align 2
  %buf.i153.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148.i.i, i32 0, i32 3
  %417 = ptrtoint ptr %buf.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %b0.i147.i.i, ptr %buf.i153.i.i, align 4
  %418 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %11, align 4
  %call.i154.i.i = call i32 @i2c_transfer(ptr noundef %419, ptr noundef nonnull %msg.i148.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i154.i.i)
  %cmp.not.i155.i.i = icmp eq i32 %call.i154.i.i, 1
  br i1 %cmp.not.i155.i.i, label %sp887x_writereg.exit146.i.i.sp887x_writereg.exit159.i.i_crit_edge, label %if.then.i156.i.i

sp887x_writereg.exit146.i.i.sp887x_writereg.exit159.i.i_crit_edge: ; preds = %sp887x_writereg.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit159.i.i

if.then.i156.i.i:                                 ; preds = %sp887x_writereg.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i157.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 787, i32 noundef 5, i32 noundef %call.i154.i.i) #11
  br label %sp887x_writereg.exit159.i.i

sp887x_writereg.exit159.i.i:                      ; preds = %if.then.i156.i.i, %sp887x_writereg.exit146.i.i.sp887x_writereg.exit159.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i148.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i147.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i160.i.i) #7
  %420 = getelementptr inbounds [4 x i8], ptr %b0.i160.i.i, i32 0, i32 1
  %421 = getelementptr inbounds [4 x i8], ptr %b0.i160.i.i, i32 0, i32 2
  %422 = getelementptr inbounds [4 x i8], ptr %b0.i160.i.i, i32 0, i32 3
  %423 = ptrtoint ptr %b0.i160.i.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 3, ptr %b0.i160.i.i, align 1
  %424 = ptrtoint ptr %420 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 18, ptr %420, align 1
  %425 = ptrtoint ptr %421 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 0, ptr %421, align 1
  %426 = ptrtoint ptr %422 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 2, ptr %422, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i161.i.i) #7
  %427 = getelementptr inbounds i8, ptr %msg.i161.i.i, i32 4
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 327679, ptr %427, align 4
  %429 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %config.i.i, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %430, align 4
  %conv12.i163.i.i = zext i8 %432 to i16
  %433 = ptrtoint ptr %msg.i161.i.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %conv12.i163.i.i, ptr %msg.i161.i.i, align 4
  %flags.i164.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i.i, i32 0, i32 1
  %434 = ptrtoint ptr %flags.i164.i.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 0, ptr %flags.i164.i.i, align 2
  %buf.i166.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i.i, i32 0, i32 3
  %435 = ptrtoint ptr %buf.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %b0.i160.i.i, ptr %buf.i166.i.i, align 4
  %436 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %11, align 4
  %call.i167.i.i = call i32 @i2c_transfer(ptr noundef %437, ptr noundef nonnull %msg.i161.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i167.i.i)
  %cmp.not.i168.i.i = icmp eq i32 %call.i167.i.i, 1
  br i1 %cmp.not.i168.i.i, label %sp887x_writereg.exit159.i.i.sp887x_writereg.exit172.i.i_crit_edge, label %if.then.i169.i.i

sp887x_writereg.exit159.i.i.sp887x_writereg.exit172.i.i_crit_edge: ; preds = %sp887x_writereg.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit172.i.i

if.then.i169.i.i:                                 ; preds = %sp887x_writereg.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i170.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 786, i32 noundef 2, i32 noundef %call.i167.i.i) #11
  br label %sp887x_writereg.exit172.i.i

sp887x_writereg.exit172.i.i:                      ; preds = %if.then.i169.i.i, %sp887x_writereg.exit159.i.i.sp887x_writereg.exit172.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i161.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i160.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i173.i.i) #7
  %438 = getelementptr inbounds [4 x i8], ptr %b0.i173.i.i, i32 0, i32 1
  %439 = getelementptr inbounds [4 x i8], ptr %b0.i173.i.i, i32 0, i32 2
  %440 = getelementptr inbounds [4 x i8], ptr %b0.i173.i.i, i32 0, i32 3
  %441 = ptrtoint ptr %b0.i173.i.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 3, ptr %b0.i173.i.i, align 1
  %442 = ptrtoint ptr %438 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 6, ptr %438, align 1
  %443 = ptrtoint ptr %439 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 0, ptr %439, align 1
  %444 = ptrtoint ptr %440 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 0, ptr %440, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174.i.i) #7
  %445 = getelementptr inbounds i8, ptr %msg.i174.i.i, i32 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 327679, ptr %445, align 4
  %447 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %config.i.i, align 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %448, align 4
  %conv12.i176.i.i = zext i8 %450 to i16
  %451 = ptrtoint ptr %msg.i174.i.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %conv12.i176.i.i, ptr %msg.i174.i.i, align 4
  %flags.i177.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i.i, i32 0, i32 1
  %452 = ptrtoint ptr %flags.i177.i.i to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 0, ptr %flags.i177.i.i, align 2
  %buf.i179.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i.i, i32 0, i32 3
  %453 = ptrtoint ptr %buf.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %b0.i173.i.i, ptr %buf.i179.i.i, align 4
  %454 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %11, align 4
  %call.i180.i.i = call i32 @i2c_transfer(ptr noundef %455, ptr noundef nonnull %msg.i174.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i180.i.i)
  %cmp.not.i181.i.i = icmp eq i32 %call.i180.i.i, 1
  br i1 %cmp.not.i181.i.i, label %sp887x_writereg.exit172.i.i.sp887x_writereg.exit185.i.i_crit_edge, label %if.then.i182.i.i

sp887x_writereg.exit172.i.i.sp887x_writereg.exit185.i.i_crit_edge: ; preds = %sp887x_writereg.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit185.i.i

if.then.i182.i.i:                                 ; preds = %sp887x_writereg.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i183.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 774, i32 noundef 0, i32 noundef %call.i180.i.i) #11
  br label %sp887x_writereg.exit185.i.i

sp887x_writereg.exit185.i.i:                      ; preds = %if.then.i182.i.i, %sp887x_writereg.exit172.i.i.sp887x_writereg.exit185.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i173.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i186.i.i) #7
  %456 = getelementptr inbounds [4 x i8], ptr %b0.i186.i.i, i32 0, i32 1
  %457 = getelementptr inbounds [4 x i8], ptr %b0.i186.i.i, i32 0, i32 2
  %458 = getelementptr inbounds [4 x i8], ptr %b0.i186.i.i, i32 0, i32 3
  %459 = ptrtoint ptr %b0.i186.i.i to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 3, ptr %b0.i186.i.i, align 1
  %460 = ptrtoint ptr %456 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 3, ptr %456, align 1
  %461 = ptrtoint ptr %457 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 0, ptr %457, align 1
  %462 = ptrtoint ptr %458 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %458, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i187.i.i) #7
  %463 = getelementptr inbounds i8, ptr %msg.i187.i.i, i32 4
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 327679, ptr %463, align 4
  %465 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %config.i.i, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %466, align 4
  %conv12.i189.i.i = zext i8 %468 to i16
  %469 = ptrtoint ptr %msg.i187.i.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 %conv12.i189.i.i, ptr %msg.i187.i.i, align 4
  %flags.i190.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187.i.i, i32 0, i32 1
  %470 = ptrtoint ptr %flags.i190.i.i to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 0, ptr %flags.i190.i.i, align 2
  %buf.i192.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187.i.i, i32 0, i32 3
  %471 = ptrtoint ptr %buf.i192.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %b0.i186.i.i, ptr %buf.i192.i.i, align 4
  %472 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %11, align 4
  %call.i193.i.i = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %msg.i187.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i193.i.i)
  %cmp.not.i194.i.i = icmp eq i32 %call.i193.i.i, 1
  br i1 %cmp.not.i194.i.i, label %sp887x_writereg.exit185.i.i.sp887x_setup_agc.exit.i_crit_edge, label %if.then.i195.i.i

sp887x_writereg.exit185.i.i.sp887x_setup_agc.exit.i_crit_edge: ; preds = %sp887x_writereg.exit185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_setup_agc.exit.i

if.then.i195.i.i:                                 ; preds = %sp887x_writereg.exit185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i196.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 771, i32 noundef 0, i32 noundef %call.i193.i.i) #11
  br label %sp887x_setup_agc.exit.i

sp887x_setup_agc.exit.i:                          ; preds = %if.then.i195.i.i, %sp887x_writereg.exit185.i.i.sp887x_setup_agc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i187.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i186.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i210.i) #7
  %474 = getelementptr inbounds [4 x i8], ptr %b0.i210.i, i32 0, i32 1
  %475 = getelementptr inbounds [4 x i8], ptr %b0.i210.i, i32 0, i32 2
  %476 = getelementptr inbounds [4 x i8], ptr %b0.i210.i, i32 0, i32 3
  %477 = ptrtoint ptr %b0.i210.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 13, ptr %b0.i210.i, align 1
  %478 = ptrtoint ptr %474 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 0, ptr %474, align 1
  %479 = ptrtoint ptr %475 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 0, ptr %475, align 1
  %480 = ptrtoint ptr %476 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 16, ptr %476, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i211.i) #7
  %481 = getelementptr inbounds i8, ptr %msg.i211.i, i32 4
  %482 = ptrtoint ptr %481 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 327679, ptr %481, align 4
  %483 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %config.i.i, align 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %484, align 4
  %conv12.i213.i = zext i8 %486 to i16
  %487 = ptrtoint ptr %msg.i211.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %conv12.i213.i, ptr %msg.i211.i, align 4
  %flags.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i211.i, i32 0, i32 1
  %488 = ptrtoint ptr %flags.i214.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 0, ptr %flags.i214.i, align 2
  %buf.i216.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i211.i, i32 0, i32 3
  %489 = ptrtoint ptr %buf.i216.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %b0.i210.i, ptr %buf.i216.i, align 4
  %490 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %11, align 4
  %call.i217.i = call i32 @i2c_transfer(ptr noundef %491, ptr noundef nonnull %msg.i211.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i217.i)
  %cmp.not.i218.i = icmp eq i32 %call.i217.i, 1
  br i1 %cmp.not.i218.i, label %sp887x_setup_agc.exit.i.sp887x_writereg.exit223.i_crit_edge, label %if.then.i219.i

sp887x_setup_agc.exit.i.sp887x_writereg.exit223.i_crit_edge: ; preds = %sp887x_setup_agc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit223.i

if.then.i219.i:                                   ; preds = %sp887x_setup_agc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3328, i32 noundef 16, i32 noundef %call.i217.i) #11
  br label %sp887x_writereg.exit223.i

sp887x_writereg.exit223.i:                        ; preds = %if.then.i219.i, %sp887x_setup_agc.exit.i.sp887x_writereg.exit223.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i211.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i210.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i224.i) #7
  %492 = getelementptr inbounds [4 x i8], ptr %b0.i224.i, i32 0, i32 1
  %493 = getelementptr inbounds [4 x i8], ptr %b0.i224.i, i32 0, i32 2
  %494 = getelementptr inbounds [4 x i8], ptr %b0.i224.i, i32 0, i32 3
  %495 = ptrtoint ptr %b0.i224.i to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 0, ptr %b0.i224.i, align 1
  %496 = ptrtoint ptr %492 to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 -47, ptr %492, align 1
  %497 = ptrtoint ptr %493 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 0, ptr %493, align 1
  %498 = ptrtoint ptr %494 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 0, ptr %494, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i225.i) #7
  %499 = getelementptr inbounds i8, ptr %msg.i225.i, i32 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 327679, ptr %499, align 4
  %501 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %config.i.i, align 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %502, align 4
  %conv12.i227.i = zext i8 %504 to i16
  %505 = ptrtoint ptr %msg.i225.i to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 %conv12.i227.i, ptr %msg.i225.i, align 4
  %flags.i228.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225.i, i32 0, i32 1
  %506 = ptrtoint ptr %flags.i228.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 0, ptr %flags.i228.i, align 2
  %buf.i230.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225.i, i32 0, i32 3
  %507 = ptrtoint ptr %buf.i230.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %b0.i224.i, ptr %buf.i230.i, align 4
  %508 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %11, align 4
  %call.i231.i = call i32 @i2c_transfer(ptr noundef %509, ptr noundef nonnull %msg.i225.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i231.i)
  %cmp.not.i232.i = icmp eq i32 %call.i231.i, 1
  br i1 %cmp.not.i232.i, label %sp887x_writereg.exit223.i.do.end20_crit_edge, label %if.then.i233.i

sp887x_writereg.exit223.i.do.end20_crit_edge:     ; preds = %sp887x_writereg.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.then.i233.i:                                   ; preds = %sp887x_writereg.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i234.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 209, i32 noundef 0, i32 noundef %call.i231.i) #11
  br label %do.end20

do.end14:                                         ; preds = %cleanup.thread.i, %do.end3.i.do.end14_crit_edge
  %retval.2.i.ph = phi i32 [ -121, %cleanup.thread.i ], [ -19, %do.end3.i.do.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #7
  %510 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %511) #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

do.end20:                                         ; preds = %if.then.i233.i, %sp887x_writereg.exit223.i.do.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i225.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i224.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #7
  %512 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %513) #7
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  %514 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %514)
  %bf.load24 = load i8, ptr %initialised, align 4
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %initialised, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end20, %entry.if.end25_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i) #7
  %515 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 1
  %516 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 2
  %517 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 3
  %518 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 12, ptr %b0.i, align 1
  %519 = ptrtoint ptr %515 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 24, ptr %515, align 1
  %520 = ptrtoint ptr %516 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 0, ptr %516, align 1
  %521 = ptrtoint ptr %517 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 13, ptr %517, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %522 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 327679, ptr %522, align 4
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %524 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %config.i, align 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %525, align 4
  %conv12.i = zext i8 %527 to i16
  %528 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %528)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %529 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 0, ptr %flags.i, align 2
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %530 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr %b0.i, ptr %buf.i37, align 4
  %531 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %1, align 4
  %call.i38 = call i32 @i2c_transfer(ptr noundef %532, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i38)
  %cmp.not.i = icmp eq i32 %call.i38, 1
  br i1 %cmp.not.i, label %if.end25.sp887x_writereg.exit_crit_edge, label %if.then.i

if.end25.sp887x_writereg.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3096, i32 noundef 13, i32 noundef %call.i38) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %if.end25.sp887x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sp887x_writereg.exit, %do.end14, %do.end6
  %retval.0 = phi i32 [ 0, %sp887x_writereg.exit ], [ %call1, %do.end6 ], [ %retval.2.i.ph, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %b0.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 3
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %b0.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.sp887x_writereg.exit_crit_edge, label %if.then.i

entry.sp887x_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3096, i32 noundef 0, i32 noundef %call.i) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %entry.sp887x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_setup_frontend_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %b0.i21.i = alloca [4 x i8], align 1
  %msg.i22.i = alloca %struct.i2c_msg, align 4
  %b0.i8.i = alloca [4 x i8], align 1
  %msg.i9.i = alloca %struct.i2c_msg, align 4
  %b0.i.i210 = alloca [4 x i8], align 1
  %msg.i.i211 = alloca %struct.i2c_msg, align 4
  %b0.i196 = alloca [4 x i8], align 1
  %msg.i197 = alloca %struct.i2c_msg, align 4
  %b0.i180 = alloca [4 x i8], align 1
  %msg.i181 = alloca %struct.i2c_msg, align 4
  %b0.i163 = alloca [4 x i8], align 1
  %msg.i164 = alloca %struct.i2c_msg, align 4
  %b0.i149 = alloca [4 x i8], align 1
  %msg.i150 = alloca %struct.i2c_msg, align 4
  %b0.i135 = alloca [4 x i8], align 1
  %msg.i136 = alloca %struct.i2c_msg, align 4
  %b0.i124 = alloca [4 x i8], align 1
  %msg.i125 = alloca %struct.i2c_msg, align 4
  %b0.i63.i = alloca [4 x i8], align 1
  %msg.i64.i = alloca %struct.i2c_msg, align 4
  %b0.i46.i = alloca [4 x i8], align 1
  %msg.i47.i = alloca %struct.i2c_msg, align 4
  %b0.i29.i = alloca [4 x i8], align 1
  %msg.i30.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %actual_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_freq) #7
  %2 = ptrtoint ptr %actual_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_freq, align 4, !annotation !96
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %3 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth_hz, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 8000000, label %entry.if.end_crit_edge
    i32 7000000, label %entry.if.end_crit_edge234
    i32 6000000, label %entry.if.end_crit_edge235
  ]

entry.if.end_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge234, %entry.if.end_crit_edge235
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modulation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 75, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.sp887x_setup_frontend_parameters, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %10)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep232 = getelementptr inbounds [7 x i32], ptr @switch.table.sp887x_setup_frontend_parameters.35, i32 0, i32 %7
  %11 = ptrtoint ptr %switch.gep232 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load233 = load i32, ptr %switch.gep232, align 4
  %hierarchy.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %12 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hierarchy.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %13, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog21.i_crit_edge
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb19.i
  ]

switch.lookup.sw.epilog21.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %switch.load, 128
  br label %sw.epilog21.i

sw.bb11.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i16 %switch.load, 256
  br label %sw.epilog21.i

sw.bb15.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %17 = or i16 %switch.load, 384
  br label %sw.epilog21.i

sw.bb19.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21.i

sw.epilog21.i:                                    ; preds = %sw.bb19.i, %sw.bb15.i, %sw.bb11.i, %sw.bb7.i, %switch.lookup.sw.epilog21.i_crit_edge
  %reg0xc05.1 = phi i16 [ %switch.load, %sw.bb19.i ], [ %17, %sw.bb15.i ], [ %16, %sw.bb11.i ], [ %15, %sw.bb7.i ], [ %switch.load, %switch.lookup.sw.epilog21.i_crit_edge ]
  %known_parameters.1.i = phi i32 [ 0, %sw.bb19.i ], [ %switch.load233, %sw.bb15.i ], [ %switch.load233, %sw.bb11.i ], [ %switch.load233, %sw.bb7.i ], [ %switch.load233, %switch.lookup.sw.epilog21.i_crit_edge ]
  %code_rate_HP.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %18 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code_rate_HP.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %19, label %sw.epilog21.i.cleanup_crit_edge [
    i32 1, label %sw.epilog21.i.sw.epilog40.i_crit_edge
    i32 2, label %sw.epilog21.i.sw.epilog40.sink.split.i_crit_edge
    i32 3, label %sw.bb26.i
    i32 5, label %sw.bb30.i
    i32 7, label %sw.bb34.i
    i32 9, label %sw.epilog21.i.if.else.i_crit_edge
  ]

sw.epilog21.i.if.else.i_crit_edge:                ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

sw.epilog21.i.sw.epilog40.sink.split.i_crit_edge: ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40.sink.split.i

sw.epilog21.i.sw.epilog40.i_crit_edge:            ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40.i

sw.epilog21.i.cleanup_crit_edge:                  ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb26.i:                                        ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40.sink.split.i

sw.bb30.i:                                        ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40.sink.split.i

sw.bb34.i:                                        ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40.sink.split.i

sw.epilog40.sink.split.i:                         ; preds = %sw.bb34.i, %sw.bb30.i, %sw.bb26.i, %sw.epilog21.i.sw.epilog40.sink.split.i_crit_edge
  %.sink63.i = phi i16 [ 32, %sw.bb34.i ], [ 24, %sw.bb30.i ], [ 16, %sw.bb26.i ], [ 8, %sw.epilog21.i.sw.epilog40.sink.split.i_crit_edge ]
  %21 = or i16 %.sink63.i, %reg0xc05.1
  br label %sw.epilog40.i

sw.epilog40.i:                                    ; preds = %sw.epilog40.sink.split.i, %sw.epilog21.i.sw.epilog40.i_crit_edge
  %reg0xc05.2 = phi i16 [ %21, %sw.epilog40.sink.split.i ], [ %reg0xc05.1, %sw.epilog21.i.sw.epilog40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %known_parameters.1.i)
  %tobool.not.i = icmp eq i32 %known_parameters.1.i, 0
  br i1 %tobool.not.i, label %sw.epilog40.i.if.else.i_crit_edge, label %sw.epilog40.i.if.end7_crit_edge

sw.epilog40.i.if.end7_crit_edge:                  ; preds = %sw.epilog40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

sw.epilog40.i.if.else.i_crit_edge:                ; preds = %sw.epilog40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %sw.epilog40.i.if.else.i_crit_edge, %sw.epilog21.i.if.else.i_crit_edge
  %reg0xc05.3 = phi i16 [ %reg0xc05.1, %sw.epilog21.i.if.else.i_crit_edge ], [ %reg0xc05.2, %sw.epilog40.i.if.else.i_crit_edge ]
  br label %if.end7

if.end7:                                          ; preds = %if.else.i, %sw.epilog40.i.if.end7_crit_edge
  %reg0xc05.4 = phi i16 [ %reg0xc05.3, %if.else.i ], [ %reg0xc05.2, %sw.epilog40.i.if.end7_crit_edge ]
  %.sink64.i = phi i16 [ 2, %if.else.i ], [ 4, %sw.epilog40.i.if.end7_crit_edge ]
  %22 = or i16 %.sink64.i, %reg0xc05.4
  tail call fastcc void @sp887x_microcontroller_stop(ptr noundef %1)
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %23 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_params, align 4
  %tobool8.not = icmp eq ptr %24, null
  br i1 %tobool8.not, label %if.end7.if.end21_crit_edge, label %if.then9

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then9:                                         ; preds = %if.end7
  %call13 = tail call i32 %24(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %25 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %if.then9.if.end21_crit_edge, label %if.then16

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 %26(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then9.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %27 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_frequency, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %call29 = call i32 %28(ptr noundef %fe, ptr noundef nonnull %actual_freq) #7
  %i2c_gate_ctrl31 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %29 = ptrtoint ptr %i2c_gate_ctrl31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_gate_ctrl31, align 4
  %tobool32.not = icmp eq ptr %30, null
  br i1 %tobool32.not, label %if.then25.if.end38_crit_edge, label %if.then33

if.then25.if.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 %30(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end38

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dtv_property_cache, align 4
  %33 = ptrtoint ptr %actual_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %actual_freq, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33, %if.then25.if.end38_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #7
  %34 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %35 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %b0.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %37 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %38 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %38, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %40 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv5.i = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i, align 2
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %40, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %50 = load i8, ptr %43, align 4
  %conv10.i = zext i8 %50 to i16
  %51 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %52 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %53 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %54 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b1.i, ptr %buf13.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end38.sp887x_readreg.exit_crit_edge, label %do.end.i

if.end38.sp887x_readreg.exit_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_readreg.exit

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %sp887x_readreg.exit

sp887x_readreg.exit:                              ; preds = %do.end.i, %if.end38.sp887x_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %57 = ptrtoint ptr %actual_freq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %actual_freq, align 4
  %59 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dtv_property_cache, align 4
  %sub.i = sub i32 %58, %60
  %61 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %62)
  %switch.selectcmp.i = icmp eq i32 %62, 7000000
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %62)
  %switch.selectcmp27.i = icmp eq i32 %62, 6000000
  %switch.select28.i = select i1 %switch.selectcmp27.i, i32 2, i32 %switch.select.i
  %inversion.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %63 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i = icmp eq i32 %64, 1
  %65 = sub i32 0, %sub.i
  %freq.0.p.i = select i1 %cmp.i, i32 %65, i32 %sub.i
  %freq.0.i = add i32 %freq.0.p.i, 36000000
  %div.i = sdiv i32 %freq.0.i, 333
  %rem.i.i = srem i32 %div.i, 61003
  %shl.i.i = shl nsw i32 %rem.i.i, 8
  %shl.i.i.frozen = freeze i32 %shl.i.i
  %div.i.i = udiv i32 %shl.i.i.frozen, 61003
  %66 = mul i32 %div.i.i, 61003
  %rem3.i.i.decomposed = sub i32 %shl.i.i.frozen, %66
  %shl4.i.i = shl nuw nsw i32 %rem3.i.i.decomposed, 8
  %shl4.i.i.frozen = freeze i32 %shl4.i.i
  %div6.i.i = udiv i32 %shl4.i.i.frozen, 61003
  %67 = mul i32 %div6.i.i, 61003
  %rem7.i.i.decomposed = sub i32 %shl4.i.i.frozen, %67
  %shl8.i.i = shl nuw nsw i32 %rem7.i.i.decomposed, 8
  %68 = shl i32 %div.i.i, 16
  %69 = shl nuw nsw i32 %div6.i.i, 8
  %shl9.i.i = or i32 %69, %68
  %div10.i.i = udiv i32 %shl8.i.i, 61003
  %or11.i.i = or i32 %shl9.i.i, %div10.i.i
  %sub7.i = sub i32 0, %or11.i.i
  %spec.select.i = select i1 %cmp.i, i32 %sub7.i, i32 %or11.i.i
  %arrayidx.i = getelementptr [3 x i32], ptr @sp887x_correct_offsets.srate_correction, i32 0, i32 %switch.select28.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %71, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i.i) #7
  %72 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 1
  %73 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 2
  %74 = getelementptr inbounds [4 x i8], ptr %b0.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %b0.i.i, align 1
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 25, ptr %72, align 1
  %77 = lshr i32 %71, 20
  %conv7.i.i = trunc i32 %77 to i8
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv7.i.i, ptr %73, align 1
  %conv11.i.i = trunc i32 %shr.i to i8
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv11.i.i, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %80 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 327679, ptr %80, align 4
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv12.i.i = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv12.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %sp887x_readreg.exit.sp887x_writereg.exit.i_crit_edge, label %if.then.i.i

sp887x_readreg.exit.sp887x_writereg.exit.i_crit_edge: ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i

if.then.i.i:                                      ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i.i = and i32 %shr.i, 65535
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 793, i32 noundef %conv5.i.i, i32 noundef %call.i.i) #11
  br label %sp887x_writereg.exit.i

sp887x_writereg.exit.i:                           ; preds = %if.then.i.i, %sp887x_readreg.exit.sp887x_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i.i) #7
  %91 = trunc i32 %71 to i16
  %conv10.i123 = and i16 %91, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i29.i) #7
  %92 = getelementptr inbounds [4 x i8], ptr %b0.i29.i, i32 0, i32 1
  %93 = getelementptr inbounds [4 x i8], ptr %b0.i29.i, i32 0, i32 2
  %94 = getelementptr inbounds [4 x i8], ptr %b0.i29.i, i32 0, i32 3
  %95 = ptrtoint ptr %b0.i29.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %b0.i29.i, align 1
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 26, ptr %92, align 1
  %97 = lshr i16 %conv10.i123, 8
  %conv7.i32.i = trunc i16 %97 to i8
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv7.i32.i, ptr %93, align 1
  %conv11.i33.i = trunc i32 %71 to i8
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv11.i33.i, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30.i) #7
  %100 = getelementptr inbounds i8, ptr %msg.i30.i, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 327679, ptr %100, align 4
  %102 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %config.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 4
  %conv12.i35.i = zext i8 %105 to i16
  %106 = ptrtoint ptr %msg.i30.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv12.i35.i, ptr %msg.i30.i, align 4
  %flags.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i36.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags.i36.i, align 2
  %buf.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 3
  %108 = ptrtoint ptr %buf.i38.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %b0.i29.i, ptr %buf.i38.i, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %call.i39.i = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i30.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i)
  %cmp.not.i40.i = icmp eq i32 %call.i39.i, 1
  br i1 %cmp.not.i40.i, label %sp887x_writereg.exit.i.sp887x_writereg.exit45.i_crit_edge, label %if.then.i42.i

sp887x_writereg.exit.i.sp887x_writereg.exit45.i_crit_edge: ; preds = %sp887x_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit45.i

if.then.i42.i:                                    ; preds = %sp887x_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i31.i = zext i16 %conv10.i123 to i32
  %call30.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 794, i32 noundef %conv5.i31.i, i32 noundef %call.i39.i) #11
  br label %sp887x_writereg.exit45.i

sp887x_writereg.exit45.i:                         ; preds = %if.then.i42.i, %sp887x_writereg.exit.i.sp887x_writereg.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i29.i) #7
  %111 = lshr i32 %spec.select.i, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i46.i) #7
  %112 = getelementptr inbounds [4 x i8], ptr %b0.i46.i, i32 0, i32 1
  %113 = getelementptr inbounds [4 x i8], ptr %b0.i46.i, i32 0, i32 2
  %114 = getelementptr inbounds [4 x i8], ptr %b0.i46.i, i32 0, i32 3
  %115 = ptrtoint ptr %b0.i46.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %b0.i46.i, align 1
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 9, ptr %112, align 1
  %117 = lshr i32 %spec.select.i, 20
  %conv7.i49.i = trunc i32 %117 to i8
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv7.i49.i, ptr %113, align 1
  %conv11.i50.i = trunc i32 %111 to i8
  %119 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv11.i50.i, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47.i) #7
  %120 = getelementptr inbounds i8, ptr %msg.i47.i, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 327679, ptr %120, align 4
  %122 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %config.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 4
  %conv12.i52.i = zext i8 %125 to i16
  %126 = ptrtoint ptr %msg.i47.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv12.i52.i, ptr %msg.i47.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i53.i, align 2
  %buf.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %b0.i46.i, ptr %buf.i55.i, align 4
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %call.i56.i = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i47.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i56.i)
  %cmp.not.i57.i = icmp eq i32 %call.i56.i, 1
  br i1 %cmp.not.i57.i, label %sp887x_writereg.exit45.i.sp887x_writereg.exit62.i_crit_edge, label %if.then.i59.i

sp887x_writereg.exit45.i.sp887x_writereg.exit62.i_crit_edge: ; preds = %sp887x_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit62.i

if.then.i59.i:                                    ; preds = %sp887x_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i48.i = and i32 %111, 65535
  %call30.i60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 777, i32 noundef %conv5.i48.i, i32 noundef %call.i56.i) #11
  br label %sp887x_writereg.exit62.i

sp887x_writereg.exit62.i:                         ; preds = %if.then.i59.i, %sp887x_writereg.exit45.i.sp887x_writereg.exit62.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i46.i) #7
  %131 = trunc i32 %spec.select.i to i16
  %conv16.i = and i16 %131, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i63.i) #7
  %132 = getelementptr inbounds [4 x i8], ptr %b0.i63.i, i32 0, i32 1
  %133 = getelementptr inbounds [4 x i8], ptr %b0.i63.i, i32 0, i32 2
  %134 = getelementptr inbounds [4 x i8], ptr %b0.i63.i, i32 0, i32 3
  %135 = ptrtoint ptr %b0.i63.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 3, ptr %b0.i63.i, align 1
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 10, ptr %132, align 1
  %137 = lshr i16 %conv16.i, 8
  %conv7.i66.i = trunc i16 %137 to i8
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv7.i66.i, ptr %133, align 1
  %conv11.i67.i = trunc i32 %spec.select.i to i8
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv11.i67.i, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64.i) #7
  %140 = getelementptr inbounds i8, ptr %msg.i64.i, i32 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 327679, ptr %140, align 4
  %142 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %config.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %143, align 4
  %conv12.i69.i = zext i8 %145 to i16
  %146 = ptrtoint ptr %msg.i64.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv12.i69.i, ptr %msg.i64.i, align 4
  %flags.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i70.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i70.i, align 2
  %buf.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i72.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %b0.i63.i, ptr %buf.i72.i, align 4
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %call.i73.i = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %msg.i64.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73.i)
  %cmp.not.i74.i = icmp eq i32 %call.i73.i, 1
  br i1 %cmp.not.i74.i, label %sp887x_writereg.exit62.i.sp887x_correct_offsets.exit_crit_edge, label %if.then.i76.i

sp887x_writereg.exit62.i.sp887x_correct_offsets.exit_crit_edge: ; preds = %sp887x_writereg.exit62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_correct_offsets.exit

if.then.i76.i:                                    ; preds = %sp887x_writereg.exit62.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i65.i = zext i16 %conv16.i to i32
  %call30.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 778, i32 noundef %conv5.i65.i, i32 noundef %call.i73.i) #11
  br label %sp887x_correct_offsets.exit

sp887x_correct_offsets.exit:                      ; preds = %if.then.i76.i, %sp887x_writereg.exit62.i.sp887x_correct_offsets.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i63.i) #7
  %151 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %152)
  %switch.selectcmp = icmp eq i32 %152, 7000000
  %switch.select = zext i1 %switch.selectcmp to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %152)
  %switch.selectcmp115 = icmp eq i32 %152, 6000000
  %switch.select116 = select i1 %switch.selectcmp115, i16 2, i16 %switch.select
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i124) #7
  %153 = getelementptr inbounds [4 x i8], ptr %b0.i124, i32 0, i32 1
  %154 = getelementptr inbounds [4 x i8], ptr %b0.i124, i32 0, i32 2
  %155 = getelementptr inbounds [4 x i8], ptr %b0.i124, i32 0, i32 3
  %156 = ptrtoint ptr %b0.i124 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %b0.i124, align 1
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 17, ptr %153, align 1
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %154, align 1
  %conv11.i = trunc i16 %switch.select116 to i8
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv11.i, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125) #7
  %160 = getelementptr inbounds i8, ptr %msg.i125, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 327679, ptr %160, align 4
  %162 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %config.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 4
  %conv12.i = zext i8 %165 to i16
  %166 = ptrtoint ptr %msg.i125 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv12.i, ptr %msg.i125, align 4
  %flags.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 1
  %167 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %flags.i128, align 2
  %buf.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 3
  %168 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %b0.i124, ptr %buf.i130, align 4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %call.i131 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %msg.i125, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i131)
  %cmp.not.i132 = icmp eq i32 %call.i131, 1
  br i1 %cmp.not.i132, label %sp887x_correct_offsets.exit.sp887x_writereg.exit_crit_edge, label %if.then.i

sp887x_correct_offsets.exit.sp887x_writereg.exit_crit_edge: ; preds = %sp887x_correct_offsets.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %sp887x_correct_offsets.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i126 = zext i16 %switch.select116 to i32
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 785, i32 noundef %conv5.i126, i32 noundef %call.i131) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %sp887x_correct_offsets.exit.sp887x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i124) #7
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %171 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp51 = icmp eq i32 %172, 0
  br i1 %cmp51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %sp887x_writereg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i135) #7
  %173 = getelementptr inbounds [4 x i8], ptr %b0.i135, i32 0, i32 1
  %174 = getelementptr inbounds [4 x i8], ptr %b0.i135, i32 0, i32 2
  %175 = getelementptr inbounds [4 x i8], ptr %b0.i135, i32 0, i32 3
  %176 = ptrtoint ptr %b0.i135 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 3, ptr %b0.i135, align 1
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 56, ptr %173, align 1
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %174, align 1
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i136) #7
  %180 = getelementptr inbounds i8, ptr %msg.i136, i32 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 327679, ptr %180, align 4
  %182 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %config.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %183, align 4
  %conv12.i138 = zext i8 %185 to i16
  %186 = ptrtoint ptr %msg.i136 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv12.i138, ptr %msg.i136, align 4
  %flags.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 1
  %187 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %flags.i139, align 2
  %buf.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 3
  %188 = ptrtoint ptr %buf.i141 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %b0.i135, ptr %buf.i141, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 4
  %call.i142 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i136, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i142)
  %cmp.not.i143 = icmp eq i32 %call.i142, 1
  br i1 %cmp.not.i143, label %if.then52.sp887x_writereg.exit148_crit_edge, label %if.then.i144

if.then52.sp887x_writereg.exit148_crit_edge:      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit148

if.then.i144:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 824, i32 noundef 0, i32 noundef %call.i142) #11
  br label %sp887x_writereg.exit148

sp887x_writereg.exit148:                          ; preds = %if.then.i144, %if.then52.sp887x_writereg.exit148_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i136) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i135) #7
  br label %if.end56

if.else54:                                        ; preds = %sp887x_writereg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i149) #7
  %191 = getelementptr inbounds [4 x i8], ptr %b0.i149, i32 0, i32 1
  %192 = getelementptr inbounds [4 x i8], ptr %b0.i149, i32 0, i32 2
  %193 = getelementptr inbounds [4 x i8], ptr %b0.i149, i32 0, i32 3
  %194 = ptrtoint ptr %b0.i149 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 3, ptr %b0.i149, align 1
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 56, ptr %191, align 1
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %192, align 1
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %193, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150) #7
  %198 = getelementptr inbounds i8, ptr %msg.i150, i32 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 327679, ptr %198, align 4
  %200 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %config.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %201, align 4
  %conv12.i152 = zext i8 %203 to i16
  %204 = ptrtoint ptr %msg.i150 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv12.i152, ptr %msg.i150, align 4
  %flags.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i153 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i153, align 2
  %buf.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150, i32 0, i32 3
  %206 = ptrtoint ptr %buf.i155 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %b0.i149, ptr %buf.i155, align 4
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 4
  %call.i156 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i150, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i156)
  %cmp.not.i157 = icmp eq i32 %call.i156, 1
  br i1 %cmp.not.i157, label %if.else54.sp887x_writereg.exit162_crit_edge, label %if.then.i158

if.else54.sp887x_writereg.exit162_crit_edge:      ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit162

if.then.i158:                                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 824, i32 noundef 1, i32 noundef %call.i156) #11
  br label %sp887x_writereg.exit162

sp887x_writereg.exit162:                          ; preds = %if.then.i158, %if.else54.sp887x_writereg.exit162_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i149) #7
  br label %if.end56

if.end56:                                         ; preds = %sp887x_writereg.exit162, %sp887x_writereg.exit148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i163) #7
  %209 = getelementptr inbounds [4 x i8], ptr %b0.i163, i32 0, i32 1
  %210 = getelementptr inbounds [4 x i8], ptr %b0.i163, i32 0, i32 2
  %211 = getelementptr inbounds [4 x i8], ptr %b0.i163, i32 0, i32 3
  %212 = ptrtoint ptr %b0.i163 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 12, ptr %b0.i163, align 1
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 5, ptr %209, align 1
  %214 = lshr i16 %reg0xc05.4, 8
  %conv7.i = trunc i16 %214 to i8
  %215 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv7.i, ptr %210, align 1
  %conv11.i166 = trunc i16 %22 to i8
  %216 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv11.i166, ptr %211, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i164) #7
  %217 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 327679, ptr %217, align 4
  %219 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %config.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %220, align 4
  %conv12.i168 = zext i8 %222 to i16
  %223 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv12.i168, ptr %msg.i164, align 4
  %flags.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %224 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %flags.i169, align 2
  %buf.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %225 = ptrtoint ptr %buf.i171 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %b0.i163, ptr %buf.i171, align 4
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %msg.i164, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp.not.i173, label %if.end56.sp887x_writereg.exit179_crit_edge, label %if.then.i175

if.end56.sp887x_writereg.exit179_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit179

if.then.i175:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i165 = zext i16 %22 to i32
  %call30.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3077, i32 noundef %conv5.i165, i32 noundef %call.i172) #11
  br label %sp887x_writereg.exit179

sp887x_writereg.exit179:                          ; preds = %if.then.i175, %if.end56.sp887x_writereg.exit179_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i163) #7
  %228 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %229)
  %switch.selectcmp117 = icmp eq i32 %229, 7000000
  %switch.select118 = select i1 %switch.selectcmp117, i16 376, i16 352
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %229)
  %switch.selectcmp119 = icmp eq i32 %229, 6000000
  %switch.select120 = select i1 %switch.selectcmp119, i16 368, i16 %switch.select118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i180) #7
  %230 = getelementptr inbounds [4 x i8], ptr %b0.i180, i32 0, i32 1
  %231 = getelementptr inbounds [4 x i8], ptr %b0.i180, i32 0, i32 2
  %232 = getelementptr inbounds [4 x i8], ptr %b0.i180, i32 0, i32 3
  %233 = ptrtoint ptr %b0.i180 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 15, ptr %b0.i180, align 1
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 20, ptr %230, align 1
  %235 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %231, align 1
  %conv11.i183 = trunc i16 %switch.select120 to i8
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv11.i183, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i181) #7
  %237 = getelementptr inbounds i8, ptr %msg.i181, i32 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 327679, ptr %237, align 4
  %239 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %config.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %240, align 4
  %conv12.i185 = zext i8 %242 to i16
  %243 = ptrtoint ptr %msg.i181 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv12.i185, ptr %msg.i181, align 4
  %flags.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181, i32 0, i32 1
  %244 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 0, ptr %flags.i186, align 2
  %buf.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181, i32 0, i32 3
  %245 = ptrtoint ptr %buf.i188 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %b0.i180, ptr %buf.i188, align 4
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 4
  %call.i189 = call i32 @i2c_transfer(ptr noundef %247, ptr noundef nonnull %msg.i181, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i189)
  %cmp.not.i190 = icmp eq i32 %call.i189, 1
  br i1 %cmp.not.i190, label %sp887x_writereg.exit179.sp887x_writereg.exit195_crit_edge, label %if.then.i191

sp887x_writereg.exit179.sp887x_writereg.exit195_crit_edge: ; preds = %sp887x_writereg.exit179
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit195

if.then.i191:                                     ; preds = %sp887x_writereg.exit179
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i182 = zext i16 %switch.select120 to i32
  %call30.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3860, i32 noundef %conv5.i182, i32 noundef %call.i189) #11
  br label %sp887x_writereg.exit195

sp887x_writereg.exit195:                          ; preds = %if.then.i191, %sp887x_writereg.exit179.sp887x_writereg.exit195_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i181) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i180) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i196) #7
  %248 = getelementptr inbounds [4 x i8], ptr %b0.i196, i32 0, i32 1
  %249 = getelementptr inbounds [4 x i8], ptr %b0.i196, i32 0, i32 2
  %250 = getelementptr inbounds [4 x i8], ptr %b0.i196, i32 0, i32 3
  %251 = ptrtoint ptr %b0.i196 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 15, ptr %b0.i196, align 1
  %252 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 21, ptr %248, align 1
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %249, align 1
  %254 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i197) #7
  %255 = getelementptr inbounds i8, ptr %msg.i197, i32 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 327679, ptr %255, align 4
  %257 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %config.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %258, align 4
  %conv12.i199 = zext i8 %260 to i16
  %261 = ptrtoint ptr %msg.i197 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv12.i199, ptr %msg.i197, align 4
  %flags.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i197, i32 0, i32 1
  %262 = ptrtoint ptr %flags.i200 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %flags.i200, align 2
  %buf.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i197, i32 0, i32 3
  %263 = ptrtoint ptr %buf.i202 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %b0.i196, ptr %buf.i202, align 4
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %1, align 4
  %call.i203 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %msg.i197, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i203)
  %cmp.not.i204 = icmp eq i32 %call.i203, 1
  br i1 %cmp.not.i204, label %sp887x_writereg.exit195.sp887x_writereg.exit209_crit_edge, label %if.then.i205

sp887x_writereg.exit195.sp887x_writereg.exit209_crit_edge: ; preds = %sp887x_writereg.exit195
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit209

if.then.i205:                                     ; preds = %sp887x_writereg.exit195
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3861, i32 noundef 0, i32 noundef %call.i203) #11
  br label %sp887x_writereg.exit209

sp887x_writereg.exit209:                          ; preds = %if.then.i205, %sp887x_writereg.exit195.sp887x_writereg.exit209_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i197) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i196) #7
  %266 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.i212 = icmp eq i32 %266, 0
  br i1 %tobool.not.i212, label %sp887x_writereg.exit209.do.end2.i_crit_edge, label %do.end.i214

sp887x_writereg.exit209.do.end2.i_crit_edge:      ; preds = %sp887x_writereg.exit209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2.i

do.end.i214:                                      ; preds = %sp887x_writereg.exit209
  call void @__sanitizer_cov_trace_pc() #9
  %call.i213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.32) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i214, %sp887x_writereg.exit209.do.end2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i.i210) #7
  %267 = getelementptr inbounds [4 x i8], ptr %b0.i.i210, i32 0, i32 1
  %268 = getelementptr inbounds [4 x i8], ptr %b0.i.i210, i32 0, i32 2
  %269 = getelementptr inbounds [4 x i8], ptr %b0.i.i210, i32 0, i32 3
  %270 = ptrtoint ptr %b0.i.i210 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 15, ptr %b0.i.i210, align 1
  %271 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 8, ptr %267, align 1
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %268, align 1
  %273 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %269, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i211) #7
  %274 = getelementptr inbounds i8, ptr %msg.i.i211, i32 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 327679, ptr %274, align 4
  %276 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %config.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %277, align 4
  %conv12.i.i216 = zext i8 %279 to i16
  %280 = ptrtoint ptr %msg.i.i211 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %conv12.i.i216, ptr %msg.i.i211, align 4
  %flags.i.i217 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211, i32 0, i32 1
  %281 = ptrtoint ptr %flags.i.i217 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 0, ptr %flags.i.i217, align 2
  %buf.i.i218 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211, i32 0, i32 3
  %282 = ptrtoint ptr %buf.i.i218 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %b0.i.i210, ptr %buf.i.i218, align 4
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %1, align 4
  %call.i.i219 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %msg.i.i211, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i219)
  %cmp.not.i.i220 = icmp eq i32 %call.i.i219, 1
  br i1 %cmp.not.i.i220, label %do.end2.i.sp887x_writereg.exit.i223_crit_edge, label %if.then.i.i222

do.end2.i.sp887x_writereg.exit.i223_crit_edge:    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit.i223

if.then.i.i222:                                   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3848, i32 noundef 0, i32 noundef %call.i.i219) #11
  br label %sp887x_writereg.exit.i223

sp887x_writereg.exit.i223:                        ; preds = %if.then.i.i222, %do.end2.i.sp887x_writereg.exit.i223_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i211) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i.i210) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i8.i) #7
  %285 = getelementptr inbounds [4 x i8], ptr %b0.i8.i, i32 0, i32 1
  %286 = getelementptr inbounds [4 x i8], ptr %b0.i8.i, i32 0, i32 2
  %287 = getelementptr inbounds [4 x i8], ptr %b0.i8.i, i32 0, i32 3
  %288 = ptrtoint ptr %b0.i8.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 15, ptr %b0.i8.i, align 1
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 9, ptr %285, align 1
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %286, align 1
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %287, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9.i) #7
  %292 = getelementptr inbounds i8, ptr %msg.i9.i, i32 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 327679, ptr %292, align 4
  %294 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %config.i, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %295, align 4
  %conv12.i11.i = zext i8 %297 to i16
  %298 = ptrtoint ptr %msg.i9.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv12.i11.i, ptr %msg.i9.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9.i, i32 0, i32 1
  %299 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %flags.i12.i, align 2
  %buf.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9.i, i32 0, i32 3
  %300 = ptrtoint ptr %buf.i14.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %b0.i8.i, ptr %buf.i14.i, align 4
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %1, align 4
  %call.i15.i = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %msg.i9.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15.i)
  %cmp.not.i16.i = icmp eq i32 %call.i15.i, 1
  br i1 %cmp.not.i16.i, label %sp887x_writereg.exit.i223.sp887x_writereg.exit20.i_crit_edge, label %if.then.i17.i

sp887x_writereg.exit.i223.sp887x_writereg.exit20.i_crit_edge: ; preds = %sp887x_writereg.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit20.i

if.then.i17.i:                                    ; preds = %sp887x_writereg.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3849, i32 noundef 0, i32 noundef %call.i15.i) #11
  br label %sp887x_writereg.exit20.i

sp887x_writereg.exit20.i:                         ; preds = %if.then.i17.i, %sp887x_writereg.exit.i223.sp887x_writereg.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i8.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i21.i) #7
  %303 = getelementptr inbounds [4 x i8], ptr %b0.i21.i, i32 0, i32 1
  %304 = getelementptr inbounds [4 x i8], ptr %b0.i21.i, i32 0, i32 2
  %305 = getelementptr inbounds [4 x i8], ptr %b0.i21.i, i32 0, i32 3
  %306 = ptrtoint ptr %b0.i21.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 15, ptr %b0.i21.i, align 1
  %307 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %303, align 1
  %308 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %304, align 1
  %309 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 1, ptr %305, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22.i) #7
  %310 = getelementptr inbounds i8, ptr %msg.i22.i, i32 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 327679, ptr %310, align 4
  %312 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %config.i, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %313, align 4
  %conv12.i24.i = zext i8 %315 to i16
  %316 = ptrtoint ptr %msg.i22.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv12.i24.i, ptr %msg.i22.i, align 4
  %flags.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 1
  %317 = ptrtoint ptr %flags.i25.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %flags.i25.i, align 2
  %buf.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 3
  %318 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %b0.i21.i, ptr %buf.i27.i, align 4
  %319 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %1, align 4
  %call.i28.i = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %msg.i22.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28.i)
  %cmp.not.i29.i = icmp eq i32 %call.i28.i, 1
  br i1 %cmp.not.i29.i, label %sp887x_writereg.exit20.i.sp887x_microcontroller_start.exit_crit_edge, label %if.then.i30.i

sp887x_writereg.exit20.i.sp887x_microcontroller_start.exit_crit_edge: ; preds = %sp887x_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_microcontroller_start.exit

if.then.i30.i:                                    ; preds = %sp887x_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3840, i32 noundef 1, i32 noundef %call.i28.i) #11
  br label %sp887x_microcontroller_start.exit

sp887x_microcontroller_start.exit:                ; preds = %if.then.i30.i, %sp887x_writereg.exit20.i.sp887x_microcontroller_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i21.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sp887x_microcontroller_start.exit, %sw.epilog21.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sp887x_microcontroller_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog21.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_freq) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sp887x_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 350, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 333332, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 333333, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i65 = alloca [2 x i8], align 1
  %b1.i66 = alloca [2 x i8], align 1
  %msg.i67 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i40 = alloca [2 x i8], align 1
  %b1.i41 = alloca [2 x i8], align 1
  %msg.i42 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  store i8 15, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 22, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %6 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv10.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %sp887x_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv20.i = zext i8 %28 to i32
  %and21.i = or i32 %shl.i, %conv20.i
  %phi.bo = and i32 %and21.i, 4080
  br label %sp887x_readreg.exit

sp887x_readreg.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 65520, %do.end.i ], [ %phi.bo, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i40) #7
  %29 = getelementptr inbounds [2 x i8], ptr %b0.i40, i32 0, i32 1
  %30 = ptrtoint ptr %b0.i40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %b0.i40, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i41) #7
  %32 = ptrtoint ptr %b1.i41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %b1.i41, align 1, !annotation !96
  %33 = getelementptr inbounds [2 x i8], ptr %b1.i41, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i42) #7
  %35 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %36 = call ptr @memset(ptr %35, i32 255, i32 16)
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv5.i44 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i44, ptr %msg.i42, align 4
  %flags.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i45, align 2
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %35, align 4
  %buf.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b0.i40, ptr %buf.i47, align 4
  %arrayinit.element6.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1
  %45 = load i8, ptr %38, align 4
  %conv10.i49 = zext i8 %45 to i16
  %46 = ptrtoint ptr %arrayinit.element6.i48 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv10.i49, ptr %arrayinit.element6.i48, align 4
  %flags11.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 1
  %47 = ptrtoint ptr %flags11.i50 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %flags11.i50, align 2
  %len12.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 2
  %48 = ptrtoint ptr %len12.i51 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %len12.i51, align 4
  %buf13.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 3
  %49 = ptrtoint ptr %buf13.i52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b1.i41, ptr %buf13.i52, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i53 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i42, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i53)
  %cmp.not.i54 = icmp eq i32 %call.i53, 2
  br i1 %cmp.not.i54, label %if.end.i62, label %do.end.i56

do.end.i56:                                       ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i53) #11
  br label %sp887x_readreg.exit64

if.end.i62:                                       ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %33, align 1
  %conv20.i59 = zext i8 %53 to i32
  br label %sp887x_readreg.exit64

sp887x_readreg.exit64:                            ; preds = %if.end.i62, %do.end.i56
  %retval.0.i63 = phi i32 [ -1, %do.end.i56 ], [ %conv20.i59, %if.end.i62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i41) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i40) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i65) #7
  %54 = getelementptr inbounds [2 x i8], ptr %b0.i65, i32 0, i32 1
  %55 = ptrtoint ptr %b0.i65 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 15, ptr %b0.i65, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 23, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i66) #7
  %57 = ptrtoint ptr %b1.i66 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %b1.i66, align 1, !annotation !96
  %58 = getelementptr inbounds [2 x i8], ptr %b1.i66, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %58, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i67) #7
  %60 = getelementptr inbounds i8, ptr %msg.i67, i32 4
  %61 = call ptr @memset(ptr %60, i32 255, i32 16)
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv5.i69 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i67 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv5.i69, ptr %msg.i67, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i70, align 2
  %68 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 2, ptr %60, align 4
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 3
  %69 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %b0.i65, ptr %buf.i72, align 4
  %arrayinit.element6.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1
  %70 = load i8, ptr %63, align 4
  %conv10.i74 = zext i8 %70 to i16
  %71 = ptrtoint ptr %arrayinit.element6.i73 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv10.i74, ptr %arrayinit.element6.i73, align 4
  %flags11.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 1
  %72 = ptrtoint ptr %flags11.i75 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %flags11.i75, align 2
  %len12.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 2
  %73 = ptrtoint ptr %len12.i76 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2, ptr %len12.i76, align 4
  %buf13.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 3
  %74 = ptrtoint ptr %buf13.i77 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %b1.i66, ptr %buf13.i77, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i78 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i67, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i78)
  %cmp.not.i79 = icmp eq i32 %call.i78, 2
  br i1 %cmp.not.i79, label %sp887x_readreg.exit89, label %sp887x_readreg.exit89.thread

sp887x_readreg.exit89.thread:                     ; preds = %sp887x_readreg.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i78) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i67) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i66) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not92 = icmp ne i32 %retval.0.i, 0
  %spec.select93 = zext i1 %cmp.not92 to i32
  br label %if.end13.sink.split

sp887x_readreg.exit89:                            ; preds = %sp887x_readreg.exit64
  %77 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %58, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i67) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i66) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp ne i32 %retval.0.i, 0
  %spec.select = zext i1 %cmp.not to i32
  %79 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %spec.select, ptr %status, align 4
  %80 = and i8 %78, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp8 = icmp eq i8 %80, 2
  br i1 %cmp8, label %if.then10, label %sp887x_readreg.exit89.if.end13_crit_edge

sp887x_readreg.exit89.if.end13_crit_edge:         ; preds = %sp887x_readreg.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %sp887x_readreg.exit89
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = or i32 %spec.select, 30
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then10, %sp887x_readreg.exit89.thread
  %spec.select93.sink = phi i32 [ %spec.select93, %sp887x_readreg.exit89.thread ], [ %or12, %if.then10 ]
  %81 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select93.sink, ptr %status, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %sp887x_readreg.exit89.if.end13_crit_edge
  %and15 = and i32 %retval.0.i63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.end13.if.end30_crit_edge, label %if.then16

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then16:                                        ; preds = %if.end13
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool23.not = icmp eq i32 %82, 0
  br i1 %tobool23.not, label %if.then16.if.end30_crit_edge, label %do.end

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %83 = and i32 %retval.0.i63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool20.not = icmp eq i32 %83, 0
  %conv14 = lshr i32 %retval.0.i63, 4
  %and18 = and i32 %conv14, 15
  %sub = sub nsw i32 0, %and18
  %spec.select39 = select i1 %tobool20.not, i32 %and18, i32 %sub
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %spec.select39) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then16.if.end30_crit_edge, %if.end13.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  %b0.i44 = alloca [4 x i8], align 1
  %msg.i45 = alloca %struct.i2c_msg, align 4
  %b0.i34 = alloca [4 x i8], align 1
  %msg.i35 = alloca %struct.i2c_msg, align 4
  %b0.i9 = alloca [2 x i8], align 1
  %b1.i10 = alloca [2 x i8], align 1
  %msg.i11 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  store i8 12, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %6 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv10.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %sp887x_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  %27 = and i8 %26, 63
  %phi.bo = zext i8 %27 to i32
  br label %sp887x_readreg.exit

sp887x_readreg.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 63, %do.end.i ], [ %phi.bo, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i9) #7
  %28 = getelementptr inbounds [2 x i8], ptr %b0.i9, i32 0, i32 1
  %29 = ptrtoint ptr %b0.i9 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %b0.i9, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i10) #7
  %31 = ptrtoint ptr %b1.i10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %b1.i10, align 1, !annotation !96
  %32 = getelementptr inbounds [2 x i8], ptr %b1.i10, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %32, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i11) #7
  %34 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 16)
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  %conv5.i13 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i13, ptr %msg.i11, align 4
  %flags.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i14 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i14, align 2
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %34, align 4
  %buf.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b0.i9, ptr %buf.i16, align 4
  %arrayinit.element6.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1
  %44 = load i8, ptr %37, align 4
  %conv10.i18 = zext i8 %44 to i16
  %45 = ptrtoint ptr %arrayinit.element6.i17 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv10.i18, ptr %arrayinit.element6.i17, align 4
  %flags11.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 1
  %46 = ptrtoint ptr %flags11.i19 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %flags11.i19, align 2
  %len12.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 2
  %47 = ptrtoint ptr %len12.i20 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %len12.i20, align 4
  %buf13.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 1, i32 3
  %48 = ptrtoint ptr %buf13.i21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %b1.i10, ptr %buf13.i21, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i22 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i11, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i22)
  %cmp.not.i23 = icmp eq i32 %call.i22, 2
  br i1 %cmp.not.i23, label %if.end.i31, label %do.end.i25

do.end.i25:                                       ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i22) #11
  br label %sp887x_readreg.exit33

if.end.i31:                                       ; preds = %sp887x_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %b1.i10 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %b1.i10, align 1
  %conv18.i26 = zext i8 %52 to i32
  %shl.i27 = shl nuw nsw i32 %conv18.i26, 8
  %53 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %32, align 1
  %conv20.i28 = zext i8 %54 to i32
  %shl.masked.i29 = and i32 %shl.i27, 3840
  %and21.i30 = or i32 %shl.masked.i29, %conv20.i28
  %phi.bo58 = shl nuw nsw i32 %and21.i30, 6
  br label %sp887x_readreg.exit33

sp887x_readreg.exit33:                            ; preds = %if.end.i31, %do.end.i25
  %retval.0.i32 = phi i32 [ -64, %do.end.i25 ], [ %phi.bo58, %if.end.i31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i11) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i10) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i9) #7
  %or = or i32 %retval.0.i32, %retval.0.i
  %55 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i34) #7
  %56 = getelementptr inbounds [4 x i8], ptr %b0.i34, i32 0, i32 1
  %57 = getelementptr inbounds [4 x i8], ptr %b0.i34, i32 0, i32 2
  %58 = getelementptr inbounds [4 x i8], ptr %b0.i34, i32 0, i32 3
  %59 = ptrtoint ptr %b0.i34 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 12, ptr %b0.i34, align 1
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %56, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %57, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i35) #7
  %63 = getelementptr inbounds i8, ptr %msg.i35, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 327679, ptr %63, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv12.i = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv12.i, ptr %msg.i35, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i37, align 2
  %buf.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 3
  %71 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %b0.i34, ptr %buf.i39, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 1
  br i1 %cmp.not.i41, label %sp887x_readreg.exit33.sp887x_writereg.exit_crit_edge, label %if.then.i

sp887x_readreg.exit33.sp887x_writereg.exit_crit_edge: ; preds = %sp887x_readreg.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %sp887x_readreg.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3080, i32 noundef 0, i32 noundef %call.i40) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %sp887x_readreg.exit33.sp887x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i34) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i44) #7
  %74 = getelementptr inbounds [4 x i8], ptr %b0.i44, i32 0, i32 1
  %75 = getelementptr inbounds [4 x i8], ptr %b0.i44, i32 0, i32 2
  %76 = getelementptr inbounds [4 x i8], ptr %b0.i44, i32 0, i32 3
  %77 = ptrtoint ptr %b0.i44 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 12, ptr %b0.i44, align 1
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 7, ptr %74, align 1
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %75, align 1
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45) #7
  %81 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 327679, ptr %81, align 4
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 4
  %conv12.i47 = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv12.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i48, align 2
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b0.i44, ptr %buf.i50, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i45, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 1
  br i1 %cmp.not.i52, label %sp887x_writereg.exit.sp887x_writereg.exit57_crit_edge, label %if.then.i53

sp887x_writereg.exit.sp887x_writereg.exit57_crit_edge: ; preds = %sp887x_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit57

if.then.i53:                                      ; preds = %sp887x_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3079, i32 noundef 0, i32 noundef %call.i51) #11
  br label %sp887x_writereg.exit57

sp887x_writereg.exit57:                           ; preds = %if.then.i53, %sp887x_writereg.exit.sp887x_writereg.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i44) #7
  %92 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ber, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262127, i32 %93)
  %cmp = icmp ugt i32 %93, 262127
  br i1 %cmp, label %if.then, label %sp887x_writereg.exit57.if.end_crit_edge

sp887x_writereg.exit57.if.end_crit_edge:          ; preds = %sp887x_writereg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sp887x_writereg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %ber, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sp887x_writereg.exit57.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  store i8 15, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 22, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %6 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv10.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %sp887x_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv20.i = zext i8 %28 to i32
  %shl.masked.i = and i32 %shl.i, 3840
  %and21.i = or i32 %shl.masked.i, %conv20.i
  %phi.bo6 = mul nuw nsw i32 %and21.i, 48
  br label %sp887x_readreg.exit

sp887x_readreg.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 3145680, %do.end.i ], [ %phi.bo6, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %29 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 65535)
  %30 = trunc i32 %29 to i16
  %31 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  store i8 15, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 22, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %6 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv10.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %sp887x_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv20.i = zext i8 %28 to i32
  %shl.masked.i = and i32 %shl.i, 3840
  %and21.i = or i32 %shl.masked.i, %conv20.i
  br label %sp887x_readreg.exit

sp887x_readreg.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 65535, %do.end.i ], [ %and21.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  %shl = shl nuw nsw i32 %retval.0.i, 4
  %29 = lshr i32 %retval.0.i, 8
  %or = or i32 %shl, %29
  %conv3 = trunc i32 %or to i16
  %30 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv3, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [2 x i8], align 1
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
  store i8 12, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b1.i, align 1, !annotation !96
  %6 = getelementptr inbounds [2 x i8], ptr %b1.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv10.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.i, ptr %arrayinit.element6.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %sp887x_readreg.exit, label %sp887x_readreg.exit.thread

sp887x_readreg.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  br label %29

sp887x_readreg.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  %conv18.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv20.i = zext i8 %28 to i32
  %shl.masked.i = and i32 %shl.i, 3840
  %and21.i = or i32 %shl.masked.i, %conv20.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and21.i)
  %cmp = icmp eq i32 %and21.i, 4095
  %spec.select = select i1 %cmp, i32 -1, i32 %and21.i
  br label %29

29:                                               ; preds = %sp887x_readreg.exit, %sp887x_readreg.exit.thread
  %30 = phi i32 [ -1, %sp887x_readreg.exit.thread ], [ %spec.select, %sp887x_readreg.exit ]
  %31 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp887x_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %b0.i3 = alloca [4 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 3
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %b0.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.sp887x_writereg.exit_crit_edge, label %if.then.i

if.then.sp887x_writereg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 518, i32 noundef 1, i32 noundef %call.i) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %if.then.sp887x_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.then.sp887x_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i3) #7
  %20 = getelementptr inbounds [4 x i8], ptr %b0.i3, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i8], ptr %b0.i3, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i8], ptr %b0.i3, i32 0, i32 3
  %23 = ptrtoint ptr %b0.i3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %b0.i3, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #7
  %27 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %config.i5 = getelementptr inbounds %struct.sp887x_state, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i5, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv12.i6 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv12.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i7, align 2
  %buf.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i3, ptr %buf.i9, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.sp887x_writereg.exit15_crit_edge, label %if.then.i12

if.else.sp887x_writereg.exit15_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit15

if.then.i12:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 518, i32 noundef 0, i32 noundef %call.i10) #11
  br label %sp887x_writereg.exit15

sp887x_writereg.exit15:                           ; preds = %if.then.i12, %if.else.sp887x_writereg.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i10, %if.then.i12 ], [ 0, %if.else.sp887x_writereg.exit15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i3) #7
  br label %cleanup

cleanup:                                          ; preds = %sp887x_writereg.exit15, %sp887x_writereg.exit
  %retval.0 = phi i32 [ %retval.0.i, %sp887x_writereg.exit ], [ %retval.0.i14, %sp887x_writereg.exit15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sp887x_microcontroller_stop(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %b0.i21 = alloca [4 x i8], align 1
  %msg.i22 = alloca %struct.i2c_msg, align 4
  %b0.i8 = alloca [4 x i8], align 1
  %msg.i9 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.26) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i) #7
  %1 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %b0.i, i32 0, i32 3
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %b0.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 327679, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.sp887x_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv12.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end2.sp887x_writereg.exit_crit_edge, label %if.then.i

do.end2.sp887x_writereg.exit_crit_edge:           ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit

if.then.i:                                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3848, i32 noundef 0, i32 noundef %call.i) #11
  br label %sp887x_writereg.exit

sp887x_writereg.exit:                             ; preds = %if.then.i, %do.end2.sp887x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i8) #7
  %19 = getelementptr inbounds [4 x i8], ptr %b0.i8, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i8], ptr %b0.i8, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i8], ptr %b0.i8, i32 0, i32 3
  %22 = ptrtoint ptr %b0.i8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %b0.i8, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %19, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9) #7
  %26 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv12.i11 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv12.i11, ptr %msg.i9, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i12, align 2
  %buf.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i8, ptr %buf.i14, align 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i9, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 1
  br i1 %cmp.not.i16, label %sp887x_writereg.exit.sp887x_writereg.exit20_crit_edge, label %if.then.i17

sp887x_writereg.exit.sp887x_writereg.exit20_crit_edge: ; preds = %sp887x_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit20

if.then.i17:                                      ; preds = %sp887x_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3849, i32 noundef 0, i32 noundef %call.i15) #11
  br label %sp887x_writereg.exit20

sp887x_writereg.exit20:                           ; preds = %if.then.i17, %sp887x_writereg.exit.sp887x_writereg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b0.i21) #7
  %37 = getelementptr inbounds [4 x i8], ptr %b0.i21, i32 0, i32 1
  %38 = getelementptr inbounds [4 x i8], ptr %b0.i21, i32 0, i32 2
  %39 = getelementptr inbounds [4 x i8], ptr %b0.i21, i32 0, i32 3
  %40 = ptrtoint ptr %b0.i21 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 15, ptr %b0.i21, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %37, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %38, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22) #7
  %44 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 327679, ptr %44, align 4
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %conv12.i24 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv12.i24, ptr %msg.i22, align 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i25, align 2
  %buf.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %b0.i21, ptr %buf.i27, align 4
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 4
  %call.i28 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i22, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 1
  br i1 %cmp.not.i29, label %sp887x_writereg.exit20.sp887x_writereg.exit33_crit_edge, label %if.then.i30

sp887x_writereg.exit20.sp887x_writereg.exit33_crit_edge: ; preds = %sp887x_writereg.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp887x_writereg.exit33

if.then.i30:                                      ; preds = %sp887x_writereg.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3840, i32 noundef 0, i32 noundef %call.i28) #11
  br label %sp887x_writereg.exit33

sp887x_writereg.exit33:                           ; preds = %if.then.i30, %sp887x_writereg.exit20.sp887x_writereg.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b0.i21) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !83, !84, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 621, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 622, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 624, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 625, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__ksymtab_sp887x_attach, !11, !"__ksymtab_sp887x_attach", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 627, i32 1}
!12 = !{ptr @debug, !13, !"debug", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 34, i32 12}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 85, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sp887x_readreg._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @sp887x_readreg._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sp887x_ops, !21, !"sp887x_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 592, i32 38}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 526, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sp887x_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sp887x_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 529, i32 4}
!30 = !{ptr @sp887x_init._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sp887x_init._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 536, i32 4}
!34 = !{ptr @sp887x_init._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sp887x_init._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 539, i32 3}
!38 = !{ptr @sp887x_init._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sp887x_init._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 145, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sp887x_initial_setup._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sp887x_initial_setup._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 156, i32 2}
!47 = !{ptr @sp887x_initial_setup._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sp887x_initial_setup._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 181, i32 4}
!51 = !{ptr @sp887x_initial_setup._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sp887x_initial_setup._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 182, i32 4}
!55 = !{ptr @sp887x_initial_setup._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sp887x_initial_setup._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 94, i32 2}
!59 = !{ptr @sp887x_microcontroller_stop._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sp887x_microcontroller_stop._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 46, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @i2c_writebytes._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_writebytes._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 115, i32 2}
!68 = !{ptr @sp887x_setup_agc._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sp887x_setup_agc._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 67, i32 4}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sp887x_writereg._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sp887x_writereg._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @sp887x_correct_offsets.srate_correction, !76, !"srate_correction", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 307, i32 19}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 104, i32 2}
!79 = !{ptr @sp887x_microcontroller_start._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sp887x_microcontroller_start._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/sp887x.c", i32 444, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sp887x_read_status._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @sp887x_read_status._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
